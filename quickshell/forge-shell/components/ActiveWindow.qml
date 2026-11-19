
import QtQuick
import Quickshell
import Quickshell.Hyprland
import "../"

Item {
    id: root

    Theme {
        id: theme
    }

    implicitWidth: 260
    implicitHeight: 28

    readonly property string windowTitle:
        Hyprland.activeToplevel?.title ?? "Desktop"

    Row {
        anchors.fill: parent
        spacing: 8

        Text {
            anchors.verticalCenter: parent.verticalCenter

            text: "󰖯"
            color: theme.brass
            font.pixelSize: 16
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter

            width: root.width - 28
            text: root.windowTitle

            color: theme.foreground
            font.pixelSize: 12            

            elide: Text.ElideRight
            verticalAlignment: Text.AlignVCenter
        }
    }
}
