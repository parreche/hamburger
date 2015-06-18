#if !lime_hybrid


package;


import haxe.Timer;
import haxe.Unserializer;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.MovieClip;
import openfl.events.Event;
import openfl.text.Font;
import openfl.media.Sound;
import openfl.net.URLRequest;
import openfl.utils.ByteArray;
import openfl.Assets;

#if (flash || js)
import openfl.display.Loader;
import openfl.events.Event;
import openfl.net.URLLoader;
#end

#if sys
import sys.FileSystem;
#end

#if ios
import openfl._legacy.utils.SystemPath;
#end


@:access(openfl.media.Sound)
class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
		type.set ("assets/sounds/beep.ogg", AssetType.SOUND);
		path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
		type.set ("assets/sounds/flixel.ogg", AssetType.SOUND);
		path.set ("img/game/game_background.png", "img/game/game_background.png");
		type.set ("img/game/game_background.png", AssetType.IMAGE);
		path.set ("img/game/hud_background.png", "img/game/hud_background.png");
		type.set ("img/game/hud_background.png", AssetType.IMAGE);
		path.set ("img/hamburguesa/hamburgusa xml data sprite.png", "img/hamburguesa/hamburgusa xml data sprite.png");
		type.set ("img/hamburguesa/hamburgusa xml data sprite.png", AssetType.IMAGE);
		path.set ("img/hamburguesa/hamburgusa xml data sprite.xml", "img/hamburguesa/hamburgusa xml data sprite.xml");
		type.set ("img/hamburguesa/hamburgusa xml data sprite.xml", AssetType.TEXT);
		path.set ("img/mainMenu/background_menu.png", "img/mainMenu/background_menu.png");
		type.set ("img/mainMenu/background_menu.png", AssetType.IMAGE);
		path.set ("img/mainMenu/bottomBread.png", "img/mainMenu/bottomBread.png");
		type.set ("img/mainMenu/bottomBread.png", AssetType.IMAGE);
		path.set ("img/mainMenu/credits_button.png", "img/mainMenu/credits_button.png");
		type.set ("img/mainMenu/credits_button.png", AssetType.IMAGE);
		path.set ("img/mainMenu/exit_button.png", "img/mainMenu/exit_button.png");
		type.set ("img/mainMenu/exit_button.png", AssetType.IMAGE);
		path.set ("img/mainMenu/options_button.png", "img/mainMenu/options_button.png");
		type.set ("img/mainMenu/options_button.png", AssetType.IMAGE);
		path.set ("img/mainMenu/start_button.png", "img/mainMenu/start_button.png");
		type.set ("img/mainMenu/start_button.png", AssetType.IMAGE);
		path.set ("img/mainMenu/topBread.png", "img/mainMenu/topBread.png");
		type.set ("img/mainMenu/topBread.png", AssetType.IMAGE);
		path.set ("img/mainMenu/tutorial_button.png", "img/mainMenu/tutorial_button.png");
		type.set ("img/mainMenu/tutorial_button.png", AssetType.IMAGE);
		path.set ("img/pan_garganta/pan garganta xml data sprite.png", "img/pan_garganta/pan garganta xml data sprite.png");
		type.set ("img/pan_garganta/pan garganta xml data sprite.png", AssetType.IMAGE);
		path.set ("img/pan_garganta/pan garganta xml data sprite.xml", "img/pan_garganta/pan garganta xml data sprite.xml");
		type.set ("img/pan_garganta/pan garganta xml data sprite.xml", AssetType.TEXT);
		path.set ("img/static/Bacon.png", "img/static/Bacon.png");
		type.set ("img/static/Bacon.png", AssetType.IMAGE);
		path.set ("img/static/Burger.png", "img/static/Burger.png");
		type.set ("img/static/Burger.png", AssetType.IMAGE);
		path.set ("img/static/Cucumber.png", "img/static/Cucumber.png");
		type.set ("img/static/Cucumber.png", AssetType.IMAGE);
		path.set ("img/static/Lettuce.png", "img/static/Lettuce.png");
		type.set ("img/static/Lettuce.png", AssetType.IMAGE);
		path.set ("img/static/Tomato.png", "img/static/Tomato.png");
		type.set ("img/static/Tomato.png", AssetType.IMAGE);
		path.set ("img/static/TopBread.png", "img/static/TopBread.png");
		type.set ("img/static/TopBread.png", AssetType.IMAGE);
		path.set ("sound/breadCollide.wav", "sound/breadCollide.wav");
		type.set ("sound/breadCollide.wav", AssetType.SOUND);
		path.set ("sound/eat.wav", "sound/eat.wav");
		type.set ("sound/eat.wav", AssetType.SOUND);
		path.set ("sound/endTheme.wav", "sound/endTheme.wav");
		type.set ("sound/endTheme.wav", AssetType.SOUND);
		path.set ("sound/gameTheme.wav", "sound/gameTheme.wav");
		type.set ("sound/gameTheme.wav", AssetType.SOUND);
		path.set ("sound/menuTheme.wav", "sound/menuTheme.wav");
		type.set ("sound/menuTheme.wav", AssetType.SOUND);
		path.set ("sound/tick.wav", "sound/tick.wav");
		type.set ("sound/tick.wav", AssetType.SOUND);
		path.set ("config/ingredients-cfg.csv", "config/ingredients-cfg.csv");
		type.set ("config/ingredients-cfg.csv", AssetType.TEXT);
		path.set ("fonts/Barrio-Regular.ttf", "fonts/Barrio-Regular.ttf");
		type.set ("fonts/Barrio-Regular.ttf", AssetType.FONT);
		
		
		#elseif html5
		
		var id;
		id = "assets/sounds/beep.ogg";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/flixel.ogg";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "img/game/game_background.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/game/hud_background.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/hamburguesa/hamburgusa xml data sprite.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/hamburguesa/hamburgusa xml data sprite.xml";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "img/mainMenu/background_menu.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/bottomBread.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/credits_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/exit_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/options_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/start_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/topBread.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/tutorial_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/pan_garganta/pan garganta xml data sprite.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/pan_garganta/pan garganta xml data sprite.xml";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "img/static/Bacon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/Burger.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/Cucumber.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/Lettuce.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/Tomato.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/TopBread.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "sound/breadCollide.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/eat.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/endTheme.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/gameTheme.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/menuTheme.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/tick.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "config/ingredients-cfg.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "fonts/Barrio-Regular.ttf";
		path.set (id, id);
		type.set (id, AssetType.FONT);
		
		
		#else
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		Font.registerFont (__ASSET__fonts_barrio_regular_ttf);
		
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = this.type.get (id);
		
		#if pixi
		
		if (assetType == IMAGE) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
		#end
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && type == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (type == BINARY || type == null || (assetType == BINARY && type == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		#if pixi
		
		return BitmapData.fromImage (path.get (id));
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), BitmapData);
		
		#elseif openfl_html5
		
		return BitmapData.fromImage (ApplicationMain.images.get (path.get (id)));
		
		#elseif js
		
		return cast (ApplicationMain.loaders.get (path.get (id)).contentLoaderInfo.content, Bitmap).bitmapData;
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), BitmapData);
		else return BitmapData.load (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if (flash)
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);

		#elseif (js || openfl_html5 || pixi)
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}

		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		else return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if pixi
		
		return null;
		
		#elseif (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists(id)) {
			var fontClass = className.get(id);
			Font.registerFont(fontClass);
			return cast (Type.createInstance (fontClass, []), Font);
		} else return new Font (path.get (id));
		
		#end
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		var sound = new Sound ();
		sound.__buffer = true;
		sound.load (new URLRequest (path.get (id)));
		return sound; 
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		else return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		#if flash
		
		if (type != AssetType.MUSIC && type != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:AssetType):Array<String> {
		
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (type == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		#if pixi
		
		handler (getBitmapData (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBitmapData (id));
			
		}
		
		#else
		
		handler (getBitmapData (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if pixi
		
		handler (getBytes (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getFont (id));
			
		//}
		
		#else
		
		handler (getFont (id));
		
		#end
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								path.set (asset.id, asset.path);
								type.set (asset.id, Type.createEnum (AssetType, asset.type));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getSound (id));
			
		//}
		
		#else
		
		handler (getSound (id));
		
		#end
		
	}
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		#if js
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}
		
		#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		#end
		
	}
	
	
}


