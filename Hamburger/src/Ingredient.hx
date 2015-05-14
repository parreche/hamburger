package;
import flixel.FlxSprite;
import io.MyConstants;
import openfl.Assets;
import openfl.geom.Point;

/**
 * ...
 * @author tomas
 */
class Ingredient extends FlxSprite
{
	var mVelocity:Point = new Point();
	var mBreadTop:Bread;
	var mBreadBottom:Bread;
	var mScore:Int;
	inline private static var minDist = 60;
	private static var minAng;

	public function new(X:Float, Y:Float, aImage:String, aBreadTop:Bread, aBreadBottom:Bread, aScore:Int,aVelocity:Int,aMaxVelocity:Int) 
	{
		super(X, Y);
		mBreadTop = aBreadTop;
		mBreadBottom = aBreadBottom;
		mScore = aScore;
		minAng = Math.PI/2;
		loadGraphic(Assets.getBitmapData(aImage), false);
		aVelocity = Math.random() > 0.5? -aVelocity:aVelocity; 
		velocity.set(aVelocity, aVelocity);
		maxVelocity.set(aMaxVelocity, aMaxVelocity);
		elasticity = 1;
		x = 100 + 300 * Math.random();
		y = Math.random() * 200;
		
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
		
		eat();
		
		super.update();
	}
	
	private function eat():Void
	{
		var vectorTop:Point = new Point(mBreadTop.x+mBreadTop.width/2 - (x+width/2), mBreadTop.y+mBreadTop.height/2 - (y+height/2));
		if (vectorTop.length > minDist)
		{
			return;
		}
		
		var vectorBottom:Point = new Point(mBreadBottom.x + mBreadBottom.width/2 - (x+width/2) , mBreadBottom.y+mBreadBottom.height/2 - (y+height/2));
		if (vectorBottom.length > minDist)
		{
			return;
		}

		GameData.score += mScore;
		HUD.addEatenIngredient(this);
		kill();
	}
}