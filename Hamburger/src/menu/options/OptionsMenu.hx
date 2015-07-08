package menu.options;
import configuration.GeneralConstants;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import gameplay.GameState;
import menu.MainMenu;
import openfl.Assets;
import utils.MenuHelper;

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
		add(MenuHelper.loadStaticImage("img/mainMenu/background_menu.png", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0));
		add(MenuHelper.loadStaticImage("img/optionsMenu/options.png", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0));
		add(MenuHelper.createMenuButton("img/optionsMenu/close_button.png", GeneralConstants.options_menu_close_button_width, GeneralConstants.options_menu_close_button_heigth, GeneralConstants.options_menu_close_button_x, GeneralConstants.options_menu_close_button_y, goToMainMenu));
		add(MenuHelper.createMenuButton("img/optionsMenu/credits_button.png", GeneralConstants.options_menu_credit_button_width, GeneralConstants.options_menu_credit_button_heigth, GeneralConstants.options_menu_credit_button_x, GeneralConstants.options_menu_credit_button_y, goToCredits));
		
		add(MenuHelper.createMenuButton("img/optionsMenu/check.png", 50, 49, 982, 647, toggleJoystick, false));
	}
	
	function goToMainMenu(aButton:MenuButton) :Void
	{
		FlxG.switchState(new MainMenu());
	}
	
	function goToCredits(aButton:MenuButton) :Void
	{
	}
	
	function toggleJoystick(aButton:MenuButton) :Void
	{
		add(MenuHelper.loadStaticImage("img/optionsMenu/cross.png", 21,30, 995, 665));
	}
	
}