#include "mainwin.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <QFile>
#include <fstream>

using namespace std;

MyClass::MyClass(QObject *parent): QObject(parent)
{
}

void MyClass::cppSlots()
{
    string cmd = "dmesg > /home/tana/Proj/dmesg.txt";
    system(cmd.c_str());
}

string MyClass::memSlots()
{
    QFile file("/proc/meminfo");
    QTextStream stream;
    stream.setDevice(&file);
    file.open(QIODevice::ReadOnly);
    string strinf = stream.readAll().toStdString();
    file.close();
    return strinf;
}
string MyClass::cpuSlots()
{
    QFile file("/proc/cpuinfo");
    QTextStream stream;
    stream.setDevice(&file);
    file.open(QIODevice::ReadOnly);
    string strinf = stream.readAll().toStdString();
    file.close();
    return strinf;
}
string MyClass::devicesSlots()
{
    QFile file("/proc/devices");
    QTextStream stream;
    stream.setDevice(&file);
    file.open(QIODevice::ReadOnly);
    string strinf = stream.readAll().toStdString();
    file.close();
    return strinf;
}
