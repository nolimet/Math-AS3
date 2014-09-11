package opdrachten.binary 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class acht_bit extends Sprite 
	{
		private var text:TextField = new TextField;
		public var bitcount:Number =0;
		private var bit1:bit;
		private var bit2:bit;
		private var bit3:bit;
		private var bit4:bit;
		private var bit5:bit;
		private var bit6:bit;
		private var bit7:bit;
		private var bit8:bit;
		
		public function acht_bit() 
		{
			bit1 = new bit(400, 1200);
			bit2 = new bit(400, bit1.x - 50);
			bit3 = new bit(400, bit2.x - 50);
			bit4 = new bit(400, bit3.x - 50);
			bit5 = new bit(400, bit4.x - 50);
			bit6 = new bit(400, bit5.x - 50);
			bit7 = new bit(400, bit6.x - 50);
			bit8 = new bit(400, bit7.x - 50);
			
			addChild(bit1);
			addChild(bit2);
			addChild(bit3);
			addChild(bit4);
			addChild(bit5);
			addChild(bit6);
			addChild(bit7);
			addChild(bit8);
			addChild(text);
			
			addEventListener(Event.ENTER_FRAME, step);
		}
		
		private function step(e:Event):void 
		{
			if (bit1.state) 
			{
				bitcount+=1
			}
			if(bit1.state=false)
			{bitcount-= 1 }
			
			if (bit2.state) 
			{
				bitcount+=2
			}
			if(bit2.state=false)
			{bitcount -= 2 }
			
			if (bit3.state) 
			{
				bitcount+=4
			}
			if(bit3.state=false)
			{bitcount -= 4 }
			
			if (bit4.state) 
			{
				bitcount+=8
			}
			if(bit4.state=false)
			{bitcount -= 8 }
			
			if (bit5.state) 
			{
				bitcount+=16
			}
			if(bit5.state=false)
			{bitcount -= 16 }
			
			if (bit6.state) 
			{
				bitcount+=32
			}
			if(bit6.state=false)
			{bitcount -= 32 }
			
			if (bit7.state) 
			{
				bitcount+=64
			}
			if(bit7.state=false)
			{bitcount -= 64 }
			
			if (bit8.state) 
			{
				bitcount+=128
			}
			if(bit8.state=false)
			{bitcount -= 128 }
			
		text.text = "bits : " + bitcount;
		}
		
	}

}