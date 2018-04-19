#include <Adafruit_GPS.h>
#include <SoftwareSerial.h>


HardwareSerial GPS = Serial3;


String gpsSentence = "";
boolean gpsComplete = false;


void setup() {
  // put your setup code here, to run once:\
  
  GPS.begin(9600);
  GPS.write("$PGCMD,33,0*6D\r\n");       // Disable $PGDTOP Sentence
  GPS.write("$PMTK220,200*2C\r\n");      // Set 5Hz NMEA output
  GPS.write("$PMTK300,200,0,0,0,0*2F");  // Set 5Hz Position update
  GPS.write("$PMTK314,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0*28"); // GPRMC and GGA
  GPS.write("$PMTK301,2*2E");            // Enable WAAS
  
  Serial.begin(9600);
  gpsSentence.reserve(200);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  if (gpsComplete) {
    /* A full GPS sentence is ready, so send data */
   // gps_msg.data = gpsSentence.c_str();
    //gps.publish(&gps_msg);
    Serial.write(gpsSentence.c_str());
    
    gpsSentence = "";
    gpsComplete = false;
  }
  
}

/* OLD GPS Code
 * SerialEvent occurs whenever a new data comes in the
 * hardware serial RX.  This routine is run between each
 * time loop() runs, so using delay inside loop can delay
 * response.  Multiple bytes of data may be available.
 */
void serialEvent3() {
  while (GPS.available()) {
    // get the new byte:
    char inChar = (char)GPS.read();
    //Serial.write(inChar);
    //Serial.write("x");
    // add it to the inputString:
    gpsSentence += inChar;
    // if the incoming character is a newline, set a flag
    // so the main loop can do something about it:
    if (inChar == '\n') {
      gpsComplete = true;
    }
  }
}
