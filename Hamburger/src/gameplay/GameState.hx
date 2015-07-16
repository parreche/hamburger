package gameplay;

import domain.Ingredient.IngredientType;
import flixel.util.FlxSort;
import menu.MainMenu;
import src.domain.Cheddar;
import src.gameplay.EnemySpawner;
import utils.AnimationEnum;
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
import menu.MenuButton;
import openfl.Assets;
import configuration.CsvImporter;
import configuration.GeneralConstants;
import openfl.geom.Point;
import utils.HelpFunction;
import utils.MenuHelper;
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
	public static var sEnableJoystick:Bool;
	public static var sFirstTimePlayer:Bool = true;
	
	var mIngredients = new FlxGroup();
	var mObstacles = new FlxGroup();
	var mBreadTop:Bread;
	var mBreadBottom:Bread;
	public var mPausedGame:Bool = false;
	var mPauseState:PauseState;
	var mIsHurryUp:Bool = false;
	
	public function new() 
	{
		super();
	}
	
	override function create():Void
	{	
		sFirstTimePlayer = false;
		add(MenuHelper.loadStaticImage("img/game/game_background.jpg", GeneralConstants.screenWidth, GeneralConstants.screenHeigth, 0, 0));
		FlxG.sound.playMusic("sound/Musica_del_juego.wav");
		
		var pr:PlayerInput;
		var pl:PlayerInput;
		if (sEnableJoystick) 
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
		
		var pauseButton:FlxSprite = MenuHelper.createMenuButton("img/game/pause_button.png", GeneralConstants.game_pause_button_width, GeneralConstants.game_pause_button_heigth, GeneralConstants.game_pause_button_x, GeneralConstants.game_pause_button_y, pauseGame);
		pauseButton.alpha = 0.4;
		
		loadIngredients();
		loadObstacles();
		
		mIngredients.add(mBreadBottom);
		mIngredients.add(mBreadTop);
		add(mIngredients);
		add(mObstacles);
		
		// HUD init
		HUD.create();
		add(HUD.getHUDBackground());
		add(HUD.getTopBread());
		add(HUD.getScoreText());
		add(HUD.getTimerText());
		
		add(pauseButton);
		
		// Pause menu
		mPauseState = new PauseState(this);		
		add(mPauseState);
		mPauseState.visible = false;
		
		EnemySpawner.create();
	}
	
	function loadIngredients():Void
	{
		initIngredient(IngredientType.TOMATO, "img/static/Tomato.png","img/game/end/ingredients/Tomate.png", GeneralConstants.tomatoValue, GeneralConstants.tomatoVelocity, GeneralConstants.tomatoMaxVelocity, AnimationEnum.TOMATO);
		initIngredient(IngredientType.BACON, "img/static/Bacon.png","img/game/end/ingredients/Panceta.png", GeneralConstants.baconValue, GeneralConstants.baconVelocity, GeneralConstants.baconMaxVelocity,AnimationEnum.BACON);
		initIngredient(IngredientType.LETTUCE, "img/static/Lettuce.png","img/game/end/ingredients/Lechuga.png", GeneralConstants.lettuceValue, GeneralConstants.lettuceVelocity, GeneralConstants.lettuceMaxVelocity,AnimationEnum.LETTUCE);
		initIngredient(IngredientType.BURGUER, "img/static/Burger.png","img/game/end/ingredients/Hamburguesa.png", GeneralConstants.burgerValue, GeneralConstants.burgerVelocity, GeneralConstants.burgerMaxVelocity,AnimationEnum.HAMBURGER);
		initIngredient(IngredientType.CUCUMBER, "img/static/Cucumber.png", "img/game/end/ingredients/Pepino.png", GeneralConstants.cucumberValue, GeneralConstants.cucumberVelocity, GeneralConstants.cucumberMaxVelocity, AnimationEnum.CUCUMBER);
		initIngredient(IngredientType.CHEDDAR, "img/static/Cheddar.png","img/game/end/ingredients/Cheddar.png", GeneralConstants.cheddarValue, GeneralConstants.cheddarVelocity, GeneralConstants.cheddarMaxVelocity,AnimationEnum.CHEDDAR);
	}
	
	function loadObstacles():Void
	{
		initObstacle(true, "img/game/obstacles/ketchup.png", GeneralConstants.ketchup_collisionBox_width, GeneralConstants.ketchup_collisionBox_heigth, GeneralConstants.ketchup_collisionBox_offset_x, GeneralConstants.ketchup_collisionBox_offset_y);		
		initObstacle(false, "img/game/obstacles/canasta.png", GeneralConstants.canasta_collisionBox_width, GeneralConstants.canasta_collisionBox_heigth, GeneralConstants.canasta_collisionBox_offset_x, GeneralConstants.canasta_collisionBox_offset_y);
		initObstacle(true, "img/game/obstacles/cuchillo.png", GeneralConstants.cuchillo_collisionBox_width, GeneralConstants.cuchillo_collisionBox_heigth, GeneralConstants.cuchillo_collisionBox_offset_x, GeneralConstants.cuchillo_collisionBox_offset_y);
		initObstacle(true, "img/game/obstacles/frasco.png", GeneralConstants.frasco_collisionBox_width, GeneralConstants.frasco_collisionBox_heigth, GeneralConstants.frasco_collisionBox_offset_x, GeneralConstants.frasco_collisionBox_offset_y);
		initObstacle(false, "img/game/obstacles/frasco2.png", GeneralConstants.frasco2_collisionBox_width, GeneralConstants.frasco2_collisionBox_heigth, GeneralConstants.frasco2_collisionBox_offset_x, GeneralConstants.frasco2_collisionBox_offset_y);
	}
	
	function initIngredient(aType:IngredientType, aPathToImage:String,aPathToEndImage:String, aValue:Int, aVelocity:Int,aMaxVelocity:Int, aIngredientType:AnimationEnum):Void
	{
		var coords:Point = HelpFunction.randomPointInScreen();
		if (aType.equals(IngredientType.CHEDDAR)) {
			var timer = Math.random() * 10 + 10; //cheddar is alive between 10 and 20 seconds
			var waitTime =  Math.random() * 40 + 20; //cheddar waits to appear between 20 and 60 seconds
			var ingredient:Ingredient = new Cheddar(coords.x, coords.y, aType, aPathToImage, aPathToEndImage, mBreadTop, mBreadBottom, aValue, aVelocity, aMaxVelocity, aIngredientType, this, timer, waitTime);
			mIngredients.add(ingredient);
		} else
		{
			var ingredient:Ingredient = new Ingredient(coords.x, coords.y, aType, aPathToImage, aPathToEndImage, mBreadTop, mBreadBottom, aValue,aVelocity,aMaxVelocity,aIngredientType,this);
			mIngredients.add(ingredient);
		}
	}
	
	function initObstacle(aIsInternalObstacle:Bool, aImage:String, aCollisionBoxWidth:Int, aCollisionBoxHeigth:Int, aCollisionBoxX:Int, aCollisionBoxY:Int):Void
	{
		if (Math.random() > 0.5) {
			var validCoords : Bool = false;
			var tries:Int = 0;
			while (!validCoords && tries < 10) {
				var obstacleCoords:Point = HelpFunction.randomPointInScreen();
				var obstacle:domain.Obstacle = new domain.Obstacle(obstacleCoords.x,obstacleCoords.y, aImage, aCollisionBoxWidth, aCollisionBoxHeigth, aCollisionBoxX, aCollisionBoxY);
				validCoords = !FlxG.overlap(obstacle, mBreadBottom) && !FlxG.overlap(obstacle, mBreadTop) && !FlxG.overlap(obstacle, mObstacles);
				if (!aIsInternalObstacle)
				{
					validCoords = validCoords && ((obstacleCoords.x + aCollisionBoxHeigth < 200) || (obstacleCoords.x > 1500));
				} else {
					validCoords = validCoords && ((obstacleCoords.x > 200) || (obstacleCoords.x < 1500));
				}
				if (validCoords) {
					mObstacles.add(obstacle);
				} else {
					tries++;
				}
			}
		}
	}
	
	/*private function randomPointInScreen():Point 
	{
		var xCoord:Float = Math.random() * GeneralConstants.game_screenWidth;
		var yCoord:Float = Math.random() * GeneralConstants.game_screenHeigth;
		return new Point(xCoord, yCoord);
	}*/
	
	override function update():Void
	{
		mPauseState.update();
		mIngredients.sort(cast FlxSort.byY, FlxSort.ASCENDING);
		if (FlxG.keys.pressed.ENTER)
			pauseGame(null);
			
		if (!mPausedGame)
		{
			mPauseState.visible = false;
			FlxG.sound.music.resume();
			HUD.update();
			checkGameOver();
			if (HUD.isHurryUp() && !mIsHurryUp) {
				mIsHurryUp = true;
				FlxG.sound.play("sound/Alarma.wav", FlxG.sound.music.volume, false);
			}
			drawEatenIngredients();
			
			mBreadTop.immovable = false;
			mBreadBottom.immovable = false;
			FlxG.collide(mBreadTop, mBreadBottom);
			FlxG.collide(mBreadTop, mObstacles);
			FlxG.collide(mBreadBottom, mObstacles);
			
			mBreadTop.immovable = true;
			mBreadBottom.immovable = true;
			FlxG.collide(mIngredients, mIngredients);
			FlxG.collide(mIngredients, mObstacles);
			
			super.update();
		} else {
			FlxG.sound.music.pause();
			mPauseState.visible = true;
		}
	}
	
	private function checkGameOver() : Void
	{
		var noIngredients:Bool = mIngredients.countLiving() == 2;
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
	
	public function quitGame() : Void
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.9, false, function() {
			FlxG.switchState(new MainMenu());
			FlxG.sound.music.stop();
		});
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
				add(item);
				lastY = item.y;
			}
			
			HUD.setTopBreadYCoord(lastY - GeneralConstants.HUD_ingredientsDistance - 20);
		}
		HUD.sHasEaten = false;
	}
	
	private function pauseGame(aButton:MenuButton)
	{
		mPausedGame = !mPausedGame;
	}
	
}
