#if ARDUINO >= 100
    #include <Arduino.h>
#else
    #include <WProgram.h>
#endif

#include <servosLib.hpp>

uint8_t servo1pin = 2;
uint8_t servo2pin = 3;

void setup() {
    setupServos(servo1pin, servo2pin);
}

void loop() {
    controlServos();
}

