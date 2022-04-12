import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Item {
    Rectangle{
        id:recCon
        anchors.fill: parent
        color: topMenu.backgr
        Text {
            anchors.fill: parent
            font.family: "arial"
            font.pointSize:36
            font.italic: true
            text: "https://github.com/DiffickMenLogo"
            color: "black"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}

