#include <iostream>
#include <string>

#include <Qt3DQuickExtras/Qt3DQuickWindow>

#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <actuator.hpp>

using std::cerr;
using std::endl;

int main(int argc, char *argv[]) {
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

  QGuiApplication app(argc, argv);

  qmlRegisterType<Actuator>("simarm.Actuator", 1, 0, "Actuator");

  QQmlApplicationEngine engine;
  engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
  if (engine.rootObjects().isEmpty()) {
    cerr << "Erro ao carregar tela de controles" << endl;
    return -1;
  }

  Qt3DExtras::Quick::Qt3DQuickWindow view;
  view.setSource(QUrl(QStringLiteral("qrc:/arm3d.qml")));
  view.show();

  return app.exec();
}
