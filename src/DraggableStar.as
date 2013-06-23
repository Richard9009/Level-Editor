package  
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import gameObjects.StarObject;
	
	/**
	 * ...
	 * @author Herichard Stefanus Salim
	 */
	public class DraggableStar extends StarObject 
	{
		private var tField:TextField;
		private var tFormat:TextFormat;
		
		public function DraggableStar(type:String) 
		{
			super(type);
			mouseEnabled = true;
			
			addEventListener(MouseEvent.MOUSE_DOWN, dragStart);
			addEventListener(MouseEvent.MOUSE_UP, dragStop);
			addEventListener(Event.ENTER_FRAME, enterFrame);
			
			width /= 3;
			height /= 3;
			
			tField = new TextField();
			tField.y = -height - 50;
			tField.x = -width - 10;
			tField.width = width * 3;
			tFormat = new TextFormat(null, 30);
			addChild(tField);
		}
		
		private function enterFrame(e:Event):void 
		{
			tField.text = x.toString() + " , " + y.toString();
			tField.setTextFormat(tFormat);
		}
		
		private function dragStop(e:MouseEvent):void 
		{
			stopDrag();
		}
		
		private function dragStart(e:MouseEvent):void 
		{
			this.startDrag(true);
		}
		
		
	}

}