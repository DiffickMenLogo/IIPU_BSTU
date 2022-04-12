import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Item {
    property int click: 0

    anchors.fill: parent
    visible: true
    Item {
        anchors.fill: parent
        MouseArea{
            id:mAr
            anchors.fill: parent
            hoverEnabled: true
        }
        Rectangle{
            anchors.fill: parent
            Text {
                anchors.fill: parent
                text: mAr.mouseX+" "+mAr.mouseY
                font.pointSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button{
            id: butClc
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            text: "Click!"
            onClicked: {
                click++
            }
        }
        Text{
            anchors.left: butClc.right
            anchors.bottom: parent.bottom
            text: click
        }
    }
}
