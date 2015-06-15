import QtQuick 1.1
import "widgets"

Rectangle {
    id: casContainer
    width: 1680
    height: 1050

    property real contentHeight: casContainer.height - 210
    property real contentWidth: 1350
    property real menuButtonHeight: 126
    property real menuButtonWidth: 310
    property real contentX: menuButtonWidth
    property real contentY: menuButtonHeight + header.height
    property alias content: casHomeContent

    function render(_data) {
        dump(_data);
        if (_data["error_cod"] > 0) {
            errorBox.text = "Login error:: "
            errorBox.text += _data["error_msg"];
            return;
        }

        if (_data["state"] == "TicketKeyboard") {
            disableAllButtons();
            setLogoOnCorner();
            btnTicket.setActive(true);
        }

        if (_data["state"] == "home") {
            setTitle("");
            disableAllButtons();
            setLogoOnCenter();
            logo.visible = true
        }

        if (_data["state"] == "People") {
            displayDemoMessage();
            disableAllButtons();
            btnPersona.setActive(true);
        }

        if (_data["state"] == "Close") {
            displayDemoMessage();
            disableAllButtons();
            btnCierra.setActive(true);
        }

        if (_data["state"] == "Consult") {
            displayDemoMessage();
            disableAllButtons();
            btnConsult.setActive(true);
        }
        
        if (_data["state"] == "Accounting") {
            displayDemoMessage();
            disableAllButtons();
            btnContabilidad.setActive(true);
        }
        
        if (_data["state"] == "File") {
            displayDemoMessage();
            disableAllButtons();
            btnFile.setActive(true);
        }

        if (_data["state"] == "Config") {
            displayDemoMessage();
            disableAllButtons();
            btnConfig.setActive(true);
        }

        if (_data["state"] == "Cash") {
            displayDemoMessage();
            disableAllButtons();
            btnCash.setActive(true);
        }
//            casContainer.homeButton();
    } // render

    function displayDemoMessage() {
        setTitle("");
        //setLogoOnCenter();
        //contentMsgBox.x = demoMessage.width + 250
        //contentMsgBox.y = demoMessage.height + 180
        //demoMessage.visible = true
        logo.opacity = 0;
        imgHeader.logoCorner_opacity = 0;
        contentMsgBox.opacity = 1
        marginTop: 5
    }

    function setLogoOnCenter() {
        contentMsgBox.opacity = 0
        imgHeader.logoCorner_opacity = 0;
        logo.opacity = 1;
    }

    function setLogoOnCorner() {
        contentMsgBox.opacity = 0
        logo.opacity = 0;
        imgHeader.logoCorner_opacity = 1;
    }

    function disableAllButtons() {
        btnTicket.setActive(false);
        btnPersona.setActive(false);
        btnCierra.setActive(false);
        btnConsult.setActive(false);
        btnContabilidad.setActive(false);
        btnFile.setActive(false);
        btnConfig.setActive(false);
        btnCash.setActive(false);
    }

    function dump(_data) {
        console.log("qml:: casHomeInstance::dump(data) begin");
        for (var k in _data) {
            console.log("qml:: _data[\"" + k + "\"] " + _data[k]);
        }
        console.log("qml:: casHomeInstance::dump(data) end");
    }

    // property alias homeIconVisible: homeIcon.visible
    // property variant logoHorizontalCenter: parent.horizontalCenter
    property alias header: header

    signal logoff()
    signal homeButton()
    signal ticketButton()
    signal peopleButton()
    signal closeButton()
    signal consultButton()
    signal accountingButton()
    signal fileButton()
    signal configButton()
    signal cashButton()

    Rectangle {
        id: header
        x: 0
        y: 0
        width: 1680
        height: 30
        // XXX wishlist
        //height: 42
        color: "#152f4f"

        TextEdit {
            id: welcomeLabel
            x: header.x
            y: 5
            width: 80
            height: 20
            color: "#e6f1f1"
            text: qsTr("Welcome, Operator")
            textFormat: TextEdit.AutoText
            font.family: "Ubuntu"
            font.bold: true
            font.pixelSize: 20
            readOnly: true
        }

        TextEdit {
            id:logoffLabel
            x: header.x  + 1590
            y: 5
            width: 80
            height: 20
            color: "#e6f1f1"
            text: qsTr("LOGOFF")
            textFormat: TextEdit.AutoText
            font.family: "Ubuntu"
            font.bold: true
            font.pixelSize: 20
            readOnly: true

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                onClicked: { casContainer.logoff(); }
            }
        }

        Image {
            id: questionIcon
            x: logoffLabel.x - 50
            anchors.verticalCenter: header.verticalCenter
            width: header.height / 1.3
            height: header.height / 1.3
            smooth: true
            source: "../images/help.png"
        }
    } // header

    Rectangle {
        id: imgHeader
        anchors.top: header.bottom
        anchors.left: casHomeContent.left
        width: casContainer.contentWidth
        height: 42
        property alias logoCorner_opacity: logoCorner.opacity
        BorderImage {
            id: logoCorner
            anchors.right: parent.right
            anchors.top: parent.top
            width: 133
            height: parent.height 
            smooth: true
            source: "../images/logo-pequeno.jpg"
            MouseArea {
                anchors.fill: parent
                onClicked: { casContainer.homeButton(); }
            }
        }
    }

    Rectangle {
        id: casHomeContent
        x: casContainer.contentX
        y: casContainer.contentY
        width: casContainer.contentWidth 
        height: casContainer.contentHeight
        color: "#00000000"
        //color: "#ffffff"
        //border.width: 5
        //border.color: "#000000"
    }

    Rectangle {
        id: contentMsgBox
        opacity: 0
        width: (42 * 10 * 2)
        height: (42 * 5)
        anchors.horizontalCenter: casHomeContent.horizontalCenter
        anchors.verticalCenter: casHomeContent.verticalCenter
        //color: "#f4f4f4"

        Column {
            anchors.fill: parent
            Image {
                source: "../images/icon-error-grande.jpg"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: "THIS VERSION OF THE SYSTEM IS DEMO";
                style: Text.Raised
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: qsTr("This module is only available for the version used in the hall")
                style: Text.Raised
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    /*
    Row {
        spacing:  10;
        x: 250;
        y: 450;
    }

    Row {
        spacing:  10;
        x: 250;
        y: 610;
    }
    */

    BorderImage {
        id: logo
        width: 1015 / 1.8
        height: 284 / 1.8
        smooth: true
        source: "../images/logo-grande.jpg"
        anchors.horizontalCenter: casHomeContent.horizontalCenter
        anchors.verticalCenter: casHomeContent.verticalCenter
    }

    CasMenuButton {
        id: btnTicket
        x: header.x
        y: header.y + 30
        height: menuButtonHeight
        width: menuButtonWidth
        name: "ticket"
        Component.onCompleted: {
            setActive(false);
            clicked.connect(ticketButton);
        }
    }

    CasMenuButton {
        id: btnPersona
        x: header.x
        anchors.top: btnTicket.bottom
        width: btnTicket.width
        height: btnTicket.height
        name: "people"
        Component.onCompleted: {
            setActive(false);
            clicked.connect(peopleButton);
        }
    }

    CasMenuButton {
        id: btnCierra
        x: header.x
        anchors.top: btnPersona.bottom
        width: btnTicket.width
        height: btnTicket.height
        name: "cierra"
        Component.onCompleted: {
            setActive(false);
            clicked.connect(closeButton);
        }
    }

    CasMenuButton {
        id: btnConsult
        x: header.x
        anchors.top: btnCierra.bottom
        width: btnTicket.width
        height: btnTicket.height
        name: "consult"
        Component.onCompleted: {
            setActive(false);
            clicked.connect(consultButton);
        }
    }

    CasMenuButton {
        id: btnContabilidad
        x: header.x
        anchors.top: btnConsult.bottom
        width: btnTicket.width
        height: btnTicket.height
        name: "accounting"
        Component.onCompleted: {
            setActive(false);
            clicked.connect(accountingButton);
        }
    }

    CasMenuButton {
        id: btnFile
        x: header.x
        anchors.top: btnContabilidad.bottom
        width: btnTicket.width
        height: btnTicket.height
        name: "file"
        Component.onCompleted: {
            setActive(false);
            clicked.connect(fileButton);
        }
    }

    CasMenuButton {
        id: btnConfig
        x: header.x
        anchors.top: btnFile.bottom
        width: btnTicket.width
        height: btnTicket.height
        name: "config"
        Component.onCompleted: {
            setActive(false);
            clicked.connect(configButton);
        }

    }

    CasMenuButton {
        id: btnCash
        x: header.x
        anchors.top: btnConfig.bottom
        width: btnTicket.width
        height: btnTicket.height
        name: "cash"
        Component.onCompleted: {
            setActive(false);
            clicked.connect(cashButton);
        }
    }

    Rectangle {
        id: screenTitleCanvas
        width: casContainer.contentWidth
        height: (42 * 2)
        anchors.top: imgHeader.bottom
        anchors.left: casHomeContent.left
        // XXX uncomment in case you want a visual reference
        //color: "#f4f4f4"
        property alias text: content.text
        Text { 
            id: content
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            //text: "screenTitleCanvas"
            text: ""
            font.pixelSize: 50;
            font.bold: true
            color: "#213b57"
        }
    }

    Component.onCompleted: {
        //setActive(false);
        //clicked.connect(cashButton);
        //setLogoOnCorner();
        //setLogoOnCenter();
        //displayDemoMessage();
    }

    function setTitle(title) {
        screenTitleCanvas.text = title;
    }
}

// vim: ts=4 sw=4 et ft=javascript:
