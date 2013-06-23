package  
{
	import flash.events.MouseEvent;
	import gameObjects.StarObject;
	
	/**
	 * ...
	 * @author Herichard Stefanus Salim
	 */
	public class DraggableStar extends StarObject 
	{
		
		public function DraggableStar(type:String) 
		{
			super(type);
			mouseEnabled = true;
			addEventListener(MouseEvent.MOUSE_DOWN, dragStart);
			addEventListener(MouseEvent.MOUSE_UP, dragStop);
			
			width /= 3;
			height /= 3;
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