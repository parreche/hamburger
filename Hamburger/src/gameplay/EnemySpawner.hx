package src.gameplay;
import domain.Ingredient;
import configuration.GeneralConstants;
import domain.Ingredient.IngredientType;

/**
 * ...
 * @author tomas
 */
class EnemySpawner
{

	private static var mBurguerCount:Int;
	private static var mBaconCount:Int;
	private static var mCucumberCount:Int;
	private static var mLettuceCount:Int;
	private static var mTomatoCount:Int;

	public static function create():Void
	{
		mBurguerCount = GeneralConstants.burgerCount;
		mBaconCount = GeneralConstants.baconCount;
		mCucumberCount = GeneralConstants.cucumberCount;
		mLettuceCount = GeneralConstants.lettuceCount;
		mTomatoCount = GeneralConstants.tomatoCount;
	}
	
	public static function revive(aType:IngredientType):Bool
	{
		switch(aType) {
			case IngredientType.BURGUER:
				return mBurguerCount > 0;
			case IngredientType.BACON:
				return mBaconCount > 0;
			case IngredientType.CUCUMBER:
				return mCucumberCount > 0;
			case IngredientType.LETTUCE:
				return mLettuceCount > 0;
			case IngredientType.TOMATO:
				return mTomatoCount > 0;
			default:
				return false;
		}
	}
	
	public static function kill(aType:IngredientType):Void
	{
		switch(aType) {
			case IngredientType.BURGUER:
				mBurguerCount--;
			case IngredientType.BACON:
				mBaconCount--;
			case IngredientType.CUCUMBER:
				mCucumberCount--;
			case IngredientType.LETTUCE:
				mLettuceCount--;
			case IngredientType.TOMATO:
				mTomatoCount--;
			default:
				return;
		}
	}
	
}