// Arduino (C Code) for a Temperature Sensor

#include "DHT.h"
#include <Adafruit_SSD1306.h>
#include <Wire.h>
#define DHTPIN 2
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);


const int dataPins[] = { 11, 10, 9, 8, 7 };
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT);

void setup() {
 Serial.begin(9600);
 dht.begin();
 for (int i = 0; i < sizeof(dataPins) / sizeof(dataPins[0]); i++) {
   pinMode(dataPins[i], OUTPUT);
   digitalWrite(dataPins[i], LOW);
 }
 Wire.begin();
 display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
 display.clearDisplay();
 display.setTextSize(1);
 display.setTextColor(SSD1306_WHITE);
 display.setCursor(0, 0);
 display.println("EECS 3201 Project");
 display.display();
 delay(2000);
 display.clearDisplay();
}
void displayBinary(int value) {
 value = constrain(value, 0, 31);
 for (int i = 0; i < 5; i++) {
   digitalWrite(dataPins[i], (value >> i) & 1);
 }
}
void loop() {
 delay(2000);
 float tempC = dht.readTemperature();
 if (isnan(tempC)) {
   Serial.println("Sensor Failed");
 } else {
   int tempInt = int(tempC);
   displayBinary(tempInt);
   display.clearDisplay();
   display.setTextSize(1);
   display.setTextColor(SSD1306_WHITE);
   display.setCursor(0, 0);
   display.println("Temperature:");
   display.setTextSize(2);
   display.setCursor(0, 16);
   display.print(tempInt);
   display.print(" C");
   display.display();


   Serial.print("Temperature (Celsius): ");
   Serial.println(tempInt);
 }
}
