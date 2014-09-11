package opdrachten.ClockAnalog 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class AnalogeClock extends Sprite
	{
		public var milisecond:Sprite = new Sprite;
		public var SecondWijzer:Sprite = new Sprite;
		//public var MinWijzer:Sprite = new Sprite;
		public var MinWijzer:WijzerLang = new WijzerLang;
		//public var UurWijzer:Sprite = new Sprite;
		public var UurWijzer:Wijzerkort = new Wijzerkort;
		public var wijzerPlaat:WijzerPlaat = new WijzerPlaat
		public var time:Date = new Date();
		private var text:TextField = new TextField();
		private var font:TextFormat= new TextFormat("Candy Cane(Unregistered)", 20)
		private var timer:Timer = new Timer(500);
		private var textbool:Boolean
		
		public function AnalogeClock() 
		{
			//seconden wijzer
			SecondWijzer.graphics.lineStyle(2, 0xff0000);
			SecondWijzer.graphics.moveTo(0, 0);
			SecondWijzer.graphics.lineTo(0, -280);
			SecondWijzer.x = 650;
			SecondWijzer.y = 400;
			
			
			//minuten wijzer
			MinWijzer.x = 650;
			MinWijzer.y = 400;
			
			//uur wijzer
			UurWijzer.x = 650;
			UurWijzer.y = 400;
			
			//milisec wijzer
			milisecond.graphics.lineStyle(1.5, 0x0000ff)
			milisecond.graphics.moveTo(0, 0);
			milisecond.graphics.lineTo(0, -70);
			milisecond.x = 750;
			milisecond.y = 300;
			
			//WijzerPlaat
			wijzerPlaat.x = 641;
			wijzerPlaat.y = 377;
			
			//textfieldthing
			text.defaultTextFormat=font
			
			//addchilds
			addChild(wijzerPlaat);
			addChild(milisecond);
			addChild(MinWijzer);
			addChild(UurWijzer);
			addChild(SecondWijzer);
			addChild(text);
			
			
			//Timer
			timer.start();
			timer.addEventListener(TimerEvent.TIMER, Etimer);
			
			addEventListener(Event.ENTER_FRAME, step);
		}
		
		private function Etimer(e:TimerEvent)
		{
			if (textbool) 
			{
				text.text = (time.getHours() + ":" +time.getMinutes() + ":" + time.getSeconds());
			}
			else 
			{
				text.text = (time.getHours() + " " +time.getMinutes() + " " + time.getSeconds());
			}
			textbool=!textbool
		}
		
		private function step (e:Event):void
		{
			time = new Date;
			var uur:Number = time.getHours()
			if (uur > 12) {uur -=12}
			UurWijzer.rotation = (((360 / 12) * uur)-90)+(360/12/60*time.getMinutes())+(360/12/60/60*time.getSeconds())+(360/12/60/60/1000*time.getMilliseconds());
			MinWijzer.rotation = (((360 / 60) * time.getMinutes())-90)+(360/60/60*time.getSeconds())+(360/60/60/1000*time.getMilliseconds());
			SecondWijzer.rotation = (360 / 60) * time.getSeconds() + (360/60/1000*time.getMilliseconds());
			//SecondWijzer.rotation = (270 / 60) * time.getSeconds() + (270/60/1000*time.getMilliseconds());
			milisecond.rotation = (360 / 1000) * time.getMilliseconds();
			
			//trace(time.getMinutes());
		}
	}

}