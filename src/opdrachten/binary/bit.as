package opdrachten.binary 
{
	import flash.display.Sprite;
	import flash.events.DataEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class bit extends Sprite
	{
		public var state:Boolean;
		private var clicked:Boolean;
		private var clickble:Boolean;
		
		
		public function bit($y:Number,$x:Number,$clickble:Boolean=true ,$state:Boolean=false) 
		{
			this.x = $x;
			this.y = $y;
			this.state = $state;
			this.clickble = $clickble;
			draw();
			this.addEventListener(MouseEvent.CLICK, Changestate);
		
			
		}
		
		public function stateChange():void 
		{
			state = !state
			draw();
		}
		public function setState($state:Boolean):void
		{
			state = false
			draw();
		}
		private function Changestate(e:MouseEvent):void 
		{
			if (clickble)
			{
			state = !state
			draw();
			}
		}		
		public function draw():void 
		{
			
			//this.graphics.lineStyle(5);
			if (state)
			{
				this.graphics.beginFill(0x0000aa);
			}
			if(state==false)
			{
				this.graphics.beginFill(0x000000);
			}
			this.graphics.drawRect(0,0,50,50)
			
			this.graphics.endFill();
		}
		
	}

}