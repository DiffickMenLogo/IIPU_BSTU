#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "systcom.h"
#include <QtQml>
#include <iostream>
#include "keywork.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    KeyWork a;

    QQmlApplicationEngine engine;
    qmlRegisterType<SystCom>("SystemCommand", 1, 0, "Sys");
    qmlRegisterType<KeyWork>("KWork", 1, 0, "KW");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
