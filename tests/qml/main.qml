import QtQuick 1.1
import "lib"

Rectangle {
    id: mainWindow
    objectName: "mainWindow"
    width: 1280
    height: 768

    Loader { 
        id: loader
        objectName: "loader"
        anchors.fill: parent
        visible: source != ""
    }

    CasLogin {
        id: casLoginInstance
        objectName: "loginQmlView"
        x: -mainWindow.width
    }

    CasTicket {
        id: casTicketInstance
        objectName: "casTicketInstance"
        x: -mainWindow.width
    }

    CasHome {
        id: casHomeInstance
        objectName: "homeQmlView"
        x: -mainWindow.width
        homeIconVisible: false
    }

    function changeState(next_state)
    {
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
                x: -mainWindow.width
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
                x: -mainWindow.width
            }
        },
        State {
            name: "ticket"
            PropertyChanges {
                target: casTicketInstance
                x: parent.x
            }
            PropertyChanges {
                target: casLoginInstance
                x: -mainWindow.width
            }
            PropertyChanges {
                target: casHomeInstance
                x: -mainWindow.width
            }
        }
    ]

    transitions: [
        Transition { 
            from: "login"; to: "home"
            ParallelAnimation {
                PropertyAnimation {
                    target: casLoginInstance
                    properties: "x"; duration: 200
                }
                PropertyAnimation {
                    target: casTicketInstance
                    properties: "x"; duration: 200
                }
            }
        },
        Transition { 
            from: "ticket"; to: "home"
            ParallelAnimation {
                PropertyAnimation {
                    target: casTicketInstance
                    properties: "x"; duration: 200
                }
                PropertyAnimation {
                    target: casHomeInstance
                    properties: "x"; duration: 200
                }
            }
        },
        Transition { 
            from: "home"; to: "ticket"
            ParallelAnimation {
                PropertyAnimation {
                    target: casHomeInstance
                    properties: "x"; duration: 200
                }
                PropertyAnimation {
                    target: casTicketInstance
                    properties: "x"; duration: 200
                }
            }
        }
    ]
}

// vim: ts=4 sw=4 et ft=javascript:
