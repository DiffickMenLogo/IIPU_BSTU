import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import SystemCommand 1.0
import KWork 1.0
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    id:mainWin
    visible: true
    width: 1024
    height: 567

    Item{
        id:megaItem
        property int klav1: 0

        property string superClr: "#333333"
        property string _superClr: "#333333"
        property real superOpac: 1

        anchors.fill: parent
        focus:true
        Keys.onPressed: {
            if (event.key == Qt.Key_1 && klav1){
                klav1=0
                lo.item.l3wait()
                kw.goriAndPogasni()
            }
        }
        Item{
            property string backgr: "white"
            property string cac: "red"
            id:topMenu
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height*0.1
            ButtonMenu{
                text: "Знакомство \nс Qt Quick"
                id: l1
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width/6
                onClicked: {
                    lo.source="Laba1.qml"
                }
            }
            ButtonMenu{
                text: "Информация из \nсистемных директорий"
                id: l2
                anchors.left: l1.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width/6
                onClicked: {
                    lo.source="Laba2.qml"
                }
            }
            ButtonMenu{
                text: "Клавиатура"
                id: l3
                anchors.left: l2.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width/6
                onClicked: {
                    lo.source="Laba3.qml"
                }
            }
            ButtonMenu{
                text: "Проектор"
                id: l4
                anchors.left: l3.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width/6
                visible: true
                onClicked: {
                    lo.source="Laba4.qml"
                }
            }
            ButtonMenu{
                text: "COM-порт"
                id: l5
                anchors.left: l4.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width/6
                visible: true
                onClicked: {
                    lo.source="Laba5.qml"
                }
            }
            ButtonMenu{
                text: "GIT"
                id: l6
                anchors.left: l5.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width/6
                visible: true
                onClicked: {
                    lo.source="Laba6.qml"
                }
            }
        }
        Item {
            id:windowMenu
            anchors.top: topMenu.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height*0.85
            Loader{
                id:lo
                anchors.fill: parent
                source: ""
            }
        }
        Item {
            id:footer
            anchors.top: windowMenu.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            Text{
                anchors.fill: parent
                text:"Created by Fishick Ilya"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.italic: true
            }
        }

        Sys {
            id:mainSys
            command: ""
        }
        KW{
            id:kw
            onM_end:{
                lo.item.l3stop()
            }
        }
    }

    NumberAnimation{
        id:an21
        target: megaItem
        property: "superOpac"
        to:0.0
        duration: 500
        onStopped: {
            megaItem.superClr=megaItem._superClr
            an22.start()
        }
    }
    NumberAnimation{
        id:an22
        target: megaItem
        property: "superOpac"
        to:1.0
        duration: 500
    }

    function setClr(str){
        an21.start()
        megaItem._superClr=str
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
