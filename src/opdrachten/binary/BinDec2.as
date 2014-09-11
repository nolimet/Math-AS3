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
	public class BinDec2 extends Sprite
	{	
		
		private var som:Number
		
		public var byte:Array = [];
		
		private var textf:TextField = new TextField()
		private var format:TextFormat = new TextFormat(null,21)
		
		
		public function BinDec2(bits:int = 16) 
		{
			for (var i:uint = 0; i < bits;i ) 
			{
				for (var j:int = 0; j < 8; j++) 
				{
					var Bit:bit = new bit(400 + 50 * Math.floor( i/8), 1200 - (50 * (j)),true);
					Bit.addEventListener(MouseEvent.CLICK, Changed);
					addChild(Bit);
					byte.push(Bit);
					i++
				}
			}
			addChild(textf)
			textf.x = 200
			textf.y = 200
			textf.width = 500
			textf.selectable = false
			textf.border=true
			textf.text = ""
			textf.defaultTextFormat = format
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
		
		
	}

}