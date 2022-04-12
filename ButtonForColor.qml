import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Button{
    property var color: "red"
    id:col1
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    width: parent.width/3
    height: width
    style: ButtonStyle {
        background:
            Rectangle {
            color: col1.color
        }
    }
}

