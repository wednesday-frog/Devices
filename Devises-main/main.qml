import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

ApplicationWindow
{
    property string changecolor: "#000000" // переменные для фона
    property string changerect: "#3a3a3a"
    id: applicationWindow
    visible: true
    width: 1920 // размеры окна приложения
    height: 1080
    title: qsTr("Working with peripheral devices")

    StackLayout // собственно, где место расположения страниц
    {
        id: swipeView
        anchors.left: sideBar.right // компановка
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        currentIndex: tabBar.currentIndex // компановка
        Devices // подключение стр переф устр
        {
            id: devices
            property alias writeButton: writeButton
            property alias buttonWriteFile: buttonWriteFile
            Button
            {
                id: buttonWriteFile
                y: 920
                height: 44
                anchors.right: parent.right
                anchors.rightMargin: 92
                Text
                {
                    id: writeButton
                    x: 3
                    y: -2
                    width: 223
                    height: 48
                    text: qsTr("Write to file")
                    font.pointSize: 14
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                // компановка
                anchors.left: parent.left
                anchors.leftMargin: 1139
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 116
                font.pointSize: 16
                onClicked: _myClass.cppSlots()
            }

            PageBackground
            {
                x: 54
                y: 80
                width: 1063
                height: 825
                ScrollView
                {
                    id: scrollView
                    x: 92
                    y: 108
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 20
                    anchors.topMargin: 14
                    anchors.fill: parent
                    contentWidth: availableWidth
                    Text // будет осуществлятся ввывод о переф устр
                    {
                        id: textArea
                        width: 862
                        verticalAlignment: Text.AlignTop
                        elide: Text.ElideNone
                        clip: true
                        anchors.leftMargin: 6
                        anchors.topMargin: 8
                        anchors.rightMargin: 0
                        anchors.bottomMargin: -727
                        anchors.fill: parent
                        font.wordSpacing: -4
                        font.pointSize: 14
                        wrapMode: Text.WordWrap
                        fontSizeMode: Text.Fit
                        color: "#f0ffff"
                        text: stroka
                        font.italic: true
                        horizontalAlignment: Text.AlignLeft
                        textFormat: Text.AutoText
                        font.weight: Font.DemiBold
                        font.family: "Courier"
                    }
                }
            }

        }
        CPU // подключение стр процессор
        {
            PageBackground
            {
                x: 54
                y: 80
                width: 1063
                height: 825
            ScrollView
            {
                id: scrollViewCpu
                x: 92
                y: 108
                anchors.rightMargin: 435
                anchors.bottomMargin: 96
                anchors.leftMargin: 52
                anchors.topMargin: 79
                anchors.fill: parent
                contentWidth: availableWidth
            Text
            {
                id: cpu
                x: 42
                y: 36
                width: 648
                height: 714
                text: cpuinf
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
                color: "#f0ffff"
            }
            }
            }
        }
        Memory // подключение стр память
        {
            PageBackground
            {
                x: 54
                y: 80
                width: 1063
                height: 825
            ScrollView
            {
                id: scrollViewMem
                x: 92
                y: 108
                anchors.rightMargin: 435
                anchors.bottomMargin: 96
                anchors.leftMargin: 52
                anchors.topMargin: 79
                anchors.fill: parent
                contentWidth: availableWidth
            Text
            {
                id: mem
                x: 42
                y: 36
                width: 648
                height: 714
                text: meminf
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
                color: "#f0ffff"
            }
            }
            }
        }
        OS
        {
            PageBackground
            {
                x: 54
                y: 80
                width: 1063
                height: 825
            ScrollView
            {
                id: scrollViewDev
                x: 92
                y: 108
                anchors.rightMargin: 435
                anchors.bottomMargin: 96
                anchors.leftMargin: 52
                anchors.topMargin: 79
                anchors.fill: parent
                contentWidth: availableWidth
            Text
            {
                id: dev
                x: 42
                y: 36
                width: 648
                height: 714
                text: meminf
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
                color: "#f0ffff"
            }
            }
            }
        }
    }

    TabBar
    {
        id: tabBar
        x: 300    // координаты расположения
        y: 1030
        width: 980    // размеры
        height: 50
        font.pointSize: 14
        anchors.right: parent.right      // компановка
        anchors.rightMargin: -6
        anchors.left: sideBar.right
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        currentIndex: swipeView.currentIndex // компановка
        TabButton // кнопки нижняя панель
        {
            id: deviceButton
            height: 50
            text: textView
        }
        TabButton
        {
            id: cpuButton
            height: 50
            text: qsTr("CPU")
        }
        TabButton
        {
            id: memoryButton
            height: 50
            text: qsTr("Memory")
        }
        TabButton
        {
            id: osButton
            height: 50
            text: qsTr("Devices")
        }
    }

    SideBar // панель settings
    {
        id: sideBar
        y: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }
}
