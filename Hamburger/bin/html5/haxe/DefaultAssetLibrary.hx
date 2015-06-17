package;

import haxe.Timer;
import haxe.Unserializer;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Loader;
import openfl.events.Event;
import openfl.media.Sound;
import openfl.net.URLLoader;
import openfl.net.URLRequest;
import openfl.text.Font;
import openfl.utils.ByteArray;

class DefaultAssetLibrary extends openfl.AssetLibrary {
	public var className(default, null) = new Map<String, Dynamic>();
	public var path(default, null) = new Map<String, String>();
	public var type(default, null) = new Map<String, AssetType>();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	public function new() {
		super();
		// register assets:
		add("assets/sounds/beep.mp3", MUSIC);
		add("assets/sounds/flixel.mp3", MUSIC);
		add("assets/sounds/beep.ogg", SOUND);
		add("assets/sounds/flixel.ogg", SOUND);
		add("img/background_menu.png", IMAGE);
<<<<<<< HEAD
		add("img/game/game_background.png", IMAGE);
		add("img/game/hud_background.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0001.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0002.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0003.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0004.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0005.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0006.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0007.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0008.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0009.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0010.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0011.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0012.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0013.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0014.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0015.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0016.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0017.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0018.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0019.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0020.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0021.png", IMAGE);
		add("img/hamburguesa/45 abajo derecha/45 abajo derecha0022.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0001.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0002.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0003.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0004.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0005.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0006.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0007.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0008.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0009.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0010.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0011.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0012.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0013.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0014.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0015.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0016.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0017.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0018.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0019.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0020.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0021.png", IMAGE);
		add("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0022.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0001.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0002.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0003.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0004.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0005.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0006.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0007.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0008.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0009.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0010.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0011.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0012.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0013.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0014.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0015.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0016.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0017.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0018.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0019.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0020.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0021.png", IMAGE);
		add("img/hamburguesa/45 arriba derecha/45 arriba derecha0022.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0001.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0002.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0003.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0004.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0005.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0006.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0007.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0008.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0009.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0010.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0011.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0012.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0013.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0014.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0015.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0016.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0017.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0018.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0019.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0020.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0021.png", IMAGE);
		add("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0022.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0001.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0002.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0003.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0004.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0005.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0006.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0007.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0008.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0009.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0010.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0011.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0012.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0013.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0014.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0015.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0016.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0017.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0018.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0019.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0020.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0021.png", IMAGE);
		add("img/hamburguesa/abajo/abajo0022.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0001.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0002.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0003.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0004.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0005.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0006.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0007.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0008.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0009.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0010.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0011.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0012.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0013.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0014.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0015.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0016.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0017.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0018.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0019.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0020.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0021.png", IMAGE);
		add("img/hamburguesa/arriba/arriba0022.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0001.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0002.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0003.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0004.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0005.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0006.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0007.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0008.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0009.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0010.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0011.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0012.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0013.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0014.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0015.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0016.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0017.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0018.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0019.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0020.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0021.png", IMAGE);
		add("img/hamburguesa/derecha/derecha0022.png", IMAGE);
		add("img/hamburguesa/hamburgusa xml data sprite.png", IMAGE);
		add("img/hamburguesa/hamburgusa xml data sprite.xml", TEXT);
		add("img/hamburguesa/izquierda/izquierda0001.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0002.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0003.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0004.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0005.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0006.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0007.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0008.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0009.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0010.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0011.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0012.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0013.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0014.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0015.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0016.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0017.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0018.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0019.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0020.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0021.png", IMAGE);
		add("img/hamburguesa/izquierda/izquierda0022.png", IMAGE);
		add("img/hamburguesa/para hamburguesa.max", BINARY);
		add("img/start_button.png", IMAGE);
		add("img/static/Bacon.png", IMAGE);
		add("img/static/Burger.png", IMAGE);
		add("img/static/Cucumber.png", IMAGE);
		add("img/static/Lettuce.png", IMAGE);
		add("img/static/Tomato.png", IMAGE);
		add("img/static/TopBread.png", IMAGE);
=======
		add("img/Bacon.png", IMAGE);
		add("img/BreadBottom.png", IMAGE);
		add("img/BreadLeft.png", IMAGE);
		add("img/BreadRight.png", IMAGE);
		add("img/BreadTop.png", IMAGE);
		add("img/Burger.png", IMAGE);
		add("img/CANASTO.png", IMAGE);
		add("img/canasto_SOMBRA.png", IMAGE);
		add("img/cuchillo.png", IMAGE);
		add("img/cuchillo_SOMBRA.png", IMAGE);
		add("img/Cucumber.png", IMAGE);
		add("img/jarra.png", IMAGE);
		add("img/jarra_SOMBRA.png", IMAGE);
		add("img/Lettuce.png", IMAGE);
		add("img/moztaza_ketchup_.png", IMAGE);
		add("img/moztaza_ketchup_smombra.png", IMAGE);
		add("img/options_button.png", IMAGE);
		add("img/pepinos_frasco.png", IMAGE);
		add("img/pepinos_frasco_SOMBRA.png", IMAGE);
		add("img/platos.png", IMAGE);
		add("img/platos_sombras.png", IMAGE);
		add("img/start_button.png", IMAGE);
		add("img/Tomato.png", IMAGE);
		add("img/top.jpg", IMAGE);
>>>>>>> 79b689b3cf3ea341d4eb942446847d2d73b5919b
		add("sound/breadCollide.wav", SOUND);
		add("sound/eat.wav", SOUND);
		add("sound/endTheme.wav", SOUND);
		add("sound/gameTheme.wav", SOUND);
		add("sound/menuTheme.wav", SOUND);
		add("sound/tick.wav", SOUND);
		add("config/ingredients-cfg.csv", TEXT);
<<<<<<< HEAD
		add("fonts/Barrio-Regular.ttf", FONT);
=======
>>>>>>> 79b689b3cf3ea341d4eb942446847d2d73b5919b
		//
	}
	
