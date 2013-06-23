package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import general.MousePhysic;
	import general.StageRecord;
	import stages.StageDisplay;
	
	/**
	 * ...
	 * @author Herichard Stefanus Salim
	 */
	public class MainLevelEditor extends Main
	{
		
		public function MainLevelEditor():void 
		{
			super();
		}
		
		override protected function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			createWorld();
			var stage:StageDisplayEditorVersion = new StageDisplayEditorVersion(2);
			stage.createLevelBySubStageID(2, StageBuilderEditorVersion.EDITOR_VERSION_PASS_CODE);
			addChild(stage);
			
			MousePhysic.setStage(stage);
			// entry point
		}
		
	}
	
}