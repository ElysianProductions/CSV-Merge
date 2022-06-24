import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    id: main_page
    width: 640
    height: 480
    title: qsTr("CSV Merge")

    Material.theme: Material.Dark
    Material.accent: Material.Blue

    Loader {
        id: switch_page
    }

    Button {
        id: fileButton
        text: "Menu"
        onClicked: menu.open()

        Menu {
            id: menu
            y: fileButton.height

            Menu {
                id: file_menu
                title: "File"
                Action { text: "Open file" }
                Action { text: "Save file" }
                Action { text: "Print" }
            }
            MenuSeparator {}

            Menu {
                id: settings_menu
                title: "Settings"
                Action { text: "Configuration"; onTriggered: {main_page.close(); switch_page.source = "settings.qml"} }
                Action { text: "Check for updates" }
            }

            MenuSeparator {}

            Menu {
                id: help_menu
                title: "Help"
                Action { text: "About" }
                Action { text: "Github" }
            }
        }
    }
/*
    GridLayout {
        id: settingsLayout
        columns: 1
        Layout.preferredWidth: parent.width

        Pane {
            width: parent.width
            Material.elevation: 6

            TextArea {
                id: csvFieldConfiguration
                width: parent.width
                text: "Input csv fields here."

                ToolTip {
                    id:csvFieldTT
                    text: "Input csv fields separated by a comma. Eg, field1,field2,field3"
                    parent: csvFieldConfiguration
                    visible: csvFieldConfiguration.hovered
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {csvFieldConfiguration.text = ""}
                }


            }
        }
    }*/
}
