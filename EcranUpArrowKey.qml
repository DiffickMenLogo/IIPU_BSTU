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
        text:"Нажми стрелку вверх"
    }

    function press(){
        txt.font.pointSize=18
        txt.text="Нажмите клавишу включения любого индикатора клавиатуры"
    }

    function thiskey(b){
        txt.font.pointSize=36
        switch(b){
            case 0:{
                txt.text="Что-то не то Вы нажали((("
                break;
            }
            case 1:{
                txt.text="Нажат CapsLock"
                break;
            }
            case 2:{
                txt.text="Нажат NumLock"
                break;
            }
        }
    }
}
