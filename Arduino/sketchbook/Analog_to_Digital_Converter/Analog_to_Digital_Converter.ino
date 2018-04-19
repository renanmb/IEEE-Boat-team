// Analogue to Digital Converter

  /*Reads an analog input on pin 0, converts it to voltage, and prints the result to the serial monitor.
  Graphical representation is available using serial plotter (Tools > Serial Plotter menu)
  Attach the center pin of a potentiometer to pin A0, and the outside pins to +5V and ground

  Reference:  https://www.arduino.cc/en/Tutorial/ReadAnalogVoltage#toc2

*/



//The setup routine runs when reset is pressed
void setup()
{
  
  Serial.begin(9600);
  //Initializes serial communication at 9600 bits per second
  
}

void loop()
{
 
 int sensorValue = analogRead(A0);
   //it's reading the input on analog pin 0
 
 float voltage = sensorValue * (5.0 / 1023.0);
   //This converts the analog reading (from 0 to 1023) to voltage (0 to 5V)
 
 Serial.println(voltage) ;
 
 //prints voltage output from 0 to 5V.
  
}

//click "Serial monitor" at top right 
