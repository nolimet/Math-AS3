package Something_random 
{
	import flash.display.Sprite;
	import flash.text.*;
	import flash.ui.*;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class binConverv2 extends Sprite
	{
		
		public function binConverv2() 
		{
			var gf:GlowFilter = new GlowFilter(0x333333, 0.6, 5, 5);
var binaryArray:Array = new Array();
var num:Number;
var binaryString:String;
var round:Number;
var bString:String;
var bNumber:Number;
var tripletArray:Array = new Array();
var extraBits:int;
var leadingZeros:String;
var octalString:String = "";
var len:int = 0;
var hexArray:Array = new Array();
var hexString:String = "";


// please ignore laziness below (these should be in a for loop)

//___________________________________________________________________text_fields____
// common format
var format:TextFormat = new TextFormat();
format.font = "Verdana";
format.color = 0x000000;
format.size = 12;

// label for decimal number field
var tf2:TextField = new TextField();
tf2.height = 18;
tf2.width = 200;
tf2.defaultTextFormat = format;
tf2.x = 25;
tf2.y = 25;
tf2.text = "Decimal Number:";
tf2.selectable = false;
addChild(tf2);

// decimal number input field
var tf:TextField = new TextField();
tf.type = TextFieldType.INPUT;
tf.background = true;
tf.border = true;
tf.height = 18;
tf.width = 300;
tf.x = 25;
tf.y = 50;
tf.restrict = "0-9";
tf.defaultTextFormat = format;
addChild(tf);
tf.addEventListener(FocusEvent.FOCUS_IN, startFocus);
tf.addEventListener(FocusEvent.FOCUS_OUT, endFocus);


// label for binary
var tf4:TextField = new TextField();
tf4.height = 18;
tf4.width = 200;
tf4.defaultTextFormat = format;
tf4.x = 25;
tf4.y = 100;
tf4.text = "Binary Number:";
tf4.selectable = false;
addChild(tf4);

// display text field for results (binary)
var tf3:TextField = new TextField();
tf3.type = TextFieldType.DYNAMIC;
tf3.background = true;
tf3.backgroundColor = 0xE5E5E5;
tf3.border = true;
tf3.height = 18;
tf3.width = 300;
tf3.x = 25;
tf3.y = 125;
tf3.defaultTextFormat = format;
addChild(tf3);


// label for octal
var tf6:TextField = new TextField();
tf6.height = 18;
tf6.width = 200;
tf6.defaultTextFormat = format;
tf6.x = 25;
tf6.y = 175;
tf6.text = "Octal Number:";
tf6.selectable = false;
addChild(tf6);

// display text field for results (octal)
var tf5:TextField = new TextField();
tf5.type = TextFieldType.DYNAMIC;
tf5.background = true;
tf5.backgroundColor = 0xE5E5E5;
tf5.border = true;
tf5.height = 18;
tf5.width = 300;
tf5.x = 25;
tf5.y = 200;
tf5.defaultTextFormat = format;
addChild(tf5);

// label for hex
var tf8:TextField = new TextField();
tf8.height = 18;
tf8.width = 200;
tf8.defaultTextFormat = format;
tf8.x = 25;
tf8.y = 250;
tf8.text = "Hexadecimal Number:";
tf8.selectable = false;
addChild(tf8);

// display text field for results (hex)
var tf7:TextField = new TextField();
tf7.type = TextFieldType.DYNAMIC;
tf7.background = true;
tf7.backgroundColor = 0xE5E5E5;
tf7.border = true;
tf7.height = 18;
tf7.width = 300;
tf7.x = 25;
tf7.y = 275;
tf7.defaultTextFormat = format;
addChild(tf7);
		}




//__________________________________________________________________________________
function checkEnterKey(e:KeyboardEvent):void
{
	if(tf.text != '' && e.keyCode == Keyboard.ENTER)
	{
		num = Number(tf.text);
		//trace(e.keyCode + " : " + tf.text);
		bString = convertDecimalToBinary(num);
		bNumber = Number(binaryString);
		tf3.text = bString;
		
		tf5.text = convertBinaryToOctal(bString);
		
		tf7.text = convertBinaryToHex(bString);
	}
}
//__________________________________________________________________________________
function getTextInput(e:KeyboardEvent):void
{
	num = Number(tf.text);
	//trace(e.keyCode + " : " + tf.text);
	bString = convertDecimalToBinary(num);
	bNumber = Number(binaryString);
	tf3.text = bString;
	
	tf5.text = convertBinaryToOctal(bString);
	
	tf7.text = convertBinaryToHex(bString);
}
//__________________________________________________________________________________
function convertDecimalToBinary(num:Number):String
{
	if(num == 0)
		return String("0");
		
	binaryString = '';	//start with empty string each time
	
	while(num > 0)
	{
		num /= 2;
		
		if(Math.floor(num) == num)
			binaryArray.push(0);
		else
			binaryArray.push(1);
		
		trace(num);
		num = Math.floor(num);
	}
	
	for(var i:int = binaryArray.length - 1; i >= 0; i--)
	{
		binaryString += binaryArray[i];
		// clear array to prepare for next input
		binaryArray.pop();
	}
	
	//trace(binaryString);
	return binaryString;
}



//__________________________________________________________________________________
function convertBinaryToOctal(bStr:String):String
{
	octalString = '';
	
	// split binary string into units of three
	for(var i:int = bStr.length; i > 0; i -= 3)
	{
		tripletArray.push(bStr.substring(i - 3, i));
	}
	
	len = tripletArray.length - 1;
	
	// add leading zeros to last array item
	extraBits = tripletArray[len].length;
	if(extraBits == 1)
	{
		tripletArray[len] = "00" + tripletArray[len];
		//tripletArray[tripletArray.length - 1] = leadingZeros;
	}
	else if(extraBits == 2)
	{
		tripletArray[len] = "0" + tripletArray[len];
		//tripletArray[tripletArray.length - 1] = leadingZeros;
	}
		
	for(var j:int = 0; j < len + 1; j++)
		trace(tripletArray[j]);
	
	// switch octal to binary
	for(var l:int = len; l >= 0; l--)
	{
		switch(tripletArray[l])
		{
			case "000":
				tripletArray[l] = "0";
				break;
			case "001":
				tripletArray[l] = "1";
				break;
			case "010":
				tripletArray[l] = "2";
				break;
			case "011":
				tripletArray[l] = "3";
				break;
			case "100":
				tripletArray[l] = "4";
				break;
			case "101":
				tripletArray[l] = "5";
				break;
			case "110":
				tripletArray[l] = "6";
				break;
			case "111":
				tripletArray[l] = "7";
				break;
			default:
				break;
		}
		octalString += tripletArray[l];
		tripletArray.pop();
	}
	
	return octalString;
}

//__________________________________________________________________________________
function convertBinaryToHex(bStr:String):String
{
	trace("bstring = " + bStr);
	
	hexString = '';
	
	// split binary string into units of three
	for(var i:int = bStr.length; i > 0; i -= 4)
	{
		hexArray.push(bStr.substring(i - 4, i));
	}
	
	len = hexArray.length - 1;
	
	// add leading zeros to last array item
	extraBits = hexArray[len].length;
	if(extraBits == 1)
	{
		hexArray[len] = "000" + hexArray[len];
	}
	else if(extraBits == 2)
	{
		hexArray[len] = "00" + hexArray[len];
	}
	else if(extraBits == 3)
	{
		hexArray[len] = "0" + hexArray[len];
	}

	// switch binary to hex
	for(var l:int = len; l >= 0; l--)
	{
		switch(hexArray[l])
		{
			case "0000":
				hexArray[l] = "0";
				break;
			case "0001":
				hexArray[l] = "1";
				break;
			case "0010":
				hexArray[l] = "2";
				break;
			case "0011":
				hexArray[l] = "3";
				break;
			case "0100":
				hexArray[l] = "4";
				break;
			case "0101":
				hexArray[l] = "5";
				break;
			case "0110":
				hexArray[l] = "6";
				break;
			case "0111":
				hexArray[l] = "7";
				break;
			case "1000":
				hexArray[l] = "8";
				break;
			case "1001":
				hexArray[l] = "9";
				break;
			case "1010":
				hexArray[l] = "A";
				break;
			case "1011":
				hexArray[l] = "B";
				break;
			case "1100":
				hexArray[l] = "C";
				break;
			case "1101":
				hexArray[l] = "D";
				break;
			case "1110":
				hexArray[l] = "E";
				break;
			case "1111":
				hexArray[l] = "F";
				break;
			default:
				break;
		}
		hexString += hexArray[l];
		hexArray.pop();
	}
	
	return hexString;
}


//__________________________________________________________________________________
function startFocus(e:FocusEvent):void
{
	tf.filters = [gf];
	stage.addEventListener(KeyboardEvent.KEY_UP, getTextInput);
}

//__________________________________________________________________________________
function endFocus(e:FocusEvent):void
{
	tf.filters = [];
	stage.removeEventListener(KeyboardEvent.KEY_UP, getTextInput);
}
		}
		


}