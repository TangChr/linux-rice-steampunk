import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Hyprland
import "../"

PanelWindow {
    id: root

    Theme {
        id: theme
    }

    anchors {
        bottom: true
        left: true
        right: true
    }

    implicitHeight: 80
    color: "transparent"

    margins {
        bottom: 12
    }

    // Refresh window information when an application opens.
    Connections {
        target: Hyprland

        function onRawEvent(event) {
            if (event.name === "openwindow") {
                console.log("New window detected. Updating dock...")
                Hyprland.refreshToplevels()
            }
        }
    }

    Rectangle {
        id: dock

        anchors.centerIn: parent

        width: dockRow.implicitWidth + 24
        height: 68

        radius: 18
        color: theme.background

        border {
            color: theme.border
            width: 1
        }

        Row {
            id: dockRow

            anchors.centerIn: parent
            spacing: 8

            Repeater {
                model: Hyprland.toplevels

                delegate: Item {
                    id: appItem

                    required property var modelData

                    width: 46
                    height: 46

                    property var ipc: modelData.lastIpcObject

                    property string appClass:
                        ipc?.class ?? ""

                    property string appTitle:
                        ipc?.title ?? ""

                    property var desktopEntry:
                        appClass !== ""
                            ? DesktopEntries.heuristicLookup(appClass)
                            : null

                    property string fallbackIcon: {
                        switch (appClass.toLowerCase()) {
                        case "alacritty":
                            return "Alacritty"

                        case "firefox":
                            return "firefox"

                        case "com.microsoft.vscode":
                            return "code"

                        default:
                            return "application-x-executable"
                        }
                    }

                    property string iconName:
                        desktopEntry?.icon || fallbackIcon

                    property string iconSource:
                        Quickshell.iconPath(iconName, "application-x-executable")

                    Component.onCompleted: {
                        console.log("Dock item created:", appClass)
                    }

                    Connections {
                        target: modelData

                        function onLastIpcObjectChanged() {
                            console.log(
                                "Window information updated:",
                                appItem.appClass,
                                appItem.appTitle
                            )

                            console.log("Resolved icon:", appItem.iconName)
                        }
                    }

                    Rectangle {
                        anchors.fill: parent

                        radius: 12

                        color: modelData.activated
                            ? theme.surface
                            : mouseArea.containsMouse
                                ? theme.border
                                : "transparent"

                        border.width: modelData.activated ? 1 : 0
                        border.color: theme.brass

                        Behavior on color {
                            ColorAnimation {
                                duration: 150
                            }
                        }

                        Image {
                            id: appIcon

                            anchors.centerIn: parent

                            width: 32
                            height: 32

                            source: appItem.iconSource

                            fillMode: Image.PreserveAspectFit
                            asynchronous: false
                            smooth: true

                            onStatusChanged: {
                                if (status === Image.Error) {
                                    console.warn(
                                        "Failed to load icon:",
                                        appItem.iconName,
                                        appItem.iconSource
                                    )
                                }
                            }
                        }

                        MouseArea {
                            id: mouseArea

                            anchors.fill: parent
                            hoverEnabled: true

                            onClicked: {
                                const address = String(modelData.address)

                                Hyprland.dispatch(`hl.dsp.focus({ window = "address:0x${address}" })`)
                            }
                        }
                    }
                }
            }
        }
    }
}
