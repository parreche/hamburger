package utils;
import configuration.GeneralConstants;
import openfl.geom.Point;

/**
 * ...
 * @author Joaquin
 */
class HelpFunction
{

	public function new() 
	{
		
	}
	public static function clear(aArray:Array<Dynamic>){
        #if (cpp||php)
           aArray.splice(0,aArray.length);           
        #else
           untyped aArray.length = 0;
        #end
    }
	
	public static function randomPointInScreen():Point 
	{
		var xCoord:Float = Math.random() * GeneralConstants.game_screenWidth;
		var yCoord:Float = Math.random() * GeneralConstants.game_screenHeigth;
		return new Point(xCoord, yCoord);
	}
	
}