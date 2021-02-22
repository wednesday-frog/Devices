#ifndef MAINWIN_H
#define MAINWIN_H

#include <QObject>
#include <QDebug>
using namespace std;

class MyClass : public QObject
{
    Q_OBJECT
public:
    explicit MyClass(QObject *parent = 0);

public slots:
    void cppSlots();
    string memSlots();
    string cpuSlots();
    string devicesSlots();
;};


#endif // MAINWIN_H
