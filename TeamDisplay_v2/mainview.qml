import QtQuick 2.0
import "components"

Rectangle {
    id: mainView
    width: 800
    height: 480
    color: "#222222"
    radius: 0

        Rectangle {
            id: rect_pcmDiagData
            x: 8
            y: 8
            width: 318
            height: 240
            color: "#222222"
            border.color: "#ffffff"
            z: 1

            Text {
                id: txtBx_RESStmp
                x: 22
                y: 206
                width: 171
                height: 22
                color: "#ffffff"
                text: qsTr("RESS Temp")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
            }

            Text {
                id: txtBx_RESSsoc
                x: 22
                y: 178
                width: 171
                height: 22
                color: "#ffffff"
                text: "RESS SoC"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_DrvMode
                x: 22
                y: 38
                width: 171
                height: 22
                color: "#ffffff"
                        text: "Drive Mode"
                        font.pixelSize: 18
            }

            Text {
                id: txtBx_RMotTmp
                x: 22
                y: 150
                width: 171
                height: 22
                color: "#ffffff"
                text: qsTr("Rear Motor Temp")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
            }

            Text {
                id: txtBx_RMotTrq
                x: 22
                y: 122
                width: 171
                height: 22
                color: "#ffffff"
                text: "Rear Motor Torque"
                font.pixelSize: 18
            }

            TextInput {
                objectName: "ressSOC"
                id: ressSOC
                x: 219
                y: 178
                width: 41
                height: 22
                color: "#ffffff"
                text: qsTr("N/A")
                font.pixelSize: 18
            }

            TextInput {
                objectName: "ressTmp"
                id: ressTmp
                x: 219
                y: 206
                width: 41
                        height: 22
                        color: "#ffffff"
                        text: qsTr("N/A")
                        font.pixelSize: 18
            }

            TextInput {
                objectName: "rMotTmp"
                id: rMotTmp
                x: 219
                y: 150
                width: 41
                height: 22
                color: "#ffffff"
                text: qsTr("N/A")
                font.pixelSize: 18
            }

            TextInput {
                objectName: "fMotTmp"
                id: fMotTmp
                x: 219
                y: 94
                width: 41
                height: 22
                color: "#ffffff"
                        text: qsTr("N/A")
                        font.pixelSize: 18
            }

            TextInput {
                objectName: "rMotTrq"
                id: rMotTrq
                x: 219
                y: 122
                width: 41
                height: 22
                color: "#ffffff"
                text: qsTr("N/A")
                font.pixelSize: 18
            }

            TextInput {
                objectName: "fMotTrq"
                id: fMotTrq
                x: 219
                y: 66
                width: 41
                height: 22
                color: "#ffffff"
                text: qsTr("N/A")
                font.pixelSize: 18
            }

            TextInput {
                objectName: "drvMode"
                id: drvMode
                x: 219
                y: 40
                width: 79
                height: 20
                color: "#ffffff"
                text: qsTr("Normal")
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon7
                x: 197
                y: 206
                width: 18
                height: 22
                color: "#ffffff"
                        text: qsTr(":")
                        font.pixelSize: 18
            }

            Text {
                id: txtBx_colon6
                x: 197
                y: 178
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_FMotTmp
                x: 22
                y: 94
                width: 171
                height: 22
                color: "#ffffff"
                text: qsTr("Front Motor Temp")
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 18
            }

            Text {
                id: txtBx_FMotTrq
                x: 22
                y: 66
                width: 171
                height: 22
                color: "#ffffff"
                text: "Front Motor Torque"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_pcmDiag
                x: 10
                y: 10
                width: 196
                height: 22
                color: "#ffffff"
                text: "PCM Diagnostic Data"
                font.bold: true
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon1
                x: 197
                y: 38
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon2
                x: 197
                y: 66
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon3
                x: 197
                y: 94
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon4
                x: 197
                y: 122
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon5
                x: 197
                y: 150
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TrqUnits1
                x: 266
                y: 66
                width: 32
                height: 22
                color: "#ffffff"
                text: "(%)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TrqUnits2
                x: 266
                y: 122
                width: 32
                height: 22
                color: "#ffffff"
                text: "(%)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_SoCUnits
                x: 266
                y: 178
                width: 32
                height: 22
                color: "#ffffff"
                text: "(%)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TmpUnits1
                x: 266
                y: 94
                width: 32
                height: 22
                color: "#ffffff"
                text: "(°C)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TmpUnits2
                x: 266
                y: 150
                width: 32
                height: 22
                color: "#ffffff"
                text: "(°C)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TmpUnits3
                x: 266
                y: 206
                width: 32
                height: 22
                color: "#ffffff"
                text: "(°C)"
                font.pixelSize: 18
            }
        }

        Image {
            id: gtLogo
            x: 657
            y: 8
            width: 135
            height: 96
            z: 2
            fillMode: Image.PreserveAspectFit
            source: "images/GTLogo.png"
        }
}

