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
		
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		className.set ("img/Bacon.png", __ASSET__img_bacon_png);
		type.set ("img/Bacon.png", AssetType.IMAGE);
		className.set ("img/BreadBottom.png", __ASSET__img_breadbottom_png);
		type.set ("img/BreadBottom.png", AssetType.IMAGE);
		className.set ("img/BreadLeft.png", __ASSET__img_breadleft_png);
		type.set ("img/BreadLeft.png", AssetType.IMAGE);
		className.set ("img/BreadRight.png", __ASSET__img_breadright_png);
		type.set ("img/BreadRight.png", AssetType.IMAGE);
		className.set ("img/BreadTop.png", __ASSET__img_breadtop_png);
		type.set ("img/BreadTop.png", AssetType.IMAGE);
<<<<<<< HEAD
=======
		className.set ("img/Burger.png", __ASSET__img_burger_png);
		type.set ("img/Burger.png", AssetType.IMAGE);
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		className.set ("img/CANASTO.png", __ASSET__img_canasto_png);
		type.set ("img/CANASTO.png", AssetType.IMAGE);
		className.set ("img/canasto_SOMBRA.png", __ASSET__img_canasto_sombra_png);
		type.set ("img/canasto_SOMBRA.png", AssetType.IMAGE);
		className.set ("img/cuchillo.png", __ASSET__img_cuchillo_png);
		type.set ("img/cuchillo.png", AssetType.IMAGE);
		className.set ("img/cuchillo_SOMBRA.png", __ASSET__img_cuchillo_sombra_png);
		type.set ("img/cuchillo_SOMBRA.png", AssetType.IMAGE);
<<<<<<< HEAD
		className.set ("img/Cucumber.png", __ASSET__img_cucumber_png);
		type.set ("img/Cucumber.png", AssetType.IMAGE);
=======
<<<<<<< HEAD
=======
>>>>>>> c3b2563ae84cf3602697d14989a17046ac329459
		className.set ("img/glass.png", __ASSET__img_glass_png);
		type.set ("img/glass.png", AssetType.IMAGE);
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		className.set ("img/jarra.png", __ASSET__img_jarra_png);
		type.set ("img/jarra.png", AssetType.IMAGE);
		className.set ("img/jarra_SOMBRA.png", __ASSET__img_jarra_sombra_png);
		type.set ("img/jarra_SOMBRA.png", AssetType.IMAGE);
<<<<<<< HEAD
		className.set ("img/moztaza_ketchup_.png", __ASSET__img_moztaza_ketchup__png);
		type.set ("img/moztaza_ketchup_.png", AssetType.IMAGE);
=======
		className.set ("img/Lettuce.png", __ASSET__img_lettuce_png);
		type.set ("img/Lettuce.png", AssetType.IMAGE);
		className.set ("img/mostaza_ketchup.png", __ASSET__img_mostaza_ketchup_png);
		type.set ("img/mostaza_ketchup.png", AssetType.IMAGE);
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		className.set ("img/moztaza_ketchup_smombra.png", __ASSET__img_moztaza_ketchup_smombra_png);
		type.set ("img/moztaza_ketchup_smombra.png", AssetType.IMAGE);
		className.set ("img/pepinos_frasco_SOMBRA.png", __ASSET__img_pepinos_frasco_sombra_png);
		type.set ("img/pepinos_frasco_SOMBRA.png", AssetType.IMAGE);
