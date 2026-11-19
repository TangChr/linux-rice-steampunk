
import QtQuick
import Quickshell
import Quickshell.Services.Pipewire
import "../"

Item {
    id: root

    Theme {
        id: theme
    }

    implicitWidth: audioRow.implicitWidth
    implicitHeight: 28

    readonly property var sink: Pipewire.defaultAudioSink
    readonly property real volume: sink?.audio?.volume ?? 0
    readonly property bool muted: sink?.audio?.muted ?? true

    PwObjectTracker {
        objects: [root.sink]
    }

    AudioPopup {
        id: popup
        anchorItem: root
    }

    Row {
        id: audioRow

        anchors.verticalCenter: parent.verticalCenter
        spacing: 8

        Text {
            anchors.verticalCenter: parent.verticalCenter

            text: root.muted ? "󰝟" :
                  root.volume < 0.01 ? "󰖁" :
                  root.volume < 0.5 ? "󰖀" : "󰕾"

            color: root.muted ? theme.muted : theme.brass
            font.pixelSize: 17
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter

            text: root.muted ? "Muted" :
                  Math.round(root.volume * 100) + "%"

            color: theme.foreground
            font.pixelSize: 12
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onClicked: popup.visible = !popup.visible

        onWheel: (event) => {
            if (!root.sink?.audio)
                return

            const delta = event.angleDelta.y > 0 ? 0.03 : -0.03
root.sink.audio.volume = Math.max(
                0,
                Math.min(1.0, root.volume + delta)
            )
        }
    }
}