	private function add(id:String, t:AssetType, ?p:String) {
		type.set(id, t);
		path.set(id, p != null ? p : id);
	}
	
	override public function getPath(id:String):String {
		return path.get(id);
	}
	
	override public function exists(id:String, t:AssetType):Bool {
		var r = type.get(id);
		if (r != null) {
			if (r == t || t == null) return true;
			switch (t) {
			case AssetType.SOUND: return r == AssetType.MUSIC;
			case AssetType.MUSIC: return r == AssetType.SOUND;
			case AssetType.BINARY: return true;
			default: return false;
			}
		}
		return false;
	}
	
	override public function getBitmapData(id:String):BitmapData {
		var q = ApplicationMain.loaders.get(path.get(id));
		var b:Bitmap = cast q.contentLoaderInfo.content;
		return b.bitmapData;
	}
	
	override public function getFont(id:String):Font {
		// not yet.
		return null;
	}
	
	override public function getSound(id:String):Sound {
		return new Sound(new URLRequest(path.get(id)));
	}
	
	override public function getMusic(id:String):Sound {
		return new Sound(new URLRequest(path.get(id)));
	}
	
	override public function getBytes(id:String):ByteArray {
		var r:ByteArray = null;
		var p = path.get(id);
		var d = ApplicationMain.urlLoaders.get(p).data;
		if (Std.is(d, String)) {
			(r = new ByteArray()).writeUTFBytes(cast d);
		} else if (Std.is(d, ByteArray)) {
			r = cast d;
		} else r = null;
		if (r != null) {
			r.position = 0;
			return r;
		} else return null;
	}
	
	override public function getText(id:String):String {
		var r:ByteArray = null;
		var p = path.get(id);
		var d = ApplicationMain.urlLoaders.get(p).data;
		if (Std.is(d, String)) {
			return cast d;
		} else if (Std.is(d, ByteArray)) {
			r = cast d;
			r.position = 0;
			return r.readUTFBytes(r.length);
		} else return null;
	}
	
	override public function list(t:AssetType):Array<String> {
		var r:Array<String> = [];
		for (id in type.keys()) {
			if (t == null || exists(id, t)) r.push(id);
		}
		return r;
	}
	
	override public function loadBitmapData(id:String, h:BitmapData->Void):Void {
		if (path.exists(id)) {
			var r = new Loader();
			var f:Event->Void = null;
			f = function(e:Event) {
				r.contentLoaderInfo.removeEventListener(Event.COMPLETE, f);
				var b:Bitmap = cast e.currentTarget.content;
				h(b.bitmapData);
				b = null; f = null; r = null;
			};
			r.addEventListener(Event.COMPLETE, f);
			r.load(new URLRequest(path.get(id)));
		} else h(getBitmapData(id));
	}
	
	override public function loadFont(id:String, h:Font->Void):Void {
		h(getFont(id));
	}
	
	override public function loadSound(id:String, h:Sound->Void):Void {
		h(getSound(id));
	}
	
	override public function loadMusic(id:String, h:Sound->Void):Void {
		h(getMusic(id));
	}
	
	override public function loadBytes(id:String, h:ByteArray->Void):Void {
		if (path.exists(id)) {
			var r = new URLLoader();
			var f:Event->Void = null;
			f = function(e:Event) {
				r.removeEventListener(Event.COMPLETE, f);
				var b = new ByteArray();
				b.writeUTFBytes(e.currentTarget.data);
				b.position = 0;
				h(b);
				b = null; f = null; r = null;
			};
			r.addEventListener(Event.COMPLETE, f);
		} else h(getBytes(id));
	}
	
	override public function loadText(id:String, h:String->Void):Void {
		if (path.exists(id)) {
			var r = new URLLoader();
			var f:Event->Void = null;
			f = function(e:Event) {
				r.removeEventListener(Event.COMPLETE, f);
				h(e.currentTarget.data);
				f = null; r = null;
			};
			r.addEventListener(Event.COMPLETE, f);
		} else h(getText(id));
	}
	
}
