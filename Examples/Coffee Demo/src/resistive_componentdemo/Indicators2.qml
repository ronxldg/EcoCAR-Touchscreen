import QtQuick 2.0
import "../components"

Rectangle {
    id: indicator2
    objectName: "indicator2"
    width: 800
    height: 480
    color: "#666666"

    signal message(string msg)

    Text {
        id: txtTitle
        x: 80
        y: 82
        width: 640
        height: 25
        text: qsTr("Indicators")
        horizontalAlignment: Text.AlignHCenter
        font.bold: false
        font.pixelSize: 26
    }

    Image{
        x: 100
        y: 131
        source: "images/therm_base.png"

        VerticalLevelIndicator {
            id: vertical3
            x: 40
            y: 40
            width: 17
            height: 160
            hintFontBold: false
            hintFontPointSize: 22
            minValue: -30
            hintFontPixelSize: 14
            imageBase: "images/therm.png"
            hintFontColor: "#000000"
            value: 0
            showHint: false
            imageOverlay: "images/therm_overlay.png"
            scale: 1.0
            symbol: "<sup>o</sup>C"
            maxValue: 50
            increment: 2
            startPosition: "bottom"
            hintFontFamily: "DejaVu Sans"

            onValueChanged: {
                if(value * scale < 20)
                {
                    led_light1.on = true;
                }
                else
                {
                    led_light1.on = false;
                }

                panel_read_out1.text = (value * scale).toFixed(1).toString().concat(" ").concat(symbol);
            }
        }
    }


    LEDLight {
        id: led_light1
        x: 191
        y: 223
        width: 189
        height: 136
        on: false
        font.pixelSize: 18
        textColor: "#000000"
        textPosition: "bottom"
        label: "  Temp\nWarning"
        fieldSpacing: 2
        font.bold: true
        font.family: "DejaVu Sans"
        imageOff: "images/ledoff.png"
        imageOn: "images/ledon.png"
    }

    PanelReadOut {
        id: panel_read_out1
        x: 392
        y: 324
        width: 116
        height: 76
        text: ""
        font.pixelSize: 22
        textColor: "#50dd0e"
        imagePanel: "images/bezel.bmp"
        font.bold: false
        font.family: "DejaVu Sans"
    }

    Image {
        id: image1
        x: 392
        y: 145
        width: 340
        height: 124
        source: "images/therm_horizbase.png"

        HorizontalLevelIndicator {
            id: horizontal1
            x: 72
            y: 59
            width: 240
            height: 24
            minValue: -30
            hintFontPixelSize: 14
            imageBase: "images/therm_horiz.png"
            hintFontColor: "#000000"
            value: -3
            showHint: false
            imageOverlay: "images/therm_horiz_overlay.png"
            maxValue: 50
            increment: 3
            startPosition: "left"
            hintFontFamily: "DejaVu Sans"
        }
    }


    function getRandomInt(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    Component.onCompleted: {
        var src = "import QtQuick 2.0; Timer {id: timer1; interval: 1000; running: true; repeat: true; onTriggered:{vertical3.value = getRandomInt(vertical3.minValue, vertical3.maxValue-2); horizontal1.value = vertical3.value; } }";
        var timer = Qt.createQmlObject(src, indicator2, "timerObject");

    }
}

