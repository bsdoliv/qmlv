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
			"user":		input_user.returnText(),
			"passwd":	input_password.returnText()
		})
	}

	Image {
		id: imagebutton
		source: "../images/bg-login.jpg"
		width : parent.width
		height: parent.height
	}

	Text {
		id: errbox
		x: btnlogin.x  + 160
		y: btnlogin.y + btnlogin.height + 5
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
		x: input_user.x
		y: logo.y + 250
		text: qsTr("WELCOME!")
		font.bold: true
		color: "#FFFFFF"
		font.pixelSize: 18
		font.family:  localfonte.name
	}

	Text {
		id: submitbutton
		objectName: "SubmitButton"
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

		signal buttonClicked;

		MouseArea {
			id: mouseArea
			anchors.fill: parent
			onClicked: buttonWidget.clicked(loginMap);
			Component.onCompleted: {
			    clicked.connect(buttonClicked);
			}
		}

		onButtonClicked: emitSubmit()
	}
} /* LoginQml */

// vim: ts=4 sw=4 et ft=javascript:
