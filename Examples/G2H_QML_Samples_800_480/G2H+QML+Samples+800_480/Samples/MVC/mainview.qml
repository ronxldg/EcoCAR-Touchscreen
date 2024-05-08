import QtQuick 2.0
import "components"

Rectangle {
    id: controller
    width: 800
    height: 480

    Loader{
        id: loader
    }


    Connections {
        target: loader.item
        onMessage: {
            loader.source = msg;
        }
    }

    Component.onCompleted: loader.source = "Page1.qml"

}

