package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
			type.set ("assets/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
			type.set ("assets/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("img/game/game_background.png", "img/game/game_background.png");
			type.set ("img/game/game_background.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/game/hud_background.png", "img/game/hud_background.png");
			type.set ("img/game/hud_background.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/hamburguesa/hamburgusa xml data sprite.png", "img/hamburguesa/hamburgusa xml data sprite.png");
			type.set ("img/hamburguesa/hamburgusa xml data sprite.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/hamburguesa/hamburgusa xml data sprite.xml", "img/hamburguesa/hamburgusa xml data sprite.xml");
			type.set ("img/hamburguesa/hamburgusa xml data sprite.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("img/mainMenu/background_menu.png", "img/mainMenu/background_menu.png");
			type.set ("img/mainMenu/background_menu.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/mainMenu/bottomBread.png", "img/mainMenu/bottomBread.png");
			type.set ("img/mainMenu/bottomBread.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/mainMenu/credits_button.png", "img/mainMenu/credits_button.png");
			type.set ("img/mainMenu/credits_button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/mainMenu/exit_button.png", "img/mainMenu/exit_button.png");
			type.set ("img/mainMenu/exit_button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/mainMenu/options_button.png", "img/mainMenu/options_button.png");
			type.set ("img/mainMenu/options_button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/mainMenu/start_button.png", "img/mainMenu/start_button.png");
			type.set ("img/mainMenu/start_button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/mainMenu/topBread.png", "img/mainMenu/topBread.png");
			type.set ("img/mainMenu/topBread.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/mainMenu/tutorial_button.png", "img/mainMenu/tutorial_button.png");
			type.set ("img/mainMenu/tutorial_button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/pan_garganta/pan garganta xml data sprite.png", "img/pan_garganta/pan garganta xml data sprite.png");
			type.set ("img/pan_garganta/pan garganta xml data sprite.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/pan_garganta/pan garganta xml data sprite.xml", "img/pan_garganta/pan garganta xml data sprite.xml");
			type.set ("img/pan_garganta/pan garganta xml data sprite.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("img/static/Bacon.png", "img/static/Bacon.png");
			type.set ("img/static/Bacon.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/static/Burger.png", "img/static/Burger.png");
			type.set ("img/static/Burger.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/static/Cucumber.png", "img/static/Cucumber.png");
			type.set ("img/static/Cucumber.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/static/Lettuce.png", "img/static/Lettuce.png");
			type.set ("img/static/Lettuce.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/static/Tomato.png", "img/static/Tomato.png");
			type.set ("img/static/Tomato.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/static/TopBread.png", "img/static/TopBread.png");
			type.set ("img/static/TopBread.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("sound/breadCollide.wav", "sound/breadCollide.wav");
			type.set ("sound/breadCollide.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("sound/eat.wav", "sound/eat.wav");
			type.set ("sound/eat.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("sound/endTheme.wav", "sound/endTheme.wav");
			type.set ("sound/endTheme.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("sound/gameTheme.wav", "sound/gameTheme.wav");
			type.set ("sound/gameTheme.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("sound/menuTheme.wav", "sound/menuTheme.wav");
			type.set ("sound/menuTheme.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("sound/tick.wav", "sound/tick.wav");
			type.set ("sound/tick.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("config/ingredients-cfg.csv", "config/ingredients-cfg.csv");
			type.set ("config/ingredients-cfg.csv", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("fonts/Barrio-Regular.ttf", "fonts/Barrio-Regular.ttf");
			type.set ("fonts/Barrio-Regular.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
