#if !macro


@:access(lime.Assets)


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	
	public static function create ():Void {
		
		var app = new lime.app.Application ();
		app.create (config);
		openfl.Lib.application = app;
		
		#if !flash
		var stage = new openfl.display.Stage (app.window.width, app.window.height, config.background);
		stage.addChild (openfl.Lib.current);
		app.addModule (stage);
		#end
		
		var display = new NMEPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		preloader.onComplete = init;
		preloader.create (config);
		
		#if (js && html5)
		var urls = [];
		var types = [];
		
		
		urls.push ("assets/sounds/beep.mp3");
		types.push (lime.Assets.AssetType.MUSIC);
		
		
		urls.push ("assets/sounds/flixel.mp3");
		types.push (lime.Assets.AssetType.MUSIC);
		
		
		urls.push ("img/cheddar/cheddar xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/cheddar/cheddar xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/cheddar/cheddar_comer_xml.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/cheddar/cheddar_comer_xml.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/credits/Boton_Main_Menu.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/credits/Creditos_base.jpg");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/background_end_game.jpg");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/High_Score.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Chedar.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Cheddar.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Hamburguesa.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Lechuga.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Panceta.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Pepino.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/Tomate.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/ingredients/topBread.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/mainMenu_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/end/playAgain_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/game_background.jpg");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/hud_background.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/mainMenu_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/canasta.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/canastaSombra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/cuchillo.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/cuchilloSombra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/frasco.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/frasco2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/frasco2Sombra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/frascoSombra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/jarra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/jarraSombra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/ketchup.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/ketchupSombra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/plato sombra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/obstacles/plato.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/pause.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/pause_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/resume_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/hamburgusa xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/hamburgusa xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/hamburguesa/hamburg_comer_xml.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/hamburg_comer_xml.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/lechuga/lechuga xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/lechuga/lechuga xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/lechuga/lechuga_comer_xml.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/lechuga/lechuga_comer_xml.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/mainMenu/animation/background_title.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/background_menu.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/bottomBread.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/exit_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/options_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/ranking_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/start_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/topBread.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/tutorial_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/Boton_Bajar.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/Boton_Subir.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/check.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/close_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/credits_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/cross.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/options.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/optionsMenu/slider.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/panceta/panceta xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/panceta/panceta xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/panceta/panceta_comer_xml.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/panceta/panceta_comer_xml.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/pan_garganta/pan garganta xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/pan_garganta/pan garganta xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/pan_lengua/pan lengua xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/pan_lengua/pan lengua xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/pepinos/pepino xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/pepinos/pepino xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/pepinos/pepino_comer_xml.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/pepinos/pepino_comer_xml.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/ranking/Boton_Cerrar.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/ranking/Menu_de_Ranking.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/ranking/RANKING_FINAL.jpg");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Bacon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Burger.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Cheddar.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Cucumber.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Lettuce.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Tomato.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/TopBread.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/tomate/tomate xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/tomate/tomate xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/tomate/tomate_comer_xml.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/tomate/tomate_comer_xml.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/tutorial/Boton_Next.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Boton_Skip.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Tutorial_1.jpg");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Tutorial_2.jpg");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Tutorial_3.jpg");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/tutorial/Tutorial_4.jpg");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("sound/Alarma.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/Ambiente_de_fondo.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/Botones.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/Comer.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/Final.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/Musica_del_juego.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("config/ingredients-cfg.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("Barrio");
		types.push (lime.Assets.AssetType.FONT);
		
		
		
		if (config.assetsPrefix != null) {
			
			for (i in 0...urls.length) {
				
				if (types[i] != lime.Assets.AssetType.FONT) {
					
					urls[i] = config.assetsPrefix + urls[i];
					
				}
				
			}
			
		}
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if (sys && !nodejs && !emscripten)
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
			company: "Arreche-Piaggio",
			depthBuffer: false,
			file: "Hamburger",
			fps: Std.int (60),
			fullscreen: false,
			height: Std.int (1080),
			orientation: "",
			packageName: "Hamburger",
			resizable: true,
			stencilBuffer: true,
			title: "Hamburger",
			version: "1.0.0",
			vsync: false,
			width: Std.int (1920),
			
		}
		
		#if (js && html5)
		#if (munit || utest)
		openfl.Lib.embed (null, 1920, 1080, "000000");
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
		
		lime.Assets.initialize ();
		
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
