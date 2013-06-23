package  
{
	import flash.display.Sprite;
	import gameObjects.StarObject;
	import stages.StageDisplay;
	
	/**
	 * ...
	 * @author Herichard Stefanus Salim
	 */
	public class StageDisplayEditorVersion extends StageDisplay 
	{
		
		public function StageDisplayEditorVersion(stageID:int) 
		{
			super(stageID);
			
		}
		
		override protected function initiateStage(id:String):void 
		{
			record = StageRecordEditorVersion.getEditorRecord();
			record.stageStarted();
		}
		
		override public function createLevelBySubStageID(stageID:int, subStageIndex:int, hasTutorial:Boolean = false):void 
		{
			var stgID:String = stageID.toString()+ "_" + subStageIndex.toString();
			initiateStage(stgID); 
			if(hasTutorial) createTutorialDialog(stgID);
			
			var builder:StageBuilderEditorVersion= new StageBuilderEditorVersion();
			addChild(builder.buildAndGetStage(stageID, subStageIndex));
			
			createObject(new DraggableStar(StarObject.GOLDEN), 100, 100);
			createObject(new DraggableStar(StarObject.SILVER), 200, 100);
			createObject(new DraggableStar(StarObject.BRONZE), 300, 100);
		}
		
		private function createObject(obj:Sprite, xx:Number, yy:Number):void
		{
			obj.x = xx;
			obj.y = yy;
			
			addChild(obj);
		}
		
	}

}