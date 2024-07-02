// 'mnmlst' SDDM Theme

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RowLayout {

    Label {
        id: timeLabel
        font.pointSize: 64

        function update() {
            text = new Date().toLocaleTimeString(Qt.locale(), Locale.ShortFormat)
        }
    }

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            timeLabel.update()
        }
    }

    Component.onCompleted: timeLabel.update()
}
