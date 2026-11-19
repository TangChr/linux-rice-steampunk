
import QtQuick
import QtQuick.Layouts
import "../"

Text {
    id: clock

    Theme {
        id: theme
    }

    property string timeFormat: "HH:mm:ss"
    property string dateFormat: "ddd, dd MMM yyyy"
    property bool showDate: false

    Layout.alignment: Qt.AlignVCenter

    color: theme.foreground
    font.family: "Hack"
    font.pixelSize: 14
    font.weight: Font.Medium

    function updateTime() {
        const now = new Date()
        text = showDate
            ? Qt.formatDateTime(now, dateFormat)
            : Qt.formatDateTime(now, timeFormat)
    }

    Component.onCompleted: updateTime()

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: clock.updateTime()
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

        onClicked: {
            clock.showDate = !clock.showDate
            clock.updateTime()
        }
    }
}