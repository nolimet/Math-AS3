package opdrachten.Roteren 
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import drawing.DrawingShapes;
	import flash.events.Event;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class TandWielen extends Sprite
	{
		public var gear_1:Shape = new Shape;
		public var gear_2:Shape = new Shape;
		public var gear_3:Shape = new Shape;
		
		public function TandWielen() 
		{
			gear_1.graphics.lineStyle(4, 0x000000)
			gear_1.graphics.beginFill(0xffffff * Math.random());
			DrawingShapes.drawGear(gear_1.graphics, 0, 0, 20, 100, 120, 2, 32, 0);
			gear_1.graphics.endFill();
			gear_1.x = 200;
			gear_1.y = 300;
			
			gear_2.graphics.lineStyle(4, 0x000000)
			gear_2.graphics.beginFill(0xffffff * Math.random());
			DrawingShapes.drawGear(gear_2.graphics, 0, 0, 16, 100, 120, 19, 32, 0);
			gear_2.graphics.endFill();
			gear_2.x = 424;
			gear_2.y = 300;
			
			gear_3.graphics.lineStyle(4, 0x000000)
			gear_3.graphics.beginFill(0xffffff * Math.random());
			DrawingShapes.drawGear(gear_3.graphics, 0, 0, 30, 220, 240, 5, 32, 0);
			gear_3.graphics.endFill();
			gear_3.x = 424;
			gear_3.y = 300 +343;
			
			addChild(gear_1);
			addChild(gear_2);
			addChild(gear_3);
			
			addEventListener(Event.ENTER_FRAME, step);
		}
		private function step(e:Event):void
		{
			gear_1.rotation += 20/16;
			gear_2.rotation -= 20 / 16;
			gear_3.rotation += 20/30;
			//gear_3.rotation += 0.01
			trace("Rotatoin Gear3: " + gear_3.rotation);
		}
		
	}

}