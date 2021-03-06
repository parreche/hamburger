#if !macro
import Main;
import haxe.Resource;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.ILoader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.IURLLoader;
import flash.net.URLRequest;
import flash.net.URLLoaderDataFormat;
import flash.Lib;
import js.html.Element;
import js.html.AudioElement;

class ApplicationMain {
	#if (openfl >= "2.1")
	public static var config:lime.app.Config = {
		antialiasing: Std.int(0),
		background: Std.int(0),
		borderless: false,
		depthBuffer: false,
		fps: Std.int(60),
		fullscreen: false,
		height: Std.int(1080),
		orientation: "",
		resizable: true,
<<<<<<< HEAD
		stencilBuffer: true,
=======
		stencilBuffer: false,
>>>>>>> 79b689b3cf3ea341d4eb942446847d2d73b5919b
		title: "Hamburger",
		vsync: false,
		width: Std.int(1920),
	};
	#end
	private static var completed:Int;
	private static var preloader:NMEPreloader;
	private static var total:Int;

	public static var loaders:Map<String, ILoader>;
	public static var urlLoaders:Map<String, IURLLoader>;
	private static var loaderStack:Array<String>;
	private static var urlLoaderStack:Array<String>;
	// Embed data preloading
	@:noCompletion public static var embeds:Int = 0;
	@:noCompletion public static function loadEmbed(o:Element) {
		embeds++;
		var f = null;
		f = function(_) {
			o.removeEventListener("load", f);
			if (--embeds == 0) preload();
		}
		o.addEventListener("load", f);
	}
	
	public static function main() {
		if (embeds == 0) preload();
	}

