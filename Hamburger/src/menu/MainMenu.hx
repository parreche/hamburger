package menu;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.util.FlxPoint;
import flixel.util.FlxSort;
import gameplay.GameState;
import configuration.GeneralConstants;
import openfl.Assets;

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
		var background:FlxSprite = new FlxSprite(0, 0);
		background.loadGraphic(Assets.getBitmapData("img/background_menu.png"));
		background.setGraphicSize(GeneralConstants.screenWidth, GeneralConstants.screenHeigth);
		background.updateHitbox();
		add(background);
		
		var startBtn:MenuButton = new MenuButton("img/start_button.png", GeneralConstants.menu_startButton_width, GeneralConstants.menu_startButton_heigth, onClick);
		startBtn.setOver([1]);
		startBtn.setUp([0]);
		startBtn.setDown([1]);
		startBtn.setPosition(GeneralConstants.menu_startButton_x, GeneralConstants.menu_startButton_y);
		add(startBtn);
		
		FlxG.sound.playMusic("sound/menuTheme.wav");
		
	}
	
	function onClick(aButton:MenuButton) :Void
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.6, false, function() {
			FlxG.switchState(new GameState());
			FlxG.sound.music.stop();
		});
	}
	
}