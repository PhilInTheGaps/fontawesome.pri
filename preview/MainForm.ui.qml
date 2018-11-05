import QtQuick 2.5
import FontAwesome 2.0

Rectangle {

    width: 360
    height: 360

    Text {
        text: FontAwesome.addressBook
        font.family: FontAwesome.familySolid

        font.pointSize: 36
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
