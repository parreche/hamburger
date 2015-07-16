package src.domain;
import domain.Bread;
import domain.Ingredient;
import domain.Ingredient.IngredientType;
import flixel.FlxG;
import flixel.group.FlxGroup;
import utils.AnimationEnum;

/**
 * ...
 * @author tomas
 */
class Cheddar extends Ingredient
{
	var mTimer:Float;
	var mWaitTime:Float;

	public function new(aX:Float, aY:Float, aType:IngredientType, aImage:String, aEndImage:String, aBreadTop:Bread, aBreadBottom:Bread, aScore:Int, aVelocity:Int,aMaxVelocity:Int, aIngredientType:AnimationEnum = null, aStage:FlxGroup = null, aTimer:Float, aWaitTime:Float) 
	{
		super(aX, aY, aType, aImage, aEndImage, aBreadTop, aBreadBottom, aScore, aVelocity, aMaxVelocity, aIngredientType, aStage);
		mTimer = aTimer;
		mWaitTime = aWaitTime;
	}
	
	override function update():Void
	{
		if (mWaitTime > 0) 
		{
			visible = false;
			mWaitTime -= FlxG.elapsed;
		} 
		else 
		{
			visible = true;
			if (mTimer <= 0)
			{
				kill();
			} 
			else 
			{
				mTimer -=  FlxG.elapsed;
			}
			super.update();
		}
		
	}
}