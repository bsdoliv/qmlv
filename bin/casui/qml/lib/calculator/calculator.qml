/****************************************************************************
**
** Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies).
** Contact: http://www.qt-project.org/
**
** This file is part of the QtDeclarative module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** GNU Lesser General Public License Usage
** This file may be used under the terms of the GNU Lesser General Public
** License version 2.1 as published by the Free Software Foundation and
** appearing in the file LICENSE.LGPL included in the packaging of this
** file. Please review the following information to ensure the GNU Lesser
** General Public License version 2.1 requirements will be met:
** http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** In addition, as a special exception, Nokia gives you certain additional
** rights. These rights are described in the Nokia Qt LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU General
** Public License version 3.0 as published by the Free Software Foundation
** and appearing in the file LICENSE.GPL included in the packaging of this
** file. Please review the following information to ensure the GNU General
** Public License version 3.0 requirements will be met:
** http://www.gnu.org/copyleft/gpl.html.
**
** Other Usage
** Alternatively, this file may be used in accordance with the terms and
** conditions contained in a signed written agreement between you and Nokia.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 1.0
import "CalculatorCore"
import "CalculatorCore/calculator.js" as CalcEngine

Rectangle {
    id: window

    width: 360; height: 480
    color: "#282828"

    property string rotateLeft: "\u2939"
    property string rotateRight: "\u2935"
    property string leftArrow: "\u2190"
    property string division : "\u00f7"
    property string multiplication : "\u00d7"
    property string squareRoot : "\u221a"
    property string plusminus : "\u00b1"
    property alias calcOK: calcOK
    property int mask: 0 //0 para mascara de valor e 1 para mascara de ticket

    function doOp(operation) { CalcEngine.doOperation(operation, mask) }

    function click(key) {
        switch (key) {
        case Qt.Key_1:
            doOp("1");
            break;
        case Qt.Key_2:
            doOp("2");
            break;
        case Qt.Key_3:
            doOp("3");
            break;
        case Qt.Key_4:
            doOp("4");
            break;
        case Qt.Key_5:
            doOp("5");
            break;
        case Qt.Key_6:
            doOp("6");
            break;
        case Qt.Key_7:
            doOp("7");
            break;
        case Qt.Key_8:
            doOp("8");
            break;
        case Qt.Key_9:
            doOp("9");
            break;
        case Qt.Key_0:
            doOp("0");
            break;
        case Qt.Key_Enter:
        case Qt.Key_Return:
            calcOKClicked();
            break;
        case Qt.Key_Backspace:
        case Qt.Key_Delete:
            doOp("DEL");
            break;
        }
    }

    signal calcOKClicked();

    function displayText() {
        return display.text;
    }

    function setdisplayText(t) {
         display.text = t;
    }

    function reset() {
        displaycalculator.visible = false;
        return display.text = "";
    }

    function setMask(m) {
        mask = m;
    }

    Item {
        id: main
        state: "orientation " + runtime.orientation

        property bool landscapeWindow: window.width > window.height 
        property real baseWidth: landscapeWindow ? window.height : window.width
        property real baseHeight: landscapeWindow ? window.width : window.height
        property real rotationDelta: 0 //landscapeWindow ? -90 : 0

        rotation: rotationDelta
        width: main.baseWidth
        height: main.baseHeight
        anchors.centerIn: parent

        Column {
            id: box; spacing: 8

            anchors { fill: parent; topMargin: 6;  leftMargin: 6; rightMargin: 6 }
            //bottomMargin: 6;

            Display {
                id: display
                width: box.width + 187
                height: parent.height / 4
                text: ""

                Text {
                    id: displaycalculator
                    text: qsTr("Ticket Nº ")
                    color: "#000000"
                    font.pixelSize: 22
                    font.family: "Arial"
                    x: parent.x + 15
                    y : parent.y + 10
                    z: 100
                    visible: false
                }
            }

            Column {
                id: column; spacing: 10 
                //x: 73


                //property real h: ((box.height - 72) / 6) - ((spacing * (6 - 1)) / 6)
                property real h: (box.height / 4) - ((spacing * (6 - 1)) / 6)
                property real w: (box.width / 4) - ((spacing * (4 - 1)) / 4)

                Grid {
                    id: grid; rows: 5; columns: 3; spacing: 0

                    property real w: (box.width /  2.15/*columns*/ ) - ((spacing * (columns - 1)) / columns)


                    Button { id: btn_1; width: grid.w; height: column.h; operation: "1"; color: '' }
                    Button { width: grid.w; height: column.h; operation: "2"; color: '' }
                    Button { width: grid.w; height: column.h; operation: "3"; color: '' }

                    Button { width: grid.w; height: column.h; operation: "4"; color: '' }
                    Button { width: grid.w; height: column.h; operation: "5"; color: '' }
                    Button { width: grid.w; height: column.h; operation: "6"; color: '' }

                    Button { width: grid.w; height: column.h; operation: "7"; color: '' }
                    Button { width: grid.w; height: column.h; operation: "8"; color: '' }
                    Button { width: grid.w; height: column.h; operation: "9"; color: '' }

                    Button { id: calcDEL; width: grid.w; height: column.h; color: 'purple'; operation: "DEL" }
                    Button { width: grid.w; height: column.h; operation: "0"; color: '' ;
                        transformOrigin: Item.Right }
                    Button { 
                        id: calcOK; width: grid.w; height: column.h; color: 'green'; operation: "OK";
                        Component.onCompleted: clicked.connect(calcOKClicked); 
                    }
                }
            }
        }

        states: [
            State {
                name: "orientation " + Orientation.Landscape
                PropertyChanges { target: main; rotation: 90 + rotationDelta; width: main.baseHeight; 
                    height: main.baseWidth }
            },
            State {
                name: "orientation " + Orientation.PortraitInverted
                PropertyChanges { target: main; rotation: 180 + rotationDelta; }
            },
            State {
                name: "orientation " + Orientation.LandscapeInverted
                PropertyChanges { target: main; rotation: 270 + rotationDelta; width: main.baseHeight; 
                    height: main.baseWidth }
            }
        ]

        transitions: Transition {
            SequentialAnimation {
                RotationAnimation { direction: RotationAnimation.Shortest; duration: 300; easing.type: Easing.InOutQuint  }
                NumberAnimation { properties: "x,y,width,height"; duration: 300; easing.type: Easing.InOutQuint }
            }
        }
    }
}

// vim: ts=4 sw=4 et ft=javascript:
