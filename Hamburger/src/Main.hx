package;

import flixel.FlxGame;
import flixel.util.FlxSave;
import io.GeneralConstants;
import menu.MainMenu;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;

/**
 * Main class of the game
 * 
 * @author Arreche-Piaggio
 * 
 */
class Main extends Sprite 
{

	public function new() 
	{
		super();
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event):Void 
	{
		var save:FlxSave = new FlxSave();
		save.bind("Hamburger");
		
		removeEventListener(Event.ADDED_TO_STAGE, init);
		addChild(new FlxGame(GeneralConstants.screenWidth, GeneralConstants.screenHeigth, MainMenu));
		
	}
}
