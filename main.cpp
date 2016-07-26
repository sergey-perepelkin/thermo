#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include "ds1820.h"
#include "main.h"
#include <ArduinoJson.h>

const unsigned long HTTP_TIMEOUT = 1000;
const size_t MAX_CONTENT_SIZE = 512;       // max size of the HTTP response

void connectWiFi();
bool getPage();

// WiFi information
/*
SSID = "YOUR SSID"
PW = "YOUR SSID PASSWORD"
IPADR = "192.168.0.126" //Requested static IP address for the ESP
IPROUTER = "192.168.0.1" // IP address for the Wifi router
wifi.setmode(wifi.STATION)
wifi.sta.setip({ip=IPADR,netmask="255.255.255.0",gateway=IPROUTER})
wifi.sta.config(SSID,PW)
*/

const char WIFI_SSID[] = "ZyXEL_KEENETIC_GIGA";
const char WIFI_PSK[] = "aTwhXWPw";
const int sleepTimeS = 10;

// Remote site information
const char http_site[] = "dweet.io";
const char http_resource[] = "/dweet/for/myesp8266?message=lowpower";
const int http_port = 80;
String section="header";


//char json[] = "{\"sensor\":\"gps\",\"time\":1351824120,\"data\":[48.756080,2.302038]}";

// Pin definitions
const int LED_PIN = 5;

// Global variables
WiFiClient client;

void setup() {
	  Serial.begin(9600);
	  Serial.print("Thing GET Example");

  // Set up LED for debugging
  pinMode(LED_PIN, OUTPUT);


  // Connect to WiFi
  connectWiFi();

  // Attempt to connect to website
  if ( !getPage() ) {
    Serial.println("GET request failed");
  }
}



void loop() {

  // If there are incoming bytes, print them
  if ( client.available() ) {
    char c = client.read();
    Serial.print(c);
  }

  // If the server has disconnected, stop the client and WiFi
  if ( !client.connected() ) {
    Serial.println();
    // Close socket and wait for disconnect from WiFi
    client.stop();
    if ( WiFi.status() != WL_DISCONNECTED ) {
      WiFi.disconnect();
    }

    // Turn off LED
    digitalWrite(LED_PIN, LOW);

    // Do nothing
    Serial.println("Finished Thing GET test");
    ESP.deepSleep(sleepTimeS * 1000000);
  }
}

// Attempt to connect to WiFi
void connectWiFi() {

  byte led_status = 0;

  // Set WiFi mode to station (client)
  WiFi.mode(WIFI_STA);

  // Initiate connection with SSID and PSK
  WiFi.begin(WIFI_SSID, WIFI_PSK);

  // Blink LED while we wait for WiFi connection
  while ( WiFi.status() != WL_CONNECTED ) {
    digitalWrite(LED_PIN, led_status);
    led_status ^= 0x01;
    delay(100);
  }

  // Turn LED on when we are connected
  digitalWrite(LED_PIN, HIGH);
}

// Perform an HTTP GET request to a remote page
int dir = 0;
bool getPage() {
	//client.setTimeout(30000);
  // Attempt to make a connection to the remote server
  if ( !client.connect(http_site, http_port) ) {
    return false;
  }
  else
  {
  // Make an HTTP GET request
//  sendRequest(http_site, http_resource);

  if (sendRequest(http_site, http_resource) && skipResponseHeaders())
    {
    char response[MAX_CONTENT_SIZE];
    readReponseContent(response, sizeof(response));
    }
  delay(500);


  Serial.print("closing connection. ");
   return true;
  }
}

bool sendRequest(const char* http_site, const char* http_resource) {
	Serial.print("GET ");
	Serial.println(http_resource);

	client.print("GET ");
	client.println(http_resource);
	client.print("Host: ");
	client.println(http_site);
	client.println("Connection: close");
	client.println();




  return true;
}

void readReponseContent(char* content, size_t maxSize) {
  size_t length = client.readBytes(content, maxSize);
  content[length] = 0;
  Serial.println(content);
}

bool skipResponseHeaders() {
  // HTTP headers end with an empty line
  char endOfHeaders[] = "\r\n\r\n";

  client.setTimeout(HTTP_TIMEOUT);
  bool ok = client.find(endOfHeaders);

  if (!ok) {
    Serial.println("No response or invalid response!");
  }

  return ok;
}
