
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import "../"

PanelWindow {
    id: root

    Theme {
        id: theme
    }

    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: 48
    color: "transparent"

    margins {
        top: 8
        left: 12
        right: 12
    }

    Rectangle {
        anchors.fill: parent
        radius: 10
        color: theme.background
        border.color: theme.border
        border.width: 1

        RowLayout {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 12                        

            WorkspaceIndicator {
                Layout.alignment: Qt.AlignVCenter
            }

            Rectangle {
                Layout.alignment: Qt.AlignVCenter
                width: 1
                height: 24
                color: theme.border
            }

            ActiveWindow {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignVCenter
            }

            AudioControl {
                Layout.alignment: Qt.AlignVCenter
            }

            Rectangle {
                Layout.alignment: Qt.AlignVCenter
                width: 1
                height: 24
                color: theme.border
            }

            Clock {
                id: clock
            }
        }
    }
}