<<<<<<< HEAD
=======
		className.set ("img/plate.png", __ASSET__img_plate_png);
		type.set ("img/plate.png", AssetType.IMAGE);
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		className.set ("img/platos.png", __ASSET__img_platos_png);
		type.set ("img/platos.png", AssetType.IMAGE);
		className.set ("img/platos_sombras.png", __ASSET__img_platos_sombras_png);
		type.set ("img/platos_sombras.png", AssetType.IMAGE);
		className.set ("img/Tomato.png", __ASSET__img_tomato_png);
		type.set ("img/Tomato.png", AssetType.IMAGE);
		className.set ("img/top.jpg", __ASSET__img_top_jpg);
		type.set ("img/top.jpg", AssetType.IMAGE);
		className.set ("sound/breadCollide.wav", __ASSET__sound_breadcollide_wav);
		type.set ("sound/breadCollide.wav", AssetType.SOUND);
		className.set ("sound/eat.wav", __ASSET__sound_eat_wav);
		type.set ("sound/eat.wav", AssetType.SOUND);
		className.set ("sound/gameTheme.wav", __ASSET__sound_gametheme_wav);
		type.set ("sound/gameTheme.wav", AssetType.SOUND);
		className.set ("sound/menuTheme.wav", __ASSET__sound_menutheme_wav);
		type.set ("sound/menuTheme.wav", AssetType.SOUND);
		className.set ("sound/tick.wav", __ASSET__sound_tick_wav);
		type.set ("sound/tick.wav", AssetType.SOUND);
		
		
		#elseif html5
		
		var id;
		id = "assets/sounds/beep.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/flixel.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "img/Bacon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/BreadBottom.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/BreadLeft.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/BreadRight.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/BreadTop.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
<<<<<<< HEAD
=======
		id = "img/Burger.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		id = "img/CANASTO.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/canasto_SOMBRA.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cuchillo.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cuchillo_SOMBRA.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
<<<<<<< HEAD
		id = "img/Cucumber.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
=======
<<<<<<< HEAD
=======
>>>>>>> c3b2563ae84cf3602697d14989a17046ac329459
		id = "img/glass.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		id = "img/jarra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/jarra_SOMBRA.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
<<<<<<< HEAD
		id = "img/moztaza_ketchup_.png";
=======
		id = "img/Lettuce.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/mostaza_ketchup.png";
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/moztaza_ketchup_smombra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/pepinos_frasco_SOMBRA.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
<<<<<<< HEAD
=======
		id = "img/plate.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		id = "img/platos.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/platos_sombras.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/Tomato.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/top.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "sound/breadCollide.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "sound/eat.wav";
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
		
		
		var assetsPrefix = ApplicationMain.config.assetsPrefix;
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if openfl
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
<<<<<<< HEAD
=======
		
		
		
		
		
		
		
		
<<<<<<< HEAD
		
		
		
		
		
=======
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
>>>>>>> c3b2563ae84cf3602697d14989a17046ac329459
		#end
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		
		className.set ("img/Bacon.png", __ASSET__img_bacon_png);
		type.set ("img/Bacon.png", AssetType.IMAGE);
		
		className.set ("img/BreadBottom.png", __ASSET__img_breadbottom_png);
		type.set ("img/BreadBottom.png", AssetType.IMAGE);
		
		className.set ("img/BreadLeft.png", __ASSET__img_breadleft_png);
		type.set ("img/BreadLeft.png", AssetType.IMAGE);
		
		className.set ("img/BreadRight.png", __ASSET__img_breadright_png);
		type.set ("img/BreadRight.png", AssetType.IMAGE);
		
		className.set ("img/BreadTop.png", __ASSET__img_breadtop_png);
		type.set ("img/BreadTop.png", AssetType.IMAGE);
		
<<<<<<< HEAD
=======
		className.set ("img/Burger.png", __ASSET__img_burger_png);
		type.set ("img/Burger.png", AssetType.IMAGE);
		
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		className.set ("img/CANASTO.png", __ASSET__img_canasto_png);
		type.set ("img/CANASTO.png", AssetType.IMAGE);
		
		className.set ("img/canasto_SOMBRA.png", __ASSET__img_canasto_sombra_png);
		type.set ("img/canasto_SOMBRA.png", AssetType.IMAGE);
		
		className.set ("img/cuchillo.png", __ASSET__img_cuchillo_png);
		type.set ("img/cuchillo.png", AssetType.IMAGE);
		
		className.set ("img/cuchillo_SOMBRA.png", __ASSET__img_cuchillo_sombra_png);
		type.set ("img/cuchillo_SOMBRA.png", AssetType.IMAGE);
		
