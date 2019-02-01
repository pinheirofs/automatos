#include <Servo.h>
#include <servosLib.hpp>

Servo servo1;
Servo servo2;

void setupServos(int servo1pin, int servo2pin) {
    servo1.attach(servo1pin);
    servo2.attach(servo2pin);
}

void controlServos() {
    for (int i = 0; i <= 180; i++) {
        servo1.write(i);
        servo2.write(i);

        delay(15);
    }
}

