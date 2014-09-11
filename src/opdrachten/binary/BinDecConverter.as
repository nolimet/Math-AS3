package opdrachten.binary 
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class BinDecConverter extends Sprite
	{	
		private var b0:bit
		private var b1:bit
		private var b2:bit
		private var b3:bit
		private var b4:bit
		private var b5:bit
		private var b6:bit
		private var b7:bit
		
		private var som:Number
		
		public var byte:Array
		
		public function BinDecConverter() 
		{
			b1 = new bit(400, 1200);
			b2 = new bit(400, b1.x - 50);
			b3 = new bit(400, b2.x - 50);
			b4 = new bit(400, b3.x - 50);
			b5 = new bit(400, b4.x - 50);
			b6 = new bit(400, b5.x - 50);
			b7 = new bit(400, b6.x - 50);
			b0 = new bit(400, b7.x - 50);
			
			addChild(b1);
			addChild(b2);
			addChild(b3);
			addChild(b4);
			addChild(b5);
			addChild(b6);
			addChild(b7);
			addChild(b0);
			
			b1.addEventListener(MouseEvent.CLICK, changeState);
			b2.addEventListener(MouseEvent.CLICK, changeState);
			b3.addEventListener(MouseEvent.CLICK, changeState);
			b4.addEventListener(MouseEvent.CLICK, changeState);
			b5.addEventListener(MouseEvent.CLICK, changeState);
			b6.addEventListener(MouseEvent.CLICK, changeState);
			b7.addEventListener(MouseEvent.CLICK, changeState);
			b0.addEventListener(MouseEvent.CLICK, changeState);
			
		
		}
		
		private function changeState(e:MouseEvent):void 
		{
			som=0
			if (b0.state)
			{
				som+=1
			}
			if (b1.state)
			{
				som+=2
			}
			if (b2.state)
			{
				som+=4
			}
			if (b3.state)
			{
				som+=8
			}
			if (b4.state)
			{	
				som+=16
			}
			if (b5.state)
			{
				som+=32
			}
			if (b6.state)
			{
				som+=64
			}
			if (b7.state)
			{
				som+=128
			}
		}
		
	}

}