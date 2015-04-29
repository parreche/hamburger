package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
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
		maxVelocity.set(100, 100);
		drag.set(100, 100);
		mPlayerInput = aPlayerInput;
		immovable = true;
	}
	
	override function update():Void
	{
		trace(y);
		
		if (x+width > 800 && velocity.x>0)
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
		if (y+height > 480 && velocity.y>0)
		{
			velocity.y *= -1;
		}
		
		acceleration.set(0, 0);
		if (mPlayerInput.left())
		{
			acceleration.x = -1000;
		}
		if (mPlayerInput.right())
		{
			acceleration.x = 1000;
		}
		if (mPlayerInput.up())
		{
			acceleration.y = -1000;
		}
		if (mPlayerInput.down())
		{
			acceleration.y = 1000;
		}
		super.update();
	}
}