package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;
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
		var pr:PlayerInputRight = new PlayerInputRight();
		var pl:PlayerInputLeft = new PlayerInputLeft();
		//var pr:PlayerInput = new JoystickInput(false);
		//var pl:PlayerInput = new JoystickInput(true);
		mBreadTop = new Bread(MyConstants.topBreadStartPosition_x, MyConstants.topBreadStartPosition_y, pl, "img/BreadTop.png");
		mBreadBottom = new Bread(MyConstants.bottomBreadStartPosition_x, MyConstants.bottomBreadStartPosition_y, pr, "img/BreadBottom.png");
		mScoreText = new FlxText(0, 0, 100, "Score: ");
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
	}
	
	function loadObstacles():Void
	{
		initObstacle("img/CANASTO.png");
		initObstacle("img/cuchillo.png");
		initObstacle("img/jarra.png");
		initObstacle("img/moztaza_ketchup_.png");
		//initObstacle("img/pepinos_frasco.png");
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
		// Determinamos randomicamente si se agrega o no 
		if (Math.random() > 0.5) {
			var validCoords : Bool = false;
			var tries:Int = 0;
			while (!validCoords && tries < 4) {
				var obstacleCoords:Point = null;
				obstacleCoords = randomPointInScreen();
				var obstacle:Obstacle = new Obstacle(obstacleCoords.x, obstacleCoords.y, aImage);
				validCoords = !FlxG.overlap(obstacle, mBreadBottom) && !FlxG.overlap(obstacle, mBreadTop) && !FlxG.overlap(obstacle, mObstacles);
				if (validCoords) {
					mObstacles.add(obstacle);
				}else {
					tries++;
				}
			}
		}
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
