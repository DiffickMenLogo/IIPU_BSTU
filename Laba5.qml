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
            font.pointSize:20
            //font.italic: true
            text: "1. Произвести внутренюю(аппаратную) коммутацию необходимых сигналов;
2. Произвести внутреннюю(программную) коммутацию сигналов порта
с помощью регистров конфигурирования выводов;
3. Произвести программирование последовательного порта;
4. Записать в исходную ячейку(4100h) передаваемого число;
5. Выполнить программу передачи байта;
6. Убедиться, что переданный байт находиться в ячейке 4200h;"
            color: "black"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
