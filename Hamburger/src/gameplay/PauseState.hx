package gameplay;
import configuration.GeneralConstants;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.util.FlxColor;
import menu.MainMenu;
import menu.MenuButton;
import utils.MenuHelper;

/** 
 * ...
 * @author Arreche-Piaggio
 */
class PauseState extends flixel.FlxSubState
{

	var mCurrentGame : GameState;
	
	public function new(aCurrentGame:GameState) 
	{
		super();
		mCurrentGame = aCurrentGame;
		var pauseScreen:FlxSprite = MenuHelper.loadStaticImage("img/game/pause.png", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0);
		add(pauseScreen);
		add(MenuHelper.createMenuButton("img/game/mainMenu_button.png", GeneralConstants.pause_mainMenu_button_width, GeneralConstants.pause_mainMenu_button_heigth, GeneralConstants.pause_mainMenu_button_x, GeneralConstants.pause_mainMenu_button_y, quitGame));
		add(MenuHelper.createMenuButton("img/game/resume_button.png", GeneralConstants.pause_resume_button_width, GeneralConstants.pause_resume_button_heigth, GeneralConstants.pause_resume_button_x, GeneralConstants.pause_resume_button_y, resumeGame));
	}
	
	function resumeGame(aButton:MenuButton) :Void
	{
		mCurrentGame.mPausedGame = false;
	}
	
	function quitGame(aButton:MenuButton) :Void
	{
		mCurrentGame.quitGame();
		
	}
	
}