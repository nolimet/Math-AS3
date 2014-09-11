package  Vectors
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class VectorPoint extends Sprite
	{
		public var kleur:uint;
		public var straal:Number;
		public var sleepbaar:Boolean;
		
		public function VectorPoint($x:Number, $y:Number, straal:Number, kleur:uint, sleepbaar:Boolean=false)
		{
		this.sleepbaar = sleepbaar;
		this.straal = straal;
		this.kleur = kleur;
		this.x = $x;
		this.y = $y;
		
		this.graphics.lineStyle(5);
		this.graphics.beginFill(this.kleur);
		this.graphics.drawCircle(0, 0, this.straal);
		
		if (sleepbaar) {
			this.addEventListener(MouseEvent.MOUSE_DOWN, sleep)
			this.addEventListener(MouseEvent.MOUSE_UP,MouseUp)
			//this.startDrag();
		}
		}
		private function MouseUp(e:MouseEvent):void
		{
			this.stopDrag();
		}
		private function sleep(e:MouseEvent):void 
		{
			this.startDrag();
		}
	}
}