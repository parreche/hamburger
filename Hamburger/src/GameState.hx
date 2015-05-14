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
import utils.SequenceCode;

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
	var mTimerText:FlxText;
	var mTimer:Float = 90;
	var mLastSecondSound:Int = -1;
	var mSimulationStop:Bool = false;
	var mSequence:SequenceCode;
	
	public function new() 
	{
		super();
	}
	
	
	
	override function create():Void
	{
		mSequence = new SequenceCode();
		var background:FlxSprite = new FlxSprite(-350, 0);
		background.loadGraphic(Assets.getBitmapData("img/top.jpg"));
		add(background);
		FlxG.sound.playMusic("sound/gameTheme.wav");
		var pr:PlayerInputRight = new PlayerInputRight();
		var pl:PlayerInputLeft = new PlayerInputLeft();
		//var pr:PlayerInput = new JoystickInput(false);
		//var pl:PlayerInput = new JoystickInput(true);
		mBreadTop = new Bread(MyConstants.topBreadStartPosition_x, MyConstants.topBreadStartPosition_y, pl, "img/BreadTop.png");
		mBreadBottom = new Bread(MyConstants.bottomBreadStartPosition_x, MyConstants.bottomBreadStartPosition_y, pr, "img/BreadBottom.png");
		mScoreText = new FlxText(0, 0, 350, "Score: ", 35);
		mTimerText = new FlxText(950, 0, 350, "", 35);
		updateTimer();
		loadIngredients();
		loadObstacles();
		add(mObstacles);
		add(mBreadTop);
		add(mBreadBottom);
		add(mIngredients);
		add(mScoreText);
		add(mTimerText);
	}
	
	function loadIngredients():Void
	{
		// Loading tomatoes
		initIngredient(MyConstants.tomatoCount, "img/Tomato.png", MyConstants.tomatoValue, MyConstants.tomatoVelocity, MyConstants.tomatoMaxVelocity);
		initIngredient(MyConstants.baconCount, "img/Bacon.png", MyConstants.baconValue, MyConstants.baconVelocity, MyConstants.baconMaxVelocity);
		initIngredient(MyConstants.lettuceCount, "img/Lettuce.png", MyConstants.lettuceValue, MyConstants.lettuceVelocity, MyConstants.lettuceMaxVelocity);
		initIngredient(MyConstants.burgerCount, "img/Burger.png", MyConstants.burgerValue, MyConstants.burgerVelocity, MyConstants.burgerMaxVelocity);
		//initIngredient(MyConstants.cucumberCount, "img/Cucumber.png", MyConstants.cucumberValue, MyConstants.cucumberVelocity, MyConstants.cucumberMaxVelocity);
	}
	
	function loadObstacles():Void
	{
		
		initObstacle("img/cuchillo.png");
		initObstacle("img/mostaza_ketchup.png");
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
		mSequence.update(FlxG.elapsed);
		var noIngredients:Bool = mIngredients.countLiving() == 0;
		var timerOut:Bool = mTimer < 0;
		mSimulationStop = noIngredients || timerOut;
		if (mSimulationStop)
		{
			if (noIngredients && !timerOut) {
				for(i in 0...Std.int(mTimer)){
					mSequence.addFunction(diffSecond);
					mSequence.addWait(1);
				}
			}
			FlxG.sound.music.stop();
			return;
		}
		
		super.update();
		mBreadTop.immovable = false;
		mBreadBottom.immovable = false;
		if (FlxG.collide(mBreadTop, mBreadBottom)) 
		{
			FlxG.sound.play("sound/breadCollide.wav");
		}
		if (FlxG.collide(mBreadTop, mObstacles))
		{
			FlxG.sound.play("sound/breadCollide.wav");
		}
		if (FlxG.collide(mBreadBottom, mObstacles))
		{
			FlxG.sound.play("sound/breadCollide.wav");
		}
		mBreadTop.immovable = true;
		mBreadBottom.immovable = true;
		FlxG.collide(mBreadTop, mIngredients);
		FlxG.collide(mBreadBottom, mIngredients);
		FlxG.collide(mIngredients, mIngredients);
		mScoreText.text = "Score: " + GameData.score;
		updateTimer();
		FlxG.collide(mIngredients, mObstacles);
	}
	
	private function diffSecond(aDt:Float):Bool 
	{
		mTimer --;
		GameData.score += 4;
		return true;
	}
	
	private function updateTimer() 
	{
		if (mTimer > 0)
		{
			mTimer -= FlxG.elapsed;
			var minutes = Std.int(mTimer / 60);
			var seconds = Std.int(mTimer - (minutes * 60));
			mTimerText.text = "Time " + minutes + ":" + secondFormat(seconds);
			
			if (mTimer <= 20 && mLastSecondSound!=seconds) {
				FlxG.sound.play("sound/tick.wav",2);
				mLastSecondSound = seconds;
			}
		}
	}
	
	private function secondFormat(seconds:Int):String
	{
		if (seconds < 10)
		{
			return "0" + seconds;
		}
		
		return "" + seconds;
	}
	
}
