#include <ros.h>
#include <std_msgs/String.h>
#include <roboboat/BoatHealth.h>
#include <roboboat/RelayControl.h>
#include <SoftwareSerial.h>


/*
 * Physical Connections:
 *  - Primary Battery        A0
 *  - Left Motor Battery     A1
 *  - Right Motor Battery    A2
 *  - Left Temperature       A3
 *  - Right Temperature      A4
 *  - Left Water             PWM6
 *  - Middle Water           PWM7
 *  - Right Water            PWM8
 *  - Pump Relay             PWM10
 *  - Motor Relays           PWM11
 *  - Alarm (if used)        PWM3
 *  - GPS                    TX3/RX3
 */
 
#define BATT_PRIMARY  A0
#define BATT_LEFT     A1
#define BATT_RIGHT    A2
#define TEMP_LEFT     A3
#define TEMP_RIGHT    A4
#define WATER_LEFT    6
#define WATER_MIDDLE  7
#define WATER_RIGHT   8

#define PUMP_RELAY    10
#define MOTOR_RELAY   11
#define SIREN         3

#define THRM_NOM      10000
#define TEMP_NOM      25
#define THRM_BETA     3950


//////////////////// Functions ////////////////////
/*
 * averageAnalog -- Averages readings on analog pin
 * input pin number
 * returns average value over 5   readings, as a float
 */
float averageAnalog(int pin)
{
  float v = 0;
  for(int i=0; i<5; i++) v+= (float) analogRead(pin);
  return v/5;
}


/*
 * readVoltage -- reads voltage on given pin
 * input pin number
 * returns a float representing the voltage
 */
float readVoltage(int pin)
{
  int sensorValue = averageAnalog(pin);
   //it's reading the input on analog pin 0
 
  float voltage = sensorValue * (5.0 / 1023.0);
   //This converts the analog reading (from 0 to 1023) to voltage (0 to 5V)
  voltage *= 5.31373;
   // Using Voltage Divider Ratio to convert 5V Arduino input to appx
   // 24 V Battery input value.  
  return voltage;
}

/*
 *
 */
float readTemp(int pin)
{
  float adcVal = averageAnalog(pin);
  
  float resistance = 10000 / (1023 / adcVal - 1);
  
  float temp = (log(resistance / THRM_NOM)) / THRM_BETA + 1.0/(TEMP_NOM + 273.15);
  
  temp = 1.0/temp;
  temp -= 273.15;
  
  return temp;
}


//////////////////// Global Setup ////////////////////
ros::NodeHandle nh; // ROS Node handle

std_msgs::String gps_msg;
roboboat::BoatHealth health_msg;
roboboat::RelayControl relay_ctl;

// ROS Published Topics
ros::Publisher gps("gps_nmea", &gps_msg);
ros::Publisher health("health", &health_msg);

String gpsSentence = "";
// Serial GPS connected on TX3/RX3
HardwareSerial serialGPS = Serial3;


//////////////////// Callback Functions ////////////////////
/* GPS Code
 * SerialEvent occurs whenever a new data comes in the
 * hardware serial RX.  This routine is run between each
 * time loop() runs, so using delay inside loop can delay
 * response.  Multiple bytes of data may be available.
 * Device on TX3/RX3
 */
void serialEvent3() {
  while (serialGPS.available()) {
    // get the new byte:
    char inChar = (char)serialGPS.read();
    // add it to the inputString:
    gpsSentence += inChar;
    // if the incoming character is a newline, fire
    // the data off to ROS:
    if (inChar == '\n') {
      gps_msg.data = gpsSentence.c_str();
      gps.publish(&gps_msg);
      gpsSentence = "";
    }
  }
}


/*
 * relayCallback -- fires on message to subscribed topic
 * input message type RelayControl
 */
void relayCallback(const roboboat::RelayControl& msg)
{
  if(msg.motor == true) {
    digitalWrite(MOTOR_RELAY, HIGH);
  } else if(msg.motor == false) {
    digitalWrite(MOTOR_RELAY, LOW);    
  }
  
  if(msg.pump == true) {
    digitalWrite(PUMP_RELAY, HIGH);
  } else if(msg.pump == false) {
    digitalWrite(PUMP_RELAY, LOW);    
  }
}


//////////////////// More Global Setup ////////////////////
// ROS Subscribed Topics
ros::Subscriber<roboboat::RelayControl> relay("relay_control", &relayCallback);


//////////////////// Arduino Setup ////////////////////
void setup()
{
  // Configure Digital Inputs
  pinMode(WATER_LEFT, INPUT);
  pinMode(WATER_MIDDLE, INPUT);
  pinMode(WATER_RIGHT, INPUT);
  
  // Configure Digital Outputs
  pinMode(PUMP_RELAY, OUTPUT);
  pinMode(MOTOR_RELAY, OUTPUT);
  pinMode(SIREN, OUTPUT);
  
  
  // Setup GPS paramters
  serialGPS.begin(9600);
  serialGPS.write("$PGCMD,33,0*6D\r\n");           // Disable $PGDTOP Sentence
  serialGPS.write("$PMTK220,200*2C\r\n");          // Set 5Hz NMEA output
  serialGPS.write("$PMTK300,200,0,0,0,0*2F\r\n");  // Set 5Hz Position update
  serialGPS.write("$PMTK314,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0*28\r\n"); // GPRMC and GGA
  serialGPS.write("$PMTK301,2*2E\r\n");            // Enable WAAS
  gpsSentence.reserve(200);
  
  // Initialize ROS Node
  nh.initNode();
  
  // Advertise ROS Topics  
  nh.advertise(gps);
  nh.advertise(health);
  
  // Subscribe to ROS Topics
  nh.subscribe(relay);  
}


//////////////////// Main Arduino Loop ////////////////////
void loop()
{
  // Left Motor Controller Temp
  health_msg.temp_l = readTemp(TEMP_LEFT);
  // Right Motor Controller Temp
  health_msg.temp_r = readTemp(TEMP_RIGHT);
  // Primary Battery Voltage
  health_msg.batt_p = readVoltage(BATT_PRIMARY);
  // Left Motor Battery Voltage
  health_msg.batt_l = readVoltage(BATT_LEFT);
  // Right Motor Battery Voltage
  health_msg.batt_r = readVoltage(BATT_RIGHT);
  // Left Water Sensor
  health_msg.water_l = !digitalRead(WATER_LEFT);
  // Middle Water Sensor
  health_msg.water_m = !digitalRead(WATER_MIDDLE);
  // Right Water Sensor
  health_msg.water_r = !digitalRead(WATER_RIGHT);
  // Sound alarm if water detected
  if(health_msg.water_l == 1 || health_msg.water_r == 1 || health_msg.water_m == 1)
  {
    digitalWrite(SIREN, HIGH);  
  } else {
    digitalWrite(SIREN, LOW);
  }
  // Publish message to ROS
  health.publish(&health_msg);
  
  nh.spinOnce();  
}

