import QtQuick 2.5
import FontAwesome 2.1

Rectangle {
    id: root
    width: 275
    height: 225

    property var solidNames: ["angry", "bell", "bookmark", "building", "calendar", "clipboard", "comment", "file", "grin"]
    property var brandNames: ["android", "bitcoin", "bluetooth", "d-and-d", "discord", "empire", "python", "git", "linux"]

    Column {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 20

        Text {
            text: "Solid:"
            font.bold: true
        }

        Row {
            anchors.left: parent.left
            anchors.right: parent.right

            Repeater {
                model: [FontAwesome.angry, FontAwesome.bell, FontAwesome.bookmark, FontAwesome.building, FontAwesome.calendar, FontAwesome.clipboard, FontAwesome.comment, FontAwesome.file, FontAwesome.grin]

                Column {
                    spacing: 10
                    width: parent.width / 9

                    Text {
                        text: modelData
                        font.family: FontAwesome.familySolid
                        font.styleName: "Solid"

                        font.pointSize: 36
                        anchors.horizontalCenter: parent.horizontalCenter
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }

                    Text {
                        text: solidNames[index]
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }

        Text {
            text: "Regular:"
            font.bold: true
        }

        Row {
            anchors.left: parent.left
            anchors.right: parent.right

            Repeater {
                model: [FontAwesome.angry, FontAwesome.bell, FontAwesome.bookmark, FontAwesome.building, FontAwesome.calendar, FontAwesome.clipboard, FontAwesome.comment, FontAwesome.file, FontAwesome.grin]

                Column {
                    spacing: 10
                    width: parent.width / 9

                    Text {
                        text: modelData
                        font.family: FontAwesome.familyRegular

                        font.pointSize: 36
                        anchors.horizontalCenter: parent.horizontalCenter
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }

                    Text {
                        text: solidNames[index]
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }

        Text {
            text: "Brands:"
            font.bold: true
        }

        Row {
            anchors.left: parent.left
            anchors.right: parent.right

            Repeater {
                model: [FontAwesome.android, FontAwesome.bitcoin, FontAwesome.bluetooth, FontAwesome.dAndD, FontAwesome.discord, FontAwesome.empire, FontAwesome.python, FontAwesome.git, FontAwesome.linux]

                Column {
                    spacing: 10
                    width: parent.width / 9

                    Text {
                        text: modelData
                        font.family: FontAwesome.familyBrands

                        font.pointSize: 36
                        anchors.horizontalCenter: parent.horizontalCenter
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }

                    Text {
                        text: brandNames[index]
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
    }
}
