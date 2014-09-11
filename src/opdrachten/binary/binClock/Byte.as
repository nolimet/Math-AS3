package opdrachten.binary.binClock 
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import opdrachten.binary.bit;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Byte extends Sprite
	{	
		
		private var som:Number
		
		public var byte:Array = [];
		
		public function Byte(x:Number=0,y:Number=0,bits:int = 50) 
		{
			for (var i:uint = 0; i < bits;i ) 
			{
				for (var j:int = 0; j < 16; j++) 
				{
					if (i < bits)
					{
					var Bit:bit = new bit(y + 60 * Math.floor( i/16), x - (50 * (j)),false);
					addChild(Bit);
					byte.push(Bit);
					Bit.addEventListener(MouseEvent.CLICK, Changed);
					i++
					}
				}
			}
		}
		
		private function Changed(e:MouseEvent):void 
		{
			som=0
			for (var i:int = 0; i < byte.length; i++) 
			{
				if (byte[i].state)
				{
					som+=Math.pow(2,i)
				}
			}
		}
		
		public function callculate(dec:int):void
		{
			var b:bit)
			for (var i:int =  byte.length; -1 < i; i--) 
			{
				//byte[i].setState(false);
				if (dec >= Math.pow(2, i))
				{
					//byte[i].setState(false);
					dec -= Math.pow(2, i)
					byte[i].stateChange();
				}
			}
		}
	}
}