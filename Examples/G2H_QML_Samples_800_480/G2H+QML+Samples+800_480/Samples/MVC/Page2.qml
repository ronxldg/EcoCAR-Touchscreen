import QtQuick 2.0

Rectangle {
    id: page2
    objectName: "page2"
    width: 800
    height: 480
    color: "yellow"

    signal message(string msg)

    Text{
        font.bold: true
        text: "Page 2 - Click anywhere to go to Page 1"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 14
    }

    MouseArea{
        anchors.fill: parent
        onClicked: page2.message("Page1.qml");
    }
}
