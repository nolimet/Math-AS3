package opdrachten.punten 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import Wis.Punt;
	import Wis.Rooster;
	import Wis.WVector;
	import flash.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class stuiterball extends Sprite 
	{
		public var rooster:Rooster = new Rooster();
		public var p:Punt = new Punt(650, 400, 29, 0xff0000);
		public var positie:WVector = new WVector(650,400);
		public var snelheid:WVector = new WVector(5,6);
		public var versneling:WVector = new WVector(0, 1);
		
		public function stuiterball() 
		{
			rooster.alpha = 0.4;
			addChild(rooster);
			addChild(p);
			positie.dx = p.x;
			positie.dy = p.y;
			
			addEventListener(Event.ENTER_FRAME, loop);
			trace('test');
			stage.addEventListener(KeyboardEvent.KEY_DOWN, OnkeyPressed);
			stage.addEventListener(KeyboardEvent.KEY_UP, OnkeyReleased);
			trace('test');
		}
		
		public function OnkeyReleased(e:KeyboardEvent):void 
		{
		trace(e.keyCode);	
		trace("test");
		}
		
		private function OnkeyPressed(e:KeyboardEvent):void
		{
			
		}
		
		private function loop(e:Event):void 
		{
			snelheid.dx += versneling.dx
			snelheid.dy += versneling.dy
			
			positie.dx += snelheid.dx;
			positie.dy += snelheid.dy;
			
			p.x = positie.dx;
			p.y = positie.dy;
			
			if (positie.dx < p.width / 2)
			{
				snelheid.dx = snelheid.dx * -1;
				positie.dx = p.width / 2;
			}
			
			if (positie.dy < p.height / 2)
			{
				snelheid.dy = snelheid.dy * -1;
				positie.dy = p.height / 2;
			}
			
			if (positie.dx > 1300-p.width / 2)
			{
				snelheid.dx = snelheid.dx * -1;
				positie.dx = 1300 - p.width / 2;
			}
			
			if (positie.dy > 800-p.height / 2)
			{
				snelheid.dy = snelheid.dy * -1;
				positie.dy = 800 - p.height / 2;
			}
		}
		
	}
	
	

}