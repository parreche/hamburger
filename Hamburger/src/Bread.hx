package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import io.MyConstants;
import openfl.Assets;

/**
 * ...
 * @author tomas
 */
class Bread extends FlxSprite
{
	var mPlayerInput:PlayerInput;

	public function new(X:Float=0, Y:Float=0, aPlayerInput:PlayerInput, aImage:String) 
	{
		super(X, Y);
		loadGraphic(Assets.getBitmapData(aImage), false);
		maxVelocity.set(MyConstants.breadVelocity, MyConstants.breadVelocity);
		drag.set(100, 100);
		mPlayerInput = aPlayerInput;
		immovable = true;
	}
	
	override function update():Void
	{
		if (x+width > MyConstants.screenWidth && velocity.x>0)
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
		if (y+height > MyConstants.screenHeigth && velocity.y>0)
		{
			velocity.y *= -1;
		}
		
		acceleration.set(0, 0);
		if (mPlayerInput.left())
		{
			acceleration.x = -MyConstants.breadAcceleration;
		}
		if (mPlayerInput.right())
		{
			acceleration.x = MyConstants.breadAcceleration;
		}
		if (mPlayerInput.up())
		{
			acceleration.y = -MyConstants.breadAcceleration;
		}
		if (mPlayerInput.down())
		{
			acceleration.y = MyConstants.breadAcceleration;
		}
		super.update();
	}
}