import QtQuick 1.1
import "widgets"

Rectangle {
    id: loginWindow
    width: 1680
    height: 1050
    color: "#270447"
    clip: false

    signal loginSubmit(variant v)

    function render(_data) {
        if (_data["state"] == "login") {
            errorBox.text = ""
            imageerro.visible = false
        }

        if (_data["error_cod"] > 0) {
            errorBox.text = "Login error:: "
            errorBox.text += _data["error_msg"];
            imageerro.visible = true
        }
    }

    function emitLoginSubmit() { 
        loginSubmit({
                "user": input_user.returnText(),
                "passwd": input_password.returnText() 
            })
    }

    Image {
       id: imagebutton
       source: "../images/bg-login.jpg"
       width : parent.width
       height: parent.height
    }

    Image {

        id: logo
        x: parent.width / 2.7
        y: parent.height / 8
        source: "../images/logo.png"
    }

    FontLoader {
        id:  localfonte
        source: "../Font/BastardusSans.ttf"
    }

    Text {

        id: errorBox
        x: btnlogin.x  + 160
        y: btnlogin.y + btnlogin.height + 5
        text: ""
        font.bold: true
        color: "#FFFFFF"
        font.pixelSize: 18
        font.family:  localfonte.name
        height: 15

        Image
        {
            id: imageerro
            x: -40
            visible:  false
            source: "../images/icon-error.png"
        }
    }

    Text {

        id: txtwellcome
        x: input_user.x
        y: logo.y + 250
        text: qsTr("WELCOME!")
        font.bold: true
        color: "#FFFFFF"
        font.pixelSize: 18
        font.family:  localfonte.name
    }


    CasInputBox { 

        id: input_user
        KeyNavigation.tab: input_password
        KeyNavigation.backtab: input_password
        Keys.onReturnPressed: input_password.focus = true
        focus: true
        x: logo.x - 50
        y: txtwellcome.y +  28
        width: btnlogin.width -5
        height: btnlogin.height /2.5
        defaultText: "Username"

       Component.onCompleted: {
          setFontFamily("../../Font/BastardusSans.ttf")
          setColorFont("#213b57")
          setBoundInputText(true)
          setColorInputText("#213b57")
          setMaxLengthInputText(40)
       }
    }

    CasInputBox { 

        id: input_password
        KeyNavigation.tab: input_user
        KeyNavigation.backtab: input_user

        focus: false
        x: input_user.x
        y: input_user.y + 65
        width: btnlogin.width -5
        height: btnlogin.height / 2.5
        defaultText: "Password"
        echoMode: TextInput.Password

        Component.onCompleted: {
           setFontFamily("../../Font/BastardusSans.ttf")
           setColorFont("#213b57")
           setBoundInputText(true)
           setColorInputText("#213b57")
           setMaxLengthInputText(20)
        }

        Keys.onReturnPressed: emitLoginSubmit()
    }

    CasButton {
        id: btnlogin
        objectName: "btnlogin"
        x: input_password.x
        y: input_password.y + 65
        width: 506
        height: 129
        color: "transparent"

        Component.onCompleted: {
            setText("");
            setTextQuocient(2.8);
            setimage("../../images/bt-login.png")
            setsizeimage(506, 129)
        }

        onButtonClicked: emitLoginSubmit()
    }
}

// vim: ts=4 sw=4 et ft=javascript:
