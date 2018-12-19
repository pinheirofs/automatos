#include "actuator.hpp"

Actuator::Actuator(QObject *parent) : QObject(parent) {}

float Actuator::getCommandValue() const { return commandValue; }

void Actuator::setCommandValue(const float commandValue) {
  this->commandValue = commandValue;
}
