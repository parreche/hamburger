package;
import flixel.FlxG;

/**
 *
 * Implementation of the movements for left bread using keyboard as gamepad.
 * 
 * @author Arreche-Piaggio
 * 
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