<<<<<<< HEAD
		className.set ("img/Cucumber.png", __ASSET__img_cucumber_png);
		type.set ("img/Cucumber.png", AssetType.IMAGE);
		
=======
<<<<<<< HEAD
=======
>>>>>>> c3b2563ae84cf3602697d14989a17046ac329459
		className.set ("img/glass.png", __ASSET__img_glass_png);
		type.set ("img/glass.png", AssetType.IMAGE);
		
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		className.set ("img/jarra.png", __ASSET__img_jarra_png);
		type.set ("img/jarra.png", AssetType.IMAGE);
		
		className.set ("img/jarra_SOMBRA.png", __ASSET__img_jarra_sombra_png);
		type.set ("img/jarra_SOMBRA.png", AssetType.IMAGE);
		
<<<<<<< HEAD
		className.set ("img/moztaza_ketchup_.png", __ASSET__img_moztaza_ketchup__png);
		type.set ("img/moztaza_ketchup_.png", AssetType.IMAGE);
=======
		className.set ("img/Lettuce.png", __ASSET__img_lettuce_png);
		type.set ("img/Lettuce.png", AssetType.IMAGE);
		
		className.set ("img/mostaza_ketchup.png", __ASSET__img_mostaza_ketchup_png);
		type.set ("img/mostaza_ketchup.png", AssetType.IMAGE);
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		
		className.set ("img/moztaza_ketchup_smombra.png", __ASSET__img_moztaza_ketchup_smombra_png);
		type.set ("img/moztaza_ketchup_smombra.png", AssetType.IMAGE);
		
		className.set ("img/pepinos_frasco_SOMBRA.png", __ASSET__img_pepinos_frasco_sombra_png);
		type.set ("img/pepinos_frasco_SOMBRA.png", AssetType.IMAGE);
		
<<<<<<< HEAD
=======
		className.set ("img/plate.png", __ASSET__img_plate_png);
		type.set ("img/plate.png", AssetType.IMAGE);
		
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
		className.set ("img/platos.png", __ASSET__img_platos_png);
		type.set ("img/platos.png", AssetType.IMAGE);
		
		className.set ("img/platos_sombras.png", __ASSET__img_platos_sombras_png);
		type.set ("img/platos_sombras.png", AssetType.IMAGE);
		
		className.set ("img/Tomato.png", __ASSET__img_tomato_png);
		type.set ("img/Tomato.png", AssetType.IMAGE);
		
		className.set ("img/top.jpg", __ASSET__img_top_jpg);
		type.set ("img/top.jpg", AssetType.IMAGE);
		
		className.set ("sound/breadCollide.wav", __ASSET__sound_breadcollide_wav);
		type.set ("sound/breadCollide.wav", AssetType.SOUND);
		
		className.set ("sound/eat.wav", __ASSET__sound_eat_wav);
		type.set ("sound/eat.wav", AssetType.SOUND);
		
		className.set ("sound/gameTheme.wav", __ASSET__sound_gametheme_wav);
		type.set ("sound/gameTheme.wav", AssetType.SOUND);
		
		className.set ("sound/menuTheme.wav", __ASSET__sound_menutheme_wav);
		type.set ("sound/menuTheme.wav", AssetType.SOUND);
		
		className.set ("sound/tick.wav", __ASSET__sound_tick_wav);
		type.set ("sound/tick.wav", AssetType.SOUND);
		
		
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

