package menu;
import openfl.Lib;
import openfl.media.Video;
import openfl.net.NetConnection;
import openfl.net.NetStream;
import openfl.system.System;
import utils.AnimationEnum;
import utils.AnimationFactory;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.util.FlxPoint;
import flixel.util.FlxSort;
import gameplay.GameState;
import configuration.GeneralConstants;
import menu.options.OptionsMenu;
import openfl.Assets;
import utils.MenuHelper;

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

	var mAnimation:FlxSprite;
	static var sPlayAnimiation:Bool = true;
	
	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		add(MenuHelper.loadStaticImage("img/mainMenu/background_menu.png", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0));
		FlxG.sound.playMusic("sound/menuTheme.wav");
		if (sPlayAnimiation)
		{
			//mAnimation = AnimationFactory.loadAnimations(mAnimation, AnimationEnum.MAIN_MENU);
			//showAnimation();
			add(MenuHelper.createMenuButton("img/mainMenu/animation/background_title.png", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0, showMenu, false));
		} else {
			initMainMenu();
		}
	}
	
	private function initMainMenu() : Void
	{
		add(MenuHelper.loadStaticImage("img/mainMenu/bottomBread.png", GeneralConstants.menu_bottomImage_width, GeneralConstants.menu_bottomImage_heigth, GeneralConstants.menu_bottomImage_x, GeneralConstants.menu_bottomImage_y));
		add(MenuHelper.createMenuButton("img/mainMenu/tutorial_button.png", GeneralConstants.menu_tutorialButton_width, GeneralConstants.menu_tutorialButton_heigth, GeneralConstants.menu_tutorialButton_x, GeneralConstants.menu_tutorialButton_y, startGame, true));
		add(MenuHelper.createMenuButton("img/mainMenu/start_button.png", GeneralConstants.menu_startButton_width, GeneralConstants.menu_startButton_heigth,GeneralConstants.menu_startButton_x, GeneralConstants.menu_startButton_y, startGame, true));
		add(MenuHelper.createMenuButton("img/mainMenu/options_button.png", GeneralConstants.menu_optionsButton_width, GeneralConstants.menu_optionsButton_heigth, GeneralConstants.menu_optionsButton_x, GeneralConstants.menu_optionsButton_y, goToOptions,true));
		add(MenuHelper.createMenuButton("img/mainMenu/ranking_button.png", GeneralConstants.menu_creditsButton_width, GeneralConstants.menu_creditsButton_heigth, GeneralConstants.menu_creditsButton_x, GeneralConstants.menu_creditsButton_y, startGame,true));
		add(MenuHelper.createMenuButton("img/mainMenu/exit_button.png", GeneralConstants.menu_exitButton_width, GeneralConstants.menu_exitButton_heigth,GeneralConstants.menu_exitButton_x, GeneralConstants.menu_exitButton_y, quitGame,true));
		add(MenuHelper.loadStaticImage("img/mainMenu/topBread.png", GeneralConstants.menu_topImage_width, GeneralConstants.menu_topImage_heigth, GeneralConstants.menu_topImage_x, GeneralConstants.menu_topImage_y));
	}
	
	function showMenu(aButton:MenuButton) :Void
	{
		aButton.visible = false;
		//mAnimation.animation.play(AnimationFactory.ANIMATION_MAIN_MENU);
		initMainMenu();
		sPlayAnimiation = false;
	}
	
	function startGame(aButton:MenuButton) :Void
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.6, false, function() {
			FlxG.switchState(new GameState());
			FlxG.sound.music.stop();
		});
	}
	
	function goToOptions(aButton:MenuButton) :Void
	{
		FlxG.switchState(new OptionsMenu());
	}
	
	function quitGame(aButton:MenuButton)
	{
		System.exit(0);
	}
	
	private function showAnimation()
	{
		var screen = new Video();
		var connection = new NetConnection();
		connection.connect(null);
		var stream = new NetStream(connection);
		screen = new Video(160,120);
		screen.attachNetStream(stream);
		stream.play("video1.mp4");
		Lib.current.addChild(screen);
	}
}