package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import openfl.Assets;
import io.CsvImporter;
import io.MyConstants;
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
	var mScoreText:FlxText;
	private var mObstacles = new FlxGroup();
	var gameScore:Int = 0;
	
	public function new() 
	{
		super();
	}
	
	
	
	override function create():Void
	{
		var background:FlxSprite = new FlxSprite(-350, 0);
		background.loadGraphic(Assets.getBitmapData("img/top.jpg"));
		add(background);
		var pr:PlayerInputRight = new PlayerInputRight();
		var pl:PlayerInputLeft = new PlayerInputLeft();
		//var pr:PlayerInput = new JoystickInput(false);
		//var pl:PlayerInput = new JoystickInput(true);
		mBreadTop = new Bread(MyConstants.topBreadStartPosition_x, MyConstants.topBreadStartPosition_y, pl, "img/BreadTop.png");
		mBreadBottom = new Bread(MyConstants.bottomBreadStartPosition_x, MyConstants.bottomBreadStartPosition_y, pr, "img/BreadBottom.png");
		mScoreText = new FlxText(0, 0, 350, "Score: ",35);
		loadIngredients();
		loadObstacles();
		add(mObstacles);
		add(mBreadTop);
		add(mBreadBottom);
		add(mIngredients);
		add(mScoreText);
	}
	
	function loadIngredients():Void
	{
		// Loading tomatoes
		initIngredient(MyConstants.tomatoCount, "img/Tomato.png", MyConstants.tomatoValue, MyConstants.tomatoVelocity, MyConstants.tomatoMaxVelocity);
		initIngredient(MyConstants.baconCount, "img/Bacon.png", MyConstants.baconValue, MyConstants.baconVelocity, MyConstants.baconMaxVelocity);
		initIngredient(MyConstants.lettuceCount, "img/Lettuce.png", MyConstants.lettuceValue, MyConstants.lettuceVelocity, MyConstants.lettuceMaxVelocity);
		initIngredient(MyConstants.burgerCount, "img/Burger.png", MyConstants.burgerValue, MyConstants.burgerVelocity, MyConstants.burgerMaxVelocity);
	}
	
	function loadObstacles():Void
	{
		
		initObstacle("img/cuchillo.png");
		initObstacle("img/mostaza_ketchup.png");
		initObstacle("img/pepinos_frasco.png");
		initObstacle("img/platos.png");
	}
	
	function initIngredient(aCount:Int,aPathToImage:String, aValue:Int, aVelocity:Int,aMaxVelocity:Int):Void
	{
		for (i in 0...aCount)
		{
			var ingredient:Ingredient = new Ingredient(100, 100, aPathToImage,mBreadTop, mBreadBottom, aValue,aVelocity,aMaxVelocity);
			mIngredients.add(ingredient);	
		}
	}
	
	function initObstacle(aImage:String):Void
	{
		var obstacleCoords:Point = null;
		obstacleCoords = randomPointInScreen();
		var obstacle:Obstacle = new Obstacle(obstacleCoords.x, obstacleCoords.y, aImage);
		mObstacles.add(obstacle);
	}
	
	function loadConfiguration():Void 
	{
		CsvImporter.load("1oifIDGgwAoLj5HSawo3qRq891xMUeMnbsROabRsKZbg",0);
		
	}
	
	function randomPointInScreen():Point 
	{
		var xCoord:Float = Math.random() * MyConstants.screenWidth;
		var yCoord:Float = Math.random() * MyConstants.screenHeigth;
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
		mScoreText.text = "Score: " + GameData.score;
		FlxG.collide(mIngredients, mObstacles);
	}
}
