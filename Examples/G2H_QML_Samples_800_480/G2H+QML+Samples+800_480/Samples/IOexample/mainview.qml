import QtQuick 2.0
import "components"

Rectangle {
    width: 800
    height: 480
    color: "#bbe5fb"


   Text {
        x: 159
        y: 8
        anchors.centerIn: parent
        text: "I/O Example"
        font.family: "Arial"
        font.pixelSize: 32
        anchors.verticalCenterOffset: -177
        anchors.horizontalCenterOffset: 0
   }


    ImageButton {
        id: button1
        x: 65
        y: 149
        width: 113
        height: 70
        text: "Button 1"
        imageUp: "images/internal_button_up.bmp"
        font.pixelSize: 20
        textColor: "#000000"
        imageDown: "images/internal_button_dn.bmp"
        font.family: "Arial"
        onButtonClick: {
            connection.sendMessage("button_click=1")
        }

    }

    ImageButton {
        id: button2
        x: 65
        y: 251
        width: 113
        height: 70
        text: "Button 2"
        imageUp: "images/internal_button_up.bmp"
        font.pixelSize: 20
        textColor: "#000000"
        imageDown: "images/internal_button_dn.bmp"
        font.family: "Arial"
        onButtonPress: {
            connection.sendMessage("button_click=2")
        }
    }

    Text {
        id: text1
        x: 224
        y: 105
        width: 131
        height: 30
        text: qsTr("Temperature")
        font.family: "Arial"
        font.pixelSize: 26
    }

    Text {
        id: text2
        x: 242
        y: 149
        width: 96
        height: 23
        text: qsTr("Celsius: ")
        font.family: "Arial"
        font.pixelSize: 19
    }

    TextInput {
        objectName: "celsius_input"
        id: celsius_input
        x: 350
        y: 149
        width: 70
        height: 23
        text: qsTr("?")
        font.family: "Arial"
        font.pixelSize: 19
    }

    Text {
        id: text3
        x: 242
        y: 192
        width: 96
        height: 27
        text: qsTr("Fahrenheit: ")
        font.family: "Arial"
        font.pixelSize: 19
    }

    TextInput {
        objectName: "fahrenheit_input"
        id: fahrenheit_input
        x: 350
        y: 193
        width: 72
        height: 26
        text: qsTr("?")
        font.family: "Arial"
        font.pixelSize: 19
    }


}

