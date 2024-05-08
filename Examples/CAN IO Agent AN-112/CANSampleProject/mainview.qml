import QtQuick 1.1
import "components"

Rectangle {
    id: page
    width: 480
    height: 272

    ImageButton {
        id: start_button
        x: 182
        y: 36
        width: 60
        height: 40
        text: "Start"
        imageUp: "images/internal_button_up.bmp"
        font.pixelSize: 18
        textColor: "#000000"
        imageDown: "images/internal_button_dn.bmp"
        font.bold: false
        font.family: "Arial"

        onButtonPress: {
//            oil.on=true
            connection.sendMessage("Start.state=1")
        }
        onButtonRelease: {
            connection.sendMessage("Start.state=0")
        }
    }

    ImageButton {
        id: stop_button
        x: 182
        y: 206
        width: 60
        height: 40
        text: "Stop"
        imageUp: "images/internal_button_up.bmp"
        font.pixelSize: 18
        textColor: "#000000"
        imageDown: "images/internal_button_dn.bmp"
        font.bold: false
        font.family: "Arial"

        onButtonPress: {
//            oil.on=false
            connection.sendMessage("Stop.state=1")
        }
        onButtonRelease: {
            connection.sendMessage("Stop.state=0")
        }
    }

    LEDLight {
        id: oil_led
        objectName: "oil"
        x: 184
        y: 107
        width: 58
        height: 58
        on: false
        font.pixelSize: 12
        textColor: "#000000"
        textPosition: "bottom"
        label: "OIL"
        fieldSpacing: 4
        font.bold: false
        font.family: "Arial"
        imageOff: "images/ledoff.png"
        imageOn: "images/ledon.png"
    }

    VerticalLevelIndicator {
        id: water_level
        objectName: "water"
        x: 25
        y: 56
        width: 28
        height: 161
        minValue: 0
        hintFontPixelSize: 14
        imageBase: "images/level.png"
        hintFontColor: "#000000"
        value: 0
        showHint: true
        imageOverlay: "images/level_overlay.png"
        maxValue: 18
        increment: 9
        startPosition: "bottom"
        hintFontFamily: "Arial"
    }

    VerticalLevelIndicator {
        id: fuel_level
        objectName: "fuel"
        x: 73
        y: 56
        width: 28
        height: 161
        minValue: 0
        hintFontPixelSize: 14
        imageBase: "images/level.png"
        hintFontColor: "#000000"
        value: 0
        showHint: true
        imageOverlay: "images/level_overlay.png"
        maxValue: 18
        increment: 9
        startPosition: "bottom"
        hintFontFamily: "Arial"
    }

    VerticalLevelIndicator {
        id: temp_level
        objectName: "temp"
        x: 121
        y: 56
        width: 28
        height: 161
        minValue: 0
        hintFontPixelSize: 14
        imageBase: "images/level.png"
        hintFontColor: "#000000"
        value: 0
        showHint: true
        imageOverlay: "images/level_overlay.png"
        maxValue: 18
        increment: 9
        startPosition: "bottom"
        hintFontFamily: "Arial"
    }

    Text {
        id: text1
        x: 23
        y: 36
        text: qsTr("Water")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Text {
        id: text2
        x: 71
        y: 36
        width: 33
        text: qsTr("Fuel")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Text {
        id: text3
        x: 119
        y: 36
        width: 33
        text: qsTr("Temp")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
    }

    Speedometer {
        id: speedometer
        objectName: "speed"
        x: 270
        y: 36
        width: 210
        height: 210
        needleImage: "images/needle.png"
        overlayImageHeight: 105
        min: 0
        needleImageHeight: 63
        overlayImage: "images/overlay.png"
        value: 0
        needleImageWidth: 8
        max: 120
        needleRotationY: 65
        needleRotationX: 5
        maxAngle: 133
        overlayY: 18
        overlayImageWidth: 148
        overlayX: 21
        needleY: 33
        needleX: 98
        backgroundImage: "images/meterbackground.png"
    }

}
