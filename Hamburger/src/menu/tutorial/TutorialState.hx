package menu.tutorial;
import configuration.GeneralConstants;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import gameplay.GameState;
import utils.MenuHelper;

/**
 * ...
 * @author Arreche-Piaggio
 */
class TutorialState extends FlxState
{

	private var mTutorialSteps:Array<String>;
	private var mCurrentBackground:FlxSprite;
	private var mSkipButton:FlxSprite;
	private var mNextButton:FlxSprite;
	private var mCurrentIndex:Int = 0;
	
	override public function create() 
	{
		mTutorialSteps = ["img/tutorial/Tutorial_1.jpg","img/tutorial/Tutorial_2.jpg", "img/tutorial/Tutorial_3.jpg","img/tutorial/Tutorial_4.jpg"];
		mCurrentBackground = MenuHelper.loadStaticImage(mTutorialSteps[mCurrentIndex], GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0);
		mNextButton = MenuHelper.createMenuButton("img/tutorial/Boton_Next.png", GeneralConstants.tutorial_menu_next_button_width, GeneralConstants.tutorial_menu_next_button_heigth, GeneralConstants.tutorial_menu_next_button_x, GeneralConstants.tutorial_menu_next_button_y, nextTutorialStep);
		mSkipButton = MenuHelper.createMenuButton("img/tutorial/Boton_Skip.png", GeneralConstants.tutorial_menu_skip_button_width, GeneralConstants.tutorial_menu_skip_button_heigth,GeneralConstants.tutorial_menu_skip_button_x,GeneralConstants.tutorial_menu_skip_button_y,skipTutorial);
		mCurrentIndex++;
		
		add(mCurrentBackground);
		add(mNextButton);
		add(mSkipButton); 
	}
	
	function nextTutorialStep(aButton:MenuButton)
	{
		if (mCurrentIndex < 4)
		{
			mCurrentBackground.loadGraphic(mTutorialSteps[mCurrentIndex]);
			mCurrentIndex++;
			mCurrentBackground.update();
		} else {
			skipTutorial(aButton);
		}
	}
	
	function skipTutorial(aButton:MenuButton)
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.6, false, function() {
			FlxG.switchState(new GameState());
			FlxG.sound.music.stop();
		});
	}
	
	
}