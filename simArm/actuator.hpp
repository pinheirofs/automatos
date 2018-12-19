#ifndef ACTUATOR_HPP
#define ACTUATOR_HPP

#include <QObject>

class Actuator : public QObject {
  Q_OBJECT
  Q_PROPERTY(float commandValue READ getCommandValue WRITE setCommandValue
                 NOTIFY commandValueChange)

public:
  explicit Actuator(QObject *parent = nullptr);

  float getCommandValue() const;
  void setCommandValue(const float commandValue);

signals:
  void commandValueChange();

private:
  float commandValue;
};

#endif // ACTUATOR_HPP
