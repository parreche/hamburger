package gameplay;
import configuration.GeneralConstants;
import flixel.FlxG;
import flixel.text.FlxText;
import utils.SequenceCode;

/**
 * 
 * This helper class encapsulates timer's logic.
 * 
 * @author Arreche-Piaggio
 * 
 */
class Timer
{
	var mTimer:Float = Std.parseFloat(GeneralConstants.timer_value + "");
	var mLastSecondSound:Int = -1;
	var mIsHurryUp:Bool = false;
	var mSequence:SequenceCode;
	
	public function new() 
	{
		mSequence = new SequenceCode();
		updateTimer();
	}
	
	public function updateTimer() : String
	{
		mSequence.update(FlxG.elapsed);
		if (mTimer > 0)
		{
			mTimer -= FlxG.elapsed;
			var minutes = Std.int(mTimer / 60);
			var seconds = Std.int(mTimer - (minutes * 60));
			mIsHurryUp = mTimer <= 20 && mLastSecondSound != seconds; 
			if (mIsHurryUp) {
				mLastSecondSound = seconds;
			}
			
			return minutes + ":" + secondFormat(seconds);
		}
		return "";
	}
	
	public function isTimeOver():Bool
	{
		return mTimer < 0;
	}
	
	public function isHurryUp() : Bool
	{
		return mIsHurryUp;
	}
	
	public function getTime() : Int
	{
		return Std.int(mTimer);
	}
	
	private function secondFormat(aSeconds:Int):String
	{
		if (aSeconds < 10)
		{
			return "0" + aSeconds;
		}
		
		return "" + aSeconds;
	}
	
}