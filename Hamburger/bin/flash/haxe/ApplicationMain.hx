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
		
		
		urls.push ("img/game/game_background.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/game/hud_background.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo derecha/45 abajo derecha0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 abajo izquierda/45 abajo izquierda0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba derecha/45 arriba derecha0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/45 arriba izquierda/45 arriba izquierda0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/abajo/abajo0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/arriba/arriba0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/derecha/derecha0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/hamburgusa xml data sprite.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/hamburgusa xml data sprite.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/izquierda/izquierda0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/hamburguesa/para hamburguesa.max");
		types.push (lime.Assets.AssetType.BINARY);
		
		
		urls.push ("img/mainMenu/background_menu.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/bottomBread.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/credits_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/exit_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/options_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/start_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/topBread.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/mainMenu/tutorial_button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Bacon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Burger.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Cucumber.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Lettuce.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/Tomato.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("img/static/TopBread.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("sound/breadCollide.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/eat.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/endTheme.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/gameTheme.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/menuTheme.wav");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("sound/tick.wav");
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
