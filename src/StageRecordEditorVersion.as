package  
{
	import general.StageRecord;
	
	/**
	 * ...
	 * @author Herichard Stefanus Salim
	 */
	public class StageRecordEditorVersion extends StageRecord 
	{
		
		public function StageRecordEditorVersion(pass:Number) 
		{
			super(pass);
		}
		
		public static function getEditorRecord():StageRecordEditorVersion
		{
			var rec:StageRecordEditorVersion = new StageRecordEditorVersion(PASS_CODE);
			rec.stageID = "1_" + StageBuilderEditorVersion.EDITOR_VERSION_PASS_CODE.toString();
			return rec;
		}
		
	}

}