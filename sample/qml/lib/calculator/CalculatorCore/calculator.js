
var curVal = 0
var memory = 0
var lastOp = ""
var timer = 0



function disabled(op) {
    if (op == "." && display.text.toString().search(/\./) != -1) {
        return true
    } else if (op == squareRoot &&  display.text.toString().search(/-/) != -1) {
        return true
    } else {
        return
    }
}

function setText(text, typeMask)
{
   if(typeMask == 0) {
       displaycalculator.visible = false
   MascaraMoeda(display,",",".", text);
   }   else{    
       displaycalculator.visible = true
   MascaraTicket(display, text);
   }
}

function MascaraMoeda(objDisplay, SeparadorMilesimo, SeparadorDecimal, code) {

    var sep = 0;
    var key = '';
    var i = 0;
    var j = i;
    var len = 0;
    var len2 = len;
    var strCheck = '0123456789';
    var aux = '';
    var aux2 = aux;
  
 key = code;
	if (code == "DEL"){

	   objDisplay.text = ""; 
   	return;
	}

 objDisplay.text = objDisplay.text.replace("$ 0", "");


	if (objDisplay.text.length > 12) return;
　
	len = objDisplay.text.length;

	for (i = 0; i < len; i++)

	if ((objDisplay.text.charAt(i) != '0') && (objDisplay.text.charAt(i) != SeparadorDecimal)) break;

	aux = '';

	for (; i < len; i++)

	if (strCheck.indexOf(objDisplay.text.charAt(i)) != -1) aux += objDisplay.text.charAt(i);

	aux +=  key;

	len = aux.length;

	if (len == 0) objDisplay.text = '';

	if (len == 1) objDisplay.text = '0' + SeparadorDecimal + '0' + aux;

	if (len == 2) objDisplay.text = '0' + SeparadorDecimal + aux;

	if (len > 2) {
            aux2 = '';
            for (j = 0, i = len - 3; i >= 0; i--) {
                if (j == 3) {
                 //digito milésimo
	           aux2 += SeparadorMilesimo;
 	         j = 0;
        }

	aux2 += aux.charAt(i);
       j++;
      }
	objDisplay.text = '';
	len2 = aux2.length;

	for (i = len2 - 1; i >= 0; i--)

	  objDisplay.text += aux2.charAt(i) ;
	  objDisplay.text += SeparadorDecimal + aux.substr(len - 2, len);
	}

	var tempValor = objDisplay.text;
	objDisplay.text = "";
	objDisplay.text = "$ " + tempValor;
}


function MascaraTicket(objDisplay, code) {

   if (code == "DEL"){
       displaycalculator.visible = false
        objDisplay.text = ""; 
   	return;
   }


  if(objDisplay.text.length >= 8)
  {
    return;
  }    
   
  if(objDisplay.text.length == 4) 
   {
      objDisplay.text += " "+ code
   }
   else 
   {
       objDisplay.text += code;
   } 


}


function doOperation(op,typeMask) {
    if (disabled(op)) {
        return
    }

    if (op.toString().length==1 && ((op >= "0" && op <= "9") || op==".") ) {
        if (display.text.toString().length >= 18)
            return; // No arbitrary length numbers
        if (lastOp.toString().length == 1 && ((lastOp >= "0" && lastOp <= "9") || lastOp == ".") ) {
          //  display.text = display.text + op.toString()
            setText(op.toString(), typeMask)
       
        } else {
            setText(op, typeMask)
        }
        lastOp = op
        return
    }
    lastOp = op

    if (display.currentOperation.text == "+") {
        display.text = Number(display.text.valueOf()) + Number(curVal.valueOf())
    } else if (display.currentOperation.text == "-") {
        display.text = Number(curVal) - Number(display.text.valueOf())
    } else if (display.currentOperation.text == multiplication) {
        display.text = Number(curVal) * Number(display.text.valueOf())
    } else if (display.currentOperation.text == division) {
        display.text = Number(Number(curVal) / Number(display.text.valueOf())).toString()
    } else if (display.currentOperation.text == "=") {
    }

    if (op == "+" || op == "-" || op == multiplication || op == division) {
        display.currentOperation.text = op
        curVal = display.text.valueOf()
        return
    }

    curVal = 0
    display.currentOperation.text = ""

    if (op == "1/x") {
        display.text = (1 / display.text.valueOf()).toString()
    } else if (op == "x^2") {
        display.text = (display.text.valueOf() * display.text.valueOf()).toString()
    } else if (op == "Abs") {
        display.text = (Math.abs(display.text.valueOf())).toString()
    } else if (op == "Int") {
        display.text = (Math.floor(display.text.valueOf())).toString()
    } else if (op == plusminus) {
        display.text = (display.text.valueOf() * -1).toString()
    } else if (op == squareRoot) {
        display.text = (Math.sqrt(display.text.valueOf())).toString()
    } else if (op == "mc") {
        memory = 0;
    } else if (op == "m+") {
       memory += display.text.valueOf()
    } else if (op == "mr") {
        display.text = memory.toString()
    } else if (op == "m-") {
        memory = display.text.valueOf()
    } else if (op == leftArrow) {
        display.text = display.text.toString().slice(0, -1)
        if (display.text.length == 0) {
            display.text = "0"
        }
    } else if (op == "Off") {
        Qt.quit();
    } else if (op == "C") {
        display.text = "0"
    } else if (op == "DEL") {
        curVal = 0
        memory = 0
        lastOp = ""
        setText("DEL", typeMask)
    }
}

