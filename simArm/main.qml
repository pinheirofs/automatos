import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4

import simarm.Actuator 1.0

Window {
    visible: true
    width: 240
    height: 480
    color: "#ffffff"
    title: qsTr("Arm Simulator")

    Column {
        id: column

        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent

        Row {
            id: wirstRow
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Text {
                id: wirstText
                width: parent.width / 2
                text: qsTr("Wrist")
             }

            Text {
                id: wirstValueText
                width: parent.width / 2
                text: wristSlider.value
                horizontalAlignment: Text.AlignRight
            }
        }

        Actuator {
            id: wirstActuator
        }

        Slider {
            id: wristSlider
            stepSize: 0.01
            to: 90
            from: -90
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            value: 0

            onValueChanged: waistActuator.commandValue = value
        }

        Row {
            id: elbowRow
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Text {
                id: elbowText
                text: qsTr("Elbow")
                width: parent.width / 2
            }

            Text {
                id: elbowValueText
                width: parent.width / 2
                text: elbowSlider.value
                horizontalAlignment: Text.AlignRight
            }
        }

        Actuator {
            id: elbowActuator
        }

        Slider {
            id: elbowSlider
            stepSize: 0.01
            to: 90
            from: -90
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            value: 0

            onValueChanged: elbowActuator.commandValue = value
        }

        Row {
            id: shoulderRow
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Text {
                id: shoulderText
                text: qsTr("Shoulder")
                width: parent.width / 2
            }

            Text {
                id: sholderValueText
                width: parent.width / 2
                text: shoulderSlider.value
                horizontalAlignment: Text.AlignRight
            }
        }

        Actuator {
            id: shoulderActuator
        }

        Slider {
            id: shoulderSlider
            stepSize: 0.01
            to: 90
            from: -90
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            value: 0

            onValueChanged: shoulderActuator.commandValue = value
        }

        Row {
            id: waistRow
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Text {
                id: waistText
                text: qsTr("Waist")
                width: parent.width / 2
            }

            Text {
                id: waistValueText
                width: parent.width / 2
                text: waistSlider.value
                horizontalAlignment: Text.AlignRight
            }
        }

        Actuator {
            id: waistActuator
        }

        Slider {
            id: waistSlider
            stepSize: 0.01
            to: 90
            from: -90
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            value: 0

            onValueChanged: waistActuator.commandValue = value
        }
    }
}