@:keep @:bind #if display private #end class __ASSET__assets_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_flixel_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__img_bacon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_breadbottom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_breadleft_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_breadright_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_breadtop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
<<<<<<< HEAD
=======
@:keep @:bind #if display private #end class __ASSET__img_burger_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
@:keep @:bind #if display private #end class __ASSET__img_canasto_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_canasto_sombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cuchillo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cuchillo_sombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
<<<<<<< HEAD
@:keep @:bind #if display private #end class __ASSET__img_cucumber_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
=======
<<<<<<< HEAD
@:keep @:bind #if display private #end class __ASSET__img_jarra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_jarra_sombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_moztaza_ketchup__png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_moztaza_ketchup_smombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_pepinos_frasco_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_pepinos_frasco_sombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
=======
>>>>>>> c3b2563ae84cf3602697d14989a17046ac329459
@:keep @:bind #if display private #end class __ASSET__img_glass_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_jarra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_jarra_sombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_lettuce_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mostaza_ketchup_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_moztaza_ketchup_smombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_pepinos_frasco_sombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_plate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
@:keep @:bind #if display private #end class __ASSET__img_platos_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_platos_sombras_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tomato_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_top_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__sound_breadcollide_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_eat_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_gametheme_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_menutheme_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_tick_wav extends flash.media.Sound { }


#elseif html5



















<<<<<<< HEAD
=======













#end
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515

#else



#if (windows || mac || linux)


<<<<<<< HEAD
@:file("C:/HaxeToolkit/haxe/lib/flixel/3,3,8/assets/sounds/beep.mp3") #if display private #end class __ASSET__assets_sounds_beep_mp3 extends lime.utils.ByteArray {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/3,3,8/assets/sounds/flixel.mp3") #if display private #end class __ASSET__assets_sounds_flixel_mp3 extends lime.utils.ByteArray {}
@:image("assets/img/BreadBottom.png") #if display private #end class __ASSET__img_breadbottom_png extends lime.graphics.Image {}
@:image("assets/img/BreadTop.png") #if display private #end class __ASSET__img_breadtop_png extends lime.graphics.Image {}
@:image("assets/img/CANASTO.png") #if display private #end class __ASSET__img_canasto_png extends lime.graphics.Image {}
@:image("assets/img/canasto_SOMBRA.png") #if display private #end class __ASSET__img_canasto_sombra_png extends lime.graphics.Image {}
@:image("assets/img/cuchillo.png") #if display private #end class __ASSET__img_cuchillo_png extends lime.graphics.Image {}
@:image("assets/img/cuchillo_SOMBRA.png") #if display private #end class __ASSET__img_cuchillo_sombra_png extends lime.graphics.Image {}
@:image("assets/img/jarra.png") #if display private #end class __ASSET__img_jarra_png extends lime.graphics.Image {}
@:image("assets/img/jarra_SOMBRA.png") #if display private #end class __ASSET__img_jarra_sombra_png extends lime.graphics.Image {}
@:image("assets/img/moztaza_ketchup_.png") #if display private #end class __ASSET__img_moztaza_ketchup__png extends lime.graphics.Image {}
@:image("assets/img/moztaza_ketchup_smombra.png") #if display private #end class __ASSET__img_moztaza_ketchup_smombra_png extends lime.graphics.Image {}
@:image("assets/img/pepinos_frasco.png") #if display private #end class __ASSET__img_pepinos_frasco_png extends lime.graphics.Image {}
@:image("assets/img/pepinos_frasco_SOMBRA.png") #if display private #end class __ASSET__img_pepinos_frasco_sombra_png extends lime.graphics.Image {}
@:image("assets/img/platos.png") #if display private #end class __ASSET__img_platos_png extends lime.graphics.Image {}
@:image("assets/img/platos_sombras.png") #if display private #end class __ASSET__img_platos_sombras_png extends lime.graphics.Image {}
@:image("assets/img/Tomato.png") #if display private #end class __ASSET__img_tomato_png extends lime.graphics.Image {}

