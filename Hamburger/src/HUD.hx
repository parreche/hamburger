package;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import io.GeneralConstants;

/**
 * This helper class represents the HUD of the screen. 
 * 
 * It contains the list of ingredients that had been eaten
 * 
 * @author Arreche-Piaggio
 * 
 */
class HUD
{
	
	private static var hudBackground:FlxSprite;  
	private static var mIngredientsEaten = new List<FlxSprite>();
	private static var mBreadTopHUD:Bread;
	private static var mBreadBottomHUD:Bread;
	
	public static var mHasEaten:Bool = true;
	
	public static function create():Void
	{
		hudBackground = new FlxSprite(GeneralConstants.HUD_x,GeneralConstants.HUD_y);
		hudBackground.makeGraphic(GeneralConstants.HUD_width, GeneralConstants.HUD_heigth, FlxColor.GRAY);
		hudBackground.alpha = 0.4;

		var lastX:Float = GeneralConstants.HUD_x + GeneralConstants.HUD_width - 70;
		mBreadBottomHUD = new Bread(lastX, GeneralConstants.HUD_y + 20, null, "img/BreadBottom.png");
		mBreadBottomHUD.alpha = 0.7;
		mBreadTopHUD = new Bread(lastX - 50, GeneralConstants.HUD_y + 20, null, "img/BreadTop.png");
		mBreadTopHUD.alpha = 0.7;
		
		mIngredientsEaten.clear();
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