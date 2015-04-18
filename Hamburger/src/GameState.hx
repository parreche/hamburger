package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.util.FlxColor;
import openfl.geom.Point;

/**
 * ...
 * @author tomas
 */
class GameState extends FlxState
{
	var mBreadTop:Bread;
	var mBreadBottom:Bread;
	private var mIngredients = new FlxGroup();
	private var mObstacles = new FlxGroup();
	var gameScore:Int = 0;
	
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
		for (i in 0...10) 
		{
			var ingredient:Ingredient = new Ingredient(100, 100, "img/Tomato.png",mBreadTop, mBreadBottom, 10);
			mIngredients.add(ingredient);
		}
		var plateCoords:Point = randomPointInScreen();
		var glassCoords:Point = randomPointInScreen();
		var plate:Obstacle = new Obstacle(plateCoords.x, plateCoords.y, "img/plate.png");
		var glass:Obstacle = new Obstacle(glassCoords.x, glassCoords.y, "img/glass.png");
		mObstacles.add(plate);
		mObstacles.add(glass);
		add(mObstacles);
		add(mBreadTop);
		add(mBreadBottom);
		add(mIngredients);
		
	}
	
	function randomPointInScreen():Point 
	{
		var xCoord:Float = Math.random() * 1000;
		var yCoord:Float = (Math.random() * 1000)/2;
		return new Point(xCoord, yCoord);
	}
	
	private var time:Int = 0;
	
	override function update():Void
	{
		super.update();
		mBreadTop.immovable = false;
		mBreadBottom.immovable = false;
		FlxG.collide(mBreadTop, mBreadBottom);
		FlxG.collide(mBreadTop, mObstacles);
		FlxG.collide(mBreadBottom, mObstacles);
		mBreadTop.immovable = true;
		mBreadBottom.immovable = true;
		FlxG.collide(mBreadTop, mIngredients);
		FlxG.collide(mBreadBottom, mIngredients);
		FlxG.collide(mIngredients, mIngredients);
		FlxG.collide(mIngredients, mObstacles);
		
	}
}