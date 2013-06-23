package  
{
	import builders.ObjectBuilder;
	import builders.StageBuilder;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Herichard Stefanus Salim
	 */
	public class StageBuilderEditorVersion extends StageBuilder 
	{
		internal static const EDITOR_VERSION_PASS_CODE:int = 14942;
		
		public function StageBuilderEditorVersion() 
		{
			super();
		}
		
		private function createEditor():void 
		{
			liftables.push(itemBuilder.createBasketBall(2));
			liftables.push(itemBuilder.createBlueBook(2));
			liftables.push(itemBuilder.createBowlingBall(2));
			liftables.push(itemBuilder.createEncyclopedia(2));
			liftables.push(itemBuilder.createGlassVase(2));
			liftables.push(itemBuilder.createHeavyObject(2));
			liftables.push(itemBuilder.createMug(2));
			liftables.push(itemBuilder.createPhoto(2));
			liftables.push(itemBuilder.createPillow(2));
			liftables.push(itemBuilder.createShoes(2));
			liftables.push(itemBuilder.createTennisBall(2));
		}
		
		override public function buildAndGetStage(stageIndex:int, substageIndex:int):Sprite 
		{
			if (substageIndex == EDITOR_VERSION_PASS_CODE) createEditor();
			
			return super.buildAndGetStage(stageIndex, substageIndex);
		}
	}

}