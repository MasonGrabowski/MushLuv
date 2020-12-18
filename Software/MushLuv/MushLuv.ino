//MushLuv Software

#include <Wire.h>
#include <TimeLib.h>
#include <DS1307RTC.h>

#include "DHT.h"
#include "Adafruit_CCS811.h"

#define DHTPIN 15   //since using pin 15 disconnect from board when uploading
#define DHTTYPE DHT22   // DHT 22  (AM2302), AM2321

#include <TeensyUserInterface.h>
#include <font_Arial.h>
#include <font_ArialBold.h>


//
// create the user interface object
//
TeensyUserInterface ui;

Adafruit_CCS811 ccs;

DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);

  Serial.println("CCS811 test");
  Serial.println(F("DHTxx test!"));

  ui.begin(LCD_ORIENTATION_LANDSCAPE_4PIN_RIGHT, Arial_9_Bold);
  
  dht.begin();

  if(!ccs.begin()){
    Serial.println("Failed to start sensor! Please check your wiring.");
    while(1);
  }

  // Wait for the sensor to be ready
  while(!ccs.available());

}

void loop() {

// clear display before displaying new sensor data
  ui.clearDisplaySpace();

  tmElements_t tm;

  if (RTC.read(tm)) {
// calls displayTime() function to write the updated time and date to the display
    displayTime(print2digits(tm.Hour),print2digits(tm.Minute),print2digits(tm.Day),print2digits(tm.Month));

// Print statements for debugging Real Time Clock
//    Serial.print("Ok, Time = ");
//    Serial.print(print2digits(tm.Hour));
//    Serial.write(':');
//    Serial.print(print2digits(tm.Minute));
//    Serial.write(':');
//    Serial.print(print2digits(tm.Second));
//    Serial.print(", Date (D/M) = ");
//    Serial.print(tm.Day);
//    Serial.write('/');
//    Serial.print(tm.Month);

  } else {
    if (RTC.chipPresent()) {
      Serial.println("The DS1307 is stopped.  Please run the SetTime");
      Serial.println("example to initialize the time and begin running.");
      Serial.println();
    } else {
      Serial.println("DS1307 read error!  Please check the circuitry.");
      Serial.println();
    }
    delay(9000);
  }


  // Reading temperature or humidity takes about 250 milliseconds!
  // Sensor readings may also be up to 2 seconds 'old' (its a very slow sensor)
  float h = dht.readHumidity();
  // Read temperature as Celsius (the default)
  float t = dht.readTemperature();
  // Read temperature as Fahrenheit (isFahrenheit = true)
  float f = dht.readTemperature(true);

  // Check if any reads failed and exit early (to try again).
  if (isnan(h) || isnan(t) || isnan(f)) {
    Serial.println(F("Failed to read from DHT sensor!"));
    return;
  }

// calls displayTemp() function to write the updated temp and humidity data to the display
  displayTemp(h, f);

// Print statements for debugging DHT sensor
//  Serial.print(F("Temperature: "));
//  Serial.print(f);
//  Serial.println(F("°F "));
//  Serial.print(F("Humidity: "));
//  Serial.print(h);
//  Serial.print("%");
//  Serial.println(" ");



  
  if(ccs.available()){
    if(!ccs.readData()){
      int eco = ccs.geteCO2();
      int tvoc = ccs.getTVOC();

// calls displayVOC() function to write the updated eCO2 and VOC data to the display
      displayVOC(eco, tvoc);
      
// Print statements for debugging ccs sensor
//      Serial.println(" ");
//      Serial.print("CO2: ");
//      Serial.print(ccs.geteCO2());
//      Serial.println("ppm");
//      Serial.print("TVOC: ");
//      Serial.print(ccs.getTVOC());
//      Serial.print("ppb");
//      Serial.println(" ");
    }
    else{
      Serial.println("ERROR!");
      while(1);
    }
  }
  
//  Serial.println("----------------------");


  delay(15000);
}






void displayTime(String h, String m, String dy, String mh){
  int x = 20;
  int y = 20;
  int w = 130;
  int l = 200;
  int r = 15;
  uint16_t color = LCD_MAGENTA;
  ui.lcdDrawRoundedRectangle(x, y, w, l, r, color);

  ui.lcdSetCursorXY(84, 54);
  ui.lcdSetFont(Arial_32_Bold);
  

  String s = h + ":" + m;
  
  const char * thetime = s.c_str();

  ui.lcdPrintCentered(thetime);


  ui.lcdDrawLine(30,120,140,120,color);
  
  
  ui.lcdSetCursorXY(84, 150);
  ui.lcdSetFont(Arial_32_Bold);
  

  String date = mh + "/" + dy;
  
  const char * thedate = date.c_str();

  ui.lcdPrintCentered(thedate);
  
}





void displayTemp(float h, float f){
  int  x = 170;
  int  y = 20;
  int  w = 130;
  int  l = 90;
  int  r = 15;
  uint16_t  color = LCD_MAGENTA;
  ui.lcdDrawRoundedRectangle(x, y, w, l, r, color);


  // Display current temp/humidity
  
  ui.lcdSetCursorXY(180, 40);
  ui.lcdSetFont(Arial_14);
  
  String temp = "Temp: " + String(f);
  const char * theTemp = temp.c_str();

  ui.lcdPrint(theTemp);
  

  
  ui.lcdSetCursorXY(180, 75);
  ui.lcdSetFont(Arial_14);

  String humidity = "Hm: " + String(h);
  const char * theHumidity = humidity.c_str();

  ui.lcdPrint(theHumidity);

}





void displayVOC(int eco, int tvoc){
  int  x = 170;
  int  y = 130;
  int  w = 130;
  int  l = 90;
  int  r = 15;
  uint16_t  color = LCD_MAGENTA;
  ui.lcdDrawRoundedRectangle(x, y, w, l, r, color);


  // Display current CO2/VOCs
  
  ui.lcdSetCursorXY(180, 152);
  ui.lcdSetFont(Arial_10_Bold);
  

  String co = "CO2: " + String(eco) + " (ppm)";
  const char * theCO = co.c_str();

  ui.lcdPrint(theCO);

  
  
  ui.lcdSetCursorXY(180, 187);
  ui.lcdSetFont(Arial_10_Bold);
  

  String voc = "VOCs: " + String(tvoc) + " (ppb)";
  const char * theVOC = voc.c_str();

  ui.lcdPrint(theVOC);

}






String print2digits(int number) {
  String s;
  if (number >= 0 && number < 10) {
    s = '0' + String(number);
  }
  s = String(number);
  return s;
}
