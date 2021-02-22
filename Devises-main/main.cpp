#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>
#include <mainwin.h>
#include <fstream>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <QFile>

using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    string cmd = "dmesg > /home/lena/dmesg.txt";
    system(cmd.c_str());
    engine.rootContext() -> setContextProperty("textView", "Peripheral devices");
    MyClass myClass;
    engine.rootContext()->setContextProperty("_myClass", &myClass);
    QFile file("/home/lena/dmesg.txt");
    file.open(QIODevice::ReadOnly);
    QTextStream text(&file);
    string stroka = text.readAll().toStdString();
    engine.rootContext()->setContextProperty("stroka", stroka.c_str());
    string meminf = myClass.memSlots();
    string cpuinf = myClass.cpuSlots();
    string devinf = myClass.devicesSlots();
    engine.rootContext()->setContextProperty("meminf", meminf.c_str());
    engine.rootContext()->setContextProperty("cpuinf", cpuinf.c_str());
    engine.rootContext()->setContextProperty("devinf", devinf.c_str());
    return app.exec();
}



