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
		
		
		urls.push ("img/Bacon.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/BreadBottom.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/BreadLeft.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/BreadRight.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/BreadTop.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/CANASTO.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/canasto_SOMBRA.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/cuchillo.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/cuchillo_SOMBRA.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/jarra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/jarra_SOMBRA.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/moztaza_ketchup_.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/moztaza_ketchup_smombra.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/pepinos_frasco.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/pepinos_frasco_SOMBRA.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/platos.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/platos_sombras.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/Burger.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/CANASTO.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/canasto_SOMBRA.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/cuchillo.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/cuchillo_SOMBRA.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/Cucumber.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/glass.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/jarra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/jarra_SOMBRA.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/Lettuce.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/mostaza_ketchup.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/moztaza_ketchup_smombra.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/pepinos_frasco_SOMBRA.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/plate.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/platos.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/platos_sombras.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/Tomato.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/top.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("sound/breadCollide.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/eat.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/gameTheme.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/menuTheme.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("sound/tick.wav");
		types.push (AssetType.SOUND);
		
		
		
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
			company: "tomas",
			depthBuffer: false,
			file: "FlixelExample",
			fps: Std.int (60),
			fullscreen: false,
			height: Std.int (480),
			orientation: "",
			packageName: "FlixelExample",
			resizable: true,
			stencilBuffer: true,
			title: "FlixelExample",
			version: "1.0.0",
			vsync: false,
			width: Std.int (800),
			
		}
		
		#if (js && html5)
		#if (munit || utest)
		openfl.Lib.embed (null, 800, 480, "000000");
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
