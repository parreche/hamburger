package gamepad;
import flixel.FlxG;
import gamepad.PlayerInput;

/**
 *
 * Implementation of the movements using keyboard as gamepad.
 * 
 * @author Arreche-Piaggio
 * 
 */
class KeyboardInput implements gamepad.PlayerInput
{

	var mIsLeftControl:Bool;
	
	public function new(isLeftControl:Bool) 
	{
		mIsLeftControl = isLeftControl;
	}
	
	public function up():Bool 
	{
		return mIsLeftControl ? FlxG.keys.pressed.W : FlxG.keys.pressed.UP;
	}
	
	public function down():Bool 
	{
		return mIsLeftControl ? FlxG.keys.pressed.S : FlxG.keys.pressed.DOWN;
	}
	
	public function left():Bool 
	{
		return mIsLeftControl ? FlxG.keys.pressed.A : FlxG.keys.pressed.LEFT;
	}
	
	public function right():Bool 
	{
		return mIsLeftControl ? FlxG.keys.pressed.D : FlxG.keys.pressed.RIGHT;
	}
	
}