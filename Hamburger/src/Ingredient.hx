package;
import flixel.FlxSprite;
import openfl.Assets;
import openfl.geom.Point;

/**
 * ...
 * @author tomas
 */
class Ingredient extends FlxSprite
{
	var mVelocity:Point = new Point();

	public function new(X:Float, Y:Float, aImage:String) 
	{
		super(X, Y);
		loadGraphic(Assets.getBitmapData(aImage), false);
		maxVelocity.set(150, 150);
		velocity.set(Math.random() > 0.5? -100:100, Math.random() > 0.5? -100:100);
		elasticity = 1;
		x = 100 + 300 * Math.random();
		y = Math.random() * 200;
		
	}
	
	override function update():Void
	{
		/*mVelocity.setTo(velocity.x, velocity.y);
		mVelocity.normalize(150);
		velocity.x = mVelocity.x;
		velocity.y = mVelocity.y;*/
		
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
		super.update();
	}
}