	private static function preload() {
		completed = 0;
		loaders = new Map<String, ILoader>();
		urlLoaders = new Map<String, IURLLoader>();
		total = 0;
		
		flash.Lib.current.loaderInfo = flash.display.LoaderInfo.create (null);
		
		flash.Lib.stage.frameRate = 60;
		// preloader:
		Lib.current.addChild(preloader = new NMEPreloader());
		preloader.onInit();
		
		// assets:
		loadSound("assets/sounds/beep.mp3");
		loadSound("assets/sounds/flixel.mp3");
		loadSound("assets/sounds/beep.ogg");
		loadSound("assets/sounds/flixel.ogg");
		loadFile("img/background_menu.png");
<<<<<<< HEAD
		loadFile("img/game/game_background.png");
		loadFile("img/game/hud_background.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0001.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0002.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0003.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0004.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0005.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0006.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0007.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0008.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0009.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0010.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0011.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0012.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0013.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0014.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0015.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0016.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0017.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0018.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0019.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0020.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0021.png");
		loadFile("img/hamburguesa/45 abajo derecha/45 abajo derecha0022.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0001.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0002.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0003.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0004.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0005.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0006.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0007.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0008.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0009.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0010.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0011.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0012.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0013.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0014.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0015.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0016.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0017.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0018.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0019.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0020.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0021.png");
		loadFile("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0022.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0001.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0002.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0003.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0004.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0005.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0006.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0007.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0008.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0009.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0010.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0011.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0012.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0013.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0014.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0015.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0016.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0017.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0018.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0019.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0020.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0021.png");
		loadFile("img/hamburguesa/45 arriba derecha/45 arriba derecha0022.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0001.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0002.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0003.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0004.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0005.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0006.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0007.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0008.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0009.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0010.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0011.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0012.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0013.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0014.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0015.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0016.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0017.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0018.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0019.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0020.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0021.png");
		loadFile("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0022.png");
		loadFile("img/hamburguesa/abajo/abajo0001.png");
		loadFile("img/hamburguesa/abajo/abajo0002.png");
		loadFile("img/hamburguesa/abajo/abajo0003.png");
		loadFile("img/hamburguesa/abajo/abajo0004.png");
		loadFile("img/hamburguesa/abajo/abajo0005.png");
		loadFile("img/hamburguesa/abajo/abajo0006.png");
		loadFile("img/hamburguesa/abajo/abajo0007.png");
		loadFile("img/hamburguesa/abajo/abajo0008.png");
		loadFile("img/hamburguesa/abajo/abajo0009.png");
		loadFile("img/hamburguesa/abajo/abajo0010.png");
		loadFile("img/hamburguesa/abajo/abajo0011.png");
		loadFile("img/hamburguesa/abajo/abajo0012.png");
		loadFile("img/hamburguesa/abajo/abajo0013.png");
		loadFile("img/hamburguesa/abajo/abajo0014.png");
		loadFile("img/hamburguesa/abajo/abajo0015.png");
		loadFile("img/hamburguesa/abajo/abajo0016.png");
		loadFile("img/hamburguesa/abajo/abajo0017.png");
		loadFile("img/hamburguesa/abajo/abajo0018.png");
		loadFile("img/hamburguesa/abajo/abajo0019.png");
		loadFile("img/hamburguesa/abajo/abajo0020.png");
		loadFile("img/hamburguesa/abajo/abajo0021.png");
		loadFile("img/hamburguesa/abajo/abajo0022.png");
		loadFile("img/hamburguesa/arriba/arriba0001.png");
		loadFile("img/hamburguesa/arriba/arriba0002.png");
		loadFile("img/hamburguesa/arriba/arriba0003.png");
		loadFile("img/hamburguesa/arriba/arriba0004.png");
		loadFile("img/hamburguesa/arriba/arriba0005.png");
		loadFile("img/hamburguesa/arriba/arriba0006.png");
		loadFile("img/hamburguesa/arriba/arriba0007.png");
		loadFile("img/hamburguesa/arriba/arriba0008.png");
		loadFile("img/hamburguesa/arriba/arriba0009.png");
		loadFile("img/hamburguesa/arriba/arriba0010.png");
		loadFile("img/hamburguesa/arriba/arriba0011.png");
		loadFile("img/hamburguesa/arriba/arriba0012.png");
		loadFile("img/hamburguesa/arriba/arriba0013.png");
		loadFile("img/hamburguesa/arriba/arriba0014.png");
		loadFile("img/hamburguesa/arriba/arriba0015.png");
		loadFile("img/hamburguesa/arriba/arriba0016.png");
		loadFile("img/hamburguesa/arriba/arriba0017.png");
		loadFile("img/hamburguesa/arriba/arriba0018.png");
		loadFile("img/hamburguesa/arriba/arriba0019.png");
		loadFile("img/hamburguesa/arriba/arriba0020.png");
		loadFile("img/hamburguesa/arriba/arriba0021.png");
		loadFile("img/hamburguesa/arriba/arriba0022.png");
		loadFile("img/hamburguesa/derecha/derecha0001.png");
		loadFile("img/hamburguesa/derecha/derecha0002.png");
		loadFile("img/hamburguesa/derecha/derecha0003.png");
		loadFile("img/hamburguesa/derecha/derecha0004.png");
		loadFile("img/hamburguesa/derecha/derecha0005.png");
		loadFile("img/hamburguesa/derecha/derecha0006.png");
		loadFile("img/hamburguesa/derecha/derecha0007.png");
		loadFile("img/hamburguesa/derecha/derecha0008.png");
		loadFile("img/hamburguesa/derecha/derecha0009.png");
		loadFile("img/hamburguesa/derecha/derecha0010.png");
		loadFile("img/hamburguesa/derecha/derecha0011.png");
		loadFile("img/hamburguesa/derecha/derecha0012.png");
		loadFile("img/hamburguesa/derecha/derecha0013.png");
		loadFile("img/hamburguesa/derecha/derecha0014.png");
		loadFile("img/hamburguesa/derecha/derecha0015.png");
		loadFile("img/hamburguesa/derecha/derecha0016.png");
		loadFile("img/hamburguesa/derecha/derecha0017.png");
		loadFile("img/hamburguesa/derecha/derecha0018.png");
		loadFile("img/hamburguesa/derecha/derecha0019.png");
		loadFile("img/hamburguesa/derecha/derecha0020.png");
		loadFile("img/hamburguesa/derecha/derecha0021.png");
		loadFile("img/hamburguesa/derecha/derecha0022.png");
		loadFile("img/hamburguesa/hamburgusa xml data sprite.png");
		loadBinary("img/hamburguesa/hamburgusa xml data sprite.xml");
		loadFile("img/hamburguesa/izquierda/izquierda0001.png");
		loadFile("img/hamburguesa/izquierda/izquierda0002.png");
		loadFile("img/hamburguesa/izquierda/izquierda0003.png");
		loadFile("img/hamburguesa/izquierda/izquierda0004.png");
		loadFile("img/hamburguesa/izquierda/izquierda0005.png");
		loadFile("img/hamburguesa/izquierda/izquierda0006.png");
		loadFile("img/hamburguesa/izquierda/izquierda0007.png");
		loadFile("img/hamburguesa/izquierda/izquierda0008.png");
		loadFile("img/hamburguesa/izquierda/izquierda0009.png");
		loadFile("img/hamburguesa/izquierda/izquierda0010.png");
		loadFile("img/hamburguesa/izquierda/izquierda0011.png");
		loadFile("img/hamburguesa/izquierda/izquierda0012.png");
		loadFile("img/hamburguesa/izquierda/izquierda0013.png");
		loadFile("img/hamburguesa/izquierda/izquierda0014.png");
		loadFile("img/hamburguesa/izquierda/izquierda0015.png");
		loadFile("img/hamburguesa/izquierda/izquierda0016.png");
		loadFile("img/hamburguesa/izquierda/izquierda0017.png");
		loadFile("img/hamburguesa/izquierda/izquierda0018.png");
		loadFile("img/hamburguesa/izquierda/izquierda0019.png");
		loadFile("img/hamburguesa/izquierda/izquierda0020.png");
		loadFile("img/hamburguesa/izquierda/izquierda0021.png");
		loadFile("img/hamburguesa/izquierda/izquierda0022.png");
		loadBinary("img/hamburguesa/para hamburguesa.max");
		loadFile("img/start_button.png");
		loadFile("img/static/Bacon.png");
		loadFile("img/static/Burger.png");
		loadFile("img/static/Cucumber.png");
		loadFile("img/static/Lettuce.png");
		loadFile("img/static/Tomato.png");
		loadFile("img/static/TopBread.png");
=======
		loadFile("img/Bacon.png");
		loadFile("img/BreadBottom.png");
		loadFile("img/BreadLeft.png");
		loadFile("img/BreadRight.png");
		loadFile("img/BreadTop.png");
		loadFile("img/Burger.png");
		loadFile("img/CANASTO.png");
		loadFile("img/canasto_SOMBRA.png");
		loadFile("img/cuchillo.png");
		loadFile("img/cuchillo_SOMBRA.png");
		loadFile("img/Cucumber.png");
		loadFile("img/jarra.png");
		loadFile("img/jarra_SOMBRA.png");
		loadFile("img/Lettuce.png");
		loadFile("img/moztaza_ketchup_.png");
		loadFile("img/moztaza_ketchup_smombra.png");
		loadFile("img/options_button.png");
		loadFile("img/pepinos_frasco.png");
		loadFile("img/pepinos_frasco_SOMBRA.png");
		loadFile("img/platos.png");
		loadFile("img/platos_sombras.png");
		loadFile("img/start_button.png");
		loadFile("img/Tomato.png");
		loadFile("img/top.jpg");
>>>>>>> 79b689b3cf3ea341d4eb942446847d2d73b5919b
		loadSound("sound/breadCollide.wav");
		loadSound("sound/eat.wav");
		loadSound("sound/endTheme.wav");
		loadSound("sound/gameTheme.wav");
		loadSound("sound/menuTheme.wav");
		loadSound("sound/tick.wav");
		loadBinary("config/ingredients-cfg.csv");
		
		// bitmaps:
		var resourcePrefix = "NME_:bitmap_";
		for (resourceName in Resource.listNames()) {
			if (StringTools.startsWith (resourceName, resourcePrefix)) {
				var type = Type.resolveClass(StringTools.replace (resourceName.substring(resourcePrefix.length), "_", "."));
				if (type != null) {
					total++;
					#if bitfive_logLoading
						flash.Lib.trace("Loading " + Std.string(type));
					#end
					var instance = Type.createInstance (type, [ 0, 0, true, 0x00FFFFFF, bitmapClass_onComplete ]);
				}
			}
		}
		
		if (total != 0) {
			loaderStack = [];
			for (p in loaders.keys()) loaderStack.push(p);
			urlLoaderStack = [];
			for (p in urlLoaders.keys()) urlLoaderStack.push(p);
			// launch 8 loaders at once:
			for (i in 0 ... 8) nextLoader();
		} else begin();
	}
	
