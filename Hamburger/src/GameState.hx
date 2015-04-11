package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.util.FlxColor;

/**
 * ...
 * @author tomas
 */
class GameState extends FlxState
{
	var mBreadTop:Bread;
	var mBreadBottom:Bread;
	private var mIngredients = new FlxGroup();
	
	public function new() 
	{
		super();
		
		for (i in 0...10) 
		{
			var ingredient:Ingredient = new Ingredient(100, 100, "img/Tomato.png");
			mIngredients.add(ingredient);
		}
	}
	
	override function create():Void
	{
		
		var pr:PlayerInputRight = new PlayerInputRight();
		var pl:PlayerInputLeft = new PlayerInputLeft();
		mBreadTop = new Bread(150, 200, pl, "img/BreadTop.png");
		mBreadBottom = new Bread(600, 200, pr, "img/BreadBottom.png");
		add(mBreadTop);
		add(mBreadBottom);
		add(mIngredients);
		
	}
	
	private var time:Int = 0;
	
	override function update():Void
	{
		super.update();
		FlxG.collide(mBreadTop, mBreadBottom);
		FlxG.collide(mBreadTop, mIngredients);
		FlxG.collide(mBreadBottom, mIngredients);
		FlxG.collide(mIngredients, mIngredients);

	}
}