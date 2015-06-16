// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: casContainer
    width: 1280
    height: 768

    function setLogoOnCenter(alignment) {
        logo.x = 0
        logo.anchors.horizontalCenter = casContainer.horizontalCenter;
    }

    function setLogoWidthQuocient(q) {
        logo.width = logo.originalWidth / q
    }

    function setLogoHeightQuocient(q) {
        logo.height = logo.originalHeight / q
    }
    /*
    Text {
        anchors.centerIn: parent
    }
    */

    property alias homeIconVisible: homeIcon.visible
    property alias header: header
    property variant logoHorizontalCenter: parent.horizontalCenter

    signal homeButtonClicked

    MouseArea {
        x: 0
        y: 0
        visible: true
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        /*
        onClicked: {
            Qt.quit();
        }
        */

        Image {
            id: header
            x: 22
            y: 45
            width: 1234
            height: 30
            sourceSize.width: 1060
            source: "../images/FundoFooter.JPG"

            TextEdit {
                id: welcomeLabel
                x: 47
                y: 5
                width: 80
                height: 20
                color: "#e6f1f1"
                text: qsTr("Welcome, Operator")
                textFormat: TextEdit.AutoText
                font.family: "Ubuntu"
                font.bold: true
                font.pixelSize: 20
            }
        }

        Image {
            id: questionIcon
            x: 1103
//            y: header.y height
            anchors.verticalCenter: header.verticalCenter
            width: header.height / 1.3
            height: header.height / 1.3
            smooth: true
            source: "../images/interrog.jpg"
        }

        BorderImage {
            id: homeIcon
            objectName: "homeIcon"
            x: parent.x + 30
            y: parent.y + 80
            width: 67 / 2
            height: 74 / 2
            smooth: true
            source: "../images/home.jpg"

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                onClicked: casContainer.homeButtonClicked()
            }
        }
    }

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

    BorderImage {
         id: logo
         x: parent.width - (width + 30)
         y: parent.y + 80
         property real originalWidth: 2816
         property real originalHeight: 756
         width: originalWidth / 12
         height: originalHeight / 12
         smooth: true
         source: "../images/LogoAlta.png"
     }
}

// vim: ts=4 sw=4 et ft=javascript:
