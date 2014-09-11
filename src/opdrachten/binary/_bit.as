package opdrachten.binary 
{
	import flash.display.Sprite;
	import Wis.Button;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class bit extends Sprite 
	{
		public var bity:Button
		
		public function bit($y:Number, $x:Number, state:Boolean = false) 
		{
			this.x = $x;
			this.y = $y;
			bity= new Button(state);
			bity.x = 0
			bity.y = 0
			addChild(bity);
			bity.draw();
			
		}
		
	}

}