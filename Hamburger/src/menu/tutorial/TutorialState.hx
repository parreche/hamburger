package menu.tutorial;
import flixel.FlxState;

/**
 * ...
 * @author Arreche-Piaggio
 */
class TutorialState extends FlxState
{

	private var mTutorialSteps : List<String>
	
	
	public function create() 
	{
		mTutorialSteps = new List<String>();
		mTutorialSteps.add("img/tutorial/Tutorial_1.jpg");
		mTutorialSteps.add("img/tutorial/Tutorial_2.jpg");
		mTutorialSteps.add("img/tutorial/Tutorial_3.jpg");
		mTutorialSteps.add("img/tutorial/Tutorial_4.jpg");
	}
	
	
	
}