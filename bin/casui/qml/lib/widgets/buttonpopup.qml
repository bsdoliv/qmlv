// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: buttonPopUpWidget
    width: 320
    height: 240

    property string touchtimage: ""

    function setTouchiImage(i)
    {
      touchtimage = i;
    }

    function setimage(i)
    {
        imagebutton.source = i;
    }

    function setsizeimage(w, h)
    {
        imagebutton.width = w ;
        imagebutton.height = h;
    }

    signal clicked;

    Image {

       id: imagebutton

    }

    MouseArea {

        id: mouseArea
        anchors.fill: parent
        onClicked: buttonPopUpWidget.clicked();
    }

    states: [
    State {
            name: "active"; when: mouseArea.pressed == true
            PropertyChanges { target: imagebutton; source: touchtimage; }
     }

    ]

}

