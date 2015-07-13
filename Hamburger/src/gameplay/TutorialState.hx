package gameplay;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.text.FlxTextField;
import flixel.util.FlxColor;
import openfl.text.TextField;
import openfl.text.TextFieldType;

/**
 * ...
 * @author tomas
 */
class TutorialState extends FlxState
{
	private static var text:FlxTextField;

	public function new() 
	{
		super();
	}
	
	override function create():Void
	{
		FlxG.sound.music.pause();
		
		text = new FlxTextField(200, 200, 1000, "hola", 100);
		text.font = "fonts/Barrio-Regular.ttf";
		text.color = FlxColor.WHITE;
		text.textField.type = TextFieldType.INPUT;
		text.textField.selectable = true;
		
		add(text);
	}
	
	override function update():Void
	{
		text.draw();
		super.update();
	}
	
}