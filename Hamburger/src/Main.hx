package;

import flixel.FlxGame;
import flixel.util.FlxSave;
import configuration.CsvImporter;
import configuration.GeneralConstants;
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
		loadConfiguration();
		super();
		addEventListener(Event.ADDED_TO_STAGE, init);
		
	}
	
	private function init(aEvent:Event):Void 
	{
		var save:FlxSave = new FlxSave();
		save.bind("Hamburger");
		removeEventListener(Event.ADDED_TO_STAGE, init);
		addChild(new FlxGame(GeneralConstants.screenWidth, GeneralConstants.screenHeigth, MainMenu));
	}
	
	private function loadConfiguration():Void 
	{
		CsvImporter.load("1oifIDGgwAoLj5HSawo3qRq891xMUeMnbsROabRsKZbg",0);
	}
}
