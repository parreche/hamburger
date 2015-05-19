package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import openfl.Assets;
import io.CsvImporter;
import io.GeneralConstants;
import openfl.geom.Point;
import utils.SequenceCode;

/**
 * 
 * This class represents the game.
 * It contains all variables that are used during the game and updates them.
 * 
 * @author Arreche-Piaggio
 * 
 */
class GameState extends FlxState
{
	var mIngredients = new FlxGroup();
	var mObstacles = new FlxGroup();
	
	var mBreadTop:Bread;
	var mBreadBottom:Bread;
	var mScoreText:FlxText;
	
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
		var background:FlxSprite = new FlxSprite(0, 0);
		background.loadGraphic(Assets.getBitmapData("img/top.jpg"));
		background.setGraphicSize(GeneralConstants.screenWidth, GeneralConstants.screenHeigth);
		background.updateHitbox();
		add(background);
		FlxG.sound.playMusic("sound/gameTheme.wav");
		var enableJoystick:Bool = GeneralConstants.enableJoystick == 1;
		
		var pr:PlayerInput;
		var pl:PlayerInput;
		if (enableJoystick) 
		{	
			pr = new JoystickInput(false);
			pl = new JoystickInput(true);
		} 
		else 
		{
			pr = new PlayerInputRight();
			pl = new PlayerInputLeft();
		}
		
		mBreadTop = new Bread(GeneralConstants.topBreadStartPosition_x, GeneralConstants.topBreadStartPosition_y, pl, "img/BreadTop.png");
		mBreadBottom = new Bread(GeneralConstants.bottomBreadStartPosition_x, GeneralConstants.bottomBreadStartPosition_y, pr, "img/BreadBottom.png");
		mScoreText = new FlxText(GeneralConstants.score_x, GeneralConstants.score_y, 350, "Score: ", GeneralConstants.scoreSize);
		mTimerText = new FlxText(GeneralConstants.timer_x, GeneralConstants.timer_y, 350, "", GeneralConstants.timerSize);
		updateTimer();
		loadIngredients();
		loadObstacles();
		add(mObstacles);
		add(mBreadTop);
		add(mBreadBottom);
		add(mIngredients);
		add(mScoreText);
		
		// HUD init
		HUD.create();
		add(HUD.getHUDBackground());
		add(HUD.getTopBread());
		add(HUD.getBottomBread());
		
		add(mTimerText);
	}
	
	function loadIngredients():Void
	{
		// Loading tomatoes
		initIngredient(GeneralConstants.tomatoCount, "img/Tomato.png", GeneralConstants.tomatoValue, GeneralConstants.tomatoVelocity, GeneralConstants.tomatoMaxVelocity);
		initIngredient(GeneralConstants.baconCount, "img/Bacon.png", GeneralConstants.baconValue, GeneralConstants.baconVelocity, GeneralConstants.baconMaxVelocity);
		initIngredient(GeneralConstants.lettuceCount, "img/Lettuce.png", GeneralConstants.lettuceValue, GeneralConstants.lettuceVelocity, GeneralConstants.lettuceMaxVelocity);
		initIngredient(GeneralConstants.burgerCount, "img/Burger.png", GeneralConstants.burgerValue, GeneralConstants.burgerVelocity, GeneralConstants.burgerMaxVelocity);
		initIngredient(GeneralConstants.cucumberCount, "img/Cucumber.png", GeneralConstants.cucumberValue, GeneralConstants.cucumberVelocity, GeneralConstants.cucumberMaxVelocity);
	}
	
	function loadObstacles():Void
	{
		initObstacle("img/CANASTO.png");
		initObstacle("img/cuchillo.png");
		initObstacle("img/jarra.png");
		initObstacle("img/moztaza_ketchup_.png");
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
		var xCoord:Float = Math.random() * GeneralConstants.screenWidth;
		var yCoord:Float = Math.random() * GeneralConstants.screenHeigth;
		return new Point(xCoord, yCoord);
	}
	
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
		
		if (HUD.mHasEaten)
		{
			var lastX:Float = HUD.getBottomBread().x;
			var ingredients:List<FlxSprite> = HUD.getEatenIngredients();
			for(item in ingredients) 
			{
				item.x = lastX - 50;
				item.y = 50;
				item.alpha = 0.7;
				add(item);
				lastX = item.x;
			}
			
			HUD.setTopBreadXCoord(lastX - 50);
		}
		HUD.mHasEaten = false;
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
