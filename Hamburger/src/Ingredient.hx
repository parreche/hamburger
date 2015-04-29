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
	var mBreadTop:Bread;
	var mBreadBottom:Bread;
	var mScore:Int;
	inline private static var minDist = 45;
	private static var minAng;

	public function new(X:Float, Y:Float, aImage:String, aBreadTop:Bread, aBreadBottom:Bread, aScore:Int) 
	{
		super(X, Y);
		mBreadTop = aBreadTop;
		mBreadBottom = aBreadBottom;
		mScore = aScore;
		minAng = Math.PI/2;
		loadGraphic(Assets.getBitmapData(aImage), false);
		maxVelocity.set(150, 150);
		velocity.set(Math.random() > 0.5? -100:100, Math.random() > 0.5? -100:100);
		elasticity = 1;
		x = 100 + 300 * Math.random();
		y = Math.random() * 200;
		
	}
	
	override function update():Void
	{
		
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
		
		eat();
		
		super.update();
	}
	
	private function eat():Void
	{
		var vectorTop:Point = new Point(mBreadTop.x+mBreadTop.width - x, mBreadTop.y+mBreadTop.height/2 - y);
		if (vectorTop.length > minDist)
		{
			return;
		}
		
		var vectorBottom:Point = new Point(mBreadBottom.x - x, mBreadBottom.y+mBreadBottom.height/2 - y);
		if (vectorBottom.length > minDist)
		{
			return;
		}

		vectorTop.normalize(1);
		vectorBottom.normalize(1);
		vectorTop.x *= -1;
		vectorTop.y *= -1;
		
		var product = vectorTop.x * vectorBottom.x + vectorTop.y * vectorBottom.y;
		
		if (product < Math.cos(minAng)) 
		{
			GameData.score += mScore;
			kill();
		}
	}
}