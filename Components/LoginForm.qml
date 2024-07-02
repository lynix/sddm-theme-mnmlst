// 'mnmlst' SDDM Theme

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

GridLayout {
    columns: 2

    Connections {
        target: sddm

        function onLoginSucceeded() {
        }

        function onLoginFailed() {
            loginMessage.text = "Login failed.";
            loginMessage.color = "red";
            passwordField.password = "";
        }

        function onInformationMessage(message) {
            loginMessage.text = message;
            loginMessage.color = palette.windowText;
        }
    }

    Label {
        text: "User:"
        color: palette.windowText
        Layout.alignment: Qt.AlignRight
    }

    TextField {
        id: userField
        text: userModel.lastUser
        focus: true
        Keys.onReturnPressed: passwordField.focus = true
    }

    Label {
        text: "Password:"
        color: palette.windowText
        Layout.alignment: Qt.AlignRight
    }

    TextField {
        id: passwordField
        width: 150
        echoMode: TextInput.Password
        Keys.onReturnPressed: {
            if (userField.text != "" && passwordField.text != "")
                sddm.login(userField.text, passwordField.text, sessionBox.currentIndex);
        }
    }

    Label {
        id: loginMessage
        Layout.columnSpan: 2
        Layout.alignment: Qt.AlignCenter
        topPadding: 10
    }

    Component.onCompleted: {
        if (userField.text === "")
            userField.forceActiveFocus();
        else
            passwordField.forceActiveFocus();
    }
}
