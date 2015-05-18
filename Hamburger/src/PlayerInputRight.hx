package;
import flixel.FlxG;

/**
 * 
 * Implementation of the movements for rigth bread using keyboard as gamepad.
 * 
 * @author Arreche-Piaggio
 * 
 */
class PlayerInputRight implements PlayerInput
{
	
	public function new() 
	{
		
	}

	public function up():Bool 
	{
		return FlxG.keys.pressed.UP;
	}
	
	public function down():Bool 
	{
		return FlxG.keys.pressed.DOWN;
	}
	
	public function left():Bool 
	{
		return FlxG.keys.pressed.LEFT;
	}
	
	public function right():Bool 
	{
		return FlxG.keys.pressed.RIGHT;
	}
	
}