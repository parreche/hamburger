package;
import flixel.FlxSprite;
import openfl.Assets;
import openfl.geom.Point;

/**
 * 
 * This class represents the obstacles in the stage.
 * Each obstacle has a image and X,Y coords.
 * 
 * @author Arreche-Piaggio
 * 
 */
class Obstacle extends FlxSprite
{

	public function new(X:Float, Y:Float, aImage:String) 
	{
		super(X, Y);
		loadGraphic(Assets.getBitmapData(aImage), false);
		immovable = true;
	}
	
	override function update():Void
	{	
		super.update();
	}
	
	
}