import QtQuick 2.0
import "components"
import com.reachtech.systemplugin 1.0

Rectangle {
    id: mainView
    width: 800
    height: 480
	color: "#2D2D2D"
    property int mainMenuY: 0
    property int page: 1

    Text{
        id: txtMessage
        anchors.centerIn:parent
        font.pixelSize: 32
        color: "Red"
        text: "Loading QML Application...Please Wait."
        visible: true
    }

    Loader{
        id: loader
    }
	
    Connections {
        target: loader.item
        onMessage: {
            loader.source = msg;            
        }
    }

    GPIOPinOutput{
        id: pin0
        pin: 0
    }

    GPIOPinOutput{
        id: pin1
        pin: 1
    }

    GPIOPinOutput{
        id: pin2
        pin: 2
    }

    GPIOPinOutput{
        id: pin3
        pin: 3
    }

    Component.onCompleted: {
        pin0.writeToPin(0);
        pin1.writeToPin(0);
        pin2.writeToPin(0);
        pin3.writeToPin(0);

        if (typeof connection === "undefined")
        {
            txtMessage.visible = false;
            loader.source = "mainmenu.qml";
        }
        else
        {
            var src = "import QtQuick 2.0; Connections {target: connection; onReadyToSend: {txtMessage.visible = false; loader.source = \"mainmenu.qml\";}}"
            var conn = Qt.createQmlObject(src, mainView, "connection1");
        }
    }
}
