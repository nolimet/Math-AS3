package opdrachten.kans 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class SpawingEngel extends Sprite
	{
		public var engels:Array = new Array();
		public var count:int = new int();
		[Embed(source = "_Mexican Hat Dance.mp3")]
		private var backgroundmus:Class;
		
		[Embed(source = "Shotgun_Blast-Jim_Rogers-1914772763.mp3")]
		private var Shot:Class;
		
		private var crosshair:Sprite;
		private var shot:Sound;
		public function SpawingEngel() 
		{
			shot = new Shot();
			crosshair = drawCrosshair();
			addChild(crosshair);
			var Backgroundmus:Sound = new backgroundmus();
			Backgroundmus.play()
			addEventListener(Event.ENTER_FRAME, loop);
			addEventListener(MouseEvent.MOUSE_DOWN, Firea);
		}
		private function Firea(e:MouseEvent):void {
			shot.play();
		}
		
		private function loop(e:Event):void
		{
			for (var i:uint = this.numChildren; i > 0; i--)
			{
				var catchandkill:Sprite = Sprite(this.getChildAt(i - 1));
				if (catchandkill.y > 1600) {
					this.removeChildAt(i - 1);
				}
			}
			if (Math.random() < 0.05 ) {
				var engel:Sprite = new G_Engel();
				engel.x = Math.random() * 1300;
				engel.y = -300;
				engel.z = Math.random() * 600 - 300;
				addChild(engel);
				engel.addEventListener(Event.ENTER_FRAME, walk)
				
			}
			crosshair.x = mouseX;
			crosshair.y = mouseY;
		}
		private function walk(e:Event):void
		{
			var target:Sprite = Sprite(e.target);
			target.y += 2;
			target.rotationY += 6;
		}
		private function drawCrosshair():Sprite
		{
			var draw:Sprite = new Sprite;
			draw.graphics.lineStyle(2);
			draw.graphics.drawCircle(0, 0, 20);
			draw.graphics.drawCircle(0, 0, 40);
			draw.graphics.moveTo(-50, 0 );
			draw.graphics.lineTo(50, 0);
			draw.graphics.moveTo(0, -50);
			draw.graphics.lineTo(0, 50);
			return draw
		}
		
	}

}