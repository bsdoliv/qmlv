import QtQuick 1.1

Rectangle {
	id: loginqml
	width: 1024
	height: 768
	color: "#270447"
	clip: false

	signal submit(variant v)

	function render(data) {
		if (_data["state"] == "login") {
		    errBox.text = ""
		    imageerro.visible = false
		}

		if (_data["errno"] > 0) {
		    errBox.text = "Login error:: "
		    errBox.text += _data["errmsg"];
		    imageerro.visible = true
		}
	}

	function emitSubmit() { 
		submit({
			"user":		userbox.returnText(),
			"passwd":	passwdbox.returnText()
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

	Text {
		id: errbox
		x: submitbutton.x  + 160
		y: submitbutton.y + submitbutton.height + 5
		text: ""
		font.bold: true
		color: "#FFFFFF"
		font.pixelSize: 18
		font.family:  localfonte.name
		height: 15

		/*
		Image {
		    id: imageerro
		    x: -40
		    visible:  false
		    source: "../images/icon-error.png"
		}
		*/
	}

	Text { 
		id: txtwellcome
		x: userbox.x
		y: logo.y + 250
		text: qsTr("WELCOME!")
		font.bold: true
		color: "#FFFFFF"
		font.pixelSize: 18
		font.family:  localfonte.name
	}

	InputBox {
		id: userbox
		KeyNavigation.tab: userbox
		KeyNavigation.backtab: userbox

		focus: false
		x: userbox.x
		y: userbox.y + 65
		width: submitbutton.width -5
		height: submitbutton.height / 2.5
		defaultText: "Password"
		echoMode: TextInput.Password

		Component.onCompleted: {
		   setColorFont("#213b57")
		   setBoundInputText(true)
		   setColorInputText("#213b57")
		   setMaxLengthInputText(20)
		}

		Keys.onReturnPressed: emitLoginSubmit()
	}

	InputBox {
		id: passwdbox
		KeyNavigation.tab: userbox
		KeyNavigation.backtab: userbox

		focus: false
		x: userbox.x
		y: userbox.y + 65
		width: submitbutton.width -5
		height: submitbutton.height / 2.5
		defaultText: "Password"
		echoMode: TextInput.Password

		Component.onCompleted: {
		   setColorFont("#213b57")
		   setBoundInputText(true)
		   setColorInputText("#213b57")
		   setMaxLengthInputText(20)
		}

		Keys.onReturnPressed: emitLoginSubmit()
	}

	Button {
		id: submitbutton
		objectName: "SubmitButton"
		x: passwdbox.x
		y: passwdbox.y + 65
		width: 506
		height: 129
		color: "transparent"

		Component.onCompleted: {
			setText("");
			setTextQuocient(2.8);
			setimage("../../images/bt-login.png")
			setsizeimage(506, 129)
		}

		onButtonClicked: emitSubmit()
	}
} /* LoginQml */

// vim: ts=4 sw=4 et ft=javascript:
