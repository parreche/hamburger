package;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import io.MyConstants;
/**
 * ...
 * @author Pablo Arreche
 */
class HUD
{
	
	// HUD attributes
	private static var hudBackground:FlxSprite;  
	private static var mIngredientsEaten = new List<FlxSprite>();
	private static var mBreadTopHUD:Bread;
	private static var mBreadBottomHUD:Bread;
	
	public static var mHasEaten:Bool = true;
	
	public static function create():Void
	{
		hudBackground = new FlxSprite(MyConstants.HUD_x,MyConstants.HUD_y);
		hudBackground.makeGraphic(MyConstants.HUD_width, MyConstants.HUD_heigth, FlxColor.GRAY);
		hudBackground.alpha = 0.4;

		var lastX:Float = MyConstants.HUD_x + MyConstants.HUD_width - 70;
		mBreadBottomHUD = new Bread(lastX, MyConstants.HUD_y + 20, null, "img/BreadBottom.png");
		mBreadBottomHUD.alpha = 0.7;
		mBreadTopHUD = new Bread(lastX, MyConstants.HUD_y + 20, null, "img/BreadTop.png");
		mBreadTopHUD.alpha = 0.7;
	}
	
	public static function getEatenIngredients():List<FlxSprite>
	{
		return mIngredientsEaten;
	}
	
	public static function getHUDBackground():FlxSprite
	{
		return hudBackground;
	}
	
	public static function getTopBread():Bread
	{
		return mBreadTopHUD;
	}
	
	public static function getBottomBread():Bread
	{
		return mBreadBottomHUD;
	}
	
	public static function setTopBreadXCoord(X:Float):Void
	{
		mBreadTopHUD.x = X;
	}
	
	public static function addEatenIngredient(ingredient:Ingredient):Void
	{
		mIngredientsEaten.add(ingredient.clone());
		mHasEaten = true;
	}
	
	
}