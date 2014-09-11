package opdrachten.kans 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import Wis.Punt;
	import Wis.Rooster;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Spawing extends Sprite
	{
		public var rooster:Rooster = new Rooster();
		public var p:Punt
		public var punten:Array = new Array;
		
		public function Spawing() 
		{
			rooster.alpha = 0.4;
			addChild(rooster);
			
			/*for (var i = 0; i < 2000; i++)
			{
				var xp:Number = Math.floor(1250 * Math.random()+25);
				var yp:Number = Math.floor(750 * Math.random() + 25);
				var kleur:uint = 0xffffff * Math.random();
				p = new Punt(xp, yp, 25, kleur);
			
				addChild(p);
			}*/
			
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop (e:Event):void
		{
			if (Math.random() < 0.2){

				var xp:Number = Math.floor(1250 * Math.random()+25);
				var yp:Number = -300
				var kleur:uint = 0xffffff * Math.random();
				p = new Punt(xp, yp, 25, kleur);
				p.addEventListener(Event.ENTER_FRAME, val);
				p.z = Math.random() * 800 - 400;
				addChild(p);
			}
		}
		private function val (e:Event) {
			var temp:Sprite = Sprite(e.target);
			temp.y += 3;
			for (var i:uint = this.numChildren; i > 0; i--)
			{
				var sp:Sprite = Sprite(this.getChildAt(i - 1));
				if (sp.y >1200)
				{
					this.removeChildAt(i - 1);
				}
				
			}
			
		}
	}

}