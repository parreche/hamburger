package utils;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.text.FlxTextField;
import flixel.util.FlxColor;
import menu.MenuButton;
import openfl.Assets;
import openfl.text.TextFieldType;

/**
 * ...
 * @author Arreche-Piaggio
 */
class MenuHelper
{

	public static function createMenuButton(aImage:String,aWidth:Int,aHeigth:Int, aXCoord:Int, aYCoord:Int,?aOnPressed:MenuButton->Void, aHasAnimation:Bool = true): FlxSprite 
	{
		var btn:MenuButton = new MenuButton(aImage,aWidth,aHeigth,aOnPressed);
		btn.setOver([(aHasAnimation ? 1 : 0)]);
		btn.setUp([0]);
		btn.setDown([(aHasAnimation ? 1 : 0)]);
		btn.setPosition(aXCoord,aYCoord);
		btn.updateHitbox();
		return btn;
	}
	
	public static function loadStaticImage(aImage:String,aWidth:Int,aHeigth:Int, aXCoord:Int, aYCoord:Int): FlxSprite 
	{
		var staticImage:FlxSprite = new FlxSprite(aXCoord, aYCoord);
		staticImage.loadGraphic(Assets.getBitmapData(aImage));
		if (aWidth != 0 && aHeigth != 0)
		{
			staticImage.setGraphicSize(aWidth,aHeigth);
			staticImage.updateHitbox();
		}
		return staticImage;
	}
	
	public static function generateMenuText(aXCoord:Int, aYCoord:Int, aText:String, aFontSize:Int) : FlxText
	{
		var text = new FlxText(aXCoord, aYCoord, 350, aText, aFontSize);
		text.font = "fonts/Barrio-Regular.ttf";
		text.color = FlxColor.BLACK;
		return text;
	}
	
	public static function generateInputText(aXCoord:Int, aYCoord:Int, aText:String, aFontSize:Int) : FlxText
	{
		var text = new FlxTextField(aXCoord, aYCoord, 350, aText, aFontSize);
		text.font = "fonts/Barrio-Regular.ttf";
		text.color = FlxColor.BLACK;
		text.textField.type = TextFieldType.INPUT;
		text.textField.selectable = true;
		text.textField.maxChars = 10;
		
		return text;
	}
	
}