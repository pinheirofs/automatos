#ifndef SERVOS_LIB_H
#define SERVOS_LIB_H

#if ARDUINO >= 100
    #include <Arduino.h>
#else
    #include <WProgram.h>
#endif

void setupServos(int servo1pin, int servo2pin);

void controlServos();

#endif // SERVOS_LIB_H

