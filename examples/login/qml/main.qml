import QtQuick 1.1
import "lib"

Rectangle {
	id: mainview
	objectName: "MainView"
	width: 1024
	height: 768
	property real trans_time: 400

	Loader {
		id:		loader
		objectName:	"Loader"
		anchors.fill:	parent
		visible:	source != ""
		z:		0
	}

	LoginQml {
		id:		loginqml
		objectName:	"LoginQml"
		x:		-mainview.width
		z:		1
	}

	HomeQml {
		id:		homeqml
		objectName:	"HomeQml"
		smooth:		true
		opacity:	1
		z:		2
		x:		mainview.content.x
		y:		mainview.content.y
		height:		mainview.contentHeight
		width:		mainview.contentWidth
	}

	FinishQml {
		id:		finishqml
		objectName:	"FinishQml"
		smooth:		true
	}

	function changeState(next_state) {
		mainview.state = next_state
	}

	states: [
	State {
		name:		"login"

		PropertyChanges {
			target:		LoginQml
			x:		parent.x
		}

		PropertyChanges {
			target:		HomeQml
			opacity:	0
		}
		PropertyChanges {
			target:		FinishQml
			x:		-mainview.width
		}
	},
	State {
		name:		"home"

		PropertyChanges {
			target:		FinishQml
			x:		parent.x
		}

		PropertyChanges {
			target:		LoginQml
			x:		-mainWindow.width
		}

		PropertyChanges {
			target:		HomeQml
			opacity:	0
		}
	},
	State {
		name: "Finish"

		PropertyChanges {
			target:		FinishQml
			opacity:	1
		}

		PropertyChanges {
			target:		LoginQml
			opacity:	1
		}

		PropertyChanges {
			target:		HomeQml
			x:		parent.x
		}
	}
	] /* states */

	transitions: [
	Transition { 
		from: "login"; to: "home"
		ParallelAnimation {
			PropertyAnimation {
				target:		LoginQml
				properties:	"x"; duration: trans_time
			}
			PropertyAnimation {
				target:		HomeQml
				properties:	"x"; duration: trans_time
			}
		}
	},
	Transition { 
		from: "home"; to: "close"
		ParallelAnimation {
			PropertyAnimation {
				target:		HomeQml
				properties: "opacity"; duration: trans_time
			}
			PropertyAnimation {
				target:		FinishQml
				properties: "x"; duration: trans_time
			}
		}
	},
	Transition { 
		from: "close"; to: "home"
		ParallelAnimation {
			PropertyAnimation {
				target:		HomeQml
				properties:	"opacity"; duration: trans_time
			}
			PropertyAnimation {
				target:		HomeQml
				properties: "x"; duration: trans_time
			}
		}
	},
	Transition { 
		from: "home"; to: "login"
		ParallelAnimation {
			PropertyAnimation {
				target: mainview
				properties: "x"; duration: trans_time
			}
			PropertyAnimation {
				target: mainview
				properties: "x"; duration: trans_time
			}
		}
	}
	] /* transitions */
} /* Rectangle */
