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
    color: "#BBE5FB" // Georgia Tech old gold background color


    ImageButton {
        id: image_button3
        x: 64
        y: 13
        width: 93
        height: 122
        text: ""
        z: 2
        imageUp: "images/internal_button_up.bmp"
        textColor: "#000000"
        font.pixelSize: 18
        imageDown: "images/internal_button_dn.bmp"
        font.family: "DejaVu Sans"
        font.bold: false
    }

    ImageButton {
        id: image_button4
        x: 203
        y: 13
        width: 93
        height: 122
        text: ""
        z: 1
        imageUp: "images/internal_button_up.bmp"
        textColor: "#000000"
        font.pixelSize: 18
        imageDown: "images/internal_button_dn.bmp"
        font.family: "DejaVu Sans"
        font.bold: false
    }

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
        color: "#ffffff"

        ImageButton {
            id: image_button2
            x: 97
            y: 8
            width: 150
            height: 110
            text: ""
            imageUp: "images/internal_button_up.bmp"
            textColor: "#000000"
            font.pixelSize: 18
            imageDown: "images/internal_button_dn.bmp"
            font.family: "DejaVu Sans"
            font.bold: false
        }

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
    }

    Rectangle {
        id: rectangle2
        x: 8
        y: 8
        width: 343
        height: 226
        color: "#ffffff"
    }

    Rectangle {
        id: rectangle3
        x: 357
        y: 240
        width: 435
        height: 232
        color: "#ffffff"

        Text {
            id: text4
            x: 34
            y: 23
            text: qsTr("PCM Diagnostic Data")
            font.pixelSize: 35
        }
    }

    ImageButton {
        id: image_button5
        x: 368
        y: 8
        width: 208
        height: 114
        text: "Eco"
        imageUp: "images/internal_button_up.bmp"
        textColor: "#000000"
        font.pixelSize: 35
        imageDown: "images/internal_button_dn.bmp"
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
        imageUp: "images/internal_button_up.bmp"
        font.pixelSize: 35
        textColor: "#000000"
        imageDown: "images/internal_button_dn.bmp"
        font.bold: false
        font.family: "DejaVu Sans"
    }

    VerticalRadioButtonList {
        id: radioButtonListVertical1
        x: 427
        y: 352
        z: 4
        imageUnChecked: "images/radiobutton.png"
        model: ListModel {
            ListElement {
                item_checked: true
                item_text: "radio 1"
                item_value: "1"
            }

            ListElement {
                item_checked: false
                item_text: "radio 2"
                item_value: "2"
            }
        }
        imageChecked: "images/radiobutton_click.png"
        font.family: "DejaVu Sans"
        imageHeight: 28
        imageWidth: 28
        font.bold: false
        itemSpacing: 10
        spacing: 4
        font.pixelSize: 16
        textColor: "#000000"
    }

}

