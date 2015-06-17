package gameplay;
import domain.Bread;
import domain.Ingredient;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import configuration.GeneralConstants;
import openfl.Assets;

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
	private static var sIngredientsEaten = new List<FlxSprite>();
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
		sHudBackground.alpha = 0.4;

		var lastX:Float = GeneralConstants.HUD_x + GeneralConstants.HUD_width;
		var lastY:Float = GeneralConstants.HUD_y + GeneralConstants.HUD_heigth;
		sBreadTopHUD = new Bread(lastX, lastY, "img/static/TopBread.png");
		sBreadTopHUD.alpha = 0.7;
		
		sIngredientsEaten.clear();
		
		sTimer = new Timer();
		sGameScore = new GameScore();
		sScoreText = new FlxText(GeneralConstants.score_x, GeneralConstants.score_y, 350, "", GeneralConstants.scoreSize);
		sTimerText = new FlxText(GeneralConstants.timer_x, GeneralConstants.timer_y, 350, "", GeneralConstants.timerSize);
		sScoreText.font = "fonts/Barrio-Regular.ttf";
		sScoreText.color = FlxColor.BLACK;
		sTimerText.font = "fonts/Barrio-Regular.ttf";
		sTimerText.color = FlxColor.BLACK;
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
		var eaten:Ingredient = new Ingredient(0, 0, aIngredient.getStaticImage(), null, null, aIngredient.getScore(), 0, 0);
		sIngredientsEaten.add(eaten);
		sHasEaten = true;
		sGameScore.addScore(aIngredient.getScore());
	}
	
}