package opdrachten.punten 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import Wis.Punt;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Smiley extends Sprite
	{
		public var oog1:Punt = new Punt(200, 200, 50, 0x990000, true);
		public var oog2:Punt = new Punt(400, 200, 50, 0x990000, true);
		public var p1:Punt = new Punt(200, 450, 10, 0xffffff, true);
		public var p2:Punt = new Punt(300, 540, 10, 0xffffff, true);
		public var p3:Punt = new Punt(400, 500, 10, 0xffffff, true);
		
		public function Smiley() 
		{
			
			
			addChild(oog1);
			addChild(oog2);
			addChild(p1); 
			addChild(p2);
			addChild(p3);
			addEventListener(Event.ENTER_FRAME,loop)
			
			
		}
		public function loop(e:Event)
		{	this.graphics.clear()
		
			this.graphics.lineStyle(1);
			this.graphics.beginFill(0xffff00);
			this.graphics.drawCircle(300, 300, 250);
			this.graphics.endFill();
			
			this.graphics.lineStyle(12, 0x000000)
			this.graphics.moveTo(p1.x,p1.y)
			this.graphics.curveTo(p2.x,p2.y,p3.x,p3.y)
		}
		
	}

}