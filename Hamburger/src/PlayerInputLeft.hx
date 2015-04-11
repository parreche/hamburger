package;
import flixel.FlxG;

/**
 * ...
 * @author tomas
 */
class PlayerInputLeft implements PlayerInput
{

	public function new() 
	{
		
	}
	
	public function up():Bool 
	{
		return FlxG.keys.pressed.W;
	}
	
	public function down():Bool 
	{
		return FlxG.keys.pressed.S;
	}
	
	public function left():Bool 
	{
		return FlxG.keys.pressed.A;
	}
	
	public function right():Bool 
	{
		return FlxG.keys.pressed.D;
	}
	
}