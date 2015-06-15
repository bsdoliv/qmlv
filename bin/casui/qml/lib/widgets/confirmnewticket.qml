// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1


Rectangle {
    id: alertmsgbox
    width: 730
    height: 537
    color: "transparent"


    signal btnclickedyes;
    signal btnclickedno;

    function setValue(value)
    {
       lblvalue.text = value;
    }

    Text
    {
        id: lblmsg
        x:  parent.width / 3.65
        y : parent.height / 4
        font.italic: false
        font.family: "Arial"
        color: "#213b57"
        wrapMode: Text.WordWrap
        text: "Confirms Generation of Tickets?"
        font.pixelSize: 24
        font.bold: false;
        style: Text.Raised
        z: 200
    }

    Text
    {
        id: lblconfirmvalue
        x:  parent.width / 2.59
        y : parent.height / 2.3
        font.italic: false
        font.family: "Arial"
        color: "#000000"
        wrapMode: Text.WordWrap
        text: "Value of the Credits"
        font.pixelSize: 20
        font.bold: false;
        style: Text.Raised
        z: 200
        opacity: 0.74
    }

    Text
    {
        id: lblvalue
        x:  parent.width / 2.36
        y : lblconfirmvalue.y + 50
        font.italic: false
        font.family: "Arial"
        color: "#000000"
        wrapMode: Text.WordWrap
        text: "$ 0,00"
        font.pixelSize: 40
        font.bold: true;
        style: Text.Raised
        z: 200
        opacity: 0.74
    }

    Image {
        id: backgroundimage
        source: "../../images/popups/confirma-ticket2.png"
        smooth: true
        fillMode: Image.PreserveAspectFit
        opacity: 0.95
    }

    CasButtonPopUP
    {
       id: btnOk
       x: btnNo.x + 150
       y: btnNo.y
       width: 120
       height: 60

       Component.onCompleted: {

           setimage("../../images/popups/bt-yes.png");
           setTouchiImage("../../images/popups/bt-yes-touch.png");
           clicked.connect(btnclickedyes);
        }
    }

    CasButtonPopUP
    {
       id: btnNo
       x: 227
       y: 380
       width: 120
       height: 60

       Component.onCompleted: {

           setimage("../../images/popups/bt-no.png");
           setTouchiImage("../../images/popups/bt-no-touch.png");
           clicked.connect(btnclickedno);

        }

    }

}
