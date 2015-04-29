package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
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
	var mScoreText:FlxText;
	
	public function new() 
	{
		super();
	}
	
	override function create():Void
	{
		var pr:PlayerInputRight = new PlayerInputRight();
		var pl:PlayerInputLeft = new PlayerInputLeft();
		mBreadTop = new Bread(150, 200, pl, "img/BreadTop.png");
		mBreadBottom = new Bread(600, 200, pr, "img/BreadBottom.png");
		mScoreText = new FlxText(0, 0, 100, "Score: ");
		for (i in 0...10) 
		{
			var ingredient:Ingredient = new Ingredient(100, 100, "img/Tomato.png",mBreadTop, mBreadBottom, 10);
			mIngredients.add(ingredient);
		}
		add(mBreadTop);
		add(mBreadBottom);
		add(mIngredients);
		add(mScoreText);
	}
	
	private var time:Int = 0;
	
	override function update():Void
	{
		super.update();
		mBreadTop.immovable = false;
		mBreadBottom.immovable = false;
		FlxG.collide(mBreadTop, mBreadBottom);
		mBreadTop.immovable = true;
		mBreadBottom.immovable = true;
		FlxG.collide(mBreadTop, mIngredients);
		FlxG.collide(mBreadBottom, mIngredients);
		FlxG.collide(mIngredients, mIngredients);
		mScoreText.text = "Score: " + GameData.score;
	}
}