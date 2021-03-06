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
		className.set ("img/cheddar/cheddar xml data sprite.png", __ASSET__img_cheddar_cheddar_xml_data_sprite_png);
		type.set ("img/cheddar/cheddar xml data sprite.png", AssetType.IMAGE);
		className.set ("img/cheddar/cheddar xml data sprite.xml", __ASSET__img_cheddar_cheddar_xml_data_sprite_xml);
		type.set ("img/cheddar/cheddar xml data sprite.xml", AssetType.TEXT);
		className.set ("img/cheddar/cheddar_comer_xml.png", __ASSET__img_cheddar_cheddar_comer_xml_png);
		type.set ("img/cheddar/cheddar_comer_xml.png", AssetType.IMAGE);
		className.set ("img/cheddar/cheddar_comer_xml.xml", __ASSET__img_cheddar_cheddar_comer_xml_xml);
		type.set ("img/cheddar/cheddar_comer_xml.xml", AssetType.TEXT);
		className.set ("img/credits/Boton_Main_Menu.png", __ASSET__img_credits_boton_main_menu_png);
		type.set ("img/credits/Boton_Main_Menu.png", AssetType.IMAGE);
		className.set ("img/credits/Creditos_base.jpg", __ASSET__img_credits_creditos_base_jpg);
		type.set ("img/credits/Creditos_base.jpg", AssetType.IMAGE);
		className.set ("img/game/end/background_end_game.jpg", __ASSET__img_game_end_background_end_game_jpg);
		type.set ("img/game/end/background_end_game.jpg", AssetType.IMAGE);
		className.set ("img/game/end/High_Score.png", __ASSET__img_game_end_high_score_png);
		type.set ("img/game/end/High_Score.png", AssetType.IMAGE);
		className.set ("img/game/end/ingredients/Chedar.png", __ASSET__img_game_end_ingredients_chedar_png);
		type.set ("img/game/end/ingredients/Chedar.png", AssetType.IMAGE);
		className.set ("img/game/end/ingredients/Cheddar.png", __ASSET__img_game_end_ingredients_cheddar_png);
		type.set ("img/game/end/ingredients/Cheddar.png", AssetType.IMAGE);
		className.set ("img/game/end/ingredients/Hamburguesa.png", __ASSET__img_game_end_ingredients_hamburguesa_png);
		type.set ("img/game/end/ingredients/Hamburguesa.png", AssetType.IMAGE);
		className.set ("img/game/end/ingredients/Lechuga.png", __ASSET__img_game_end_ingredients_lechuga_png);
		type.set ("img/game/end/ingredients/Lechuga.png", AssetType.IMAGE);
		className.set ("img/game/end/ingredients/Panceta.png", __ASSET__img_game_end_ingredients_panceta_png);
		type.set ("img/game/end/ingredients/Panceta.png", AssetType.IMAGE);
		className.set ("img/game/end/ingredients/Pepino.png", __ASSET__img_game_end_ingredients_pepino_png);
		type.set ("img/game/end/ingredients/Pepino.png", AssetType.IMAGE);
		className.set ("img/game/end/ingredients/Tomate.png", __ASSET__img_game_end_ingredients_tomate_png);
		type.set ("img/game/end/ingredients/Tomate.png", AssetType.IMAGE);
		className.set ("img/game/end/ingredients/topBread.png", __ASSET__img_game_end_ingredients_topbread_png);
		type.set ("img/game/end/ingredients/topBread.png", AssetType.IMAGE);
		className.set ("img/game/end/mainMenu_button.png", __ASSET__img_game_end_mainmenu_button_png);
		type.set ("img/game/end/mainMenu_button.png", AssetType.IMAGE);
		className.set ("img/game/end/playAgain_button.png", __ASSET__img_game_end_playagain_button_png);
		type.set ("img/game/end/playAgain_button.png", AssetType.IMAGE);
		className.set ("img/game/game_background.jpg", __ASSET__img_game_game_background_jpg);
		type.set ("img/game/game_background.jpg", AssetType.IMAGE);
		className.set ("img/game/hud_background.png", __ASSET__img_game_hud_background_png);
		type.set ("img/game/hud_background.png", AssetType.IMAGE);
		className.set ("img/game/mainMenu_button.png", __ASSET__img_game_mainmenu_button_png);
		type.set ("img/game/mainMenu_button.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/canasta.png", __ASSET__img_game_obstacles_canasta_png);
		type.set ("img/game/obstacles/canasta.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/canastaSombra.png", __ASSET__img_game_obstacles_canastasombra_png);
		type.set ("img/game/obstacles/canastaSombra.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/cuchillo.png", __ASSET__img_game_obstacles_cuchillo_png);
		type.set ("img/game/obstacles/cuchillo.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/cuchilloSombra.png", __ASSET__img_game_obstacles_cuchillosombra_png);
		type.set ("img/game/obstacles/cuchilloSombra.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/frasco.png", __ASSET__img_game_obstacles_frasco_png);
		type.set ("img/game/obstacles/frasco.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/frasco2.png", __ASSET__img_game_obstacles_frasco2_png);
		type.set ("img/game/obstacles/frasco2.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/frasco2Sombra.png", __ASSET__img_game_obstacles_frasco2sombra_png);
		type.set ("img/game/obstacles/frasco2Sombra.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/frascoSombra.png", __ASSET__img_game_obstacles_frascosombra_png);
		type.set ("img/game/obstacles/frascoSombra.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/jarra.png", __ASSET__img_game_obstacles_jarra_png);
		type.set ("img/game/obstacles/jarra.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/jarraSombra.png", __ASSET__img_game_obstacles_jarrasombra_png);
		type.set ("img/game/obstacles/jarraSombra.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/ketchup.png", __ASSET__img_game_obstacles_ketchup_png);
		type.set ("img/game/obstacles/ketchup.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/ketchupSombra.png", __ASSET__img_game_obstacles_ketchupsombra_png);
		type.set ("img/game/obstacles/ketchupSombra.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/plato sombra.png", __ASSET__img_game_obstacles_plato_sombra_png);
		type.set ("img/game/obstacles/plato sombra.png", AssetType.IMAGE);
		className.set ("img/game/obstacles/plato.png", __ASSET__img_game_obstacles_plato_png);
		type.set ("img/game/obstacles/plato.png", AssetType.IMAGE);
		className.set ("img/game/pause.png", __ASSET__img_game_pause_png);
		type.set ("img/game/pause.png", AssetType.IMAGE);
		className.set ("img/game/pause_button.png", __ASSET__img_game_pause_button_png);
		type.set ("img/game/pause_button.png", AssetType.IMAGE);
		className.set ("img/game/resume_button.png", __ASSET__img_game_resume_button_png);
		type.set ("img/game/resume_button.png", AssetType.IMAGE);
		className.set ("img/hamburguesa/hamburgusa xml data sprite.png", __ASSET__img_hamburguesa_hamburgusa_xml_data_sprite_png);
		type.set ("img/hamburguesa/hamburgusa xml data sprite.png", AssetType.IMAGE);
		className.set ("img/hamburguesa/hamburgusa xml data sprite.xml", __ASSET__img_hamburguesa_hamburgusa_xml_data_sprite_xml);
		type.set ("img/hamburguesa/hamburgusa xml data sprite.xml", AssetType.TEXT);
		className.set ("img/hamburguesa/hamburg_comer_xml.png", __ASSET__img_hamburguesa_hamburg_comer_xml_png);
		type.set ("img/hamburguesa/hamburg_comer_xml.png", AssetType.IMAGE);
		className.set ("img/hamburguesa/hamburg_comer_xml.xml", __ASSET__img_hamburguesa_hamburg_comer_xml_xml);
		type.set ("img/hamburguesa/hamburg_comer_xml.xml", AssetType.TEXT);
		className.set ("img/lechuga/lechuga xml data sprite.png", __ASSET__img_lechuga_lechuga_xml_data_sprite_png);
		type.set ("img/lechuga/lechuga xml data sprite.png", AssetType.IMAGE);
		className.set ("img/lechuga/lechuga xml data sprite.xml", __ASSET__img_lechuga_lechuga_xml_data_sprite_xml);
		type.set ("img/lechuga/lechuga xml data sprite.xml", AssetType.TEXT);
		className.set ("img/lechuga/lechuga_comer_xml.png", __ASSET__img_lechuga_lechuga_comer_xml_png);
		type.set ("img/lechuga/lechuga_comer_xml.png", AssetType.IMAGE);
		className.set ("img/lechuga/lechuga_comer_xml.xml", __ASSET__img_lechuga_lechuga_comer_xml_xml);
		type.set ("img/lechuga/lechuga_comer_xml.xml", AssetType.TEXT);
		className.set ("img/mainMenu/animation/background_title.png", __ASSET__img_mainmenu_animation_background_title_png);
		type.set ("img/mainMenu/animation/background_title.png", AssetType.IMAGE);
		className.set ("img/mainMenu/background_menu.png", __ASSET__img_mainmenu_background_menu_png);
		type.set ("img/mainMenu/background_menu.png", AssetType.IMAGE);
		className.set ("img/mainMenu/bottomBread.png", __ASSET__img_mainmenu_bottombread_png);
		type.set ("img/mainMenu/bottomBread.png", AssetType.IMAGE);
		className.set ("img/mainMenu/exit_button.png", __ASSET__img_mainmenu_exit_button_png);
		type.set ("img/mainMenu/exit_button.png", AssetType.IMAGE);
		className.set ("img/mainMenu/options_button.png", __ASSET__img_mainmenu_options_button_png);
		type.set ("img/mainMenu/options_button.png", AssetType.IMAGE);
		className.set ("img/mainMenu/ranking_button.png", __ASSET__img_mainmenu_ranking_button_png);
		type.set ("img/mainMenu/ranking_button.png", AssetType.IMAGE);
		className.set ("img/mainMenu/start_button.png", __ASSET__img_mainmenu_start_button_png);
		type.set ("img/mainMenu/start_button.png", AssetType.IMAGE);
		className.set ("img/mainMenu/topBread.png", __ASSET__img_mainmenu_topbread_png);
		type.set ("img/mainMenu/topBread.png", AssetType.IMAGE);
		className.set ("img/mainMenu/tutorial_button.png", __ASSET__img_mainmenu_tutorial_button_png);
		type.set ("img/mainMenu/tutorial_button.png", AssetType.IMAGE);
		className.set ("img/optionsMenu/Boton_Bajar.png", __ASSET__img_optionsmenu_boton_bajar_png);
		type.set ("img/optionsMenu/Boton_Bajar.png", AssetType.IMAGE);
		className.set ("img/optionsMenu/Boton_Subir.png", __ASSET__img_optionsmenu_boton_subir_png);
		type.set ("img/optionsMenu/Boton_Subir.png", AssetType.IMAGE);
		className.set ("img/optionsMenu/check.png", __ASSET__img_optionsmenu_check_png);
		type.set ("img/optionsMenu/check.png", AssetType.IMAGE);
		className.set ("img/optionsMenu/close_button.png", __ASSET__img_optionsmenu_close_button_png);
		type.set ("img/optionsMenu/close_button.png", AssetType.IMAGE);
		className.set ("img/optionsMenu/credits_button.png", __ASSET__img_optionsmenu_credits_button_png);
		type.set ("img/optionsMenu/credits_button.png", AssetType.IMAGE);
		className.set ("img/optionsMenu/cross.png", __ASSET__img_optionsmenu_cross_png);
		type.set ("img/optionsMenu/cross.png", AssetType.IMAGE);
		className.set ("img/optionsMenu/options.png", __ASSET__img_optionsmenu_options_png);
		type.set ("img/optionsMenu/options.png", AssetType.IMAGE);
		className.set ("img/optionsMenu/slider.png", __ASSET__img_optionsmenu_slider_png);
		type.set ("img/optionsMenu/slider.png", AssetType.IMAGE);
		className.set ("img/panceta/panceta xml data sprite.png", __ASSET__img_panceta_panceta_xml_data_sprite_png);
		type.set ("img/panceta/panceta xml data sprite.png", AssetType.IMAGE);
		className.set ("img/panceta/panceta xml data sprite.xml", __ASSET__img_panceta_panceta_xml_data_sprite_xml);
		type.set ("img/panceta/panceta xml data sprite.xml", AssetType.TEXT);
		className.set ("img/panceta/panceta_comer_xml.png", __ASSET__img_panceta_panceta_comer_xml_png);
		type.set ("img/panceta/panceta_comer_xml.png", AssetType.IMAGE);
		className.set ("img/panceta/panceta_comer_xml.xml", __ASSET__img_panceta_panceta_comer_xml_xml);
		type.set ("img/panceta/panceta_comer_xml.xml", AssetType.TEXT);
		className.set ("img/pan_garganta/pan garganta xml data sprite.png", __ASSET__img_pan_garganta_pan_garganta_xml_data_sprite_png);
		type.set ("img/pan_garganta/pan garganta xml data sprite.png", AssetType.IMAGE);
		className.set ("img/pan_garganta/pan garganta xml data sprite.xml", __ASSET__img_pan_garganta_pan_garganta_xml_data_sprite_xml);
		type.set ("img/pan_garganta/pan garganta xml data sprite.xml", AssetType.TEXT);
		className.set ("img/pan_lengua/pan lengua xml data sprite.png", __ASSET__img_pan_lengua_pan_lengua_xml_data_sprite_png);
		type.set ("img/pan_lengua/pan lengua xml data sprite.png", AssetType.IMAGE);
		className.set ("img/pan_lengua/pan lengua xml data sprite.xml", __ASSET__img_pan_lengua_pan_lengua_xml_data_sprite_xml);
		type.set ("img/pan_lengua/pan lengua xml data sprite.xml", AssetType.TEXT);
		className.set ("img/pepinos/pepino xml data sprite.png", __ASSET__img_pepinos_pepino_xml_data_sprite_png);
		type.set ("img/pepinos/pepino xml data sprite.png", AssetType.IMAGE);
		className.set ("img/pepinos/pepino xml data sprite.xml", __ASSET__img_pepinos_pepino_xml_data_sprite_xml);
		type.set ("img/pepinos/pepino xml data sprite.xml", AssetType.TEXT);
		className.set ("img/pepinos/pepino_comer_xml.png", __ASSET__img_pepinos_pepino_comer_xml_png);
		type.set ("img/pepinos/pepino_comer_xml.png", AssetType.IMAGE);
		className.set ("img/pepinos/pepino_comer_xml.xml", __ASSET__img_pepinos_pepino_comer_xml_xml);
		type.set ("img/pepinos/pepino_comer_xml.xml", AssetType.TEXT);
		className.set ("img/ranking/Boton_Cerrar.png", __ASSET__img_ranking_boton_cerrar_png);
		type.set ("img/ranking/Boton_Cerrar.png", AssetType.IMAGE);
		className.set ("img/ranking/Menu_de_Ranking.png", __ASSET__img_ranking_menu_de_ranking_png);
		type.set ("img/ranking/Menu_de_Ranking.png", AssetType.IMAGE);
		className.set ("img/ranking/RANKING_FINAL.jpg", __ASSET__img_ranking_ranking_final_jpg);
		type.set ("img/ranking/RANKING_FINAL.jpg", AssetType.IMAGE);
		className.set ("img/static/Bacon.png", __ASSET__img_static_bacon_png);
		type.set ("img/static/Bacon.png", AssetType.IMAGE);
		className.set ("img/static/Burger.png", __ASSET__img_static_burger_png);
		type.set ("img/static/Burger.png", AssetType.IMAGE);
		className.set ("img/static/Cheddar.png", __ASSET__img_static_cheddar_png);
		type.set ("img/static/Cheddar.png", AssetType.IMAGE);
		className.set ("img/static/Cucumber.png", __ASSET__img_static_cucumber_png);
		type.set ("img/static/Cucumber.png", AssetType.IMAGE);
		className.set ("img/static/Lettuce.png", __ASSET__img_static_lettuce_png);
		type.set ("img/static/Lettuce.png", AssetType.IMAGE);
		className.set ("img/static/Tomato.png", __ASSET__img_static_tomato_png);
		type.set ("img/static/Tomato.png", AssetType.IMAGE);
		className.set ("img/static/TopBread.png", __ASSET__img_static_topbread_png);
		type.set ("img/static/TopBread.png", AssetType.IMAGE);
		className.set ("img/tomate/tomate xml data sprite.png", __ASSET__img_tomate_tomate_xml_data_sprite_png);
		type.set ("img/tomate/tomate xml data sprite.png", AssetType.IMAGE);
		className.set ("img/tomate/tomate xml data sprite.xml", __ASSET__img_tomate_tomate_xml_data_sprite_xml);
		type.set ("img/tomate/tomate xml data sprite.xml", AssetType.TEXT);
		className.set ("img/tomate/tomate_comer_xml.png", __ASSET__img_tomate_tomate_comer_xml_png);
		type.set ("img/tomate/tomate_comer_xml.png", AssetType.IMAGE);
		className.set ("img/tomate/tomate_comer_xml.xml", __ASSET__img_tomate_tomate_comer_xml_xml);
		type.set ("img/tomate/tomate_comer_xml.xml", AssetType.TEXT);
		className.set ("img/tutorial/Boton_Next.png", __ASSET__img_tutorial_boton_next_png);
		type.set ("img/tutorial/Boton_Next.png", AssetType.IMAGE);
		className.set ("img/tutorial/Boton_Skip.png", __ASSET__img_tutorial_boton_skip_png);
		type.set ("img/tutorial/Boton_Skip.png", AssetType.IMAGE);
		className.set ("img/tutorial/Tutorial_1.jpg", __ASSET__img_tutorial_tutorial_1_jpg);
		type.set ("img/tutorial/Tutorial_1.jpg", AssetType.IMAGE);
		className.set ("img/tutorial/Tutorial_2.jpg", __ASSET__img_tutorial_tutorial_2_jpg);
		type.set ("img/tutorial/Tutorial_2.jpg", AssetType.IMAGE);
		className.set ("img/tutorial/Tutorial_3.jpg", __ASSET__img_tutorial_tutorial_3_jpg);
		type.set ("img/tutorial/Tutorial_3.jpg", AssetType.IMAGE);
		className.set ("img/tutorial/Tutorial_4.jpg", __ASSET__img_tutorial_tutorial_4_jpg);
		type.set ("img/tutorial/Tutorial_4.jpg", AssetType.IMAGE);
		className.set ("sound/Alarma.wav", __ASSET__sound_alarma_wav);
		type.set ("sound/Alarma.wav", AssetType.SOUND);
		className.set ("sound/Ambiente_de_fondo.wav", __ASSET__sound_ambiente_de_fondo_wav);
		type.set ("sound/Ambiente_de_fondo.wav", AssetType.SOUND);
		className.set ("sound/Botones.wav", __ASSET__sound_botones_wav);
		type.set ("sound/Botones.wav", AssetType.SOUND);
		className.set ("sound/Comer.wav", __ASSET__sound_comer_wav);
		type.set ("sound/Comer.wav", AssetType.SOUND);
		className.set ("sound/Final.wav", __ASSET__sound_final_wav);
		type.set ("sound/Final.wav", AssetType.SOUND);
		className.set ("sound/Musica_del_juego.wav", __ASSET__sound_musica_del_juego_wav);
		type.set ("sound/Musica_del_juego.wav", AssetType.SOUND);
		className.set ("config/ingredients-cfg.csv", __ASSET__config_ingredients_cfg_csv);
		type.set ("config/ingredients-cfg.csv", AssetType.TEXT);
		className.set ("fonts/Barrio-Regular.ttf", __ASSET__fonts_barrio_regular_ttf);
		type.set ("fonts/Barrio-Regular.ttf", AssetType.FONT);
		
		
		#elseif html5
		
		var id;
		id = "assets/sounds/beep.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/flixel.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "img/cheddar/cheddar xml data sprite.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cheddar/cheddar xml data sprite.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/cheddar/cheddar_comer_xml.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cheddar/cheddar_comer_xml.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/credits/Boton_Main_Menu.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/credits/Creditos_base.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/background_end_game.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/High_Score.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/ingredients/Chedar.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/ingredients/Cheddar.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/ingredients/Hamburguesa.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/ingredients/Lechuga.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/ingredients/Panceta.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/ingredients/Pepino.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/ingredients/Tomate.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/ingredients/topBread.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/mainMenu_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/end/playAgain_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/game_background.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/hud_background.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/mainMenu_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/canasta.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/canastaSombra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/cuchillo.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/cuchilloSombra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/frasco.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/frasco2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/frasco2Sombra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/frascoSombra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/jarra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/jarraSombra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/ketchup.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/ketchupSombra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/plato sombra.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/obstacles/plato.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/pause.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/pause_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/game/resume_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/hamburguesa/hamburgusa xml data sprite.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/hamburguesa/hamburgusa xml data sprite.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/hamburguesa/hamburg_comer_xml.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/hamburguesa/hamburg_comer_xml.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/lechuga/lechuga xml data sprite.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/lechuga/lechuga xml data sprite.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/lechuga/lechuga_comer_xml.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/lechuga/lechuga_comer_xml.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/mainMenu/animation/background_title.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/background_menu.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/bottomBread.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/exit_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/options_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/mainMenu/ranking_button.png";
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
		id = "img/optionsMenu/Boton_Bajar.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/optionsMenu/Boton_Subir.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/optionsMenu/check.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/optionsMenu/close_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/optionsMenu/credits_button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/optionsMenu/cross.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/optionsMenu/options.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/optionsMenu/slider.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/panceta/panceta xml data sprite.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/panceta/panceta xml data sprite.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/panceta/panceta_comer_xml.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/panceta/panceta_comer_xml.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/pan_garganta/pan garganta xml data sprite.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/pan_garganta/pan garganta xml data sprite.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/pan_lengua/pan lengua xml data sprite.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/pan_lengua/pan lengua xml data sprite.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/pepinos/pepino xml data sprite.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/pepinos/pepino xml data sprite.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/pepinos/pepino_comer_xml.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/pepinos/pepino_comer_xml.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/ranking/Boton_Cerrar.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/ranking/Menu_de_Ranking.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/ranking/RANKING_FINAL.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/static/Bacon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/static/Burger.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/static/Cheddar.png";
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
		id = "img/tomate/tomate xml data sprite.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/tomate/tomate xml data sprite.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/tomate/tomate_comer_xml.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/tomate/tomate_comer_xml.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/tutorial/Boton_Next.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/tutorial/Boton_Skip.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/tutorial/Tutorial_1.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/tutorial/Tutorial_2.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/tutorial/Tutorial_3.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/tutorial/Tutorial_4.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "sound/Alarma.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "sound/Ambiente_de_fondo.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "sound/Botones.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "sound/Comer.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "sound/Final.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "sound/Musica_del_juego.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "config/ingredients-cfg.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "fonts/Barrio-Regular.ttf";
		className.set (id, __ASSET__fonts_barrio_regular_ttf);
		
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
		
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		
		className.set ("img/cheddar/cheddar xml data sprite.png", __ASSET__img_cheddar_cheddar_xml_data_sprite_png);
		type.set ("img/cheddar/cheddar xml data sprite.png", AssetType.IMAGE);
		
		className.set ("img/cheddar/cheddar xml data sprite.xml", __ASSET__img_cheddar_cheddar_xml_data_sprite_xml);
		type.set ("img/cheddar/cheddar xml data sprite.xml", AssetType.TEXT);
		
		className.set ("img/cheddar/cheddar_comer_xml.png", __ASSET__img_cheddar_cheddar_comer_xml_png);
		type.set ("img/cheddar/cheddar_comer_xml.png", AssetType.IMAGE);
		
		className.set ("img/cheddar/cheddar_comer_xml.xml", __ASSET__img_cheddar_cheddar_comer_xml_xml);
		type.set ("img/cheddar/cheddar_comer_xml.xml", AssetType.TEXT);
		
		className.set ("img/credits/Boton_Main_Menu.png", __ASSET__img_credits_boton_main_menu_png);
		type.set ("img/credits/Boton_Main_Menu.png", AssetType.IMAGE);
		
		className.set ("img/credits/Creditos_base.jpg", __ASSET__img_credits_creditos_base_jpg);
		type.set ("img/credits/Creditos_base.jpg", AssetType.IMAGE);
		
		className.set ("img/game/end/background_end_game.jpg", __ASSET__img_game_end_background_end_game_jpg);
		type.set ("img/game/end/background_end_game.jpg", AssetType.IMAGE);
		
		className.set ("img/game/end/High_Score.png", __ASSET__img_game_end_high_score_png);
		type.set ("img/game/end/High_Score.png", AssetType.IMAGE);
		
		className.set ("img/game/end/ingredients/Chedar.png", __ASSET__img_game_end_ingredients_chedar_png);
		type.set ("img/game/end/ingredients/Chedar.png", AssetType.IMAGE);
		
		className.set ("img/game/end/ingredients/Cheddar.png", __ASSET__img_game_end_ingredients_cheddar_png);
		type.set ("img/game/end/ingredients/Cheddar.png", AssetType.IMAGE);
		
		className.set ("img/game/end/ingredients/Hamburguesa.png", __ASSET__img_game_end_ingredients_hamburguesa_png);
		type.set ("img/game/end/ingredients/Hamburguesa.png", AssetType.IMAGE);
		
		className.set ("img/game/end/ingredients/Lechuga.png", __ASSET__img_game_end_ingredients_lechuga_png);
		type.set ("img/game/end/ingredients/Lechuga.png", AssetType.IMAGE);
		
		className.set ("img/game/end/ingredients/Panceta.png", __ASSET__img_game_end_ingredients_panceta_png);
		type.set ("img/game/end/ingredients/Panceta.png", AssetType.IMAGE);
		
		className.set ("img/game/end/ingredients/Pepino.png", __ASSET__img_game_end_ingredients_pepino_png);
		type.set ("img/game/end/ingredients/Pepino.png", AssetType.IMAGE);
		
		className.set ("img/game/end/ingredients/Tomate.png", __ASSET__img_game_end_ingredients_tomate_png);
		type.set ("img/game/end/ingredients/Tomate.png", AssetType.IMAGE);
		
		className.set ("img/game/end/ingredients/topBread.png", __ASSET__img_game_end_ingredients_topbread_png);
		type.set ("img/game/end/ingredients/topBread.png", AssetType.IMAGE);
		
		className.set ("img/game/end/mainMenu_button.png", __ASSET__img_game_end_mainmenu_button_png);
		type.set ("img/game/end/mainMenu_button.png", AssetType.IMAGE);
		
		className.set ("img/game/end/playAgain_button.png", __ASSET__img_game_end_playagain_button_png);
		type.set ("img/game/end/playAgain_button.png", AssetType.IMAGE);
		
		className.set ("img/game/game_background.jpg", __ASSET__img_game_game_background_jpg);
		type.set ("img/game/game_background.jpg", AssetType.IMAGE);
		
		className.set ("img/game/hud_background.png", __ASSET__img_game_hud_background_png);
		type.set ("img/game/hud_background.png", AssetType.IMAGE);
		
		className.set ("img/game/mainMenu_button.png", __ASSET__img_game_mainmenu_button_png);
		type.set ("img/game/mainMenu_button.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/canasta.png", __ASSET__img_game_obstacles_canasta_png);
		type.set ("img/game/obstacles/canasta.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/canastaSombra.png", __ASSET__img_game_obstacles_canastasombra_png);
		type.set ("img/game/obstacles/canastaSombra.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/cuchillo.png", __ASSET__img_game_obstacles_cuchillo_png);
		type.set ("img/game/obstacles/cuchillo.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/cuchilloSombra.png", __ASSET__img_game_obstacles_cuchillosombra_png);
		type.set ("img/game/obstacles/cuchilloSombra.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/frasco.png", __ASSET__img_game_obstacles_frasco_png);
		type.set ("img/game/obstacles/frasco.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/frasco2.png", __ASSET__img_game_obstacles_frasco2_png);
		type.set ("img/game/obstacles/frasco2.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/frasco2Sombra.png", __ASSET__img_game_obstacles_frasco2sombra_png);
		type.set ("img/game/obstacles/frasco2Sombra.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/frascoSombra.png", __ASSET__img_game_obstacles_frascosombra_png);
		type.set ("img/game/obstacles/frascoSombra.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/jarra.png", __ASSET__img_game_obstacles_jarra_png);
		type.set ("img/game/obstacles/jarra.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/jarraSombra.png", __ASSET__img_game_obstacles_jarrasombra_png);
		type.set ("img/game/obstacles/jarraSombra.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/ketchup.png", __ASSET__img_game_obstacles_ketchup_png);
		type.set ("img/game/obstacles/ketchup.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/ketchupSombra.png", __ASSET__img_game_obstacles_ketchupsombra_png);
		type.set ("img/game/obstacles/ketchupSombra.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/plato sombra.png", __ASSET__img_game_obstacles_plato_sombra_png);
		type.set ("img/game/obstacles/plato sombra.png", AssetType.IMAGE);
		
		className.set ("img/game/obstacles/plato.png", __ASSET__img_game_obstacles_plato_png);
		type.set ("img/game/obstacles/plato.png", AssetType.IMAGE);
		
		className.set ("img/game/pause.png", __ASSET__img_game_pause_png);
		type.set ("img/game/pause.png", AssetType.IMAGE);
		
		className.set ("img/game/pause_button.png", __ASSET__img_game_pause_button_png);
		type.set ("img/game/pause_button.png", AssetType.IMAGE);
		
		className.set ("img/game/resume_button.png", __ASSET__img_game_resume_button_png);
		type.set ("img/game/resume_button.png", AssetType.IMAGE);
		
		className.set ("img/hamburguesa/hamburgusa xml data sprite.png", __ASSET__img_hamburguesa_hamburgusa_xml_data_sprite_png);
		type.set ("img/hamburguesa/hamburgusa xml data sprite.png", AssetType.IMAGE);
		
		className.set ("img/hamburguesa/hamburgusa xml data sprite.xml", __ASSET__img_hamburguesa_hamburgusa_xml_data_sprite_xml);
		type.set ("img/hamburguesa/hamburgusa xml data sprite.xml", AssetType.TEXT);
		
		className.set ("img/hamburguesa/hamburg_comer_xml.png", __ASSET__img_hamburguesa_hamburg_comer_xml_png);
		type.set ("img/hamburguesa/hamburg_comer_xml.png", AssetType.IMAGE);
		
		className.set ("img/hamburguesa/hamburg_comer_xml.xml", __ASSET__img_hamburguesa_hamburg_comer_xml_xml);
		type.set ("img/hamburguesa/hamburg_comer_xml.xml", AssetType.TEXT);
		
		className.set ("img/lechuga/lechuga xml data sprite.png", __ASSET__img_lechuga_lechuga_xml_data_sprite_png);
		type.set ("img/lechuga/lechuga xml data sprite.png", AssetType.IMAGE);
		
		className.set ("img/lechuga/lechuga xml data sprite.xml", __ASSET__img_lechuga_lechuga_xml_data_sprite_xml);
		type.set ("img/lechuga/lechuga xml data sprite.xml", AssetType.TEXT);
		
		className.set ("img/lechuga/lechuga_comer_xml.png", __ASSET__img_lechuga_lechuga_comer_xml_png);
		type.set ("img/lechuga/lechuga_comer_xml.png", AssetType.IMAGE);
		
		className.set ("img/lechuga/lechuga_comer_xml.xml", __ASSET__img_lechuga_lechuga_comer_xml_xml);
		type.set ("img/lechuga/lechuga_comer_xml.xml", AssetType.TEXT);
		
		className.set ("img/mainMenu/animation/background_title.png", __ASSET__img_mainmenu_animation_background_title_png);
		type.set ("img/mainMenu/animation/background_title.png", AssetType.IMAGE);
		
		className.set ("img/mainMenu/background_menu.png", __ASSET__img_mainmenu_background_menu_png);
		type.set ("img/mainMenu/background_menu.png", AssetType.IMAGE);
		
		className.set ("img/mainMenu/bottomBread.png", __ASSET__img_mainmenu_bottombread_png);
		type.set ("img/mainMenu/bottomBread.png", AssetType.IMAGE);
		
		className.set ("img/mainMenu/exit_button.png", __ASSET__img_mainmenu_exit_button_png);
		type.set ("img/mainMenu/exit_button.png", AssetType.IMAGE);
		
		className.set ("img/mainMenu/options_button.png", __ASSET__img_mainmenu_options_button_png);
		type.set ("img/mainMenu/options_button.png", AssetType.IMAGE);
		
		className.set ("img/mainMenu/ranking_button.png", __ASSET__img_mainmenu_ranking_button_png);
		type.set ("img/mainMenu/ranking_button.png", AssetType.IMAGE);
		
		className.set ("img/mainMenu/start_button.png", __ASSET__img_mainmenu_start_button_png);
		type.set ("img/mainMenu/start_button.png", AssetType.IMAGE);
		
		className.set ("img/mainMenu/topBread.png", __ASSET__img_mainmenu_topbread_png);
		type.set ("img/mainMenu/topBread.png", AssetType.IMAGE);
		
		className.set ("img/mainMenu/tutorial_button.png", __ASSET__img_mainmenu_tutorial_button_png);
		type.set ("img/mainMenu/tutorial_button.png", AssetType.IMAGE);
		
		className.set ("img/optionsMenu/Boton_Bajar.png", __ASSET__img_optionsmenu_boton_bajar_png);
		type.set ("img/optionsMenu/Boton_Bajar.png", AssetType.IMAGE);
		
		className.set ("img/optionsMenu/Boton_Subir.png", __ASSET__img_optionsmenu_boton_subir_png);
		type.set ("img/optionsMenu/Boton_Subir.png", AssetType.IMAGE);
		
		className.set ("img/optionsMenu/check.png", __ASSET__img_optionsmenu_check_png);
		type.set ("img/optionsMenu/check.png", AssetType.IMAGE);
		
		className.set ("img/optionsMenu/close_button.png", __ASSET__img_optionsmenu_close_button_png);
		type.set ("img/optionsMenu/close_button.png", AssetType.IMAGE);
		
		className.set ("img/optionsMenu/credits_button.png", __ASSET__img_optionsmenu_credits_button_png);
		type.set ("img/optionsMenu/credits_button.png", AssetType.IMAGE);
		
		className.set ("img/optionsMenu/cross.png", __ASSET__img_optionsmenu_cross_png);
		type.set ("img/optionsMenu/cross.png", AssetType.IMAGE);
		
		className.set ("img/optionsMenu/options.png", __ASSET__img_optionsmenu_options_png);
		type.set ("img/optionsMenu/options.png", AssetType.IMAGE);
		
		className.set ("img/optionsMenu/slider.png", __ASSET__img_optionsmenu_slider_png);
		type.set ("img/optionsMenu/slider.png", AssetType.IMAGE);
		
		className.set ("img/panceta/panceta xml data sprite.png", __ASSET__img_panceta_panceta_xml_data_sprite_png);
		type.set ("img/panceta/panceta xml data sprite.png", AssetType.IMAGE);
		
		className.set ("img/panceta/panceta xml data sprite.xml", __ASSET__img_panceta_panceta_xml_data_sprite_xml);
		type.set ("img/panceta/panceta xml data sprite.xml", AssetType.TEXT);
		
		className.set ("img/panceta/panceta_comer_xml.png", __ASSET__img_panceta_panceta_comer_xml_png);
		type.set ("img/panceta/panceta_comer_xml.png", AssetType.IMAGE);
		
		className.set ("img/panceta/panceta_comer_xml.xml", __ASSET__img_panceta_panceta_comer_xml_xml);
		type.set ("img/panceta/panceta_comer_xml.xml", AssetType.TEXT);
		
		className.set ("img/pan_garganta/pan garganta xml data sprite.png", __ASSET__img_pan_garganta_pan_garganta_xml_data_sprite_png);
		type.set ("img/pan_garganta/pan garganta xml data sprite.png", AssetType.IMAGE);
		
		className.set ("img/pan_garganta/pan garganta xml data sprite.xml", __ASSET__img_pan_garganta_pan_garganta_xml_data_sprite_xml);
		type.set ("img/pan_garganta/pan garganta xml data sprite.xml", AssetType.TEXT);
		
		className.set ("img/pan_lengua/pan lengua xml data sprite.png", __ASSET__img_pan_lengua_pan_lengua_xml_data_sprite_png);
		type.set ("img/pan_lengua/pan lengua xml data sprite.png", AssetType.IMAGE);
		
		className.set ("img/pan_lengua/pan lengua xml data sprite.xml", __ASSET__img_pan_lengua_pan_lengua_xml_data_sprite_xml);
		type.set ("img/pan_lengua/pan lengua xml data sprite.xml", AssetType.TEXT);
		
		className.set ("img/pepinos/pepino xml data sprite.png", __ASSET__img_pepinos_pepino_xml_data_sprite_png);
		type.set ("img/pepinos/pepino xml data sprite.png", AssetType.IMAGE);
		
		className.set ("img/pepinos/pepino xml data sprite.xml", __ASSET__img_pepinos_pepino_xml_data_sprite_xml);
		type.set ("img/pepinos/pepino xml data sprite.xml", AssetType.TEXT);
		
		className.set ("img/pepinos/pepino_comer_xml.png", __ASSET__img_pepinos_pepino_comer_xml_png);
		type.set ("img/pepinos/pepino_comer_xml.png", AssetType.IMAGE);
		
		className.set ("img/pepinos/pepino_comer_xml.xml", __ASSET__img_pepinos_pepino_comer_xml_xml);
		type.set ("img/pepinos/pepino_comer_xml.xml", AssetType.TEXT);
		
		className.set ("img/ranking/Boton_Cerrar.png", __ASSET__img_ranking_boton_cerrar_png);
		type.set ("img/ranking/Boton_Cerrar.png", AssetType.IMAGE);
		
		className.set ("img/ranking/Menu_de_Ranking.png", __ASSET__img_ranking_menu_de_ranking_png);
		type.set ("img/ranking/Menu_de_Ranking.png", AssetType.IMAGE);
		
		className.set ("img/ranking/RANKING_FINAL.jpg", __ASSET__img_ranking_ranking_final_jpg);
		type.set ("img/ranking/RANKING_FINAL.jpg", AssetType.IMAGE);
		
		className.set ("img/static/Bacon.png", __ASSET__img_static_bacon_png);
		type.set ("img/static/Bacon.png", AssetType.IMAGE);
		
		className.set ("img/static/Burger.png", __ASSET__img_static_burger_png);
		type.set ("img/static/Burger.png", AssetType.IMAGE);
		
		className.set ("img/static/Cheddar.png", __ASSET__img_static_cheddar_png);
		type.set ("img/static/Cheddar.png", AssetType.IMAGE);
		
		className.set ("img/static/Cucumber.png", __ASSET__img_static_cucumber_png);
		type.set ("img/static/Cucumber.png", AssetType.IMAGE);
		
		className.set ("img/static/Lettuce.png", __ASSET__img_static_lettuce_png);
		type.set ("img/static/Lettuce.png", AssetType.IMAGE);
		
		className.set ("img/static/Tomato.png", __ASSET__img_static_tomato_png);
		type.set ("img/static/Tomato.png", AssetType.IMAGE);
		
		className.set ("img/static/TopBread.png", __ASSET__img_static_topbread_png);
		type.set ("img/static/TopBread.png", AssetType.IMAGE);
		
		className.set ("img/tomate/tomate xml data sprite.png", __ASSET__img_tomate_tomate_xml_data_sprite_png);
		type.set ("img/tomate/tomate xml data sprite.png", AssetType.IMAGE);
		
		className.set ("img/tomate/tomate xml data sprite.xml", __ASSET__img_tomate_tomate_xml_data_sprite_xml);
		type.set ("img/tomate/tomate xml data sprite.xml", AssetType.TEXT);
		
		className.set ("img/tomate/tomate_comer_xml.png", __ASSET__img_tomate_tomate_comer_xml_png);
		type.set ("img/tomate/tomate_comer_xml.png", AssetType.IMAGE);
		
		className.set ("img/tomate/tomate_comer_xml.xml", __ASSET__img_tomate_tomate_comer_xml_xml);
		type.set ("img/tomate/tomate_comer_xml.xml", AssetType.TEXT);
		
		className.set ("img/tutorial/Boton_Next.png", __ASSET__img_tutorial_boton_next_png);
		type.set ("img/tutorial/Boton_Next.png", AssetType.IMAGE);
		
		className.set ("img/tutorial/Boton_Skip.png", __ASSET__img_tutorial_boton_skip_png);
		type.set ("img/tutorial/Boton_Skip.png", AssetType.IMAGE);
		
		className.set ("img/tutorial/Tutorial_1.jpg", __ASSET__img_tutorial_tutorial_1_jpg);
		type.set ("img/tutorial/Tutorial_1.jpg", AssetType.IMAGE);
		
		className.set ("img/tutorial/Tutorial_2.jpg", __ASSET__img_tutorial_tutorial_2_jpg);
		type.set ("img/tutorial/Tutorial_2.jpg", AssetType.IMAGE);
		
		className.set ("img/tutorial/Tutorial_3.jpg", __ASSET__img_tutorial_tutorial_3_jpg);
		type.set ("img/tutorial/Tutorial_3.jpg", AssetType.IMAGE);
		
		className.set ("img/tutorial/Tutorial_4.jpg", __ASSET__img_tutorial_tutorial_4_jpg);
		type.set ("img/tutorial/Tutorial_4.jpg", AssetType.IMAGE);
		
		className.set ("sound/Alarma.wav", __ASSET__sound_alarma_wav);
		type.set ("sound/Alarma.wav", AssetType.SOUND);
		
		className.set ("sound/Ambiente_de_fondo.wav", __ASSET__sound_ambiente_de_fondo_wav);
		type.set ("sound/Ambiente_de_fondo.wav", AssetType.SOUND);
		
		className.set ("sound/Botones.wav", __ASSET__sound_botones_wav);
		type.set ("sound/Botones.wav", AssetType.SOUND);
		
		className.set ("sound/Comer.wav", __ASSET__sound_comer_wav);
		type.set ("sound/Comer.wav", AssetType.SOUND);
		
		className.set ("sound/Final.wav", __ASSET__sound_final_wav);
		type.set ("sound/Final.wav", AssetType.SOUND);
		
		className.set ("sound/Musica_del_juego.wav", __ASSET__sound_musica_del_juego_wav);
		type.set ("sound/Musica_del_juego.wav", AssetType.SOUND);
		
		className.set ("config/ingredients-cfg.csv", __ASSET__config_ingredients_cfg_csv);
		type.set ("config/ingredients-cfg.csv", AssetType.TEXT);
		
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

