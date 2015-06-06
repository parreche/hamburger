package gameplay;

/**
 * 
 * This class represents the player's score during the game.
 * 
 * @author Arreche-Piaggio
 */
class GameScore
{
	static private var mScore:Int = 0;
	
	public function new() 
	{
		mScore = 0;
	}
	
	public function addScore(aScore:Int):Void
	{
		mScore += aScore;
	}
	
	public function getScore():Int
	{
		return mScore;
	}
}