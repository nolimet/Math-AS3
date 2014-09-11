package opdrachten.binary 
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class decbit extends Sprite
	{	
		
		private var som:Number
		
		public var byte:Array = [];
		
		private var textf:TextField = new TextField()
		private var format:TextFormat = new TextFormat(null,21)
		
		
		public function decbit(bits:int = 16) 
		{
			for (var i:uint = 0; i < bits;i ) 
			{
				for (var j:int = 0; j < 8; j++) 
				{
					if (i < bits)
					{
					var Bit:bit = new bit(100+ 50 * Math.floor( i/8), 1000 - (50 * (j)),false);
					addChild(Bit);
					byte.push(Bit);
					Bit.addEventListener(MouseEvent.CLICK, Changed);
					i++
					}
				}
			}
			var call:int = 4533;
			textf.text = "Decimaal: "+call;
			textf.defaultTextFormat = format;
			
			addChild(textf);
			
			callculate(call)
		}
		
		private function Changed(e:MouseEvent):void 
		{
			som=0
			for (var i:int = 0; i < byte.length; i++) 
			{
				trace("bit" + i + " State: "+byte[i].state)
				if (byte[i].state)
				{
					
					som+=Math.pow(2,i)
				}
			}
			trace(som)
			textf.text ="Decimal: "+String(som) 
		}
		
		public function callculate(dec:int):void
		{
			for (var i:int =  byte.length; -1 < i; i--) 
			{
				trace(Math.pow(2, i))
					if (dec >= Math.pow(2, i))
					{
					dec -= Math.pow(2, i)
					byte[i].stateChange();
					}
					trace(dec)
			}
		}
	}

}