@:keep @:bind #if display private #end class __ASSET__assets_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_flixel_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__img_cheddar_cheddar_xml_data_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cheddar_cheddar_xml_data_sprite_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_cheddar_cheddar_comer_xml_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cheddar_cheddar_comer_xml_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_credits_boton_main_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_credits_creditos_base_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_background_end_game_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_high_score_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_ingredients_chedar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_ingredients_cheddar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_ingredients_hamburguesa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_ingredients_lechuga_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_ingredients_panceta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_ingredients_pepino_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_ingredients_tomate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_ingredients_topbread_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_mainmenu_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_end_playagain_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_game_background_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_hud_background_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_mainmenu_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_canasta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_canastasombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_cuchillo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_cuchillosombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_frasco_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_frasco2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_frasco2sombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_frascosombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_jarra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_jarrasombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_ketchup_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_ketchupsombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_plato_sombra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_obstacles_plato_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_pause_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_pause_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_game_resume_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_hamburguesa_hamburgusa_xml_data_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_hamburguesa_hamburgusa_xml_data_sprite_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_hamburguesa_hamburg_comer_xml_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_hamburguesa_hamburg_comer_xml_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_lechuga_lechuga_xml_data_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_lechuga_lechuga_xml_data_sprite_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_lechuga_lechuga_comer_xml_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_lechuga_lechuga_comer_xml_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_animation_background_title_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_background_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_bottombread_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_exit_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_options_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_ranking_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_start_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_topbread_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_mainmenu_tutorial_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_optionsmenu_boton_bajar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_optionsmenu_boton_subir_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_optionsmenu_check_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_optionsmenu_close_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_optionsmenu_credits_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_optionsmenu_cross_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_optionsmenu_options_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_optionsmenu_slider_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_panceta_panceta_xml_data_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_panceta_panceta_xml_data_sprite_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_panceta_panceta_comer_xml_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_panceta_panceta_comer_xml_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_pan_garganta_pan_garganta_xml_data_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_pan_garganta_pan_garganta_xml_data_sprite_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_pan_lengua_pan_lengua_xml_data_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_pan_lengua_pan_lengua_xml_data_sprite_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_pepinos_pepino_xml_data_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_pepinos_pepino_xml_data_sprite_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_pepinos_pepino_comer_xml_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_pepinos_pepino_comer_xml_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_ranking_boton_cerrar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_ranking_menu_de_ranking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_ranking_ranking_final_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_static_bacon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_static_burger_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_static_cheddar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_static_cucumber_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_static_lettuce_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_static_tomato_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_static_topbread_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tomate_tomate_xml_data_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tomate_tomate_xml_data_sprite_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_tomate_tomate_comer_xml_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tomate_tomate_comer_xml_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_tutorial_boton_next_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tutorial_boton_skip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tutorial_tutorial_1_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tutorial_tutorial_2_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tutorial_tutorial_3_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_tutorial_tutorial_4_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__sound_alarma_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_ambiente_de_fondo_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_botones_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_comer_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_final_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__sound_musica_del_juego_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__config_ingredients_cfg_csv extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__fonts_barrio_regular_ttf extends flash.text.Font { }


