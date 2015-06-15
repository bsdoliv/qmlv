import QtQuick 1.1
import "calculator"
import "widgets"

Rectangle {
    id: window_ticket
    clip: false
    smooth: true
    width: parent.width
    height: parent.height
//    color: "#f4f4f4"

    property real btnWidth:  42 * 10
    property real btnHeight: 42 * 3.5
    property real btnMargin: 42 * 2
    property string  currentstate: ""
    property string  screentitulo: ""
    property string  ticketnumber: ""
    property string  currentbalanceticketnumber: ""
    property string  currentdisplay: ""

    property string  tempcurrentbalance: ""


    signal newTicket()
    signal newConfirm(variant data)
    signal newAddConfirm(variant data)
    signal addCredit()
    signal addCreditButton()
    signal closeTicketButton()
    signal closeValidateCode(variant data)
    signal closeConfirm(variant data)

    function closeBack() {
        console.log("qml:: closeBack");
    }

    function calcConfirm() {
        console.log("qml:: displayText() " + calculator.displayText());
        console.log("qml:: currentstate " + currentstate);

        if (currentstate == "TicketKeyboard" || currentstate =="TicketDialogConfirm"){
            newConfirm({
                "ticket_value": calculator.displayText(),
                "state"    :  currentstate
            })
        }

        if (currentstate == "TicketAddCredit"  ||
                currentstate == "TicketAddCreditKeyboard" || currentstate == "TicketAddCreditDialogConfirm") {

            newAddConfirm({
                    "value_display": calculator.displayText(),
                    "state"    :  currentstate
                })
        }

        if (currentstate == "TicketCloseCodeKeyboard") {
            closeValidateCode({
                "ticket_id": calculator.displayText()
            })
        }
    }

    function disableButtons() {
        btnCloseTicket.setBgColor("#152f4f");
        btnCreateTicket.setBgColor("#152f4f");
        btnAddCredit.setBgColor("#152f4f");
        ticket_close_screen.visible = false;
    }

    function render(data) {
        currentstate = data["state"];
        currentdisplay = calculator.displayText();
        if (data["state"] == "TicketKeyboard") {
            //titulo.text = "Create Ticket";
            casHomeInstance.setTitle("Create Ticket");
            calculator.reset();
            calculator.setMask(0);
            calculator.visible = true;

            disableButtons();
            btnCreateTicket.setBgColor("#503755");
            infoAddCredit(false);

        }

        // Confirmação de ticket
        if (data["state"] == "TicketDialogConfirm") {
            setEnableComponents(false);
            confirmnewticket.setValue(calculator.displayText())
            confirmnewticket.visible = true;
        }

        if (data["state"] == "TicketAddCreditKeyboard") {
            //titulo.text = "Inform the Number of Ticket";
            casHomeInstance.setTitle("Inform Ticket Number");
            calculator.reset();


            calculator.setMask(1);
            calculator.visible = true;

            disableButtons();
            btnAddCredit.setBgColor("#503755");
            infoAddCredit(false);
            setEnableComponents(true);
            confirmaddcreditticket.visible = false;

        }

        //Confirmação de adição credito ticket
        if (data["state"] == "TicketAddCreditDialogConfirm") {
            setEnableComponents(false);
            confirmaddcreditticket.setinfo(calculator.displayText(), data["ticketnumber"])
            confirmaddcreditticket.visible = true;

        }

        if (data["state"] == "TicketAddCredit" ) {
            casHomeInstance.setTitle("Inform Value of the Credit");
            calculator.reset();

            calculator.setMask(0);
            calculator.visible = true;

            disableButtons();
            btnAddCredit.setBgColor("#503755");
            infoAddCredit(true);
            tempcurrentbalance = data["currentbalanceticketnumber"] ;
            ticketnumber = data["ticketnumber"];
            lblCurrentValues.text = tempcurrentbalance  ;
            lblTicketNumber.text = ticketnumber;
        }

        if (data["state"] == "TicketCloseCodeKeyboard" ) {
            casHomeInstance.setTitle("Close Ticket");
            calculator.reset();
            calculator.setMask(1);
            calculator.visible = true;

            disableButtons();
            btnCloseTicket.setBgColor("#503755");
            infoAddCredit(false);
        }

        if (data["state"] == "TicketCloseConfirm" ) {
            casHomeInstance.setTitle("Close Ticket");
            ticket_close_screen.updateData(data);
            calculator.visible = false;

            disableButtons();
            btnCloseTicket.setBgColor("#503755");
            ticket_close_screen.visible = true;
        }

        if (data["error_cod"] > 0) {
            setMessageAlert((data["error_cod"] == 1 ? "" :data["error_cod"]) +" "+data["error_msg"]);
            setEnableComponents(false);
            calculator.setdisplayText(currentdisplay);

            if (data["error_cod"] != 1  && data["error_cod"] != 142 && data["state"] == "TicketAddCreditKeyboard"){

               infoAddCredit(true);
               casHomeInstance.setTitle("Inform Value of the Credit");
               lblCurrentValues.text = tempcurrentbalance ;
               lblTicketNumber.text =   ticketnumber ;
               calculator.setMask(0);
               currentstate =  "TicketAddCredit";

            }

            return;
        }

        console.log("qml:: ticket_id " + data["ticket_id"]);
        console.log("qml:: ticket_value " + data["ticket_value"]);
        casHomeInstance.render(data);
    }

    function infoAddCredit(v) {
        console.log("qml:: Enable label add credit")
        lblCurrentBalance.visible = v;
        lblCurrentValues.visible = v
        lblDescriptionTicketNumber.visible = v
        lblTicketNumber.visible = v
        lblCurrentValues.text = v ? currentbalanceticketnumber  : ""
        lblTicketNumber.text = v ? ticketnumber : ""
    }

    function setMessageAlert(msg) {
        msgealert.setMsg(msg);
        msgealert.visible = true;
    }

    function setEnableComponents(b) {
        calculator.enabled = b;
        btnCreateTicket.enabled = b;
        btnAddCredit.enabled = b;
        btnCloseTicket.enabled = b;
    }

    Text {
        id: lblCurrentBalance
        anchors.right: btnCloseTicket.right
        anchors.bottom: lblCurrentValues.top
        font.family: "Arial"
        font.pixelSize: 18;
        color: "#000000"
        visible: false
        text: "Current Balance"
    }

    Text {
        id: lblCurrentValues
        anchors.right: btnCloseTicket.right
        anchors.bottom: lblDescriptionTicketNumber.top
        anchors.bottomMargin: 30
        font.family: "Arial"
        font.pixelSize: 60;
        font.bold: true
        color: "#000000"
        visible: false
    }

    Text {
        id: lblDescriptionTicketNumber
        anchors.right: btnCloseTicket.right
        anchors.bottom: lblTicketNumber.top
        font.family: "Arial"
        font.pixelSize: 18;
        color: "#000000"
        visible: false
        text: "Ticket Nº"
    }

    Text {
        id: lblTicketNumber
        anchors.right: btnCloseTicket.right
        anchors.bottom: btnCreateTicket.top
        anchors.bottomMargin: 60
        font.family: "Arial"
        font.pixelSize: 60;
        font.bold: true
        color: "#000000"
        visible: false
    }

    CasTicketClose {
        id: ticket_close_screen
        visible: false
        width: 22 * 30
        height: 15 * 30 
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.leftMargin: 40
        anchors.bottomMargin: 345
        //property int someMargin
        //anchors.bottomMargin: 135 + someMargin

        Component.onCompleted: {
            ticket_close_screen.closeConfirm.connect(window_ticket.closeConfirm);
            ticket_close_screen.closeBack.connect(window_ticket.closeBack);
        }

        onVisibleChanged: {
            console.log("qml:: width " + width);
            console.log("qml:: height " + height);
        }
    }

    Calculator {
        id: calculator
        width: 16 * 30
        height: 22 * 30 
        color: "#00000000"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.bottomMargin: 135
        anchors.leftMargin: 40
        Component.onCompleted: calculator.calcOKClicked.connect(calcConfirm)
    }

    FontLoader {
        id:  localfonte
    }

    CasButton {
       id: btnCreateTicket

       anchors.bottom: btnAddCredit.top
       anchors.rightMargin: btnMargin
       anchors.right: window_ticket.right
       anchors.bottomMargin: 14

       width: window_ticket.btnWidth
       height: window_ticket.btnHeight
       Component.onCompleted: {
           setText("New Ticket");
           setBgColor("#152f4f");
           //setfontfamily(localfonte)
       }
       onClicked: newTicket();
    }

    CasButton {
       id: btnAddCredit

       anchors.bottom: btnCloseTicket.top
       anchors.rightMargin: btnMargin
       anchors.right: window_ticket.right
       anchors.bottomMargin: 14

       width: window_ticket.btnWidth
       height: window_ticket.btnHeight
       Component.onCompleted: {
           setText("Add Credit");
           setBgColor("#152f4f");
       }
       onClicked: addCreditButton();
    }

    CasButton {
       id: btnCloseTicket

       anchors.bottom: parent.bottom
       anchors.rightMargin: btnMargin
       anchors.right: window_ticket.right

       width: window_ticket.btnWidth
       height: window_ticket.btnHeight
       Component.onCompleted: {
           setText("Close Ticket")
           setBgColor("#152f4f");
       }
       onClicked: closeTicketButton();
    }

    CasErrorMessage {
        id: msgealert
        visible: false
        onBtnclicked:{
              setEnableComponents(true)
              msgealert.visible = false;
        }
    }

    CasConfirmNewTicket {
        id: confirmnewticket
        visible: false
        x: 200
        y: 150

        onBtnclickedyes: {
            calcConfirm();
            setEnableComponents(true);
            confirmnewticket.visible = false
        }

        onBtnclickedno: {
            setEnableComponents(true);
            currentstate = "TicketKeyboard";
            confirmnewticket.visible = false;
        }
    }


    CasConfirmAddCreditTicket {
        id: confirmaddcreditticket
        visible: false
        x: 200
        y: 150

        onBtnclickedyes: {
            calcConfirm();
            setEnableComponents(true);
            confirmaddcreditticket.visible = false
        }

        onBtnclickedno: {
            setEnableComponents(true);
            currentstate = "TicketAddCredit";
            confirmaddcreditticket.visible = false;
        }
    }

    onOpacityChanged: {
        keyspy.focus = (opacity >= 1) ? true : false;
      //  console.log("qml:: opacity changed " + opacity);
    }

    Item {
        id: keyspy
        anchors.fill: parent
        focus: false
        Keys.onPressed: {
            if (filterNumpadKeys(event) && currentstate != "TicketDialogConfirm") {
                calculator.click(event.key);
                event.accepted = true;
            } else  if (((event.key == Qt.Key_Enter) ||
                         (event.key == Qt.Key_Return))  && currentstate == "TicketDialogConfirm") {
                calcConfirm();
                setEnableComponents(true);
                currentstate = "TicketKeyboard";
                confirmnewticket.visible = false;
            }
        }
    }

    function filterNumpadKeys(e) {
        return ((e.key == Qt.Key_Enter) ||
                (e.key == Qt.Key_Backspace) ||
                (e.key == Qt.Key_Return) ||
                (e.key == Qt.Key_Delete) ||
                (e.key >= Qt.Key_0 && e.key <= Qt.Key_9));
    }
}

// vim: ts=4 sw=4 et ft=javascript:
