import QtQuick 2.0

Rectangle {
    id: pcmDiagDataContainer
    x: 368
    y: 128
    width: 424
    height: 344
    color: "#d6dbd4"

    Image {
        id: image4
        x: 91
        y: 52
        width: 203
        height: 284
        source: "images/PCMmodel.png"

        Text {
            id: text4
            x: 60
            y: 110
            text: qsTr("SoC (%)")
            font.pixelSize: 20
        }

        Text {
            id: text5
            x: 60
            y: 147
            text: qsTr("Temp (C)")
            font.pixelSize: 20
        }
    }

    Text {
        id: text6
        x: 8
        y: 10
        text: qsTr("Drive Mode: ")
        font.pixelSize: 30
    }

    Text {
        id: text7
        x: 302
        y: 76
        text: qsTr("F_MotTrq")
        font.pixelSize: 20
    }

    Text {
        id: text8
        x: 302
        y: 106
        text: qsTr("F_MotTemp")
        font.pixelSize: 20
    }

    Text {
        id: text9
        x: 300
        y: 253
        text: qsTr("R_MotTrq")
        font.pixelSize: 20
    }

    Text {
        id: text10
        x: 300
        y: 283
        text: qsTr("R_MotTemp")
        font.pixelSize: 20
    }
}
