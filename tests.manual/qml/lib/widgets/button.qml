// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: buttonWidget
    width: 320
    height: 240
    color: "#473C8B"

    property variant loginMap: ""

    function setText(_text) {

        innerText.text = _text;
    }

    function setTextQuocient(q) {
        innerText.font.pixelSize = innerText.sizeReference / q
    }

    function setpixelfont(t)
    {
        innerText.font.pixelSize = t;
    }

    function setimage(i)
    {
        imagebutton.pachimage = i;
    }

    function setsizeimage(w, h)
    {
        imagebutton.width = w ;
        imagebutton.height = h;
    }


    signal clicked(variant map)
    signal buttonClicked;

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


       anchors.horizontalCenter:   buttonWidget.horizontalCenter
       anchors.verticalCenter: buttonWidget.verticalCenter
       horizontalAlignment: Text.AlignHCenter
       text: "DEFAULT_TEXT"
       style: Text.Raised
       smooth: true

    }


    Image
    {
       property string pachimage:""
       id: imagebutton
       source: pachimage
    }

    MouseArea {

        id: mouseArea
        anchors.fill: parent

        onClicked: buttonWidget.clicked(loginMap);

        Component.onCompleted:{

              clicked.connect(buttonClicked)
         }
    }

    states: State {
        name: "pressed"; when: mouseArea.pressed == true
        PropertyChanges { target: buttonWidget; color: "green"; }
    }
}

