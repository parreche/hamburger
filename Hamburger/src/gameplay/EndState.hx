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
		
		FlxG.sound.playMusic("sound/Final.wav");
		
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
	
		var save:FlxSave = new FlxSave();
		save.bind(mDBName);
		var name:String = " ";
		if (save.data.name != null) 
		{
			name = save.data.name; 
		}
		save.close();
		
		mNameTextField = MenuHelper.generateInputText(GeneralConstants.end_game_input_name_x, GeneralConstants.end_game_input_name_y, name, GeneralConstants.end_game_input_name_size);
		add(mNameTextField);
		
		showHighScores();
				
	}
	
	private function restart(aButton:MenuButton) : Void
	{
		updateHighScore();
		FlxG.camera.fade(FlxColor.BLACK, .66, false, function() {
			FlxG.switchState(new GameState());
			FlxG.sound.music.stop();
		});
	}
	
	private function goToMainMenu(aButton:MenuButton) : Void
	{
		updateHighScore();
		FlxG.camera.fade(FlxColor.BLACK, .66, false, function() {
			FlxG.switchState(new MainMenu());
			FlxG.sound.music.stop();
		});
	}
	
	private function isHighScore() : Bool
	{
		var score:Int = mScore + mTime*30;
		var hiScore:Int = getHighScore();
		return score == hiScore;
	}
	
	private function showHighScores():Void
	{
		var save:FlxSave = new FlxSave();
		save.bind(mDBName);
		if (save.data.hiscore != null)
		{
			for (i in 0...5) {
				if (save.data.hiscore[i].mScore > 0) {
					add(MenuHelper.generateMenuText(GeneralConstants.end_game_ranking_name_x, GeneralConstants.end_game_ranking_y + i*40, save.data.hiscore[i].mName, GeneralConstants.end_game_ranking_size));
					add(MenuHelper.generateMenuText(GeneralConstants.end_game_ranking_score_x, GeneralConstants.end_game_ranking_y + i*40, save.data.hiscore[i].mScore, GeneralConstants.end_game_ranking_size));
				}
			}
			
		}
		save.close();
	}
	
	/**
	 * This function modifies the high score and then returns it
	 * @param	Score	the final score the player just obtained
	 * @return	hi score
	 */
	private function updateHighScore():Int
	{
		var hiScore:Int = mScore + mTime*30;
		var save:FlxSave = new FlxSave();
		save.bind(mDBName);
		save.data.name = mNameTextField.text;
		if (save.data.hiscore == null)
		{
			save.data.hiscore = new Array();
			save.data.hiscore.push(new HighScore(hiScore, mNameTextField.text));
			save.data.hiscore.push(new HighScore(0, " "));
			save.data.hiscore.push(new HighScore(0, " "));
			save.data.hiscore.push(new HighScore(0, " "));
			save.data.hiscore.push(new HighScore(0, " "));
		} else {
			var remove:Bool = true;
			for (i in 0...save.data.hiscore.length) {
				if (save.data.hiscore[i].mScore < hiScore && remove) {
					save.data.hiscore.pop();
					save.data.hiscore.push(new HighScore(hiScore, mNameTextField.text));
					remove = false;
				}
			}
		}
		save.data.hiscore.sort( function(a:Object, b:Object):Int
		{
			if (a.mScore < b.mScore) return 1;
			if (a.mScore > b.mScore) return -1;
			return 0;
		} );
		hiScore = save.data.hiscore[0].mScore;
		save.close();
		return hiScore;
	}
	
	private function getHighScore():Int
	{
		var save:FlxSave = new FlxSave();
		save.bind(mDBName);
		if (save.data.hiscore == null)
		{
			return 0;
		}
		save.data.hiscore.sort( function(a:Object, b:Object):Int
		{
			if (a.mScore < b.mScore) return 1;
			if (a.mScore > b.mScore) return -1;
			return 0;
		} );
		var highScore:Int = save.data.hiscore[0].mScore;
		save.close();
		return highScore;
	}
	
	private function timeFormat():String
	{
		var format:String;
		var minutes = Std.int(mTime / 60);
		var seconds = Std.int(mTime - (minutes * 60));
		
		format = minutes + ":";
			
		if (seconds < 10)
		{
			format += "0";
		}
		format += seconds;
		
		return format;
	}
	
}