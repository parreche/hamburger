package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;
<<<<<<< HEAD
import openfl.Assets;
=======
import io.CsvImporter;
import io.MyConstants;
>>>>>>> a82298f9a1ea4a779c0cd9348dde9c1bfa9a0162
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
<<<<<<< HEAD
		var background:FlxSprite = new FlxSprite(-400, 0);
		background.loadGraphic(Assets.getBitmapData("img/top.jpg"));
		add(background);
		var pr:PlayerInputRight = new PlayerInputRight();
		var pl:PlayerInputLeft = new PlayerInputLeft();
		mBreadTop = new Bread(150, 200, pl, "img/BreadLeft.png");
		mBreadBottom = new Bread(600, 200, pr, "img/BreadRight.png");
		mScoreText = new FlxText(0, 0, 300, "Score: ",30);
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
=======
		//var pr:PlayerInputRight = new PlayerInputRight();
		//var pl:PlayerInputLeft = new PlayerInputLeft();
		var pr:PlayerInput = new JoystickInput(false);
		var pl:PlayerInput = new JoystickInput(true);
		mBreadTop = new Bread(MyConstants.topBreadStartPosition_x, MyConstants.topBreadStartPosition_y, pl, "img/BreadTop.png");
		mBreadBottom = new Bread(MyConstants.bottomBreadStartPosition_x, MyConstants.bottomBreadStartPosition_y, pr, "img/BreadBottom.png");
		mScoreText = new FlxText(0, 0, 100, "Score: ");
		loadIngredients();
		//loadObstacles();
>>>>>>> a82298f9a1ea4a779c0cd9348dde9c1bfa9a0162
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
	}
	
	function loadObstacles():Void
	{
		initObstacle("img/CANASTO.png");
		initObstacle("img/cuchillo.png");
		initObstacle("img/jarra.png");
		initObstacle("img/moztaza_ketchup_.png");
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
