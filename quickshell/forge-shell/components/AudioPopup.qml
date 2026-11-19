import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.Pipewire
import "../"

PopupWindow {
    id: root

    Theme {
        id: theme
    }

    property Item anchorItem

    anchor.item: anchorItem
    anchor.edges: Edges.Bottom | Edges.Right
    anchor.gravity: Edges.Bottom | Edges.Right

    implicitWidth: 280
    implicitHeight: 100

    color: "transparent"

    property var sink: Pipewire.defaultAudioSink

    PwObjectTracker {
        objects: [root.sink]
    }

    PwNodePeakMonitor {
        id: peakMonitor
        node: root.sink
        enabled: true
    }

    Rectangle {
        anchors.fill: parent

        radius: 12
        color: theme.background
        border.color: theme.border
        border.width: 1

        Column {
            anchors.fill: parent
            anchors.margins: 16
            spacing: 12

            // Output device and current volume
            Row {
                width: parent.width
                spacing: 8

                Text {
                    text: "󰓃"
                    color: theme.brass
                    font.pixelSize: 18
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    width: parent.width - 100
                    text: root.sink?.description ?? "No output device"
                    color: theme.foreground
                    font.pixelSize: 12
                    elide: Text.ElideRight
                    anchors.verticalCenter: parent.verticalCenter
                }

                Item {
                    width: 1
                    height: 1
                }

                Text {
                    text: root.sink?.audio?.muted
                        ? "Muted"
                        : Math.round((root.sink?.audio?.volume ?? 0) * 100) + "%"

                    color: theme.brass
                    font.pixelSize: 12
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            // Volume slider and mute button
            Row {
                width: parent.width
                height: 30
                spacing: 10

                Slider {
                    id: volumeSlider

                    width: parent.width - 40
                    height: parent.height

                    from: 0
                    to: 1.0

                    value: root.sink?.audio?.volume ?? 0
                    enabled: !!root.sink?.audio

                    background: Rectangle {
                        x: volumeSlider.leftPadding
                        y: volumeSlider.topPadding +
                            (volumeSlider.availableHeight - height) / 2

                        width: volumeSlider.availableWidth
                        height: 6

                        radius: 3
                        color: theme.surface

                        // Audio activity visualization
                        Rectangle {
                            width: parent.width * peakMonitor.peak
                            height: parent.height

                            radius: 3
                            color: theme.brass
                            opacity: root.sink?.audio?.muted ? 0.1 : 0.65

                            Behavior on width {
                                NumberAnimation {
                                    duration: 80
                                    easing.type: Easing.OutCubic
                                }
                            }
                        }

                        // Configured volume level
                        Rectangle {
                            width: parent.width * volumeSlider.visualPosition
                            height: parent.height

                            radius: 3
                            color: theme.copper
                            opacity: 0.8
                        }
                    }

                    handle: Rectangle {
                        x: volumeSlider.leftPadding +
                            volumeSlider.visualPosition *
                            (volumeSlider.availableWidth - width)

                        y: volumeSlider.topPadding +
                            (volumeSlider.availableHeight - height) / 2

                        width: 14
                        height: 14

                        radius: 7
                        color: theme.brass
                        border.color: theme.background
                        border.width: 2
                    }

                    onMoved: {
                        if (root.sink?.audio)
                            root.sink.audio.volume = value
                    }
                }

                // Mute button
                Rectangle {
                    width: 30
                    height: 30
                    radius: 6

                    color: muteMouse.containsMouse
                        ? theme.border
                        : theme.surface

                    Text {
                        anchors.centerIn: parent

                        text: root.sink?.audio?.muted
                            ? "󰝟"
                            : "󰕾"

                        color: root.sink?.audio?.muted
                            ? theme.muted
                            : theme.brass

                        font.pixelSize: 18
                    }

                    MouseArea {
                        id: muteMouse

                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            if (root.sink?.audio)
                                root.sink.audio.muted = !root.sink.audio.muted
                        }
                    }
                }
            }
        }
    }
}