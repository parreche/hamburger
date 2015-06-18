package domain;

import domain.AnimationFactory;
import flixel.FlxSprite;
import flixel.util.FlxPoint;
import flixel.util.loaders.SparrowData;
import gamepad.PlayerInput;
import configuration.GeneralConstants;
import openfl.Assets;

/**
 * This class represents a bread in the game. 
 * 
 * It contains initialization parameters and logic to avoid the bread going off the screen
 *  
 * @author Arreche-Piaggio
 * 
 */
class Bread extends FlxSprite
{
	public static inline var TOP_BREAD = true;
	public static inline var BOTTOM_BREAD = false;
	
	var mPlayerInput:PlayerInput;

	public function new(aX:Float=0, aY:Float=0, aPlayerInput:PlayerInput = null, aIsTopBread:Bool = null, aImage:String = null) 
	{
		super(aX, aY);
		if (aImage == null)
		{
			AnimationFactory.loadGraphics(this, aIsTopBread ? AnimationEnum.TOP_BREAD : AnimationEnum.BOTTOM_BREAD); 
			width = GeneralConstants.collisionBox_width;
			height = GeneralConstants.collisionBox_heigth;
			maxVelocity.set(GeneralConstants.breadVelocity, GeneralConstants.breadVelocity);
			drag.set(GeneralConstants.breadDrag, GeneralConstants.breadDrag);
			mPlayerInput = aPlayerInput;
			offset.x = GeneralConstants.collisionBox_offset_x;
			offset.y = GeneralConstants.collisionBox_offset_y;
		} else {
			loadGraphic(Assets.getBitmapData(aImage), false);
		}
		immovable = true;
		
	}
	
	override function update():Void
	{
		super.update();
	
		if (this.mPlayerInput == null) 
		{
			return;
		}
		if (x+width > GeneralConstants.screenWidth && velocity.x>0)
		{
			velocity.x *= -1;
		}
		if (x < 0 && velocity.x<0)
		{
			velocity.x *= -1;
		}
		if (y < 0 && velocity.y<0)
		{
			velocity.y *= -1;
		}
		if (y+height > GeneralConstants.screenHeigth && velocity.y>0)
		{
			velocity.y *= -1;
		}
		
		var isPressingKey:Bool = mPlayerInput.left() || mPlayerInput.down() || mPlayerInput.right() || mPlayerInput.up();
		
		if(isPressingKey)
		{
			moveBread();
		} else {
			stopBread();
		}
	}
	
	function moveBread():Void 
	{
		if (mPlayerInput.left())
		{
			velocity.x = -GeneralConstants.breadAcceleration;
			animation.play(AnimationFactory.ANIMATION_LEFT);
		}
		if (mPlayerInput.right())
		{
			velocity.x = GeneralConstants.breadAcceleration;
			animation.play(AnimationFactory.ANIMATION_RIGHT);
		}
		if (mPlayerInput.up())
		{
			velocity.y = -GeneralConstants.breadAcceleration;
			animation.play(AnimationFactory.ANIMATION_UP);
		}
		if (mPlayerInput.down())
		{
			velocity.y = GeneralConstants.breadAcceleration;
			animation.play(AnimationFactory.ANIMATION_DOWN);
		}
		
		if (mPlayerInput.left() && mPlayerInput.up()) 
		{
			animation.play(AnimationFactory.ANIMATION_45_LEFT_UP);
		}
		if (mPlayerInput.right() && mPlayerInput.up()) 
		{
			animation.play(AnimationFactory.ANIMATION_45_RIGHT_UP);
		}
		if (mPlayerInput.left() && mPlayerInput.down()) 
		{
			animation.play(AnimationFactory.ANIMATION_45_LEFT_DOWN);
		}
		if (mPlayerInput.right() && mPlayerInput.down()) 
		{
			animation.play(AnimationFactory.ANIMATION_45_RIGHT_DOWN);
		}
	}
	
	function stopBread():Void 
	{
		var lastX = x - last.x;
		var lastY = y - last.y;
		if (lastX > 0)
		{
			if (lastY > 0)
			{
				animation.play(AnimationFactory.ANIMATION_STOP_45_RIGHT_DOWN);
			} else if (lastY < 0)
			{
				animation.play(AnimationFactory.ANIMATION_STOP_45_RIGHT_UP);
			} else
			{
				animation.play(AnimationFactory.ANIMATION_STOP_RIGHT);
			}
		}
		
		if (lastX < 0)
		{
			if (lastY > 0)
			{
				animation.play(AnimationFactory.ANIMATION_STOP_45_LEFT_DOWN);
			}else if (lastY < 0)
			{
				animation.play(AnimationFactory.ANIMATION_STOP_45_LEFT_UP);
			} else
			{
				animation.play(AnimationFactory.ANIMATION_STOP_LEFT);
			}
		}
		
		if (lastX == 0)
		{
			if (lastY > 0)
			{
				animation.play(AnimationFactory.ANIMATION_STOP_DOWN);
			}else if (lastY < 0)
			{
				animation.play(AnimationFactory.ANIMATION_STOP_UP);
			}
		}
	}
}