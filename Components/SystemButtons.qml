// 'mnmlst' SDDM Theme

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

RowLayout {
    spacing: 10

    RoundButton {
        text: "\u2B6E"
        font.pointSize: 16
        flat: true
        hoverEnabled: true
        ToolTip.delay: 1000
        ToolTip.text: "Reboot"
        ToolTip.visible: hovered
        //visible: sddm.canReboot
        onClicked: sddm.reboot()
    }

    RoundButton {
        text: "\u23FB"
        font.pointSize: 16
        flat: true
        hoverEnabled: true
        ToolTip.delay: 1000
        ToolTip.text: "Shutdown"
        ToolTip.visible: hovered
        //visible: sddm.canPowerOff
        onClicked: sddm.shutdown()
    }
}
