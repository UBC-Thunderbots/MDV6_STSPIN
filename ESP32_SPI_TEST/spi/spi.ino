#include <SPI.h>

// Define motor constants.
#define WHEEL_RPM_RESOLUTION 15

// Define CS pins.
#define M1_CS 5
#define M4_CS 4

// Define drive parameters.
#define DRIVE 0x80
#define DIR_POS 0x40
#define DIR_NEG 0x00

typedef enum {
  M1,
  M2,
  M3,
  M4
} Motor_t;

void setup() {
  pinMode(M1_CS, OUTPUT); // set the SS pin as an output
  pinMode(M4_CS, OUTPUT);
  SPI.begin();         // initialize the SPI library
  Serial.begin(115200);

  // debug
  // digitalWrite(M4_CS, LOW);
  // digitalWrite(M4_CS, LOW);
}

void send_spi_cmd(Motor_t motor, uint8_t cmd) {
  uint8_t cs_pin = 0;
  switch(motor) {
    case M1:
      // cs_pin = M1_CS;
      digitalWrite(M1_CS, LOW);
      SPI.transfer(cmd);
      digitalWrite(M1_CS, HIGH);
      break;
    case M4:
      // cs_pin = M4_CS;
      digitalWrite(M4_CS, LOW);
      SPI.transfer(cmd);
      digitalWrite(M4_CS, HIGH);
      break;
    default:
      Serial.println("Invalid motor!");
      return;
  }

}

void send_drive_cmd(uint8_t DIR, float duty_cycle, Motor_t motor) {
  uint8_t duty_cycle_digital = (uint8_t)(duty_cycle * WHEEL_RPM_RESOLUTION);
  uint8_t drive_cmd = DRIVE | DIR | (duty_cycle_digital & 0x0F);

  Serial.println(drive_cmd);
  send_spi_cmd(motor, drive_cmd);
}

void send_stop_cmd(Motor_t motor) {
  uint8_t stop_cmd = 0x00;
  send_spi_cmd(motor, stop_cmd);
}

void loop() {
    send_drive_cmd(DIR_POS, 0.5, M1);
    delay(5000); 
    send_stop_cmd(M1);
    delay(2000);
    
    send_drive_cmd(DIR_POS, 0.5, M4);
    delay(1000);
    send_stop_cmd(M4);
    delay(2000);
    // send_drive_cmd(DIR_NEG, 200, M1);
    // delay(2000);
    // send_stop_cmd(M1);
    // delay(2000);
}