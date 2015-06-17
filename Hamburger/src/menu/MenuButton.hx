package menu;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxPoint;
import configuration.GeneralConstants;
import openfl.Assets;

/**
 * This class represents a custom button for manus
 * 
 * Thanks to Joaquin Bello for the code
 * 
 * @author Joaquin Bello
 * 
 */
class MenuButton extends FlxSprite
{

	public var onPressed:MenuButton->Void;
	
	private var mDisplay:FlxSprite;
	
	//helper position
	private var hMousePosition:FlxPoint;
	
	public function new(aImagePath:String,aAnimationWidth:Int,aAnimationHeight:Int,?aOnPressed:MenuButton->Void) 
	{
		super();
		loadGraphic(Assets.getBitmapData(aImagePath), true, aAnimationWidth, aAnimationHeight);
		setGraphicSize(aAnimationWidth, aAnimationHeight);
		updateHitbox();
		
		hMousePosition = new FlxPoint();
		onPressed = aOnPressed;
	}
	
	public function setUp(aFrames:Array<Int>, aLoop:Bool=true,aFrameRate:Int=30):Void
	{
		animation.add("up", aFrames, aFrameRate, aLoop);
	}
	
	public function setDown(aFrames:Array<Int>, aLoop:Bool=true,aFrameRate:Int=30):Void
	{
		animation.add("down", aFrames, aFrameRate, aLoop);
	}
	
	public function setOver(aFrames:Array<Int>, aLoop:Bool=true,aFrameRate:Int=30):Void
	{
		animation.add("over", aFrames, aFrameRate, aLoop);
	}
	
	override public function update():Void 
	{
		hMousePosition.set(FlxG.mouse.x, FlxG.mouse.y);
		if (isOver(hMousePosition))//over the button
		{
			if (FlxG.mouse.pressed)
			{
				animation.play("down");
			}else {
				animation.play("over");
			}
			if (isButtonClicked())
			{
				if (onPressed != null)
				{
					onPressed(this);
				}
			}
		}else {
			animation.play("up");
		}
		
		super.update();
	}
	
	private inline function isOver(aMousePosition:FlxPoint):Bool
	{
		return overlapsPoint(hMousePosition);
	}
	
	private inline function isButtonClicked():Bool
	{
		return FlxG.mouse.justReleased;
	}
	
}