package gameplay;

/**
 * ...
 * @author tomas
 */
class HighScore
{
	var mScore:Int;
	var mName:String;

	public function new(aScore:Int, aName:String) 
	{
		mScore = aScore;
		mName = aName;
	}
	
	public function getScore():Int {
		return mScore;
	}
	
	public function getName():String {
		return mName;
	}
	
	public function toString():String 
	{
		return mName + " - " + mScore;
	}
}