 
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
            text: "1.Используемая технология: 3LCD
2. Способы подключения: HDMI, VGA, Video, USB Display,
USB, LAN, Wi-Fi.
3. Что можно отображать: Экран телефона или компьютера,
Фотографии, Видео(.avi), PDF, Web pages, Камеру и др.
"
            color: "black"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
