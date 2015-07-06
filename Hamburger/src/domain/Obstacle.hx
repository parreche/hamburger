package domain;
import configuration.GeneralConstants;
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

	public function new(aX:Float, aY:Float, aImage:String, aCollisionBoxWidth:Int, aCollisionBoxHeigth:Int, aCollisionBoxX:Int, aCollisionBoxY:Int) 
	{
		super(aX, aY);
		loadGraphic(Assets.getBitmapData(aImage), false);
		width = aCollisionBoxWidth;
		height = aCollisionBoxHeigth;
		immovable = true;
		offset.x = aCollisionBoxX;
		offset.y = aCollisionBoxY;
	}
	
	override function update():Void
	{	
		super.update();
	}
}