import QtQuick 2.0
import "components"

Rectangle {
    id: mainView
    width: 800
    height: 480
    color: "#222222"
    radius: 0

    Item {
        id: pcmDiagDataItem
        x: 455
        y: 8
        width: 337
        height: 464

        Text {
            id: motTrqUnits1
            x: 70
            y: 329
            color: "#ffffff"
            text: qsTr("(Nm)")
            font.pixelSize: 18
        }

        Text {
            id: motTrqUnits2
            x: 70
            y: 86
            color: "#ffffff"
            text: qsTr("(Nm)")
            font.pixelSize: 18
        }

        Image {
            id: pcmVehicle
            x: 117
            y: 35
            width: 208
            height: 395
            source: "images/pcmVehicle-removebg.png"
        }

        Text {
            id: motTmpUnits1
            x: 70
            y: 114
            width: 41
            height: 22
            color: "#ffffff"
            text: qsTr("(°C)")
            font.pixelSize: 18
        }

        Text {
            id: motTmpUnits2
            x: 70
            y: 357
            width: 41
            height: 22
            color: "#ffffff"
            text: qsTr("(°C)")
            font.pixelSize: 18
        }

        Text {
            id: ressSOCUnits
            x: 70
            y: 210
            width: 41
            height: 22
            color: "#ffffff"
            text: qsTr("(%)")
            font.pixelSize: 18
        }

        Text {
            id: ressTmpUnits
            x: 70
            y: 238
            width: 41
            height: 22
            color: "#ffffff"
            text: qsTr("(°C)")
            font.pixelSize: 18
        }

        TextInput {
            objectName: "drvMode"
            id: drvMode
            x: 8
            y: 8
            width: 96
            height: 20
            color: "#ffffff"
            text: qsTr("N/A")
            font.pixelSize: 18
        }

        TextInput {
            objectName: "fMotTrq"
            id: fMotTrq
            x: 8
            y: 86
            width: 56
            height: 22
            color: "#ffffff"
            text: qsTr("N/A")
            font.pixelSize: 18
        }

        TextInput {
            objectName: "rMotTrq"
            id: rMotTrq
            x: 8
            y: 329
            width: 56
            height: 22
            color: "#ffffff"
            text: qsTr("N/A")
            font.pixelSize: 18
        }

        TextInput {
            objectName: "fMotTmp"
            id: fMotTmp
            x: 8
            y: 114
            width: 56
            height: 22
            color: "#ffffff"
            text: qsTr("N/A")
            font.pixelSize: 18
        }

        TextInput {
            objectName: "rMotTmp"
            id: rMotTmp
            x: 8
            y: 357
            width: 56
            height: 22
            color: "#ffffff"
            text: qsTr("N/A")
            font.pixelSize: 18
        }

        TextInput {
            objectName: "ressTmp"
            id: ressTmp
            x: 8
            y: 238
            width: 56
            height: 22
            color: "#ffffff"
            text: qsTr("N/A")
            font.pixelSize: 18
        }

        TextInput {
            objectName: "ressSOC"
            id: ressSOC
            x: 8
            y: 210
            width: 56
            height: 22
            color: "#ffffff"
            text: qsTr("N/A")
            font.pixelSize: 18
        }
    }

    Image {
        id: gtLogo
        x: 93
        y: 99
        width: 280
        height: 282
        fillMode: Image.PreserveAspectFit
        source: "images/GTLogo.png"
    }
}

