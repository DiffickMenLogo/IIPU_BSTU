import QtQuick 2.5
import QtQuick.Controls 1.4

Item {
    anchors.fill: parent

    ScrollView{
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        Text{
            text:mainSys.result
        }
    }
}


/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