	private static function nextLoader() {
		if (loaderStack.length != 0) {
			var p = loaderStack.shift(), o = loaders.get(p);
			#if bitfive_logLoading
				flash.Lib.trace("Loading " + p);
				o.contentLoaderInfo.addEventListener("complete", function(e) {
					flash.Lib.trace("Loaded " + p);
					loader_onComplete(e);
				});
			#else
				o.contentLoaderInfo.addEventListener("complete", loader_onComplete);
			#end
			o.load(new URLRequest(p));
		} else if (urlLoaderStack.length != 0) {
			var p = urlLoaderStack.shift(), o = urlLoaders.get(p);
			#if bitfive_logLoading
				flash.Lib.trace("Loading " + p);
				o.addEventListener("complete", function(e) {
					flash.Lib.trace("Loaded " + p);
					loader_onComplete(e);
				});
			#else
				o.addEventListener("complete", loader_onComplete);
			#end
			o.load(new URLRequest(p));
		}
	}
	
	private static function loadFile(p:String):Void {
		loaders.set(p, new flash.display.Loader());
		total++;
	}
	
	private static function loadBinary(p:String):Void {
		var o = new flash.net.URLLoader();
		o.dataFormat = URLLoaderDataFormat.BINARY;
		urlLoaders.set(p, o);
		total++;
	}
	
