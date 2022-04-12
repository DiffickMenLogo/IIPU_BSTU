import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Item {
    visible: true
    property int hh: megaItem.height*0.1
    Item {
        id: knopki
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.hh
        ButtonMenu{
            id:colorEdit
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/3
            text: "Change color"
            onClicked: {
                loadCon.source="ChangeColor.qml"
            }
        }
        ButtonMenu{
            id:properties
            anchors.left: colorEdit.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/3
            text: "Property"
            onClicked: {
                loadCon.source="Property.qml"
            }
        }
        ButtonMenu{
            id:dmesg
            anchors.left: properties.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/3
            text: "DMESG"
            onClicked: {
                mainSys.command = "dmesg"
                mainSys.execute()
                loadCon.source="ConsoleView.qml"
            }
        }
    }
    Item {
        id:content
        opacity: 1
        anchors.top: knopki.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        Rectangle{
            id:recCon
            anchors.fill: parent
            color: topMenu.backgr
            Loader {
                id: loadCon
                anchors.fill: parent
                source: "Property.qml"
            }
        }
    }
}
