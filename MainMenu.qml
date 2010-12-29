import Qt 4.7
import QtQuick 1.0
import "content"
import "content/zonix.js" as ZonixJS
Rectangle {
    id: mainmenu
    anchors.fill: parent
    property string nextState: ""
    z: 10


    Image{
            id: background
            anchors.fill: parent
            source: "./pics/background.jpg"
            fillMode: Image.PreserveAspectCrop
    }

    Column {
        spacing: 30
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width*0.75
        height: parent.height
        Row{
            spacing: 30
            Button {
                id: easybtn
                text: "Easy"

                onClicked: ZonixJS.setNextState("2-");
            }
            Button {
                id: mediumbtn
                text: "Medium"

                onClicked: nextState = "3-"
            }
            Button {
                id: hardbtn
                text: "Hard"

                onClicked: nextState = "4-"
            }
        }


        Button {
            id: aboutbtn
            text: "About"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: nextState = "About"
        }

        Button {
            id: quitbtn
            text: "Quit"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: Qt.quit()
        }
    }
}
