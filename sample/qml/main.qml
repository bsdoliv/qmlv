import QtQuick 1.1
import "lib"

Rectangle {
    id: mainWindow
    objectName: "mainWindow"
    width: 1024
    height: 768
    property real transition_time: 400

    Loader {
        id: loader
        objectName: "loader"
        anchors.fill: parent
        visible: source != ""
        z: 0
    }

    CasLogin {
        id: casLoginInstance
        objectName: "loginQmlView"
        x: -mainWindow.width
        z: 1
    }

    CasTicket {
        id:         casTicketInstance
        objectName: "ticketQmlView"
        smooth:     true
        opacity: 1
        z: 2
        x: casHomeInstance.content.x
        y: casHomeInstance.content.y
        height: casHomeInstance.contentHeight
        width: casHomeInstance.contentWidth
    }

    CasContainer {
        id:         casHomeInstance
        objectName: "homeQmlView"
        smooth:     true
    }

    function changeState(next_state) {
        mainWindow.state = next_state
    }

    states: [
        State {
            name: "login"
            PropertyChanges {
                target: casLoginInstance
                x: parent.x
            }
            PropertyChanges {
                target: casTicketInstance
                //x: -mainWindow.width
                opacity: 0
            }
            PropertyChanges {
                target: casHomeInstance
                x: -mainWindow.width
            }
        },
        State {
            name: "home"
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
            PropertyChanges {
                target: casLoginInstance
                x: -mainWindow.width
            }
            PropertyChanges {
                target: casTicketInstance
                opacity: 0
            }
        },
        State {
            name: "TicketKeyboard"
            PropertyChanges {
                target: casTicketInstance
                opacity: 1
            }
            PropertyChanges {
                target: casLoginInstance
                opacity: 1
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "TicketKeyboard"
            PropertyChanges {
                target: casTicketInstance
                opacity: 1
            }
            PropertyChanges {
                target: casLoginInstance
                opacity: 0
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }

        },
        State {
            name: "TicketAddCodeKeyboard"
            PropertyChanges {
                target: casTicketInstance
                opacity: 1
            }
            PropertyChanges {
                target: casLoginInstance
                opacity: 0
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }

        },
        State {
            name: "TicketAddCreditKeyboard"
            PropertyChanges {
                target: casTicketInstance
                opacity: 1
            }
            PropertyChanges {
                target: casLoginInstance
                opacity: 0
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }

        },
        State {
            name: "TicketAddCredit"
            PropertyChanges {
                target: casTicketInstance
                opacity: 1
            }
            PropertyChanges {
                target: casLoginInstance
                opacity: 0
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "TicketCloseCodeKeyboard"
            PropertyChanges {
                target: casTicketInstance
                opacity: 1
            }
            PropertyChanges {
                target: casLoginInstance
                opacity: 0
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "TicketCloseConfirm"
            PropertyChanges {
                target: casTicketInstance
                opacity: 1
            }
            PropertyChanges {
                target: casLoginInstance
                opacity: 0
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "People"
            PropertyChanges {
                target: casTicketInstance
                opacity: 0 
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "Close"
            PropertyChanges {
                target: casTicketInstance
                opacity: 0 
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "Consult"
            PropertyChanges {
                target: casTicketInstance
                opacity: 0 
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "Accounting"
            PropertyChanges {
                target: casTicketInstance
                opacity: 0 
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "File"
            PropertyChanges {
                target: casTicketInstance
                opacity: 0 
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "Config"
            PropertyChanges {
                target: casTicketInstance
                opacity: 0 
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        },
        State {
            name: "Cash"
            PropertyChanges {
                target: casTicketInstance
                opacity: 0 
            }
            PropertyChanges {
                target: casHomeInstance
                x: parent.x
            }
        }
    ]

    transitions: [
        Transition { 
            from: "login"; to: "home"
            ParallelAnimation {
                PropertyAnimation {
                    target: casLoginInstance
                    properties: "x"; duration: transition_time
                }
                PropertyAnimation {
                    target: casHomeInstance
                    properties: "x"; duration: transition_time
                }
                PropertyAnimation {
                    //target: casTicketInstance
                    //properties: "x"; duration: transition_time
                }
            }
        },
        Transition { 
            from: "TicketKeyboard"; to: "home"
            ParallelAnimation {
                PropertyAnimation {
                    target: casTicketInstance
                    properties: "opacity"; duration: transition_time
                }
                PropertyAnimation {
                    target: casHomeInstance
                    properties: "x"; duration: transition_time
                }
            }
        },
        Transition { 
            from: "home"; to: "TicketKeyboard"
            ParallelAnimation {
                PropertyAnimation {
                    target: casTicketInstance
                    properties: "opacity"; duration: transition_time
                }
                PropertyAnimation {
                    target: casHomeInstance
                    properties: "x"; duration: transition_time
                }
            }
        },
        Transition { 
            // logoff
            from: "home"; to: "login"
            ParallelAnimation {
                PropertyAnimation {
                    target: casHomeInstance
                    properties: "x"; duration: transition_time
                }
                PropertyAnimation {
                    target: casLoginInstance
                    properties: "x"; duration: transition_time
                }
            }
        },
        Transition { 
            from: "TicketKeyboard"; to: "login"
            ParallelAnimation {
                PropertyAnimation {
                    target: casLoginInstance
                    properties: "opacity"; duration: transition_time
                }
                PropertyAnimation {
                    target: casHomeInstance
                    properties: "x"; duration: transition_time
                }
                PropertyAnimation {
                    target: casTicketInstance
                    properties: "opacity"; duration: transition_time
                }
            }
        }
    ]
}

// vim: ts=4 sw=4 et ft=javascript:
