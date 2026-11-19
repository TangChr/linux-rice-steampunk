
import QtQuick
import Quickshell
import Quickshell.Hyprland
import "../"

Row {
    id: root

    Theme {
        id: theme
    }

    spacing: 6

    Repeater {
        model: Hyprland.workspaces

        delegate: Rectangle {
            required property var modelData

            readonly property bool active:
                Hyprland.focusedWorkspace?.id === modelData.id

            readonly property bool occupied:
                modelData.toplevels.length > 0

            //width: active ? 30 : 24
            width: 30
            height: 24
            radius: 6

            color: active ? theme.blue :
                   hovered ? theme.border :
                   theme.surface

            border.width: active ? 0 : 1
            border.color: theme.border

            Behavior on width {
                NumberAnimation {
                    duration: 180
                    easing.type: Easing.OutCubic
                }
            }

            Behavior on color {
                ColorAnimation {
                    duration: 180
                }
            }

            Text {
                anchors.centerIn: parent

                text: modelData.name

                color: parent.active ? theme.background :
                       parent.occupied ? theme.foreground :
                       theme.muted

                font.pixelSize: 11
                font.weight: parent.active ?
                    Font.Bold : Font.Normal
            }

            property bool hovered: false

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true

                onEntered: parent.hovered = true
                onExited: parent.hovered = false

                onClicked: modelData.activate()
            }
        }
    }
}