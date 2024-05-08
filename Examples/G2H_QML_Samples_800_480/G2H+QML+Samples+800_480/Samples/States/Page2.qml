import QtQuick 2.0
import "components"

Rectangle {
    id: page2
    objectName: "page2"
    width: 800
    height: 480
    color: "#B8B8B8"

    signal message(string msg)

    Text{
        font.bold: true
        text: "World."
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 84
        color: "black"
    }

}
