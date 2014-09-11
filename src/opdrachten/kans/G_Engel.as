package opdrachten.kans 
{
	import flash.display.Bitmap;
	import flash.display.Sprite
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class G_Engel extends Sprite
	{
		[Embed(source="Engel0.png")]
		private var Eng_0:Class;
		
		[Embed(source="Engel1.png")]
		private var Eng_1:Class;
		
		[Embed(source="Engel2.png")]
		private var Eng_2:Class;
		
		[Embed(source="Engel3.png")]
		private var Eng_3:Class;
		
		private var list:Array = new Array();
		
		public function G_Engel() 
		{
			list.push(Eng_0)
			list.push(Eng_1)
			list.push(Eng_2)
			list.push(Eng_3)
			
			var engel:Bitmap = new list[Math.floor(Math.random() * 4)];
			addChild(engel);
		}
		
	}

}