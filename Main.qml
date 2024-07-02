// 'mnmlst' SDDM Theme

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import SddmComponents 2.0

import "Components"

Pane {
    id: root
    height: Screen.height
    width: Screen.ScreenWidth

    palette.window: "black"
    palette.windowText: "white"
    palette.highlight: config.accentColor ? config.accentColor : "limegreen"
    palette.button: "transparent"
    palette.buttonText: config.accentColor ? config.accentColor : "limegreen"

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10

        Clock {
            Layout.alignment: Qt.AlignCenter
        }

        LoginForm {
            Layout.alignment: Qt.AlignCenter
        }
    }

    RowLayout {
        anchors.left: parent.left
        anchors.bottom: parent.bottom

        SessionBox {
            id: sessionBox
        }

        KeyboardBox {
        }
    }

    SystemButtons {
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
