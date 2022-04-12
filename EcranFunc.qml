import QtQuick 2.5
import QtQuick.Controls 1.4

Item {
    anchors.fill: parent

    Text{
        id:txt
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 36
        text:"Нажми ESC"
    }

    function press(){
        txt.text="Готово"
    }
}
