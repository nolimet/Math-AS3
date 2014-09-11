package opdrachten.punten 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import Wis.Punt;
	import Wis.Rooster;
	import Wis.WVector;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class ping extends Sprite 
	{
		public var rooster:Rooster = new Rooster();
		public var p:Punt = new Punt(400, 300, 29, 0xff0000);
		public var positie:WVector = new WVector();
		public var snelheid:WVector = new WVector();
		public function ping() 
		{
			rooster.alpha = 0.4;
			addChild(rooster);
			addChild(p);
			
			positie.dx = p.x;
			positie.dy = p.y;
			
			snelheid.dx = 10;
			snelheid.dy = 10;
			
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		public function loop(e:Event):void
		{
			positie.dx += snelheid.dx;
			positie.dy += snelheid.dy;
			
			p.x = positie.dx;
			p.y = positie.dy;
			
			if (positie.dx < p.width / 2)
			{
				snelheid.dx = snelheid.dx*-1
			}
			
			if (positie.dy < p.height / 2)
			{
				snelheid.dy = snelheid.dy*-1
			}
			
			if (positie.dx > 1300-p.width / 2)
			{
				snelheid.dx = snelheid.dx*-1
			}
			
			if (positie.dy > 800-p.height / 2)
			{
				snelheid.dy = snelheid.dy*-1
			}
		}
	}

}