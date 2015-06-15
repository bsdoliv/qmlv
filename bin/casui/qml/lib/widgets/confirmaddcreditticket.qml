// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1


Rectangle {
    id: alertmsgbox
    width: 741
    height: 624
    color: "transparent"


    signal btnclickedyes;
    signal btnclickedno;

    function setinfo(numticket, value)
    {
       lblinfoticketNumber.text = numticket;
       lblvalue.text = value;
    }

    Text
    {
        id: lbldescconfirmcredits
        x:  parent.width / 2.72
        y : parent.height / 4
        font.italic: false
        font.family: "Arial"
        color: "#213b57"
        wrapMode: Text.WordWrap
        text: "Confirms Credits?"
        font.pixelSize: 24
        font.bold: false;
        style: Text.Raised
        z: 200
    }

    Text
    {
        id: lblconfirmvalue
        x:  lbldescconfirmcredits.x + 35
        y : lbldescconfirmcredits.y + 50
        font.italic: false
        font.family: "Arial"
        color: "#000000"
        wrapMode: Text.WordWrap
        text: "Account Number"
        font.pixelSize: 20
        font.bold: false;
        style: Text.Raised
        z: 200
        opacity: 0.74
    }

    Text
    {
        id: lblinfoticketNumber
        x:  lblconfirmvalue.x + 18
        y : lblconfirmvalue.y + 40
        font.italic: false
        font.family: "Arial"
        color: "#000000"
        wrapMode: Text.WordWrap
        text: "0000 000"
        font.pixelSize: 25
        font.bold: true;
        style: Text.Raised
        z: 200
        opacity: 0.74
    }


    Text
    {
        id: lblnumberticket
        x:  parent.width / 2.59
        y : parent.height / 1.9
        font.italic: false
        font.family: "Arial"
        color: "#000000"
        wrapMode: Text.WordWrap
        text: "Value of the Credit"
        font.pixelSize: 20
        font.bold: false;
        style: Text.Raised
        z: 200
        opacity: 0.74
    }

    Text
    {
        id: lblvalue
        x:  parent.width / 2.6
        y : lblconfirmvalue.y + 160
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
        source: "../../images/popups/confirma-credito.png"
        smooth: true
        fillMode: Image.PreserveAspectFit
        opacity: 0.95
    }


    CasButtonPopUP
    {
       id: btnNo
       x: 235
       y: 480
       width: 120
       height: 60

       Component.onCompleted: {

           setimage("../../images/popups/bt-no.png");
           setTouchiImage("../../images/popups/bt-no-touch.png");
           clicked.connect(btnclickedno);

        }

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



}
