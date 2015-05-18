package;

import flixel.FlxSprite;
import io.GeneralConstants;
import openfl.Assets;

/**
 * This class represents a bread in the game. 
 * 
 * It contains initialization parameters and logic to avoid the bread going off the screen
 *  
 * @author Arreche-Piaggio
 * 
 */
class Bread extends FlxSprite
{
	var mPlayerInput:PlayerInput;

	public function new(X:Float=0, Y:Float=0, aPlayerInput:PlayerInput, aImage:String) 
	{
		super(X, Y);
		loadGraphic(Assets.getBitmapData(aImage), false);
		maxVelocity.set(GeneralConstants.breadVelocity, GeneralConstants.breadVelocity);
		drag.set(100, 100);
		mPlayerInput = aPlayerInput;
		immovable = true;
	}
	
	override function update():Void
	{
		super.update();
	
		if (this.mPlayerInput == null) 
		{
			return;
		}
		if (x+width > GeneralConstants.screenWidth && velocity.x>0)
		{
			velocity.x *= -1;
		}
		if (x < 0 && velocity.x<0)
		{
			velocity.x *= -1;
		}
		if (y < 0 && velocity.y<0)
		{
			velocity.y *= -1;
		}
		if (y+height > GeneralConstants.screenHeigth && velocity.y>0)
		{
			velocity.y *= -1;
		}
		
		acceleration.set(0, 0);
		if (mPlayerInput.left())
		{
			acceleration.x = -GeneralConstants.breadAcceleration;
		}
		if (mPlayerInput.right())
		{
			acceleration.x = GeneralConstants.breadAcceleration;
		}
		if (mPlayerInput.up())
		{
			acceleration.y = -GeneralConstants.breadAcceleration;
		}
		if (mPlayerInput.down())
		{
			acceleration.y = GeneralConstants.breadAcceleration;
		}
		
	}
}