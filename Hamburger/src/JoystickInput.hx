package;
import flixel.FlxG;
import flixel.input.gamepad.FlxGamepad;

/**
 * ...
 * @author Pablo Arreche
 */
class JoystickInput implements PlayerInput
{

	private var mGamePad:FlxGamepad;
	private var ANALOGUE_X:Int;
	private var ANALOGUE_Y:Int;
	
	public function new(isLeft:Bool) 
	{
		if (isLeft) {
			ANALOGUE_X = GamepadIDs.LEFT_ANALOGUE_X;
			ANALOGUE_Y = GamepadIDs.LEFT_ANALOGUE_Y;
		}else {
			ANALOGUE_X = GamepadIDs.RIGHT_ANALOGUE_X;
			ANALOGUE_Y = GamepadIDs.RIGHT_ANALOGUE_Y;
		}
	}
	
	public function up():Bool 
	{
		mGamePad = FlxG.gamepads.lastActive;
		if (mGamePad == null) {
			return false;
		}
		
		var xAxisValue:Float = mGamePad.getXAxis(ANALOGUE_X);
		var yAxisValue = mGamePad.getYAxis(ANALOGUE_Y);
		var angle:Float = Math.atan2(yAxisValue, xAxisValue);
		
		return angle < 0  && angle > -Math.PI;
	}
	
	public function down():Bool 
	{
		mGamePad = FlxG.gamepads.lastActive;
		if (mGamePad == null) {
			return false;
		}
		var xAxisValue = mGamePad.getXAxis(ANALOGUE_X);
		var yAxisValue = mGamePad.getYAxis(ANALOGUE_Y);
		var angle:Float = Math.atan2(yAxisValue, xAxisValue);
		return angle > 0  && angle > -Math.PI;
	}
	
	public function left():Bool 
	{
		mGamePad = FlxG.gamepads.lastActive;
		if (mGamePad == null) {
			return false;
		}
		var xAxisValue = mGamePad.getXAxis(ANALOGUE_X);
		var yAxisValue = mGamePad.getYAxis(ANALOGUE_Y);
		var angle:Float = Math.atan2(yAxisValue, xAxisValue);
		return angle < -Math.PI/2 || (angle > Math.PI/2 && angle < Math.PI) && angle != 0;
	}
	
	public function right():Bool 
	{
		mGamePad = FlxG.gamepads.lastActive;
		if (mGamePad == null) {
			return false;
		}
		var xAxisValue = mGamePad.getXAxis(ANALOGUE_X);
		var yAxisValue = mGamePad.getYAxis(ANALOGUE_Y);
		var angle:Float = Math.atan2(yAxisValue, xAxisValue);
		return angle < Math.PI/2  && angle > -Math.PI/2 && (xAxisValue != 0 || yAxisValue != 0);
		
	}
	
}