package domain;
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

	public function new(aX:Float, aY:Float, aImage:String) 
	{
		super(aX, aY);
		loadGraphic(Assets.getBitmapData(aImage), false);
		immovable = true;
	}
	
	override function update():Void
	{	
		super.update();
	}
	
	
}