=======
@:sound("C:/HaxeToolkit/haxe/lib/flixel/3,3,6/assets/sounds/beep.mp3") class __ASSET__assets_sounds_beep_mp3 extends lime.audio.AudioSource {}
@:sound("C:/HaxeToolkit/haxe/lib/flixel/3,3,6/assets/sounds/flixel.mp3") class __ASSET__assets_sounds_flixel_mp3 extends lime.audio.AudioSource {}
@:bitmap("assets/img/Bacon.png") class __ASSET__img_bacon_png extends lime.graphics.Image {}
@:bitmap("assets/img/BreadBottom.png") class __ASSET__img_breadbottom_png extends lime.graphics.Image {}
@:bitmap("assets/img/BreadLeft.png") class __ASSET__img_breadleft_png extends lime.graphics.Image {}
@:bitmap("assets/img/BreadRight.png") class __ASSET__img_breadright_png extends lime.graphics.Image {}
@:bitmap("assets/img/BreadTop.png") class __ASSET__img_breadtop_png extends lime.graphics.Image {}
@:bitmap("assets/img/Burger.png") class __ASSET__img_burger_png extends lime.graphics.Image {}
@:bitmap("assets/img/CANASTO.png") class __ASSET__img_canasto_png extends lime.graphics.Image {}
@:bitmap("assets/img/canasto_SOMBRA.png") class __ASSET__img_canasto_sombra_png extends lime.graphics.Image {}
@:bitmap("assets/img/cuchillo.png") class __ASSET__img_cuchillo_png extends lime.graphics.Image {}
@:bitmap("assets/img/cuchillo_SOMBRA.png") class __ASSET__img_cuchillo_sombra_png extends lime.graphics.Image {}
@:bitmap("assets/img/Cucumber.png") class __ASSET__img_cucumber_png extends lime.graphics.Image {}
@:bitmap("assets/img/glass.png") class __ASSET__img_glass_png extends lime.graphics.Image {}
@:bitmap("assets/img/jarra.png") class __ASSET__img_jarra_png extends lime.graphics.Image {}
@:bitmap("assets/img/jarra_SOMBRA.png") class __ASSET__img_jarra_sombra_png extends lime.graphics.Image {}
@:bitmap("assets/img/Lettuce.png") class __ASSET__img_lettuce_png extends lime.graphics.Image {}
@:bitmap("assets/img/mostaza_ketchup.png") class __ASSET__img_mostaza_ketchup_png extends lime.graphics.Image {}
@:bitmap("assets/img/moztaza_ketchup_smombra.png") class __ASSET__img_moztaza_ketchup_smombra_png extends lime.graphics.Image {}
@:bitmap("assets/img/pepinos_frasco_SOMBRA.png") class __ASSET__img_pepinos_frasco_sombra_png extends lime.graphics.Image {}
@:bitmap("assets/img/plate.png") class __ASSET__img_plate_png extends lime.graphics.Image {}
@:bitmap("assets/img/platos.png") class __ASSET__img_platos_png extends lime.graphics.Image {}
@:bitmap("assets/img/platos_sombras.png") class __ASSET__img_platos_sombras_png extends lime.graphics.Image {}
@:bitmap("assets/img/Tomato.png") class __ASSET__img_tomato_png extends lime.graphics.Image {}
@:bitmap("assets/img/top.jpg") class __ASSET__img_top_jpg extends lime.graphics.Image {}
<<<<<<< HEAD
@:sound("assets/sound/breadCollide.wav") class __ASSET__sound_breadcollide_wav extends lime.audio.AudioSource {}
@:sound("assets/sound/eat.wav") class __ASSET__sound_eat_wav extends lime.audio.AudioSource {}
@:sound("assets/sound/gameTheme.wav") class __ASSET__sound_gametheme_wav extends lime.audio.AudioSource {}
@:sound("assets/sound/menuTheme.wav") class __ASSET__sound_menutheme_wav extends lime.audio.AudioSource {}
@:sound("assets/sound/tick.wav") class __ASSET__sound_tick_wav extends lime.audio.AudioSource {}
=======
>>>>>>> 0c4b0e71d636992cf4c099813a59505ce93a9515
>>>>>>> c3b2563ae84cf3602697d14989a17046ac329459


#end

#if openfl

#end

#end
#end

