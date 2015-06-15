// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: menuButtonWidget
    width: 320
    height: 240

    property bool active: false
    property string  name: ""

    function setText(_text) {
        innerText.text = _text;
    }

    function setTextQuocient(q) {
        innerText.font.pixelSize = innerText.sizeReference / q
    }

    function setpixelfont(t) {
        innerText.font.pixelSize = t;
    }

    function setimage(i) {
        imagebutton.source = i;
    }

    function setsizeimage(w, h) {
        imagebutton.width = w ;
        imagebutton.height = h;
    }

    function setbackgroundcolor(c) {
       menuButtonWidget.color = c;
    }

    function setActive(b) {
        var  strimage = "../../images/menu-" + name;
        strimage += b ? "on": "off";
        strimage +=  ".png";

        menuButtonWidget.active = b;
        imagebutton.source = strimage
    }

    signal buttonClicked;
    signal clicked;

    Text {
       id: innerText
       color: "white"
       font.capitalization: Font.AllUppercase
       property real sizeReference: ((parent.height < parent.width) ? 
                                     parent.height : parent.width)
       font.pixelSize: sizeReference / 3.8
       font.weight: Font.Bold
       wrapMode: Text.WordWrap
       width: parent.width
       anchors.horizontalCenter:   menuButtonWidget.horizontalCenter
       anchors.verticalCenter: menuButtonWidget.verticalCenter
       horizontalAlignment: Text.AlignHCenter
       style: Text.Raised
       smooth: true
    }

    Image {
       id: imagebutton
       source: "../../images/menu-" + name + "off.png";
       onSourceChanged: {
           console.log("qml:: onSourceChanged");
           //fadeOut.start();
           //fadeIn.start();
       }
    }

//    PropertyAnimation { id: fadeOut; target: imagebutton; properties: "opacity"; to: 1; duration: 400 }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: menuButtonWidget.clicked();
    }
}

// vim: ts=4 sw=4 et ft=javascript:
