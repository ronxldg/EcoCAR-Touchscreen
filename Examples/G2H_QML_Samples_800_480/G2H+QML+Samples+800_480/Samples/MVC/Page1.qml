import QtQuick 2.0

Rectangle {
    id: page1
    objectName: "page1"
    width: 800
    height: 480
    color: "green"

    signal message(string msg)

    Text{
        font.bold: true
        text: "Page 1 - Click anywhere to go to Page 2"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 14
    }

    MouseArea{
        anchors.fill: parent
        onClicked: page1.message("Page2.qml");
    }

}
