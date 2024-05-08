import QtQuick 2.0
import "components"

Rectangle {
    id: page
    objectName: "page"
    width: 800
    height: 480
    state: "PAGE1"
    color: "#003399"

	Rectangle {
		id: b1
		objectName: "b1"
		x: 10
		width:120
		height: 50
		color: "#003399"

		Text {
			id: txtPage1
			text: "Page 1"
			font.bold: true
			font.pixelSize: 30
			x: 10
			y: 20
			font.capitalization: Font.SmallCaps
			anchors.top: parent.top
			color: "#FFFFFF"
		}
		
		MouseArea{
			anchors.fill: parent
			onPressed: {
				page.state = "PAGE1";
			}
        }
	}
    
	Rectangle {
		id: b2
		objectName: "b2"
		x: 125
		width:120
		height: 50
		color: "#003399"
		
		Text {
			id: textPage2
			text: "Page 2"
			font.bold: true
			font.pixelSize: 30
			x: 10
			y: 20
			font.capitalization: Font.SmallCaps
			anchors.top: parent.top
			color: "#FFFFFF"
		}
		
		
		MouseArea{
			anchors.fill: parent
			onPressed: {
				page.state = "PAGE2";
			}
		}
	}


    Page1{
        id: page1
        x: 0
        y: 50
        width: 480
        height: 218
        objectName: "page1"
    }

    Page2{
        id: page2
        objectName: "page2"
        x: 0
        y: 50
        width: 480
        height: 222
    }

    states: [
        State {
            name: "PAGE1"
            PropertyChanges { target: page1 ; visible: true}
            PropertyChanges { target: page2; visible: false}
        },
        State {
            name: "PAGE2"
            PropertyChanges { target: page1 ; visible: false}
            PropertyChanges { target: page2; visible: true}
        }
    ]
}

