import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

// используем заготовку pageBackground
PageBackground
{
    id: pageBackground
    width: 400
    height: 1080
    property alias checkGreen: checkGreen // обработчики checkBox
    property alias checkPurple: checkPurple
    property alias checkRed: checkRed
    property alias checkBlack: checkBlack
    title: "Settings"

    // для белой рамочки
    GroupBox
    {
        id: groupBox
        x: 8
        y: 59
        width: 372
        height: 872
        title: qsTr("")

        // компановка GridLayout
        GridLayout
        {
            id: grid
            x: 7
            y: 109
            width: 253
            height: 271
            rows: 4
            columns: 2

            // checkBox если стоит галочка, то выбирается определенный цвет; Label надписи этих цветов, которые можно выбрать
            CheckBox
            {
                id: checkBlack
                text: qsTr("")
                checked: true
            }

            Label
            {
                id: label
                text: qsTr("Black")
                color: "#F0F8FF"
                Layout.preferredHeight: 25
                Layout.preferredWidth: 109
                font.pointSize: 14
            }

            CheckBox
            {
                id: checkGreen
                text: qsTr("")
            }

            Label
            {
                id: label1
                text: qsTr("Green")
                color: "#F0F8FF"
                Layout.preferredHeight: 25
                Layout.preferredWidth: 109
                font.pointSize: 14
            }

            CheckBox
            {
                id: checkRed
                text: qsTr("")
            }

            Label
            {
                id: label2
                text: qsTr("Red")
                color: "#F0F8FF"
                Layout.preferredHeight: 25
                Layout.preferredWidth: 109
                font.pointSize: 14
            }

            CheckBox
            {
                id: checkPurple
                text: qsTr("")
            }

            Label
            {
                id: label3
                text: qsTr("Purple")
                color: "#F0F8FF"
                Layout.preferredHeight: 25
                Layout.preferredWidth: 109
                font.pointSize: 14
            }
        }


        // надпись цвета
        Label
        {
            id: labelColor
            x: 7
            y: 37
            color: "#f0f8ff"
            text: qsTr("Color")
            anchors.bottom: parent.bottom
            anchors.leftMargin: 19
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.bottomMargin: 961
            anchors.right: parent.right
            anchors.topMargin: 72
            anchors.rightMargin: 117
            font.pointSize: 18
        }

        // надпись свойства 3 пункт непонятный
        Label
        {
            id: labelProperties
            x: 7
            y: 586
            text: qsTr("Properties")
            anchors.top: parent.top
            anchors.topMargin: 436
            anchors.right: parent.right
            anchors.rightMargin: 117
            anchors.left: parent.left
            anchors.leftMargin: 19
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 412
            font.pointSize: 18
            color: "#F0F8FF"
        }
    }
}
