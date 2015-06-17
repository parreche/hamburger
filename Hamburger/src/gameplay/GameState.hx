package gameplay;

import domain.AnimationEnum;
import domain.Bread;
import domain.Ingredient;
import domain.Obstacle;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import gamepad.GamepadIDs;
import gamepad.JoystickInput;
import gamepad.PlayerInput;
import gamepad.KeyboardInput;
import gameplay.EndState;
import gameplay.GameScore;
import openfl.Assets;
import configuration.CsvImporter;
import configuration.GeneralConstants;
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
	
	public function new() 
	{
		super();
	}
	
	override function create():Void
	{	
		var background:FlxSprite = new FlxSprite(0, 0);
		background.loadGraphic(Assets.getBitmapData("img/game/game_background.png"));
		background.setGraphicSize(GeneralConstants.screenWidth, GeneralConstants.screenHeigth);
		background.updateHitbox();
		add(background);
		
		FlxG.sound.playMusic("sound/gameTheme.wav");
		
		var enableJoystick:Bool = GeneralConstants.enableJoystick == 1;
		
		var pr:PlayerInput;
		var pl:PlayerInput;
		if (enableJoystick) 
		{	
			pr = new JoystickInput(GamepadIDs.RIGHT_CONTROL);
			pl = new JoystickInput(GamepadIDs.LEFT_CONTROL);
		} 
		else 
		{
			pr = new KeyboardInput(GamepadIDs.RIGHT_CONTROL);
			pl = new KeyboardInput(GamepadIDs.LEFT_CONTROL);
		}
		
		mBreadTop = new Bread(GeneralConstants.topBreadStartPosition_x, GeneralConstants.topBreadStartPosition_y, pl, Bread.TOP_BREAD);
		mBreadBottom = new Bread(GeneralConstants.bottomBreadStartPosition_x, GeneralConstants.bottomBreadStartPosition_y, pr, Bread.BOTTOM_BREAD);
		
		loadIngredients();
		//loadObstacles();
		
		add(mObstacles);
		add(mBreadTop);
		add(mBreadBottom);
		add(mIngredients);
		
		// HUD init
		HUD.create();
		add(HUD.getHUDBackground());
		add(HUD.getTopBread());
		add(HUD.getScoreText());
		add(HUD.getTimerText());
	}
	
	function loadIngredients():Void
	{
		initIngredient(GeneralConstants.tomatoCount, "img/static/Tomato.png", GeneralConstants.tomatoValue, GeneralConstants.tomatoVelocity, GeneralConstants.tomatoMaxVelocity, AnimationEnum.TOMATO);
		initIngredient(GeneralConstants.baconCount, "img/static/Bacon.png", GeneralConstants.baconValue, GeneralConstants.baconVelocity, GeneralConstants.baconMaxVelocity,AnimationEnum.BACON);
		initIngredient(GeneralConstants.lettuceCount, "img/static/Lettuce.png", GeneralConstants.lettuceValue, GeneralConstants.lettuceVelocity, GeneralConstants.lettuceMaxVelocity,AnimationEnum.LETTUCE);
		initIngredient(GeneralConstants.burgerCount, "img/static/Burger.png", GeneralConstants.burgerValue, GeneralConstants.burgerVelocity, GeneralConstants.burgerMaxVelocity,AnimationEnum.HAMBURGER);
		initIngredient(GeneralConstants.cucumberCount, "img/static/Cucumber.png", GeneralConstants.cucumberValue, GeneralConstants.cucumberVelocity, GeneralConstants.cucumberMaxVelocity,AnimationEnum.CUCUMBER);
	}
	
	function loadObstacles():Void
	{
		initObstacle("img/CANASTO.png");
		initObstacle("img/cuchillo.png");
		initObstacle("img/jarra.png");
		initObstacle("img/moztaza_ketchup_.png");
		initObstacle("img/platos.png");
	}
	
	function initIngredient(aCount:Int,aPathToImage:String, aValue:Int, aVelocity:Int,aMaxVelocity:Int, aIngredientType:AnimationEnum):Void
	{
		for (i in 0...aCount)
		{
			var ingredient:Ingredient = new domain.Ingredient(GeneralConstants.ingredientStartPosition_x, GeneralConstants.ingredientStartPosition_y, aPathToImage,mBreadTop, mBreadBottom, aValue,aVelocity,aMaxVelocity,aIngredientType);
			mIngredients.add(ingredient);	
		}
	}
	
	function initObstacle(aImage:String):Void
	{
		if (Math.random() > 0.5) {
			var validCoords : Bool = false;
			var tries:Int = 0;
			while (!validCoords && tries < 4) {
				var obstacleCoords:Point = null;
				obstacleCoords = randomPointInScreen();
				var obstacle:domain.Obstacle = new domain.Obstacle(obstacleCoords.x, obstacleCoords.y, aImage);
				validCoords = !FlxG.overlap(obstacle, mBreadBottom) && !FlxG.overlap(obstacle, mBreadTop) && !FlxG.overlap(obstacle, mObstacles);
				if (validCoords) {
					mObstacles.add(obstacle);
				}else {
					tries++;
				}
			}
		}
	}
	
	private function randomPointInScreen():Point 
	{
		var xCoord:Float = Math.random() * GeneralConstants.screenWidth;
		var yCoord:Float = Math.random() * GeneralConstants.screenHeigth;
		return new Point(xCoord, yCoord);
	}
	
	override function update():Void
	{
		HUD.update();
		checkGameOver();
		if (HUD.isHurryUp()) {
			FlxG.sound.play("sound/tick.wav",2);
		}
		drawEatenIngredients();
		
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
		FlxG.collide(mIngredients, mObstacles);
		
		super.update();
	}
	
	private function checkGameOver() : Void
	{
		var noIngredients:Bool = mIngredients.countLiving() == 0;
		var timerOut:Bool = HUD.isTimeOver();
		var simulationStop:Bool = noIngredients || timerOut;
		if (simulationStop)
		{
			FlxG.camera.fade(FlxColor.BLACK, 0.9, false, function() {
				FlxG.switchState(new EndState(noIngredients, HUD.getScore(), HUD.getTime()));
				FlxG.sound.music.stop();
			});
		}
	}
	
	private function drawEatenIngredients() : Void
	{
		if (HUD.sHasEaten)
		{
			var lastX:Float = GeneralConstants.HUD_x + GeneralConstants.HUD_width;
			var lastY:Float = GeneralConstants.HUD_y + GeneralConstants.HUD_heigth;
			var ingredients:List<FlxSprite> = HUD.getEatenIngredients();
			for(item in ingredients) 
			{
				item.x = lastX;
				item.y = lastY - GeneralConstants.HUD_ingredientsDistance;
				item.alpha = 0.7;
				add(item);
				lastY = item.y;
			}
			
			HUD.setTopBreadYCoord(lastY - GeneralConstants.HUD_ingredientsDistance - 20);
		}
		HUD.sHasEaten = false;
	}
}
