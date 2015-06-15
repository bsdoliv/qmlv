import QtQuick 1.1
import "calculator"
import "widgets"

CasContainer {
    id: window_ticket
    objectName: "window_ticket"
    clip: false
    smooth: true
    homeIconVisible: true

    Calculator {
        id: calculator
        width: parent.width / 2.5
        height: parent.height / 2
        color: parent.color
        y: parent.header.y + 185
        x: parent.header.x + 25
    //        rotation: 90
    }

    CasButton {
       id: btnCreateTicket
       x: 696
       y: 205
       width: 321
       height: 114
       Component.onCompleted: setText("New Ticket")
    }

    CasButton {
       id: btnIncreaseCredit

       x: 696
       y: 350
       width: 321
       height: 114
       Component.onCompleted: setText("Increase Credit")
    }

    CasButton {
       id: btnCloseTicket
       x: 696
       y: 500
       width: 321
       height: 114
       Component.onCompleted: setText("Close Ticket")
    }
}

// vim: ts=4 sw=4 et ft=javascript:
