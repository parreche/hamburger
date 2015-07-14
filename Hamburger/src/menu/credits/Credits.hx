package menu.credits;
import configuration.GeneralConstants;
import flixel.FlxG;
import flixel.FlxState;
import utils.MenuHelper;

/**
 * ...
 * @author Arreche-Piaggio
 */
class Credits extends FlxState
{

	override public function create() 
	{
		add(MenuHelper.loadStaticImage("img/credits/Creditos_base.jpg", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0));
		add(MenuHelper.createMenuButton("img/credits/Boton_Main_Menu.png", GeneralConstants.credits_mainMenu_button_width, GeneralConstants.credits_mainMenu_button_heigth, GeneralConstants.credits_mainMenu_button_x, GeneralConstants.credits_mainMenu_button_y, returnToMainMenu));
	}
	
	function returnToMainMenu(aButton:MenuButton) :Void
	{
		FlxG.switchState(new MainMenu());
	}
}