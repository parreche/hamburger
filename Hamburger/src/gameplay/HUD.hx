package gameplay;
import domain.Bread;
import domain.Ingredient;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import configuration.GeneralConstants;
import openfl.Assets;
import utils.MenuHelper;

/**
 * This helper class represents the HUD of the screen. 
 * 
 * It contains the list of ingredients that had been eaten, the game score and time remaining
 * 
 * @author Arreche-Piaggio
 * 
 */
class HUD
{
	
	private static var sHudBackground:FlxSprite;  
	private static var sIngredientsEaten;
	private static var sBreadTopHUD:Bread;
	private static var sTimer:Timer;
	private static var sGameScore:GameScore;
	
	private static var sScoreText:FlxText;
	private static var sTimerText:FlxText;
	
	public static var sHasEaten:Bool = true;

	public static function create():Void
	{
		sHudBackground = new FlxSprite(GeneralConstants.HUD_x,GeneralConstants.HUD_y);
		sHudBackground.loadGraphic(Assets.getBitmapData("img/game/hud_background.png"));
		sIngredientsEaten = new List<FlxSprite>();
		var lastX:Float = GeneralConstants.HUD_x + GeneralConstants.HUD_width;
		var lastY:Float = GeneralConstants.HUD_y + GeneralConstants.HUD_heigth;
		sBreadTopHUD = new Bread(lastX, lastY, "img/static/TopBread.png");
		sTimer = new Timer();
		sGameScore = new GameScore();
		sHasEaten = true;
		sScoreText = MenuHelper.generateMenuText(GeneralConstants.score_x, GeneralConstants.score_y, "", GeneralConstants.scoreSize);
		sTimerText = MenuHelper.generateMenuText(GeneralConstants.timer_x, GeneralConstants.timer_y, "", GeneralConstants.timerSize);
	}
	
	public static function update(): Void
	{
		sScoreText.text = sGameScore.getScore() + "";
		sTimerText.text = sTimer.updateTimer();
	}
	
	public static function getEatenIngredients():List<FlxSprite>
	{
		return sIngredientsEaten;
	}
	
	public static function getHUDBackground():FlxSprite
	{
		return sHudBackground;
	}
	
	public static function getTopBread():Bread
	{
		return sBreadTopHUD;
	}
	
	public static function getScoreText():FlxText
	{
		return sScoreText;
	}

	public static function getTimerText():FlxText
	{
		return sTimerText;
	}
	
	public static function setTopBreadYCoord(aY:Float):Void
	{
		sBreadTopHUD.y = aY;
	}
	
	public static function isTimeOver():Bool
	{
		return sTimer.isTimeOver();
	}
	
	public static function isHurryUp():Bool
	{
		return sTimer.isHurryUp();
	}
	
	public static function getTime() : Int
	{
		return sTimer.getTime();
	}
	
	public static function getScore() : Int
	{
		return sGameScore.getScore();
	}
	
	public static function addEatenIngredient(aIngredient:Ingredient):Void
	{
		var eaten:Ingredient = new Ingredient(0, 0, aIngredient.getStaticImage(), aIngredient.getEndImage(), null, null, aIngredient.getScore(), 0, 0);
		sIngredientsEaten.add(eaten);
		sHasEaten = true;
		eaten.loadGraphic(Assets.getBitmapData(eaten.getStaticImage()), false);
		sGameScore.addScore(aIngredient.getScore());
	}
	
}