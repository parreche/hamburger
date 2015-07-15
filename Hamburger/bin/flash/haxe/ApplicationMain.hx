import lime.Assets;
#if !macro


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	
	public static function create ():Void {
		
		var app = new openfl.display.Application ();
		app.create (config);
		
		var display = new NMEPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		preloader.onComplete = init;
		preloader.create (config);
		
		#if (js && html5)
		var urls = [];
		var types = [];
		
		
		urls.push ("assets/sounds/beep.mp3");
		types.push (AssetType.MUSIC);
		
		
		urls.push ("assets/sounds/flixel.mp3");
		types.push (AssetType.MUSIC);
		
		
		urls.push ("flixel/flixel-ui/img/box.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/button_arrow_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/button_arrow_left.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/button_arrow_right.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/button_arrow_up.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/button_thin.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/button_toggle.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/check_box.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/check_mark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/chrome.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/chrome_flat.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/chrome_inset.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/chrome_light.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/dropdown_mark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/finger_big.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/finger_small.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/hilight.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/invis.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/minus_mark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/plus_mark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/radio.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/radio_dot.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/swatch.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/tab.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/img/tab_back.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("flixel/flixel-ui/xml/defaults.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("flixel/flixel-ui/xml/default_loading_screen.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("flixel/flixel-ui/xml/default_popup.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/game/end/background_end_game.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/High_Score.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Chedar.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Hamburguesa.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Lechuga.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Panceta.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Pepino.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Tomate.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/topBread.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/mainMenu_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/end/playAgain_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/game_background.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/hud_background.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/mainMenu_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/canasta.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/canastaSombra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/cuchillo.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/cuchilloSombra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/frasco.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/frasco2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/frasco2Sombra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/frascoSombra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/jarra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/jarraSombra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/ketchup.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/ketchupSombra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/plato sombra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/plato.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/pause.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/pause_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/game/resume_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/hamburgusa xml data sprite.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/hamburgusa xml data sprite.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/hamburguesa/hamburg_comer_xml.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/hamburg_comer_xml.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/lechuga/lechuga xml data sprite.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/lechuga/lechuga xml data sprite.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/lechuga/lechuga_comer_xml.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/lechuga/lechuga_comer_xml.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/mainMenu/animation/background_title.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/background_menu.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/bottomBread.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/exit_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/options_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/ranking_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/start_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/topBread.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/tutorial_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/check.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/close_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/credits_button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/cross.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/options.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/slider.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/panceta/panceta xml data sprite.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/panceta/panceta xml data sprite.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/panceta/panceta_comer_xml.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/panceta/panceta_comer_xml.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/pan_garganta/pan garganta xml data sprite.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/pan_garganta/pan garganta xml data sprite.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/pan_lengua/pan lengua xml data sprite.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/pan_lengua/pan lengua xml data sprite.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/pepinos/pepino xml data sprite.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/pepinos/pepino xml data sprite.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/pepinos/pepino_comer_xml.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/pepinos/pepino_comer_xml.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/ranking/Boton_Cerrar.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/ranking/Menu_de_Ranking.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/ranking/RANKING_FINAL.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/static/Bacon.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/static/Burger.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/static/Cucumber.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/static/Lettuce.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/static/Tomato.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/static/TopBread.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/tomate/tomate xml data sprite.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/tomate/tomate xml data sprite.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/tomate/tomate_comer_xml.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/tomate/tomate_comer_xml.xml");
		types.push (AssetType.TEXT);
		
		
		urls.push ("img/tutorial/Boton_Next.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Boton_Skip.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Tutorial_1.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Tutorial_2.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Tutorial_3.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Tutorial_4.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("sound/breadCollide.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/eat.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/endTheme.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/gameTheme.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/menuTheme.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/tick.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("config/ingredients-cfg.csv");
		types.push (AssetType.TEXT);
		
		
		urls.push ("Barrio");
		types.push (AssetType.FONT);
		
		
		
		if (config.assetsPrefix != null) {
			
			for (i in 0...urls.length) {
				
				if (types[i] != AssetType.FONT) {
					
					urls[i] = config.assetsPrefix + urls[i];
					
				}
				
			}
			
		}
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if (sys && !emscripten)
		Sys.exit (result);
		#end
		
	}
	
	
	public static function init ():Void {
		
		var loaded = 0;
		var total = 0;
		var library_onLoad = function (__) {
			
			loaded++;
			
			if (loaded == total) {
				
				start ();
				
			}
			
		}
		
		preloader = null;
		
		
		
		if (loaded == total) {
			
			start ();
			
		}
		
	}
	
	
	public static function main () {
		
		config = {
			
			antialiasing: Std.int (0),
			background: Std.int (0),
			borderless: false,
			depthBuffer: false,
			fps: Std.int (60),
			fullscreen: false,
			height: Std.int (1080),
			orientation: "",
			resizable: true,
			stencilBuffer: false,
			title: "Hamburger",
			vsync: false,
			width: Std.int (1920),
			
		}
		
		#if js
		#if (munit || utest)
		flash.Lib.embed (null, 1920, 1080, "000000");
		#end
		#else
		create ();
		#end
		
	}
	
	
	public static function start ():Void {
		
		var hasMain = false;
		var entryPoint = Type.resolveClass ("Main");
		
		for (methodName in Type.getClassFields (entryPoint)) {
			
			if (methodName == "main") {
				
				hasMain = true;
				break;
				
			}
			
		}
		
		if (hasMain) {
			
			Reflect.callMethod (entryPoint, Reflect.field (entryPoint, "main"), []);
			
		} else {
			
			var instance:DocumentClass = Type.createInstance (DocumentClass, []);
			
			/*if (Std.is (instance, openfl.display.DisplayObject)) {
				
				openfl.Lib.current.addChild (cast instance);
				
			}*/
			
		}
		
		openfl.Lib.current.stage.dispatchEvent (new openfl.events.Event (openfl.events.Event.RESIZE, false, false));
		
	}
	
	
	#if neko
	@:noCompletion public static function __init__ () {
		
		var loader = new neko.vm.Loader (untyped $loader);
		loader.addPath (haxe.io.Path.directory (Sys.executablePath ()));
		loader.addPath ("./");
		loader.addPath ("@executable_path/");
		
	}
	#end
	
	
}


@:build(DocumentClass.build())
@:keep class DocumentClass extends Main {}


#else


import haxe.macro.Context;
import haxe.macro.Expr;


class DocumentClass {
	
	
	macro public static function build ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				
				var method = macro {
					
					openfl.Lib.current.addChild (this);
					super ();
					dispatchEvent (new openfl.events.Event (openfl.events.Event.ADDED_TO_STAGE, false, false));
					
				}
				
				fields.push ({ name: "new", access: [ APublic ], kind: FFun({ args: [], expr: method, params: [], ret: macro :Void }), pos: Context.currentPos () });
				
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
}


#end
