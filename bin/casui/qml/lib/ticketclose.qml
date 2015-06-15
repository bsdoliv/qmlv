import QtQuick 1.1
import "calculator"
import "widgets"
import "calculator/CalculatorCore"

Rectangle {
    id: report
    clip: false
    smooth: true

    signal closeConfirm(variant data)
    signal closeBack()
    width: 360; height: 580

    function updateData(data) {
        var ticket_id = data["ticket_id"];
        account_number.text = ticket_id.substr(0, 4) + " " + ticket_id.substr(4);
        entrances_money.text = "$ " + data["entrances_money"];
        entrances_ticket.text = "$ " + data["entrances_ticket"];
        entrances_ticket_cash.text = "$ " + data["entrances_ticket_cash"];
        // FIXME entrances_total comes from backend but has no to render
        //entrances_total.text = data["entrances_total"];
        bet.text = "$ " + data["bet"];
        current_balance.text = "$ " + data["current_balance"] 
        // TODO
        //    (*response())["award"] = fe.prefix_signalName();
        //    (*response())["allowance"] = fe.prefix_signalName();
        net_payment.text = "$ " + data["net_payment"];
    }

    Column {
        id: main_column
        anchors.fill: parent

        //anchors.fill: parent
        Column {
            id: box; spacing: 8
            //anchors { fill: parent; topMargin: 6; leftMargin: 60; rightMargin: 6 }
            anchors.fill: parent; 
            height: column.h

            Display {
                id: net_payment
                width: box.width + 15
                height: parent.height / 4.5
                //anchors.fill: parent
                text: "$ 0.00"
                textColor: "#152f4f"
                Text {
                    text: qsTr("Net Payment")
                    color: "#152f4f"
                    font.pixelSize: 22
                    font.family: "Arial"
                    x: parent.x + 15
                    y : parent.y + 10
                    z: 100
                    visible: true
                }
            }

            Column {
                id: column; spacing: 20
                //anchors.fill: parent
                property real h: box.height / 6
                Grid {
                    id: grid; rows: 9; columns: 2; spacing: 1
                    //property real wl: ( (2.5 *box.width) / 3 )
                    //property real wv: ( box.width / 2.5 )
                    property real wl: ( 2*(box.width-1) / 3 )
                    property real wv: ( (box.width-1) / 3 )
                    anchors.rightMargin: 20

                    Text {
                        text: qsTr("Account Number:")
                        color: "#000000"
                        font.family: "Arial"
                        font.pixelSize: 22
                        width: grid.wl
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#c2d2e6"
                            z: -1
                        }
                    }
                    Text {
                        id: account_number
                        text: qsTr("0000 000")
                        color: "#152f4f"
                        font.family: "Arial"
                        font.pixelSize: 30
                        font.bold: true
                        width: grid.wv
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#c2d2e6"
                            z: -1
                            anchors.rightMargin: -15
                        }
                    }
                    Text {
                        text: qsTr("Entrances Money Mac.:")
                        color: "#000000"
                        font.family: "Arial"
                        font.pixelSize: 22
                        width: grid.wl
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#dee8f4"
                            z: -1
                        }
                    }
                    Text {
                        id: entrances_money
                        text: qsTr("$ 0.00")
                        color: "#152f4f"
                        font.family: "Arial"
                        font.pixelSize: 30
                        font.bold: true
                        width: grid.wv
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#dee8f4"
                            z: -1
                            anchors.rightMargin: -15
                        }
                    }
                    Text {
                        text: qsTr("Entrances Money with Ticket:")
                        color: "#000000"
                        font.family: "Arial"
                        font.pixelSize: 22
                        width: grid.wl
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#c2d2e6"
                            z: -1
                        }
                    }
                    Text {
                        id: entrances_ticket
                        text: qsTr("$ 0.00")
                        color: "#152f4f"
                        font.family: "Arial"
                        font.pixelSize: 30
                        font.bold: true
                        width: grid.wv
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#c2d2e6"
                            z: -1
                            anchors.rightMargin: -15
                        }
                    }
                    Text {
                        text: qsTr("Entrances Ticket Cash:")
                        color: "#000000"
                        font.family: "Arial"
                        font.pixelSize: 22
                        width: grid.wl
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#dee8f4"
                            z: -1
                        }
                    }
                    Text {
                        id: entrances_ticket_cash
                        text: qsTr("$ 0.00")
                        color: "#152f4f"
                        font.family: "Arial"
                        font.pixelSize: 30
                        font.bold: true
                        width: grid.wv
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#dee8f4"
                            z: -1
                            anchors.rightMargin: -15
                        }
                    }
                    Text {
                        text: qsTr("Bet:")
                        color: "#000000"
                        font.family: "Arial"
                        font.pixelSize: 22
                        width: grid.wl
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#c2d2e6"
                            z: -1
                        }
                    }
                    Text {
                        id: bet
                        text: qsTr("$ 0.00")
                        color: "#152f4f"
                        font.family: "Arial"
                        font.pixelSize: 30
                        font.bold: true
                        width: grid.wv
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#c2d2e6"
                            z: -1
                            anchors.rightMargin: -15
                        }
                    }
                    Text {
                        text: qsTr("Current Balance:")
                        color: "#000000"
                        font.family: "Arial"
                        font.pixelSize: 22
                        width: grid.wl
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#dee8f4"
                            z: -1
                        }
                    }
                    Text {
                        id: current_balance
                        text: qsTr("$ 0.00")
                        color: "#152f4f"
                        font.family: "Arial"
                        font.pixelSize: 30
                        font.bold: true
                        width: grid.wv
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#dee8f4"
                            z: -1
                            anchors.rightMargin: -15
                        }
                    }
                    Text {
                        text: qsTr("Award:")
                        color: "#000000"
                        font.family: "Arial"
                        font.pixelSize: 22
                        width: grid.wl
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#c2d2e6"
                            z: -1
                        }
                    }
                    Text {
                        text: qsTr("$ 0.00")
                        color: "#152f4f"
                        font.family: "Arial"
                        font.pixelSize: 30
                        font.bold: true
                        width: grid.wv
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#c2d2e6"
                            z: -1
                            anchors.rightMargin: -15
                        }
                    }
                    Text {
                        text: qsTr("Allowance:")
                        color: "#000000"
                        font.family: "Arial"
                        font.pixelSize: 22
                        width: grid.wl
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#dee8f4"
                            z: -1
                        }
                    }
                    Text {
                        text: qsTr("$ 0.00")
                        color: "#152f4f"
                        font.family: "Arial"
                        font.pixelSize: 30
                        font.bold: true
                        width: grid.wv
                        height: column.h
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        Rectangle {
                            anchors.fill: parent
                            color: "#dee8f4"
                            z: -1
                            anchors.rightMargin: -15
                        }
                    }
                } // grid
            } // column

            Column {
                id: buttons_column; spacing: 20
                height: parent.height / 5
                CasButton {
                    id: back
                    height: 75
                    width: 150
                    x: parent.x + 160
                    Component.onCompleted: {
                        setText("Back");
                        setBgColor("#152f4f");
                    }
                    onClicked: closeBack();
                }
                CasButton {
                    id: ok
                    height: 75
                    width: 150
                    x: back.x + back.width + 40
                    anchors.top: parent.top
                    Component.onCompleted: {
                        setText("OK");
                        setBgColor("#152f4f");
                    }
                    onClicked: closeConfirm({
                        "ticket_id": account_number.text
                    });
                }
            } // buttons_column
        } // box

        FontLoader {
            id:  localfonte
        }
    } // main_column
} // report

// vim: ts=4 sw=4 et ft=javascript:
