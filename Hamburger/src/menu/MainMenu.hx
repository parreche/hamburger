package menu;
import flixel.FlxG;
import flixel.FlxState;
import io.GeneralConstants;

/**
 * This class initializes the game's main menu
 * 
 * Thanks to Joaquin Bello for the code
 * 
 * @author Arreche-Piaggio
 * 
 */
class MainMenu extends FlxState
{

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		var startBtn:MenuButton = new MenuButton("img/start_button.png", GeneralConstants.menu_startButton_width, GeneralConstants.menu_startButton_heigth, onClick);
		startBtn.setOver([0]);
		startBtn.setUp([0]);
		startBtn.setDown([0]);
		startBtn.setPosition(GeneralConstants.menu_startButton_x, GeneralConstants.menu_startButton_y);
		add(startBtn);
		
		FlxG.sound.playMusic("sound/gameTheme.wav");
	}
	
	function onClick(aButton:MenuButton) :Void
	{
		FlxG.switchState(new GameState());
		FlxG.sound.music.stop();
	}
	
}