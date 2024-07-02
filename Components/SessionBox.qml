// 'mnmlst' SDDM Theme

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ComboBox {
    hoverEnabled: true
    model: sessionModel
    currentIndex: model.lastIndex
    textRole: "name"
    font.pointSize: 10
    flat: true

    ToolTip {
        visible: hovered
        delay: 1000
        text: "Session"
    }
}