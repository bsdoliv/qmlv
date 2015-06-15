import QtQuick 1.1
import "calculator"
import "widgets"

CasContainer {
    id: homeWindow
    objectName: "homeWindow"
    clip: false
    smooth: true
    homeIconVisible: true

    signal ticketButtonClicked()

    function render(_data)
    {
        console.log("render data");
        for (var k in _data) {
            console.log("key " + k + " _data[k] " + _data[k]);
        }
        console.log("random access to _data");
        var k = "key1";
        console.log("key " + k + " _data[k] " + _data[k]);
        k = "key2";
        console.log("key " + k + " _data[k] " + _data[k]);
    }
/*
    function buttonTicketHandler()
    {
        console.log('buttonTicketHandler')
    }
*/

    CasButton {
        id: btnTicket
        x: 192
        y: 327
        width: 321
        height: 114
        Component.onCompleted: { 
            setText("Ticket");
            setTextQuocient(2.8);
            clicked.connect(ticketButtonClicked); 
        }
    }

    CasButton {
        id: btnCierre1
        x: 730
        y: 333
        width: 321
        height: 114
        Component.onCompleted: { 
            setText("Cierre");
            setTextQuocient(2.8);
            clicked.connect(ticketButtonClicked); 
        }
    }

    CasButton {
        id: btnPersona
        x: 192
        y: 458
        width: 136
        height: 114
        Component.onCompleted: { 
            setText("Persona");
            setTextQuocient(4.8);
            clicked.connect(ticketButtonClicked); 
        }

    }

    CasButton {
        id: btnConsultar
        x: 377
        y: 458
        width: 136
        height: 114
        Component.onCompleted: { 
            setText("Consultar");
            setTextQuocient(5);
            clicked.connect(ticketButtonClicked); 
        }
    }

    CasButton {
        id: btnArchivo
        x: 572
        y: 458
        width: 136
        height: 114
        Component.onCompleted: { 
            setText("Archivo");
            setTextQuocient(4.8);
            clicked.connect(ticketButtonClicked); 
        }

    }

    CasButton {
        id: btnContabilidad
        x: 730
        y: 458
        width: 136
        height: 114
        Component.onCompleted: { 
            setText("Contabilidad");
            setTextQuocient(6);
            clicked.connect(ticketButtonClicked); 
        }

    }

    CasButton {
        id: btnConfig
        x: 915
        y: 458
        width: 136
        height: 114
        Component.onCompleted: { 
            setText("Config");
            setTextQuocient(4.8);
            clicked.connect(ticketButtonClicked); 
        }

    }

    CasButton {
        id: btnCaja1
        x: 572
        y: 333
        width: 136
        height: 114
        Component.onCompleted: { 
            setText("Caja");
            setTextQuocient(2.8);
            clicked.connect(ticketButtonClicked); 
        }

    }

    /*
    Grid {
        id: grid1
        x: 122
        y: 196
        width: 1062
        height: 508
        smooth: true
        spacing: 20
        flow: Grid.LeftToRight
        rows: 2
        columns: 3

        property real ka: 40

        Grid {
            id: column1
            rows: 2
            columns: 1
            x: 154
            y: -82
            width: (parent.width - parent.ka) * 0.4
            height: parent.height

            Grid {
                id: grid2
                x: 122
                y: -44
                width: 400
                height: 400
                rows: 1
                columns: 2
            }
        }

        Grid {
            id: column2
            rows: 2
            columns: 1
            x: 208
            y: -106
            width: (parent.width - parent.ka) * 0.2
            height: parent.height
        }

        Grid {
            id: column3
            rows: 2
            columns: 1
            x: 482
            y: 340
            width: (parent.width - parent.ka) * 0.4
            height: parent.height
            property real h: (box.height / 5) - ((spacing * (6 - 1)) / 6)
            property real w: (box.width / 4) - ((spacing * (4 - 1)) / 4)

            Grid {
                id: grid3
                x: 82
                y: 338
                width: 400
                height: 400
                rows: 1
                columns: 2
                property real w: (box.width / columns) - ((spacing * (columns - 1)) / columns)

                CasButton { id: btnPOS; anchors.fill: grid3; width: grid3.w
                    Component.onCompleted: { 
                        setText("POS"); 
                        clicked.connect(homeWindow.ticketButtonClicked); 
                    }
                }
                CasButton { id: btnClose; anchors.fill: grid3; width: grid3.w
                    Component.onCompleted: { 
                        setText("Close"); 
                        clicked.connect(homeWindow.ticketButtonClicked); 
                    }
                }
            }
        }
    }
*/

    Component.onCompleted: {
        setLogoOnCenter();
        setLogoWidthQuocient(5);
        setLogoHeightQuocient(5);
    }
}

// vim: ts=4 sw=4 et ft=javascript:
