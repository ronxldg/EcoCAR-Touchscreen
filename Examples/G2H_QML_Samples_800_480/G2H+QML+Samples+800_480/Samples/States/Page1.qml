import QtQuick 2.0
import "components"

Rectangle {
    id: page1
    objectName: "page1"
    width: 800
    height: 480
    color: "black"

    Text{
        font.bold: true
        text: "Hello"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 84
        color: "white"
    }


}
