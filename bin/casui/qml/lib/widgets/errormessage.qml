// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1


Rectangle {
    id: alertmsgbox
    width: 720
    height: 396
    x: 280
    y: 240
    color: "transparent"

    signal btnclicked;
    signal btnpress;

    function setMsg(msg)
    {
       lblmsg.text = msg;
    }

    Text
    {
        id: lblmsg
        x: 40
        y : 396 /2.3
        font.italic: false
        font.family: "Arial"

        color: "#213b57"
        wrapMode: Text.WordWrap
        text: "Default text"
        font.pixelSize: 24
        font.bold: true;
        style: Text.Raised
        z: 200
    }

    Image {
        id: backgroundimage
        source: "../../images/popups/alerta-logof.png"
        smooth: true
        opacity: 0.95
    }

    CasButtonPopUP
    {
       id: btnOk
       x: 300
       y: 270
       width: 120
       height: 60

       Component.onCompleted: {

           setimage("../../images/popups/bt-ok.png");
           setTouchiImage("../../images/popups/bt-ok-touch.png");
           clicked.connect(btnclicked);
       }

    }




}
