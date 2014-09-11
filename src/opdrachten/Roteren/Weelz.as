package opdrachten.Roteren 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	
	
	public class Weelz extends Sprite
	{
		 private var car:Car;
		 private var speed:Number = 4;
		public function Weelz() 
		{
			//addChild(background);
			addChild(car);
			
			car.y = 500
			
			addEventListener(Event.ENTER_FRAME, step);
			
		}
		
		private function step (e:Event):void
		{
		car.x += speed;
		
		car.voorwiel
		}
	}

}