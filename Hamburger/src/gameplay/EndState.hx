package gameplay;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import configuration.GeneralConstants;
import menu.MainMenu;

/**
 * 
 * This class represents the final state of the game.
 * It shows the final score and other things.
 * 
 * @author Arreche-Piaggio
 * 
 */
class EndState extends FlxState
{
	
	private var mScore:Int = 0;				// the score we achieved
	private var mTime:Int = 0;				// time left before reaching 0 (only if we win)
	private var mWin:Bool;					// if we catch all ingredients or not
	private var mFinalScore:Int = 0;		// the final score (score + timeleft*5)
	private var mTxtTitle:FlxText;			// the title text
	private var mTxtScoreMessage:FlxText;	// the score message text
	private var mTxtTimeMessage:FlxText;	// the time message text
	private var mTxtFinalMessage:FlxText;	// the final score message text
	private var mTxtScore:FlxText;			// text of the score
	private var mTxtTime:FlxText;			// text of the time
	private var mTxtFinalScore:FlxText;		// text of the final score
	private var mTxtHiScore:FlxText;		// text to show the hi-score
	private var mBtnMainMenu:FlxButton;		// button to go to main menu
	private var mBtnRestart:FlxButton;		// button to restart
	
	/**
	 * Called from GameState, win, score and time variables
	 * @param	Win		true if the player collects all ingredients, false otherwise
	 * @param	Score	the score from the ingredients collected
	 * @param	Time	the time left before reaching 0 when we win, 0 if we lost
	 */
	
	public function new(aWin:Bool, aScore:Int, aTime:Int) 
	{
		super();
		mWin = aWin;
		mScore = aScore;
		mTime = aTime;
	}
	
	override function create():Void
	{
		mTxtTitle = new FlxText(GeneralConstants.endStateMessage_x - 90, 20, 0, mWin ? "Completed!" : "Game Over!", 70);
		add(mTxtTitle);
		
		mTxtScoreMessage = new FlxText(GeneralConstants.endStateMessage_x - 260, (FlxG.height / 3) - 50, 0, "Score:", 40);
		add(mTxtScoreMessage);
		
		mTxtScore = new FlxText(GeneralConstants.endStateMessage_x - 100, (FlxG.height / 3) - 50, 0, Std.string(mScore), 40);
		add(mTxtScore);
		
		mTxtTimeMessage = new FlxText(GeneralConstants.endStateMessage_x + 200, (FlxG.height / 3) - 50, 0, "Time ", 40);
		add(mTxtTimeMessage);
		
		mTxtTime = new FlxText(GeneralConstants.endStateMessage_x + 350, (FlxG.height / 3) - 50, 0, timeFormat(), 40);
		add(mTxtTime);
		
		mTxtFinalMessage = new FlxText(GeneralConstants.endStateMessage_x - 100, (FlxG.height / 2)-50, 0, "Final Score:", 45);
		add(mTxtFinalMessage);
		
		mTxtFinalScore = new FlxText(GeneralConstants.endStateMessage_x + 240, (FlxG.height / 2)-50, 0, Std.string(mScore + mTime*30), 45);
		add(mTxtFinalScore);
		
		var score:Int = mScore + mTime*30;
		var hiScore:Int = hiScore();
		var text = "Hi-Score: " + hiScore;
		if (score == hiScore) {
			text = "New " + text + " !";
			mTxtHiScore = new FlxText(GeneralConstants.endStateMessage_x - 130, (FlxG.height / 3)*2 -50, 0, text, 45);
		} else {
			mTxtHiScore = new FlxText(GeneralConstants.endStateMessage_x - 80, (FlxG.height / 3)*2 -50, 0, text, 45);
		}
		add(mTxtHiScore);
		
		mBtnMainMenu = new FlxButton(GeneralConstants.endStateMessage_x - 200, FlxG.height - 100, "", goMainMenu);
		mBtnMainMenu.scale.x = mBtnMainMenu.scale.y = 3;
		mBtnMainMenu.updateHitbox();
		mBtnMainMenu.label = new FlxText(0, 20, mBtnMainMenu.width, "Main Menu");
		mBtnMainMenu.label.offset.y = -10;
		mBtnMainMenu.label.setFormat(null,20,FlxColor.CHARCOAL,"center");
		add(mBtnMainMenu);
		
		mBtnRestart = new FlxButton(GeneralConstants.endStateMessage_x + 200, FlxG.height - 100, "", restart);
		mBtnRestart.scale.x = mBtnRestart.scale.y = 3;
		mBtnRestart.updateHitbox();
		mBtnRestart.label = new FlxText(0, 20, mBtnMainMenu.width, "Restart");
		mBtnRestart.label.offset.y = -10;
		mBtnRestart.label.setFormat(null,20,FlxColor.CHARCOAL,"center");
		add(mBtnRestart);
		
		FlxG.sound.playMusic("sound/endTheme.wav");
	}
	
	private function restart():Void 
	{
		FlxG.camera.fade(FlxColor.BLACK, .66, false, function() {
			FlxG.switchState(new GameState());
			FlxG.sound.music.stop();
		});
	}
	
	private function goMainMenu():Void 
	{
		FlxG.camera.fade(FlxColor.BLACK, .66, false, function() {
			FlxG.switchState(new MainMenu());
			FlxG.sound.music.stop();
		});
	}
	
	
	/**
	 * This function modifies the hgh score and then returns it
	 * @param	Score	the final score the player just obtained
	 * @return	hi score
	 */
	private function hiScore():Int
	{
		var hiScore:Int = mScore + mTime*30;
		var save:FlxSave = new FlxSave();
		save.bind("Hamburger");
		if (save.data.hiscore == null)
		{
			save.data.hiscore = 0;
		}	
		if (save.data.hiscore > hiScore)
		{
			hiScore = save.data.hiscore;
		}
		else
		{
			save.data.hiscore = hiScore;
		}
		
		save.close();
		return hiScore;
	}
	
	private function timeFormat():String
	{
		var format:String;
		var minutes = Std.int(mTime / 60);
		var seconds = Std.int(mTime - (minutes * 60));
		
		format = minutes + ":";
			
		if (seconds < 10)
		{
			format += "0";
		}
		format += seconds;
		
		return format;
	}
	
}