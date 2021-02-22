import QtQuick 2.4
import QtQuick.Controls 2.2

// прямоугольник, которому задаются определенные свойства для фона и некоторого расположения объектов, чтобы не делать это по несколько раз на разных стр
Rectangle
{
    id: mainRectangle
    width: 1520
    height: 1080
    clip: true
    property alias title: label.text // возможность вставки текста в каждой стр сверху и в sideBar, это типо Settings, Peripheral divices, CPU и тд
    color: changecolor

    Label // собственно сюда этот текст и вставляеется
    {
        id: label
        x: 8
        y: 18
        text: qsTr("")
        font.pixelSize: 27
        color: "#f0f8ff"
    }

    Rectangle // боковой повернутый на 45 градусов прямоугольник, который находится в правом верхнем углу
    {
        id: littleRectangle
        x: 1156
        y: -134
        width: 600
        height: 400
        color: changerect
        rotation: 45
    }
}
