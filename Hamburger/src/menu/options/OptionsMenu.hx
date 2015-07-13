package menu.options;
import configuration.GeneralConstants;
import flixel.addons.ui.FlxUISlider;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.ui.FlxBar;
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

	private var mEnableJoystickCheck:FlxSprite;
	
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
		
		add(MenuHelper.createMenuButton("img/optionsMenu/check.png", GeneralConstants.options_menu_checkbox_width, GeneralConstants.options_menu_checkbox_heigth, GeneralConstants.options_menu_checkbox_x, GeneralConstants.options_menu_checkbox_y, toggleJoystick, false));
	
		mEnableJoystickCheck = MenuHelper.loadStaticImage("img/optionsMenu/cross.png", GeneralConstants.options_menu_cross_width, GeneralConstants.options_menu_cross_heigth, GeneralConstants.options_menu_cross_x, GeneralConstants.options_menu_cross_y);
		mEnableJoystickCheck.visible = GameState.sEnableJoystick;
		add(mEnableJoystickCheck);
		
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
		GameState.sEnableJoystick = !GameState.sEnableJoystick;
		mEnableJoystickCheck.visible = GameState.sEnableJoystick;
	}
	
}