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
            width: 473
            height: 313
            color: "#222222"
            border.color: "#ffffff"
            z: 1

            Text {
                id: txtBx_RESStmp
                x: 16
                y: 148
                width: 171
                height: 22
                color: "#ffffff"
                text: qsTr("RESS Temp")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
            }

            Text {
                id: txtBx_RESSsoc
                x: 16
                y: 120
                width: 171
                height: 22
                color: "#ffffff"
                text: "RESS SoC"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_DrvMode
                x: 16
                y: 281
                width: 171
                height: 22
                color: "#ffffff"
                        text: "Drive Mode"
                        font.pixelSize: 18
            }

            Text {
                id: txtBx_RMotTmp
                x: 16
                y: 234
                width: 171
                height: 22
                color: "#ffffff"
                text: qsTr("Rear Motor Temp")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
            }

            Text {
                id: txtBx_RMotTrq
                x: 16
                y: 206
                width: 171
                height: 22
                color: "#ffffff"
                text: "Rear Motor Torque"
                font.pixelSize: 18
            }

            TextInput {
                objectName: "ressSOC"
                id: ressSOC
                x: 213
                y: 120
                width: 41
                height: 22
                color: "#ffffff"
                text: qsTr("N/A")
                font.pixelSize: 18
            }

            TextInput {
                objectName: "ressTmp"
                id: ressTmp
                x: 213
                y: 148
                width: 41
                        height: 22
                        color: "#ffffff"
                        text: qsTr("N/A")
                        font.pixelSize: 18
            }

            TextInput {
                objectName: "rMotTmp"
                id: rMotTmp
                x: 213
                y: 234
                width: 41
                height: 22
                color: "#ffffff"
                text: qsTr("N/A")
                font.pixelSize: 18
            }

            TextInput {
                objectName: "fMotTmp"
                id: fMotTmp
                x: 213
                y: 66
                width: 41
                height: 22
                color: "#ffffff"
                        text: qsTr("N/A")
                        font.pixelSize: 18
            }

            TextInput {
                objectName: "rMotTrq"
                id: rMotTrq
                x: 213
                y: 206
                width: 41
                height: 22
                color: "#ffffff"
                text: qsTr("N/A")
                font.pixelSize: 18
            }

            TextInput {
                objectName: "fMotTrq"
                id: fMotTrq
                x: 213
                y: 38
                width: 41
                height: 22
                color: "#ffffff"
                text: qsTr("N/A")
                font.pixelSize: 18
            }

            TextInput {
                objectName: "drvMode"
                id: drvMode
                x: 213
                y: 283
                width: 79
                height: 20
                color: "#ffffff"
                text: qsTr("Normal")
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon7
                x: 191
                y: 148
                width: 18
                height: 22
                color: "#ffffff"
                        text: qsTr(":")
                        font.pixelSize: 18
            }

            Text {
                id: txtBx_colon6
                x: 191
                y: 120
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_FMotTmp
                x: 16
                y: 66
                width: 171
                height: 22
                color: "#ffffff"
                text: qsTr("Front Motor Temp")
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 18
            }

            Text {
                id: txtBx_FMotTrq
                x: 16
                y: 38
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
                x: 191
                y: 281
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon2
                x: 191
                y: 38
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon3
                x: 191
                y: 66
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon4
                x: 191
                y: 206
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_colon5
                x: 191
                y: 234
                width: 18
                height: 22
                color: "#ffffff"
                text: ":"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TrqUnits1
                x: 260
                y: 38
                width: 32
                height: 22
                color: "#ffffff"
                text: "(%)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TrqUnits2
                x: 260
                y: 206
                width: 32
                height: 22
                color: "#ffffff"
                text: "(%)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_SoCUnits
                x: 260
                y: 120
                width: 32
                height: 22
                color: "#ffffff"
                text: "(%)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TmpUnits1
                x: 260
                y: 66
                width: 32
                height: 22
                color: "#ffffff"
                text: "(°C)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TmpUnits2
                x: 260
                y: 234
                width: 32
                height: 22
                color: "#ffffff"
                text: "(°C)"
                font.pixelSize: 18
            }

            Text {
                id: txtBx_TmpUnits3
                x: 260
                y: 148
                width: 32
                height: 22
                color: "#ffffff"
                text: "(°C)"
                font.pixelSize: 18
            }

            Image {
                id: img_pcmArch
                x: 301
                y: 7
                width: 163
                height: 283
                z: 3
                source: "images/pcmVehicle-removebg.png"
            }
        }

        Image {
            id: img_gtLogo
            x: 487
            y: 8
            width: 108
            height: 79
            z: 2
            fillMode: Image.PreserveAspectFit
            source: "images/GTLogo.png"
        }

        AnimatedSwitch {
            id: animatedSwitch_DMS
            x: 499
            y: 137
            width: 130
            height: 56
            textOnX: 18
            imageOffHeight: 56
            textOn: "On"
            imageOn: ""
            sliderImageOnX: 1
            textOff: "Off"
            font.family: "DejaVu Sans"
            font.pixelSize: 22
            font.bold: false
            sliderImage: "images/knob.svg"
            textColor: "#ffffff"
            sliderImageOffX: 78
            on: true
            sliderImageY: 2
            imageOffWidth: 130
            textOffX: 78
            imageOff: "images/background.svg"

            onStateChanged: {
                if (on) {
                    connection.sendMessage("DMS.state=1")
                }
                else {
                    connection.sendMessage("DMS.state=0")
                }
            }
        }

        Text {
            id: txtBx_DMS
            x: 533
            y: 101
            width: 62
            height: 30
            color: "#ffffff"
            text: "DMS"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 24
        }

        AnimatedSwitch {
            id: animatedSwitch_Eco
            x: 645
            y: 137
            width: 130
            height: 56
            textOnX: 18
            imageOffHeight: 56
            textOn: "On"
            imageOn: ""
            sliderImageOnX: 1
            textOff: "Off"
            font.family: "DejaVu Sans"
            font.pixelSize: 22
            font.bold: false
            sliderImage: "images/knob.svg"
            textColor: "#ffffff"
            sliderImageOffX: 78
            on: false
            sliderImageY: 2
            imageOffWidth: 130
            textOffX: 78
            imageOff: "images/background.svg"

            onStateChanged: {
                if (on) {
                    connection.sendMessage("Eco.state=1")
                }
                else {
                    connection.sendMessage("Eco.state=0")
                }
            }
        }

        Text {
            id: txtBx_Eco
            x: 679
            y: 101
            width: 62
            height: 30
            color: "#ffffff"
            text: "Eco"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
        }

}