	private static function loadSound(p:String):Void {
		return;
		var i:Int = p.lastIndexOf("."), // extension separator location
			c:Dynamic = untyped flash.media.Sound, // sound class
			s:String, // perceived sound filename (*.mp3)
			o:AudioElement, // audio node
			m:Bool = Lib.mobile,
			f:Dynamic->Void = null, // event listener
			q:String = "canplaythrough"; // preload event
		// not a valid sound path:
		if (i == -1) return;
		// wrong audio type:
		if (!c.canPlayType || !c.canPlayType(p.substr(i + 1))) return;
		// form perceived path:
		s = p.substr(0, i) + ".mp3";
		// already loaded?
		if (c.library.exists(s)) return;
		#if bitfive_logLoading
			flash.Lib.trace("Loading " + p);
		#end
		total++;
		c.library.set(s, o = untyped __js__("new Audio(p)"));
		f = function(_) {
			#if bitfive_logLoading
				flash.Lib.trace("Loaded " + p);
			#end
			if (!m) o.removeEventListener(q, f);
			preloader.onUpdate(++completed, total);
			if (completed == total) begin();
		};
		// do not auto-preload sounds on mobile:
		if (m) f(null); else o.addEventListener(q, f);
	}

	private static function begin():Void {
		preloader.addEventListener(Event.COMPLETE, preloader_onComplete);
		preloader.onLoaded();
	}
	
	private static function bitmapClass_onComplete(instance:BitmapData):Void {
		completed++;
		var classType = Type.getClass (instance);
		Reflect.setField(classType, "preload", instance);
		if (completed == total) begin();
	}

	private static function loader_onComplete(event:Event):Void {
		completed ++;
		preloader.onUpdate (completed, total);
		if (completed == total) begin();
		else nextLoader();
	}

	private static function preloader_onComplete(event:Event):Void {
		preloader.removeEventListener(Event.COMPLETE, preloader_onComplete);
		Lib.current.removeChild(preloader);
		preloader = null;
		if (untyped Main.main == null) {
			var o = new DocumentClass();
			if (Std.is(o, flash.display.DisplayObject)) Lib.current.addChild(cast o);
		} else untyped Main.main();
	}
}

@:build(DocumentClass.build())
class DocumentClass extends Main {
	@:keep public function new() {
		super();
	}
}

#else // macro
import haxe.macro.Context;
import haxe.macro.Expr;

class DocumentClass {
	
	macro public static function build ():Array<Field> {
		var classType = Context.getLocalClass().get();
		var searchTypes = classType;
		while (searchTypes.superClass != null) {
			if(searchTypes.pack.length == 2
			&& searchTypes.pack[1] == "display"
			&& searchTypes.name == "DisplayObject") {
				var fields = Context.getBuildFields();
				var method = macro {
					return flash.Lib.current.stage;
				}
				fields.push( {
					name: "get_stage",
					access: [ APrivate, AOverride ],
					kind: FFun( {
						args: [],
						expr: method,
						params: [],
						ret: macro :flash.display.Stage
					}), pos: Context.currentPos() });
				return fields;
			}
			searchTypes = searchTypes.superClass.t.get();
		}
		return null;
	}
	
}
#end