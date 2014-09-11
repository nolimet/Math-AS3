package opdrachten.binary.binClock 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.ByteArray;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Clock extends Sprite
	{
		private var seconds:Byte = new Byte(500, 150,6);
		private var minuts:Byte = new Byte(500, 100,6);
		private var hour:Byte = new Byte(500, 50, 5);
		private var mili:Byte = new Byte(500, 200, 10);
		
		private var Time:Date = new Date()
		private var update:Timer = new Timer(100);
	
		public function Clock() 
		{
			addChild(seconds);
			addChild(minuts);
			addChild(hour);
			addChild(mili);
			//addEventListener(Event.ENTER_FRAME, step);
			update.start();
			update.addEventListener(TimerEvent.TIMER, step);
		}
		
		private function step(e:TimerEvent):void 
		{
			Time = new Date();
			
			removeChild(seconds);
			removeChild(minuts);
			removeChild(hour);
			removeChild(mili);
			
			mili = new Byte(500, 200, 10);
			seconds = new Byte(500, 150, 10);
			minuts = new Byte(500, 100, 10);
			hour = new Byte(500, 50, 10);
			
			addChild(mili);
			addChild(minuts);
			addChild(seconds);
			addChild(hour);
			
			seconds.callculate(Time.getSeconds());
			minuts.callculate(Time.getMinutes());
			hour.callculate(Time.getHours());
			mili.callculate(Time.getMilliseconds());
			
		}
	}

}