#if pixi
#elseif flash

































#elseif html5






























@:keep #if display private #end class __ASSET__fonts_barrio_regular_ttf extends flash.text.Font { #if (!openfl_html5_dom) public function new () { super (); fontName = "Barrio"; } #end }


#else

#if (windows || mac || linux)





@:keep class __ASSET__fonts_barrio_regular_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "fonts/Barrio-Regular.ttf"; fontName = "Barrio"; }}


#else


class __ASSET__fonts_barrio_regular_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "fonts/Barrio-Regular.ttf"; fontName = "Barrio";  }}


#end

#end


#else


package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Preloader;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.text.Font;
import lime.utils.ByteArray;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
		type.set ("assets/sounds/beep.ogg", AssetType.SOUND);
		path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
		type.set ("assets/sounds/flixel.ogg", AssetType.SOUND);
		path.set ("img/game/game_background.png", "img/game/game_background.png");
		type.set ("img/game/game_background.png", AssetType.IMAGE);
		path.set ("img/game/hud_background.png", "img/game/hud_background.png");
		type.set ("img/game/hud_background.png", AssetType.IMAGE);
		path.set ("img/hamburguesa/hamburgusa xml data sprite.png", "img/hamburguesa/hamburgusa xml data sprite.png");
		type.set ("img/hamburguesa/hamburgusa xml data sprite.png", AssetType.IMAGE);
		path.set ("img/hamburguesa/hamburgusa xml data sprite.xml", "img/hamburguesa/hamburgusa xml data sprite.xml");
		type.set ("img/hamburguesa/hamburgusa xml data sprite.xml", AssetType.TEXT);
		path.set ("img/mainMenu/background_menu.png", "img/mainMenu/background_menu.png");
		type.set ("img/mainMenu/background_menu.png", AssetType.IMAGE);
		path.set ("img/mainMenu/bottomBread.png", "img/mainMenu/bottomBread.png");
		type.set ("img/mainMenu/bottomBread.png", AssetType.IMAGE);
		path.set ("img/mainMenu/credits_button.png", "img/mainMenu/credits_button.png");
		type.set ("img/mainMenu/credits_button.png", AssetType.IMAGE);
		path.set ("img/mainMenu/exit_button.png", "img/mainMenu/exit_button.png");
		type.set ("img/mainMenu/exit_button.png", AssetType.IMAGE);
		path.set ("img/mainMenu/options_button.png", "img/mainMenu/options_button.png");
		type.set ("img/mainMenu/options_button.png", AssetType.IMAGE);
		path.set ("img/mainMenu/start_button.png", "img/mainMenu/start_button.png");
		type.set ("img/mainMenu/start_button.png", AssetType.IMAGE);
		path.set ("img/mainMenu/topBread.png", "img/mainMenu/topBread.png");
		type.set ("img/mainMenu/topBread.png", AssetType.IMAGE);
		path.set ("img/mainMenu/tutorial_button.png", "img/mainMenu/tutorial_button.png");
		type.set ("img/mainMenu/tutorial_button.png", AssetType.IMAGE);
		path.set ("img/pan_garganta/pan garganta xml data sprite.png", "img/pan_garganta/pan garganta xml data sprite.png");
		type.set ("img/pan_garganta/pan garganta xml data sprite.png", AssetType.IMAGE);
		path.set ("img/pan_garganta/pan garganta xml data sprite.xml", "img/pan_garganta/pan garganta xml data sprite.xml");
		type.set ("img/pan_garganta/pan garganta xml data sprite.xml", AssetType.TEXT);
		path.set ("img/static/Bacon.png", "img/static/Bacon.png");
		type.set ("img/static/Bacon.png", AssetType.IMAGE);
		path.set ("img/static/Burger.png", "img/static/Burger.png");
		type.set ("img/static/Burger.png", AssetType.IMAGE);
		path.set ("img/static/Cucumber.png", "img/static/Cucumber.png");
		type.set ("img/static/Cucumber.png", AssetType.IMAGE);
		path.set ("img/static/Lettuce.png", "img/static/Lettuce.png");
		type.set ("img/static/Lettuce.png", AssetType.IMAGE);
		path.set ("img/static/Tomato.png", "img/static/Tomato.png");
		type.set ("img/static/Tomato.png", AssetType.IMAGE);
		path.set ("img/static/TopBread.png", "img/static/TopBread.png");
		type.set ("img/static/TopBread.png", AssetType.IMAGE);
		path.set ("sound/breadCollide.wav", "sound/breadCollide.wav");
		type.set ("sound/breadCollide.wav", AssetType.SOUND);
		path.set ("sound/eat.wav", "sound/eat.wav");
		type.set ("sound/eat.wav", AssetType.SOUND);
		path.set ("sound/endTheme.wav", "sound/endTheme.wav");
		type.set ("sound/endTheme.wav", AssetType.SOUND);
		path.set ("sound/gameTheme.wav", "sound/gameTheme.wav");
		type.set ("sound/gameTheme.wav", AssetType.SOUND);
		path.set ("sound/menuTheme.wav", "sound/menuTheme.wav");
		type.set ("sound/menuTheme.wav", AssetType.SOUND);
		path.set ("sound/tick.wav", "sound/tick.wav");
		type.set ("sound/tick.wav", AssetType.SOUND);
		path.set ("config/ingredients-cfg.csv", "config/ingredients-cfg.csv");
		type.set ("config/ingredients-cfg.csv", AssetType.TEXT);
		path.set ("fonts/Barrio-Regular.ttf", "fonts/Barrio-Regular.ttf");
		type.set ("fonts/Barrio-Regular.ttf", AssetType.FONT);
		
		
		#elseif html5
		
		var id;
		id = "assets/sounds/beep.ogg";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/flixel.ogg";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "img/game/game_background.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/game/hud_background.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/hamburguesa/hamburgusa xml data sprite.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/hamburguesa/hamburgusa xml data sprite.xml";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "img/mainMenu/background_menu.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/bottomBread.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/credits_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/exit_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/options_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/start_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/topBread.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/tutorial_button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/pan_garganta/pan garganta xml data sprite.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/pan_garganta/pan garganta xml data sprite.xml";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "img/static/Bacon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/Burger.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/Cucumber.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/Lettuce.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/Tomato.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "img/static/TopBread.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "sound/breadCollide.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/eat.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/endTheme.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/gameTheme.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/menuTheme.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "sound/tick.wav";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "config/ingredients-cfg.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "fonts/Barrio-Regular.ttf";
		path.set (id, id);
		type.set (id, AssetType.FONT);
		
		
		var assetsPrefix = ApplicationMain.config.assetsPrefix;
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if openfl
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_barrio_regular_ttf);
		
		#end
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		
		className.set ("fonts/Barrio-Regular.ttf", __ASSET__fonts_barrio_regular_ttf);
		type.set ("fonts/Barrio-Regular.ttf", AssetType.FONT);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), ByteArray));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return cast (Type.createInstance (className.get (id), []), ByteArray);
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return bitmapData.getPixels (bitmapData.rect);
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif html5
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		else return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String, handler:AudioBuffer -> Void):Void {
		
		#if (flash)
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				handler (audioBuffer);
				
			});
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			handler (getAudioBuffer (id));
			
		}
		#else
		handler (getAudioBuffer (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadImage (id:String, handler:Image -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				handler (Image.fromBitmapData (bitmapData));
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getImage (id));
			
		}
		
		#else
		
		handler (getImage (id));
		
		#end
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = ByteArray.readFile ("../Resources/manifest");
			#elseif ios
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if ios
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	/*public override function loadMusic (id:String, handler:Dynamic -> Void):Void {
		
		#if (flash || html5)
		
		//if (path.exists (id)) {
			
		//	var loader = new Loader ();
		//	loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
		//		handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
		//	});
		//	loader.load (new URLRequest (path.get (id)));
			
		//} else {
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}*/
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		//#if html5
		
		/*if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}*/
		
		//#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		//#end
		
	}
	
	
}


#if !display
#if flash

































#elseif html5






























@:keep #if display private #end class __ASSET__fonts_barrio_regular_ttf extends lime.text.Font { public function new () { super (); name = "Barrio"; } } 


#else

@:keep #if display private #end class __ASSET__fonts_barrio_regular_ttf extends lime.text.Font { public function new () { __fontPath = "fonts/Barrio-Regular.ttf"; name = "Barrio"; super (); }}


#if (windows || mac || linux)





#end

#if openfl
@:keep #if display private #end class __ASSET__OPENFL__fonts_barrio_regular_ttf extends openfl.text.Font { public function new () { __fontPath = "fonts/Barrio-Regular.ttf"; name = "Barrio"; super (); }}

#end

#end
#end


#end