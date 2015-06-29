package menu.options;
import configuration.GeneralConstants;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import gameplay.GameState;
import menu.MainMenu;
import openfl.Assets;

/**
 * ...
 * @author Arreche-Piaggio
 */
class OptionsMenu extends FlxState
{

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		loadStaticImage("img/mainMenu/background_menu.png", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0);
		loadStaticImage("img/optionsMenu/options.png", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0);
		createMenuButton("img/optionsMenu/close_button.png", GeneralConstants.options_menu_close_button_width, GeneralConstants.options_menu_close_button_heigth, GeneralConstants.options_menu_close_button_x, GeneralConstants.options_menu_close_button_y, goToMainMenu);
		createMenuButton("img/optionsMenu/credits_button.png", GeneralConstants.options_menu_credit_button_width, GeneralConstants.options_menu_credit_button_heigth, GeneralConstants.options_menu_credit_button_x, GeneralConstants.options_menu_credit_button_y, goToCredits);
	}
	
	function goToMainMenu(aButton:MenuButton) :Void
	{
		FlxG.switchState(new MainMenu());
	}
	
	function goToCredits(aButton:MenuButton) :Void
	{
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