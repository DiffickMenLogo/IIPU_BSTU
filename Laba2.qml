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
            text: "PROC/DEVICES"
            onClicked: {
                loadCon.source=""
                mainSys.command = "cat /proc/devices"
                mainSys.execute()
                loadCon.source="ConsoleView.qml"
            }
        }
        ButtonMenu{
            id:properties
            anchors.left: colorEdit.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/3
            text: "PROC/CPUINFO"
            onClicked: {
                loadCon.source=""
                mainSys.command = "cat /proc/cpuinfo"
                mainSys.execute()
                loadCon.source="ConsoleView.qml"
            }
        }
        ButtonMenu{
            id:dmesg
            anchors.left: properties.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/3
            text: "PROC/MEMINFO"
            onClicked: {
                loadCon.source=""
                mainSys.command = "cat /proc/meminfo"
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
                source: ""
            }
        }
        /*Rectangle{
            height: parent.height*0.8
            width: parent.width*0.8
            anchors.centerIn: parent

        }*/
    }
}
