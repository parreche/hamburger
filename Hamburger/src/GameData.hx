package;

/**
 * 
 * This class represents the player's score during the game.
 * This should be integrated with HUD class in next version.
 * 
 * @author Arreche-Piaggio
 */
class GameData
{
	static public var score:Int = 0;
	
	public static function clear():Void
	{
		score = 0;
	}
	
}