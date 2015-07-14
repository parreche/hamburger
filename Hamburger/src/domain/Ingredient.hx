package domain;
import flixel.group.FlxGroup;
import utils.AnimationFactory;
import domain.Bread;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxPoint;
import gameplay.GameScore;
import gameplay.HUD;
import configuration.GeneralConstants;
import openfl.Assets;
import openfl.geom.Point;
import utils.AnimationEnum;

/**
 * This class represents each of the ingredients of the game.
 * 
 * Each ingredients initializes with certain values that are different in each ingredient type.
 * 
 * This class contains the logic to know when a ingredient has been eaten by the breads. 
 * It is calculated using vectors to the center of the "face" of each bread.
 * 
 * @author Arreche-Piaggio
 * 
 */
class Ingredient extends FlxSprite
{
	var mBreadTop:Bread;
	var mBreadBottom:Bread;
	var mScore:Int;
	var minDist:Int;
	var mStaticImage:String;
	var mEndImage:String;
	var mEatenAnimation : FlxSprite;
	var mHasBeenEaten:Bool;
	
	public function new(aX:Float, aY:Float, aImage:String, aEndImage:String, aBreadTop:domain.Bread, aBreadBottom:domain.Bread, aScore:Int,aVelocity:Int,aMaxVelocity:Int, aIngredientType:AnimationEnum = null, aStage:FlxGroup = null) 
	{
		super(aX, aY);
		minDist= GeneralConstants.collisionBox_minDistance;
		mStaticImage = aImage;
		mEndImage = aEndImage;
		mHasBeenEaten = false;
		if (aIngredientType != null)
		{
			mBreadTop = aBreadTop;
			mBreadBottom = aBreadBottom;
			mScore = aScore;
			AnimationFactory.loadAnimations(this, aIngredientType);
			width = GeneralConstants.collisionBox_width;
			height = GeneralConstants.collisionBox_heigth;
			aVelocity = Math.random() > 0.5? -aVelocity:aVelocity; 
			velocity.set(aVelocity, aVelocity);
			//acceleration.x = 0;
			//acceleration.y = 0;
			maxVelocity.set(aMaxVelocity, aMaxVelocity);
			elasticity = 0.5;
			//x = 100 + 300 * Math.random();
			//y = Math.random() * 200;
			offset.x = GeneralConstants.collisionBox_offset_x;
			offset.y = GeneralConstants.collisionBox_offset_y;
			
			mEatenAnimation = new FlxSprite(aX,aY);
			AnimationFactory.loadAnimations(mEatenAnimation, aIngredientType, true);
			aStage.add(mEatenAnimation);
		}
	}
	
	override function update():Void
	{	
		
		if (mEatenAnimation != null)
		{
			mEatenAnimation.update();
			if (mEatenAnimation.animation.finished)
			{
				mEatenAnimation.visible = false;
				if (mHasBeenEaten)
				{
					mEatenAnimation.kill();
					kill();
				}
			}
		}
		
		if (x+width > GeneralConstants.game_screenWidth && velocity.x>0)
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
		if (y+height > GeneralConstants.game_screenHeigth && velocity.y>0)
		{
			velocity.y *= -1;
		}
		
		if (velocity.x > 0)
		{
			if (velocity.y > 0)
			{
				animation.play(AnimationFactory.ANIMATION_45_RIGHT_DOWN);
			} else if (velocity.y < 0)
			{
				animation.play(AnimationFactory.ANIMATION_45_RIGHT_UP);
			} else
			{
				animation.play(AnimationFactory.ANIMATION_RIGHT);
			}
		}
		
		if (velocity.x < 0)
		{
			if (velocity.y > 0)
			{
				animation.play(AnimationFactory.ANIMATION_45_LEFT_DOWN);
			}else if (velocity.y < 0)
			{
				animation.play(AnimationFactory.ANIMATION_45_LEFT_UP);
			} else
			{
				animation.play(AnimationFactory.ANIMATION_LEFT);
			}
		}
		
		if (velocity.x == 0)
		{
			if (velocity.y > 0)
			{
				animation.play(AnimationFactory.ANIMATION_DOWN);
			}else if (velocity.y < 0)
			{
				animation.play(AnimationFactory.ANIMATION_UP);
			}
		}
		
		if (mBreadBottom != null && mBreadTop != null && !mHasBeenEaten)
		{
			eat();
		}
		
		super.update();
	}
	
	private function eat():Void
	{
		var vectorTop:Point = new Point(mBreadTop.x+mBreadTop.width/2 - (x+width/2), mBreadTop.y+mBreadTop.height/2 - (y+height/2));
		if (vectorTop.length > minDist)
		{
			return;
		}
		
		var vectorBottom:Point = new Point(mBreadBottom.x + mBreadBottom.width/2 - (x+width/2) , mBreadBottom.y+mBreadBottom.height/2 - (y+height/2));
		if (vectorBottom.length > minDist)
		{
			return;
		}
		this.visible = false;
		HUD.addEatenIngredient(this);
		mHasBeenEaten = true;
		mEatenAnimation.x = x - 250;
		mEatenAnimation.y = y - 500;
		mEatenAnimation.visible = true;
		mEatenAnimation.animation.play(AnimationFactory.EATEN_ANIMATION);
		FlxG.sound.play("sound/Comer.wav");
	}
	
	public function getScore() : Int 
	{
		return mScore;
	}
	
	public function getStaticImage() : String 
	{
		return mStaticImage;
	}
	
	public function getEndImage() : String 
	{
		return mEndImage;
	}
}