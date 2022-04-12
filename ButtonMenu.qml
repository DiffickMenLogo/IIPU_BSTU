import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.4

Button {
    id: butMen

    property string mColor: megaItem.superClr
    property string mOpac: megaItem.superOpac

    style: ButtonStyle{
        background: Rectangle{
            id:recB
            border.width: 1
            border.color: "white"
            opacity: control.mOpac

            state: control.hovered?"HOV":"NOTHOV"

            states:[
                State {
                    name: "HOV"
                    //when:control.hovered
                    PropertyChanges {
                        target: recB;
                        color: Qt.lighter(control.mColor,1.4)
                    }
                },
                State {
                    name: "NOTHOV"
                    //when:!control.hovered
                    PropertyChanges {
                        target: recB;
                        color:control.mColor
                    }
                }
            ]

            transitions: [
                Transition {
                    to: "HOV"
                    ColorAnimation { target: recB; duration: 100}
                },
                Transition {
                    to: "NOTHOV"
                    ColorAnimation { target: recB; duration: 100}
                }
            ]
        }
        label:Text{
            font.family: "arial"
            font.pointSize:10
            font.weight: Font.ExtraBold
            text: butMen.text
            color: "white"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}

