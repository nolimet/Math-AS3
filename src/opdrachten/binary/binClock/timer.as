package opdrachten.binary.binClock 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.text.TextField;
	import flash.utils.ByteArray;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class timer extends Sprite
	{
		private var seconds:Byte = new Byte(500, 150,10);
		private var minuts:Byte = new Byte(500, 100,10);
		private var hour:Byte = new Byte(500, 50, 10);
		private var mili:Byte = new Byte(500, 200, 10);
		
		private var update:Timer = new Timer(23);
		
		private var timemili:int
		private var timesec:int = 0;
		private var timemin:int = 0;
		private var timehour:int = 0;
		
		private var text:TextField = new TextField();
		
		public function timer() 
		{
			addChild(seconds);
			addChild(minuts);
			addChild(hour);
			addChild(mili);
			
			hour.callculate(timehour);
			minuts.callculate(timemin);
			seconds.callculate(timesec);
			
			text.x = 900;
			text.width = 500;
			addChild(text);
			
			update.start();
			
			update.addEventListener(TimerEvent.TIMER, step);
		}
		
		private function step(e:TimerEvent):void 
		{
			timemili += update.delay;
			if (timemili >= 1000)
			{
				timesec += 1
				timemili = 0
				
				removeChild(seconds);
				seconds = new Byte(500, 150, 10);
				addChild(seconds);
				seconds.callculate(timesec);
			}
			
			if (timesec >= 60)
			{
				timemin += 1
				timesec = 0
				
				removeChild(minuts);
				minuts = new Byte(500, 100, 10);
				addChild(minuts);
				minuts.callculate(timemin);
			}
			if (timemin>=60)
			{
				timehour += 1
				timemin = 0
				
				removeChild(hour);
				hour = new Byte(500, 50, 10);
				addChild(hour);
				hour.callculate(timehour);
				
			}
			
			
			
			
			removeChild(mili);
			mili = new Byte(500, 200, 10);
			addChild(mili);
			mili.callculate(timemili);	
			
			text.text = ("miliseconds: " + timemili +" seconds: " + timesec +" minuts: " + timemin + " hours: " + timehour);
		}
		
		
	}

}