/****************************************************************************
 **
 ** Copyright (C) 2013-2014 Reach Technology Inc.
 ** All rights reserved.
 **
 ** This code is protected by international copyright laws. This file may
 ** only be used in accordance with a license and cannot be used on
 ** hardware other than supplied by Reach Technology Inc. We appreciate
 ** your understanding and fairness.
 **
****************************************************************************/
import QtQuick 2.0

Rectangle {
    color: "transparent"
    property alias imageOn: imgOn.source
    property alias imageOff: imgOff.source
    property string textPosition: "bottom"
    property alias label: txtField.text
    property int fieldSpacing: 4
    property alias textColor: txtField.color
    property alias font: txtField.font
    width: grid1.width
    height: grid1.height
    clip: false
    property bool on: false

    onTextPositionChanged: {
        state = textPosition;
    }

    Grid {
        id: grid1
        columns: 1
        spacing: fieldSpacing
        width: 200
        height: ((font.pixelSize + fieldSpacing) *2) + imgOn.height

        Rectangle{
            id: top
            color: "transparent"
            width: parent.width
            height: font.pixelSize + fieldSpacing

            Text{
                id: txtField
                anchors.bottom: parent.bottom
                text: "test"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle{
            id: middle
            color: "transparent"
            width: parent.width
            height: imgOn.height

            Text{
                id: txtLeft
                anchors.right: imgOn.left
                anchors.rightMargin: fieldSpacing
                text: txtField.text
                anchors.verticalCenter: parent.verticalCenter
                font: txtField.font
                color: txtField.color
            }

            Image {
                id: imgOn
                width: 58
                height: 58
                source: "../images/ledon.bmp"
                anchors.centerIn: parent
            }

            Image {
                id: imgOff
                x: imgOn.x
                y: imgOn.y
                width: 58
                height: 58
                source: "../images/ledoff.bmp"
            }

            Text{
                id: txtRight
                anchors.left: imgOn.right
                anchors.leftMargin: fieldSpacing
                text: txtField.text
                anchors.verticalCenter: parent.verticalCenter
                font: txtField.font
                color: txtField.color
            }
        }

        Rectangle{
            id: bottom
            color: "transparent"
            width: parent.width
            height: font.pixelSize + fieldSpacing

            Text{
                id: txtBottom
                anchors.top: parent.top
                text: txtField.text
                anchors.horizontalCenter: parent.horizontalCenter
                font: txtField.font
                color: txtField.color
            }
        }

    }

    states: [
        State {
            name: "top"
            PropertyChanges { target: top;  opacity: 1; }
            PropertyChanges { target: bottom;  opacity: 0; }
            PropertyChanges { target: txtLeft; visible: false;}
            PropertyChanges { target: txtRight; visible: false;}
            PropertyChanges { target: imgOn; visible: on;}
            PropertyChanges { target: imgOff; visible: !on;}
        },
        State {
            name: "bottom"
            PropertyChanges { target: top;  opacity: 0; }
            PropertyChanges { target: bottom;  opacity: 1; }
            PropertyChanges { target: txtLeft; visible: false;}
            PropertyChanges { target: txtRight; visible: false;}
            PropertyChanges { target: imgOn; visible: on;}
            PropertyChanges { target: imgOff; visible: !on;}
        },
        State {
            name: "left"
            PropertyChanges { target: top;  opacity: 0; }
            PropertyChanges { target: bottom;  opacity: 0; }
            PropertyChanges { target: txtLeft; visible: true;}
            PropertyChanges { target: txtRight; visible: false;}
            PropertyChanges { target: imgOn; visible: on;}
            PropertyChanges { target: imgOff; visible: !on;}
        },
        State {
            name: "right"
            PropertyChanges { target: top;  opacity: 0; }
            PropertyChanges { target: bottom;  opacity: 0; }
            PropertyChanges { target: txtLeft; visible: false;}
            PropertyChanges { target: txtRight; visible: true;}
            PropertyChanges { target: imgOn; visible: on;}
            PropertyChanges { target: imgOff; visible: !on;}
        }
    ]

    Component.onCompleted: state = textPosition;
}
