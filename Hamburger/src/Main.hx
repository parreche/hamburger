package;

import flixel.FlxGame;
import io.MyConstants;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;

/**
 * ...
 * @author tomas
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
		removeEventListener(Event.ADDED_TO_STAGE, init);
		addChild(new FlxGame(MyConstants.screenWidth, MyConstants.screenHeigth, GameState));
	}
}