#elseif html5









































































































@:keep #if display private #end class __ASSET__fonts_barrio_regular_ttf extends lime.text.Font { public function new () { super (); name = "Barrio"; } } 


#else



#if (windows || mac || linux)


@:file("C:/HaxeToolkit/haxe/lib/flixel/3,3,8/assets/sounds/beep.mp3") #if display private #end class __ASSET__assets_sounds_beep_mp3 extends lime.utils.ByteArray {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/3,3,8/assets/sounds/flixel.mp3") #if display private #end class __ASSET__assets_sounds_flixel_mp3 extends lime.utils.ByteArray {}
@:image("assets/img/cheddar/cheddar xml data sprite.png") #if display private #end class __ASSET__img_cheddar_cheddar_xml_data_sprite_png extends lime.graphics.Image {}
@:file("assets/img/cheddar/cheddar xml data sprite.xml") #if display private #end class __ASSET__img_cheddar_cheddar_xml_data_sprite_xml extends lime.utils.ByteArray {}
@:image("assets/img/cheddar/cheddar_comer_xml.png") #if display private #end class __ASSET__img_cheddar_cheddar_comer_xml_png extends lime.graphics.Image {}
@:file("assets/img/cheddar/cheddar_comer_xml.xml") #if display private #end class __ASSET__img_cheddar_cheddar_comer_xml_xml extends lime.utils.ByteArray {}
@:image("assets/img/credits/Boton_Main_Menu.png") #if display private #end class __ASSET__img_credits_boton_main_menu_png extends lime.graphics.Image {}
@:image("assets/img/credits/Creditos_base.jpg") #if display private #end class __ASSET__img_credits_creditos_base_jpg extends lime.graphics.Image {}
@:image("assets/img/game/end/background_end_game.jpg") #if display private #end class __ASSET__img_game_end_background_end_game_jpg extends lime.graphics.Image {}
@:image("assets/img/game/end/High_Score.png") #if display private #end class __ASSET__img_game_end_high_score_png extends lime.graphics.Image {}
@:image("assets/img/game/end/ingredients/Chedar.png") #if display private #end class __ASSET__img_game_end_ingredients_chedar_png extends lime.graphics.Image {}
@:image("assets/img/game/end/ingredients/Cheddar.png") #if display private #end class __ASSET__img_game_end_ingredients_cheddar_png extends lime.graphics.Image {}
@:image("assets/img/game/end/ingredients/Hamburguesa.png") #if display private #end class __ASSET__img_game_end_ingredients_hamburguesa_png extends lime.graphics.Image {}
@:image("assets/img/game/end/ingredients/Lechuga.png") #if display private #end class __ASSET__img_game_end_ingredients_lechuga_png extends lime.graphics.Image {}
@:image("assets/img/game/end/ingredients/Panceta.png") #if display private #end class __ASSET__img_game_end_ingredients_panceta_png extends lime.graphics.Image {}
@:image("assets/img/game/end/ingredients/Pepino.png") #if display private #end class __ASSET__img_game_end_ingredients_pepino_png extends lime.graphics.Image {}
@:image("assets/img/game/end/ingredients/Tomate.png") #if display private #end class __ASSET__img_game_end_ingredients_tomate_png extends lime.graphics.Image {}
@:image("assets/img/game/end/ingredients/topBread.png") #if display private #end class __ASSET__img_game_end_ingredients_topbread_png extends lime.graphics.Image {}
@:image("assets/img/game/end/mainMenu_button.png") #if display private #end class __ASSET__img_game_end_mainmenu_button_png extends lime.graphics.Image {}
@:image("assets/img/game/end/playAgain_button.png") #if display private #end class __ASSET__img_game_end_playagain_button_png extends lime.graphics.Image {}
@:image("assets/img/game/game_background.jpg") #if display private #end class __ASSET__img_game_game_background_jpg extends lime.graphics.Image {}
@:image("assets/img/game/hud_background.png") #if display private #end class __ASSET__img_game_hud_background_png extends lime.graphics.Image {}
@:image("assets/img/game/mainMenu_button.png") #if display private #end class __ASSET__img_game_mainmenu_button_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/canasta.png") #if display private #end class __ASSET__img_game_obstacles_canasta_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/canastaSombra.png") #if display private #end class __ASSET__img_game_obstacles_canastasombra_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/cuchillo.png") #if display private #end class __ASSET__img_game_obstacles_cuchillo_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/cuchilloSombra.png") #if display private #end class __ASSET__img_game_obstacles_cuchillosombra_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/frasco.png") #if display private #end class __ASSET__img_game_obstacles_frasco_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/frasco2.png") #if display private #end class __ASSET__img_game_obstacles_frasco2_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/frasco2Sombra.png") #if display private #end class __ASSET__img_game_obstacles_frasco2sombra_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/frascoSombra.png") #if display private #end class __ASSET__img_game_obstacles_frascosombra_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/jarra.png") #if display private #end class __ASSET__img_game_obstacles_jarra_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/jarraSombra.png") #if display private #end class __ASSET__img_game_obstacles_jarrasombra_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/ketchup.png") #if display private #end class __ASSET__img_game_obstacles_ketchup_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/ketchupSombra.png") #if display private #end class __ASSET__img_game_obstacles_ketchupsombra_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/plato sombra.png") #if display private #end class __ASSET__img_game_obstacles_plato_sombra_png extends lime.graphics.Image {}
@:image("assets/img/game/obstacles/plato.png") #if display private #end class __ASSET__img_game_obstacles_plato_png extends lime.graphics.Image {}
@:image("assets/img/game/pause.png") #if display private #end class __ASSET__img_game_pause_png extends lime.graphics.Image {}
@:image("assets/img/game/pause_button.png") #if display private #end class __ASSET__img_game_pause_button_png extends lime.graphics.Image {}
@:image("assets/img/game/resume_button.png") #if display private #end class __ASSET__img_game_resume_button_png extends lime.graphics.Image {}
@:image("assets/img/hamburguesa/hamburgusa xml data sprite.png") #if display private #end class __ASSET__img_hamburguesa_hamburgusa_xml_data_sprite_png extends lime.graphics.Image {}
@:file("assets/img/hamburguesa/hamburgusa xml data sprite.xml") #if display private #end class __ASSET__img_hamburguesa_hamburgusa_xml_data_sprite_xml extends lime.utils.ByteArray {}
@:image("assets/img/hamburguesa/hamburg_comer_xml.png") #if display private #end class __ASSET__img_hamburguesa_hamburg_comer_xml_png extends lime.graphics.Image {}
@:file("assets/img/hamburguesa/hamburg_comer_xml.xml") #if display private #end class __ASSET__img_hamburguesa_hamburg_comer_xml_xml extends lime.utils.ByteArray {}
@:image("assets/img/lechuga/lechuga xml data sprite.png") #if display private #end class __ASSET__img_lechuga_lechuga_xml_data_sprite_png extends lime.graphics.Image {}
@:file("assets/img/lechuga/lechuga xml data sprite.xml") #if display private #end class __ASSET__img_lechuga_lechuga_xml_data_sprite_xml extends lime.utils.ByteArray {}
@:image("assets/img/lechuga/lechuga_comer_xml.png") #if display private #end class __ASSET__img_lechuga_lechuga_comer_xml_png extends lime.graphics.Image {}
@:file("assets/img/lechuga/lechuga_comer_xml.xml") #if display private #end class __ASSET__img_lechuga_lechuga_comer_xml_xml extends lime.utils.ByteArray {}
@:image("assets/img/mainMenu/animation/background_title.png") #if display private #end class __ASSET__img_mainmenu_animation_background_title_png extends lime.graphics.Image {}
@:image("assets/img/mainMenu/background_menu.png") #if display private #end class __ASSET__img_mainmenu_background_menu_png extends lime.graphics.Image {}
@:image("assets/img/mainMenu/bottomBread.png") #if display private #end class __ASSET__img_mainmenu_bottombread_png extends lime.graphics.Image {}
@:image("assets/img/mainMenu/exit_button.png") #if display private #end class __ASSET__img_mainmenu_exit_button_png extends lime.graphics.Image {}
@:image("assets/img/mainMenu/options_button.png") #if display private #end class __ASSET__img_mainmenu_options_button_png extends lime.graphics.Image {}
@:image("assets/img/mainMenu/ranking_button.png") #if display private #end class __ASSET__img_mainmenu_ranking_button_png extends lime.graphics.Image {}
@:image("assets/img/mainMenu/start_button.png") #if display private #end class __ASSET__img_mainmenu_start_button_png extends lime.graphics.Image {}
@:image("assets/img/mainMenu/topBread.png") #if display private #end class __ASSET__img_mainmenu_topbread_png extends lime.graphics.Image {}
@:image("assets/img/mainMenu/tutorial_button.png") #if display private #end class __ASSET__img_mainmenu_tutorial_button_png extends lime.graphics.Image {}
@:image("assets/img/optionsMenu/Boton_Bajar.png") #if display private #end class __ASSET__img_optionsmenu_boton_bajar_png extends lime.graphics.Image {}
@:image("assets/img/optionsMenu/Boton_Subir.png") #if display private #end class __ASSET__img_optionsmenu_boton_subir_png extends lime.graphics.Image {}
@:image("assets/img/optionsMenu/check.png") #if display private #end class __ASSET__img_optionsmenu_check_png extends lime.graphics.Image {}
@:image("assets/img/optionsMenu/close_button.png") #if display private #end class __ASSET__img_optionsmenu_close_button_png extends lime.graphics.Image {}
@:image("assets/img/optionsMenu/credits_button.png") #if display private #end class __ASSET__img_optionsmenu_credits_button_png extends lime.graphics.Image {}
@:image("assets/img/optionsMenu/cross.png") #if display private #end class __ASSET__img_optionsmenu_cross_png extends lime.graphics.Image {}
@:image("assets/img/optionsMenu/options.png") #if display private #end class __ASSET__img_optionsmenu_options_png extends lime.graphics.Image {}
@:image("assets/img/optionsMenu/slider.png") #if display private #end class __ASSET__img_optionsmenu_slider_png extends lime.graphics.Image {}
@:image("assets/img/panceta/panceta xml data sprite.png") #if display private #end class __ASSET__img_panceta_panceta_xml_data_sprite_png extends lime.graphics.Image {}
@:file("assets/img/panceta/panceta xml data sprite.xml") #if display private #end class __ASSET__img_panceta_panceta_xml_data_sprite_xml extends lime.utils.ByteArray {}
@:image("assets/img/panceta/panceta_comer_xml.png") #if display private #end class __ASSET__img_panceta_panceta_comer_xml_png extends lime.graphics.Image {}
@:file("assets/img/panceta/panceta_comer_xml.xml") #if display private #end class __ASSET__img_panceta_panceta_comer_xml_xml extends lime.utils.ByteArray {}
@:image("assets/img/pan_garganta/pan garganta xml data sprite.png") #if display private #end class __ASSET__img_pan_garganta_pan_garganta_xml_data_sprite_png extends lime.graphics.Image {}
@:file("assets/img/pan_garganta/pan garganta xml data sprite.xml") #if display private #end class __ASSET__img_pan_garganta_pan_garganta_xml_data_sprite_xml extends lime.utils.ByteArray {}
@:image("assets/img/pan_lengua/pan lengua xml data sprite.png") #if display private #end class __ASSET__img_pan_lengua_pan_lengua_xml_data_sprite_png extends lime.graphics.Image {}
@:file("assets/img/pan_lengua/pan lengua xml data sprite.xml") #if display private #end class __ASSET__img_pan_lengua_pan_lengua_xml_data_sprite_xml extends lime.utils.ByteArray {}
@:image("assets/img/pepinos/pepino xml data sprite.png") #if display private #end class __ASSET__img_pepinos_pepino_xml_data_sprite_png extends lime.graphics.Image {}
@:file("assets/img/pepinos/pepino xml data sprite.xml") #if display private #end class __ASSET__img_pepinos_pepino_xml_data_sprite_xml extends lime.utils.ByteArray {}
@:image("assets/img/pepinos/pepino_comer_xml.png") #if display private #end class __ASSET__img_pepinos_pepino_comer_xml_png extends lime.graphics.Image {}
@:file("assets/img/pepinos/pepino_comer_xml.xml") #if display private #end class __ASSET__img_pepinos_pepino_comer_xml_xml extends lime.utils.ByteArray {}
@:image("assets/img/ranking/Boton_Cerrar.png") #if display private #end class __ASSET__img_ranking_boton_cerrar_png extends lime.graphics.Image {}
@:image("assets/img/ranking/Menu_de_Ranking.png") #if display private #end class __ASSET__img_ranking_menu_de_ranking_png extends lime.graphics.Image {}
@:image("assets/img/ranking/RANKING_FINAL.jpg") #if display private #end class __ASSET__img_ranking_ranking_final_jpg extends lime.graphics.Image {}
@:image("assets/img/static/Bacon.png") #if display private #end class __ASSET__img_static_bacon_png extends lime.graphics.Image {}
@:image("assets/img/static/Burger.png") #if display private #end class __ASSET__img_static_burger_png extends lime.graphics.Image {}
@:image("assets/img/static/Cheddar.png") #if display private #end class __ASSET__img_static_cheddar_png extends lime.graphics.Image {}
@:image("assets/img/static/Cucumber.png") #if display private #end class __ASSET__img_static_cucumber_png extends lime.graphics.Image {}
@:image("assets/img/static/Lettuce.png") #if display private #end class __ASSET__img_static_lettuce_png extends lime.graphics.Image {}
@:image("assets/img/static/Tomato.png") #if display private #end class __ASSET__img_static_tomato_png extends lime.graphics.Image {}
@:image("assets/img/static/TopBread.png") #if display private #end class __ASSET__img_static_topbread_png extends lime.graphics.Image {}
@:image("assets/img/tomate/tomate xml data sprite.png") #if display private #end class __ASSET__img_tomate_tomate_xml_data_sprite_png extends lime.graphics.Image {}
@:file("assets/img/tomate/tomate xml data sprite.xml") #if display private #end class __ASSET__img_tomate_tomate_xml_data_sprite_xml extends lime.utils.ByteArray {}
@:image("assets/img/tomate/tomate_comer_xml.png") #if display private #end class __ASSET__img_tomate_tomate_comer_xml_png extends lime.graphics.Image {}
@:file("assets/img/tomate/tomate_comer_xml.xml") #if display private #end class __ASSET__img_tomate_tomate_comer_xml_xml extends lime.utils.ByteArray {}
@:image("assets/img/tutorial/Boton_Next.png") #if display private #end class __ASSET__img_tutorial_boton_next_png extends lime.graphics.Image {}
@:image("assets/img/tutorial/Boton_Skip.png") #if display private #end class __ASSET__img_tutorial_boton_skip_png extends lime.graphics.Image {}
@:image("assets/img/tutorial/Tutorial_1.jpg") #if display private #end class __ASSET__img_tutorial_tutorial_1_jpg extends lime.graphics.Image {}
@:image("assets/img/tutorial/Tutorial_2.jpg") #if display private #end class __ASSET__img_tutorial_tutorial_2_jpg extends lime.graphics.Image {}
@:image("assets/img/tutorial/Tutorial_3.jpg") #if display private #end class __ASSET__img_tutorial_tutorial_3_jpg extends lime.graphics.Image {}
@:image("assets/img/tutorial/Tutorial_4.jpg") #if display private #end class __ASSET__img_tutorial_tutorial_4_jpg extends lime.graphics.Image {}
@:file("assets/sound/Alarma.wav") #if display private #end class __ASSET__sound_alarma_wav extends lime.utils.ByteArray {}
@:file("assets/sound/Ambiente_de_fondo.wav") #if display private #end class __ASSET__sound_ambiente_de_fondo_wav extends lime.utils.ByteArray {}
@:file("assets/sound/Botones.wav") #if display private #end class __ASSET__sound_botones_wav extends lime.utils.ByteArray {}
@:file("assets/sound/Comer.wav") #if display private #end class __ASSET__sound_comer_wav extends lime.utils.ByteArray {}
@:file("assets/sound/Final.wav") #if display private #end class __ASSET__sound_final_wav extends lime.utils.ByteArray {}
@:file("assets/sound/Musica_del_juego.wav") #if display private #end class __ASSET__sound_musica_del_juego_wav extends lime.utils.ByteArray {}
@:file("assets/config/ingredients-cfg.csv") #if display private #end class __ASSET__config_ingredients_cfg_csv extends lime.utils.ByteArray {}
@:font("assets/fonts/Barrio-Regular.ttf") #if display private #end class __ASSET__fonts_barrio_regular_ttf extends lime.text.Font {}



#end

#if openfl
@:keep #if display private #end class __ASSET__OPENFL__fonts_barrio_regular_ttf extends openfl.text.Font { public function new () { __fontPath = "fonts/Barrio-Regular.ttf"; name = "Barrio"; super (); }}

#end

#end
#end

