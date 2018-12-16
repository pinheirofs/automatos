import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4

Window {
    visible: true
    width: 240
    height: 480
    color: "#ffffff"
    title: qsTr("Robotic Arm Simulator")

    Column {
        id: column

        spacing: 10

        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent

        Text {
            id: wirstText
            width: 110
            text: qsTr("Wrist")
            font.pixelSize: 12
        }

        Slider {
            id: wristSlider
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            value: 0.5
        }

        Text {
            id: elbowText
            height: 20
            width: 110
            text: qsTr("Elbow")
            font.pixelSize: 12
        }

        Slider {
            id: elbowSlider
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            value: 0.5
        }

        Text {
            id: shoulderText
            height: 20
            width: 110
            text: qsTr("Shoulder")
            font.pixelSize: 12
        }

        Slider {
            id: shoulderSlider
            y: 80
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            value: 0.5
        }

        Text {
            id: waistText
            height: 20
            width: 110
            text: qsTr("Waist")
            font.pixelSize: 12
        }

        Slider {
            id: waistSlider
            y: 100
            anchors.right: parent.right
            anchors.rightMargin: 2
            anchors.left: parent.left
            anchors.leftMargin: 0
            value: 0.5
        }
    }
}
