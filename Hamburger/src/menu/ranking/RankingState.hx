package src.menu.ranking;
import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import configuration.GeneralConstants;
import menu.MainMenu;
import menu.MenuButton;
import src.utils.DBHelper;
import utils.MenuHelper;

/**
 * ...
 * @author tomas
 */
class RankingState extends FlxState
{
	private var mExitButton:FlxSprite;

	override public function create() 
	{
		add(MenuHelper.loadStaticImage("img/ranking/RANKING_FINAL.jpg",GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0));
		mExitButton = MenuHelper.createMenuButton("img/ranking/Boton_Cerrar.png", GeneralConstants.ranking_menu_exit_button_width, GeneralConstants.ranking_menu_exit_button_heigth, GeneralConstants.ranking_menu_exit_button_x, GeneralConstants.ranking_menu_exit_button_y, exit);
		
		add(mExitButton);
		
		DBHelper.showHighScores(this, GeneralConstants.ranking_menu_name_x, GeneralConstants.ranking_menu_score_x, GeneralConstants.ranking_menu_y, GeneralConstants.ranking_menu_space, GeneralConstants.ranking_menu_size);
	}
	
	function exit(aButton:MenuButton)
	{
		FlxG.switchState(new MainMenu());

	}
	
}