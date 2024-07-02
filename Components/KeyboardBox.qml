// 'mnmlst' SDDM Theme

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ComboBox {
    hoverEnabled: true
    model: keyboard.layouts
    currentIndex: keyboard.currentLayout
    textRole: "shortName"
    font.pointSize: 10
    flat: true
    visible: model.count > 1

    ToolTip {
        visible: hovered
        delay: 1000
        text: "Keyboard Layout"
    }
}