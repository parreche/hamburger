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
		loadStaticImage("img/mainMenu/background_menu.png", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0);
		
		
		createMenuButton("img/mainMenu/tutorial_button.png", GeneralConstants.menu_tutorialButton_width, GeneralConstants.menu_tutorialButton_heigth, GeneralConstants.menu_tutorialButton_x, GeneralConstants.menu_tutorialButton_y, startGame);
		createMenuButton("img/mainMenu/start_button.png", GeneralConstants.menu_startButton_width, GeneralConstants.menu_startButton_heigth,GeneralConstants.menu_startButton_x, GeneralConstants.menu_startButton_y, startGame);
		createMenuButton("img/mainMenu/options_button.png", GeneralConstants.menu_optionsButton_width, GeneralConstants.menu_optionsButton_heigth, GeneralConstants.menu_optionsButton_x, GeneralConstants.menu_optionsButton_y, startGame);
		createMenuButton("img/mainMenu/credits_button.png", GeneralConstants.menu_creditsButton_width, GeneralConstants.menu_creditsButton_heigth, GeneralConstants.menu_creditsButton_x, GeneralConstants.menu_creditsButton_y, startGame);
		createMenuButton("img/mainMenu/exit_button.png", GeneralConstants.menu_exitButton_width, GeneralConstants.menu_exitButton_heigth,GeneralConstants.menu_exitButton_x, GeneralConstants.menu_exitButton_y, startGame);
		loadStaticImage("img/mainMenu/topBread.png", GeneralConstants.menu_topImage_width, GeneralConstants.menu_topImage_heigth, GeneralConstants.menu_topImage_x, GeneralConstants.menu_topImage_y);
		loadStaticImage("img/mainMenu/bottomBread.png", GeneralConstants.menu_bottomImage_width, GeneralConstants.menu_bottomImage_heigth, GeneralConstants.menu_bottomImage_x, GeneralConstants.menu_bottomImage_y);
		
		FlxG.sound.playMusic("sound/menuTheme.wav");
		
	}
	
	function startGame(aButton:MenuButton) :Void
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.6, false, function() {
			FlxG.switchState(new GameState());
			FlxG.sound.music.stop();
		});
	}
	
	function createMenuButton(aImage:String,aWidth:Int,aHeigth:Int, aXCoord:Int, aYCoord:Int,?aOnPressed:MenuButton->Void):Void 
	{
		var startBtn:MenuButton = new MenuButton(aImage,aWidth,aHeigth,aOnPressed);
		startBtn.setOver([1]);
		startBtn.setUp([0]);
		startBtn.setDown([1]);
		startBtn.setPosition(aXCoord,aYCoord);
		startBtn.updateHitbox();
		add(startBtn);
	}
	
	function loadStaticImage(aImage:String,aWidth:Int,aHeigth:Int, aXCoord:Int, aYCoord:Int):Void 
	{
		var staticImage:FlxSprite = new FlxSprite(aXCoord, aYCoord);
		staticImage.loadGraphic(Assets.getBitmapData(aImage));
		staticImage.setGraphicSize();
		staticImage.updateHitbox();
		add(staticImage);
	}
	
}