import QtQuick 2.0
import "components"

/* General Comments
 *  - Name buttons/text boxes/images according to the functionality
 *  - Georgia Tech navy buttons color
 *  - For toggle buttons, use something more user friendly, like the radio button or check mark
 *  - Make the subsection background colors gray
 *  - The intersection area has two icons, not buttons
 *  - The distance/headway area has an icon, not a button
 *  - Add PCM motor and RESS (battery) diagram
 *      - Feel free to make the PCM bigger if needed
 *      - Add PCM data boxes
 *  - Add CAV traffic light, eco leaf, and lead vehicle icons (multiple states)
 *  - Left-align text of data fields; right-align data; make sure to include units
 */

Rectangle {
    id: page
    width: 800
    height: 480
    color: "#B3A369" // Georgia Tech old gold background color


    Text {
        id: text1
        x: 64
        y: 154
        width: 232
        height: 49
        text: qsTr("Intersection:")
        z: 3
        font.pixelSize: 35
    }

    Rectangle {
        id: rectangle1
        x: 8
        y: 240
        width: 343
        height: 232
        color: "#d6dbd4"

        Text {
            id: text2
            x: 59
            y: 124
            text: qsTr("Distance:")
            font.pixelSize: 35
        }

        Text {
            id: text3
            x: 59
            y: 172
            text: qsTr("Headway:")
            font.pixelSize: 35
        }

        TextEdit {
            id: text_edit1
            x: 235
            y: 124
            width: 100
            height: 42
            text: qsTr("value")
            font.pixelSize: 35
        }

        TextEdit {
            id: text_edit2
            x: 237
            y: 172
            width: 100
            height: 42
            text: qsTr("value")
            font.pixelSize: 35
        }

        Image {
            id: image3
            x: 122
            y: 8
            width: 100
            height: 100
            source: "images/lvpresent(1).png"
        }
    }

    Rectangle {
        id: rectangle2
        x: 8
        y: 8
        width: 343
        height: 226
        color: "#d6dbd4"

        Image {
            id: image1
            x: 56
            y: 8
            width: 100
            height: 100
            source: "images/traffic light.png"
        }

        Image {
            id: image2
            x: 190
            y: 8
            width: 100
            height: 100
            source: "images/ecodisabled(1).png"
        }
    }

    Rectangle {
        id: rectangle3
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

    ImageButton {
        id: image_button5
        x: 368
        y: 8
        width: 201
        height: 114
        text: "Eco"
        textColor: "#ffffff"
        imageUp: "images/blue.png"
        font.pixelSize: 35
        imageDown: "images/blue.png"
        font.family: "DejaVu Sans"
        font.bold: false
    }

    ImageButton {
        id: image_button6
        x: 584
        y: 8
        width: 208
        height: 114
        text: "DMS"
        textYCenterOffSet: -3
        imageUp: "images/blue.png"
        font.pixelSize: 35
        textColor: "#ffffff"
        imageDown: "images/blue.png"
        font.bold: false
        font.family: "DejaVu Sans"
    }

}

