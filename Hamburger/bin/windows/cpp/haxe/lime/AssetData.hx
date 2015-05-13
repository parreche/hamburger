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
			path.set ("img/BreadBottom.png", "img/BreadBottom.png");
			type.set ("img/BreadBottom.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/BreadTop.png", "img/BreadTop.png");
			type.set ("img/BreadTop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/CANASTO.png", "img/CANASTO.png");
			type.set ("img/CANASTO.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/canasto_SOMBRA.png", "img/canasto_SOMBRA.png");
			type.set ("img/canasto_SOMBRA.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/cuchillo.png", "img/cuchillo.png");
			type.set ("img/cuchillo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/cuchillo_SOMBRA.png", "img/cuchillo_SOMBRA.png");
			type.set ("img/cuchillo_SOMBRA.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/jarra.png", "img/jarra.png");
			type.set ("img/jarra.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/jarra_SOMBRA.png", "img/jarra_SOMBRA.png");
			type.set ("img/jarra_SOMBRA.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/moztaza_ketchup_.png", "img/moztaza_ketchup_.png");
			type.set ("img/moztaza_ketchup_.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/moztaza_ketchup_smombra.png", "img/moztaza_ketchup_smombra.png");
			type.set ("img/moztaza_ketchup_smombra.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/pepinos_frasco.png", "img/pepinos_frasco.png");
			type.set ("img/pepinos_frasco.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/pepinos_frasco_SOMBRA.png", "img/pepinos_frasco_SOMBRA.png");
			type.set ("img/pepinos_frasco_SOMBRA.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/platos.png", "img/platos.png");
			type.set ("img/platos.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/platos_sombras.png", "img/platos_sombras.png");
			type.set ("img/platos_sombras.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/Tomato.png", "img/Tomato.png");
			type.set ("img/Tomato.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
