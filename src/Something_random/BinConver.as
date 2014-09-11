package Something_random
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class BinConver extends Sprite
	{
		private var Numb:int = 9;
		private var or:Number
		private var texts:TextField;
		private var output:int;
		
		
		public function BinConver()
		{
			or=Numb
			//for (var i:int = 100; 0 < Numb|| i > 1 ; i--) 
			//{
				//if (Numb > Math.pow(2, i))
				//{
				//Numb -= Math.pow(2, i );
				//trace("fits");
				//output += Math.pow(10, i);
				//}
				//trace("run: " + i + " mach out: "+Math.pow(2, i )/2/2+" mach bin: "+Math.pow(10, i)/10/10)
			//}
			//
			uint(Numb).toString(2)
			texts = new TextField();
			addChild(texts);
			
			addEventListener(Event.ENTER_FRAME, step);
		}
		
		private function step(e:Event):void 
		{
			texts.text = "binary: " + output +"\n orignal: " +or + "\n state: " + Numb
		}
		
		
		
	}

}