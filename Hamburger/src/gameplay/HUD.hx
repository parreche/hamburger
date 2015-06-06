package gameplay;
import domain.Bread;
import domain.Ingredient;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import configuration.GeneralConstants;

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
	private static var sBreadBottomHUD:Bread;
	private static var sTimer:Timer;
	private static var sGameScore:GameScore;
	
	private static var sScoreText:FlxText;
	private static var sTimerText:FlxText;
	
	public static var sHasEaten:Bool = true;

	public static function create():Void
	{
		sHudBackground = new FlxSprite(GeneralConstants.HUD_x,GeneralConstants.HUD_y);
		sHudBackground.makeGraphic(GeneralConstants.HUD_width, GeneralConstants.HUD_heigth, FlxColor.GRAY);
		sHudBackground.alpha = 0.4;

		var lastX:Float = GeneralConstants.HUD_x + GeneralConstants.HUD_width - 70;
		sBreadBottomHUD = new domain.Bread(lastX, GeneralConstants.HUD_y + 20, null, "img/BreadBottom.png");
		sBreadBottomHUD.alpha = 0.7;
		sBreadTopHUD = new domain.Bread(lastX - 50, GeneralConstants.HUD_y + 20, null, "img/BreadTop.png");
		sBreadTopHUD.alpha = 0.7;
		
		sIngredientsEaten.clear();
		
		sTimer = new Timer();
		sGameScore = new GameScore();
		sScoreText = new FlxText(GeneralConstants.score_x, GeneralConstants.score_y, 350, "Score: ", GeneralConstants.scoreSize);
		sTimerText = new FlxText(GeneralConstants.timer_x, GeneralConstants.timer_y, 350, "", GeneralConstants.timerSize);
	}
	
	public static function update(): Void
	{
		sScoreText.text = "Score: " + sGameScore.getScore();
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
	
	public static function getBottomBread():Bread
	{
		return sBreadBottomHUD;
	}
	
	public static function getScoreText():FlxText
	{
		return sScoreText;
	}

	public static function getTimerText():FlxText
	{
		return sTimerText;
	}
	
	public static function setTopBreadXCoord(aX:Float):Void
	{
		sBreadTopHUD.x = aX;
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
		sIngredientsEaten.add(aIngredient.clone());
		sHasEaten = true;
		sGameScore.addScore(aIngredient.getScore());
	}
	
}