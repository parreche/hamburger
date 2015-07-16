package menu.options;
import configuration.GeneralConstants;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxBar;
import flixel.util.FlxColor;
import gameplay.GameState;
import menu.credits.Credits;
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
	private var mVolumeText:FlxText;
	private var mBrightnessText:FlxText;
	
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
		
		add(MenuHelper.createMenuButton("img/optionsMenu/Boton_Subir.png", GeneralConstants.options_menu_volume_up_button_width, GeneralConstants.options_menu_volume_up_button_heigth, GeneralConstants.options_menu_volume_up_button_x, GeneralConstants.options_menu_volume_up_button_y, clickVolumeUp));
		add(MenuHelper.createMenuButton("img/optionsMenu/Boton_Bajar.png", GeneralConstants.options_menu_volume_down_button_width, GeneralConstants.options_menu_volume_down_button_heigth, GeneralConstants.options_menu_volume_down_button_x, GeneralConstants.options_menu_volume_down_button_y, clickVolumeDown));
		
		add(MenuHelper.createMenuButton("img/optionsMenu/Boton_Subir.png", GeneralConstants.options_menu_brightness_up_button_width, GeneralConstants.options_menu_brightness_up_button_heigth, GeneralConstants.options_menu_brightness_up_button_x, GeneralConstants.options_menu_brightness_down_button_y, clickBrightnessUp));
		add(MenuHelper.createMenuButton("img/optionsMenu/Boton_Bajar.png", GeneralConstants.options_menu_brightness_down_button_width, GeneralConstants.options_menu_brightness_down_button_heigth, GeneralConstants.options_menu_brightness_down_button_x, GeneralConstants.options_menu_brightness_down_button_y, clickBrightnessDown));
		
		mVolumeText = MenuHelper.generateMenuText(GeneralConstants.options_menu_volume_text_x, GeneralConstants.options_menu_volume_text_y, "", GeneralConstants.options_menu_volume_text_size);
		mBrightnessText = MenuHelper.generateMenuText(GeneralConstants.options_menu_brightness_text_x, GeneralConstants.options_menu_brightness_text_y, "", GeneralConstants.options_menu_brightness_text_size);
		add(mVolumeText);
		add(mBrightnessText);
		updateVolume();
		updateBrightness();
	}
	
	private function clickVolumeDown(aButton:MenuButton):Void
	{
		FlxG.sound.volume -= 0.1;
		updateVolume();
	}
	
	private function clickVolumeUp(aButton:MenuButton):Void
	{
		FlxG.sound.volume += 0.1;
		updateVolume();
	}
	
	private function updateVolume():Void
	{
		var vol:Int = Math.round(FlxG.sound.volume * 100);
		mVolumeText.text = Std.string(vol);
	}
	
	private function clickBrightnessDown(aButton:MenuButton):Void
	{
		FlxG.camera.alpha -= 0.1;
		updateBrightness();
	}
	
	private function clickBrightnessUp(aButton:MenuButton):Void
	{
		FlxG.camera.alpha += 0.1;
		updateBrightness();
	}
	
	private function updateBrightness():Void
	{
		var vol:Int = Math.round(FlxG.camera.alpha * 100);
		mBrightnessText.text = Std.string(vol);
	}
	
	function goToMainMenu(aButton:MenuButton) :Void
	{
		FlxG.switchState(new MainMenu());
	}
	
	function goToCredits(aButton:MenuButton) :Void
	{
		FlxG.switchState(new Credits());
	}
	
	function toggleJoystick(aButton:MenuButton) :Void
	{
		GameState.sEnableJoystick = !GameState.sEnableJoystick;
		mEnableJoystickCheck.visible = GameState.sEnableJoystick;
	}
	
}