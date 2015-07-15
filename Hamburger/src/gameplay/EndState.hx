package gameplay;
import domain.Ingredient;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import configuration.GeneralConstants;
import menu.MainMenu;
import menu.MenuButton;
import openfl.utils.Object;
import src.utils.DBHelper;
import utils.MenuHelper;

/**
 * 
 * This class represents the final state of the game.
 * It shows the final score and other things.
 * 
 * @author Arreche-Piaggio
 * 
 */
class EndState extends FlxState
{
	private var mDBName = "HamburgerDB";
	private var mScore:Int = 0;
	private var mTime:Int = 0;
	private var mNameTextField:FlxText;
	private var mWin:Bool;

	
	/**
	 * Called from GameState, win, score and time variables
	 * @param	Win		true if the player collects all ingredients, false otherwise
	 * @param	Score	the score from the ingredients collected
	 * @param	Time	the time left before reaching 0 when we win, 0 if we lost
	 */
	public function new(aWin:Bool, aScore:Int, aTime:Int) 
	{
		super();
		mWin = aWin;
		mScore = aScore;
		mTime = aTime;
	}
	
	override function create():Void
	{
		
		FlxG.sound.playMusic("sound/endTheme.wav");
		
		add(MenuHelper.loadStaticImage("img/game/end/background_end_game.jpg", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0));
		
		add(MenuHelper.createMenuButton("img/game/end/mainMenu_button.png", GeneralConstants.end_game_main_menu_button_width, GeneralConstants.end_game_main_menu_button_heigth, GeneralConstants.end_game_main_menu_button_x, GeneralConstants.end_game_main_menu_button_y, goToMainMenu));
		add(MenuHelper.createMenuButton("img/game/end/playAgain_button.png", GeneralConstants.end_game_restart_button_width, GeneralConstants.end_game_restart_button_heigth, GeneralConstants.end_game_restart_button_x, GeneralConstants.end_game_restart_button_y, restart));
		
		if (isHighScore())
		{
			add(MenuHelper.loadStaticImage("img/game/end/High_Score.png", GeneralConstants.end_game_high_score_width, GeneralConstants.end_game_high_score_heigth, GeneralConstants.end_game_high_score_x, GeneralConstants.end_game_high_score_y));
		}
		
		add(MenuHelper.generateMenuText(GeneralConstants.end_game_score_text_x, GeneralConstants.end_game_score_text_y,  (mScore + mTime*30) + "", GeneralConstants.end_game_score_text_size));
	
		var eatenIngredients:List<Ingredient> = cast HUD.getEatenIngredients();
		var lastY: Int = GeneralConstants.end_game_ingredients_y;
		for (ingredient in eatenIngredients)
		{
			add(MenuHelper.loadStaticImage(ingredient.getEndImage(), 0, 0, GeneralConstants.end_game_ingredients_x, lastY));
			lastY = lastY - GeneralConstants.end_game_ingredients_separation;
		}
		lastY = lastY - GeneralConstants.end_game_ingredients_separation;
		add(MenuHelper.loadStaticImage("img/game/end/ingredients/topBread.png", 0, 0, GeneralConstants.end_game_ingredients_x, lastY));
	
		var name:String = DBHelper.getLastName();
		
		mNameTextField = MenuHelper.generateInputText(GeneralConstants.end_game_input_name_x, GeneralConstants.end_game_input_name_y, name, GeneralConstants.end_game_input_name_size);
		add(mNameTextField);
		
		DBHelper.showHighScores(this, GeneralConstants.end_game_ranking_name_x, GeneralConstants.end_game_ranking_score_x, GeneralConstants.end_game_ranking_y, GeneralConstants.end_game_ranking_space, GeneralConstants.end_game_ranking_size);
				
	}
	
	private function restart(aButton:MenuButton) : Void
	{
		DBHelper.updateHighScore(mScore, mTime, mNameTextField.text);
		
		FlxG.camera.fade(FlxColor.BLACK, .66, false, function() {
			FlxG.switchState(new GameState());
			FlxG.sound.music.stop();
		});
	}
	
	private function goToMainMenu(aButton:MenuButton) : Void
	{
		DBHelper.updateHighScore(mScore, mTime, mNameTextField.text);
		
		FlxG.camera.fade(FlxColor.BLACK, .66, false, function() {
			FlxG.switchState(new MainMenu());
			FlxG.sound.music.stop();
		});
	}
	
	private function isHighScore() : Bool
	{
		var score:Int = mScore + mTime*30;
		var hiScore:Int = DBHelper.getHighScore();
		return score == hiScore;
	}
	
	
}