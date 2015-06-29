package utils;
import configuration.GeneralConstants;
import utils.AnimationEnum;
import flixel.FlxSprite;
import flixel.util.loaders.SparrowData;

/**
 * ...
 * @author Arreche-Piaggio
 */
class AnimationFactory
{
	public static inline var EATEN_ANIMATION = "eat";
	
	public static inline var TB_ANIMATION_XML = "img/pan_garganta/pan garganta xml data sprite.xml";
	public static inline var TB_ANIMATION_PNG = "img/pan_garganta/pan garganta xml data sprite.png";
	public static inline var BB_ANIMATION_XML = "img/pan_lengua/pan lengua xml data sprite.xml";
	public static inline var BB_ANIMATION_PNG = "img/pan_lengua/pan lengua xml data sprite.png";
	
	public static inline var HAMBURGER_ANIMATION_XML = "img/hamburguesa/hamburgusa xml data sprite.xml";
	public static inline var HAMBURGER_ANIMATION_PNG = "img/hamburguesa/hamburgusa xml data sprite.png";
	public static inline var HAMBURGER_EATEN_ANIMATION_XML = "img/hamburguesa/hamburg_comer_xml.xml";
	public static inline var HAMBURGER_EATEN_ANIMATION_PNG = "img/hamburguesa/hamburg_comer_xml.png";
	public static inline var ANIMATION_HAMBURGER_EATEN_PREFIX = "splashhhamburg";
	
	public static inline var LETTUCE_ANIMATION_XML = "img/lechuga/lechuga xml data sprite.xml";
	public static inline var LETTUCE_ANIMATION_PNG = "img/lechuga/lechuga xml data sprite.png";
	public static inline var LETTUCE_EATEN_ANIMATION_XML = "img/lechuga/lechuga_comer_xml.xml";
	public static inline var LETTUCE_EATEN_ANIMATION_PNG = "img/lechuga/lechuga_comer_xml.png";
	public static inline var ANIMATION_LETTUCE_EATEN_PREFIX = "splashhlechuga";
	
	public static inline var BACON_ANIMATION_XML = "img/panceta/panceta xml data sprite.xml";
	public static inline var BACON_ANIMATION_PNG = "img/panceta/panceta xml data sprite.png";
	public static inline var BACON_EATEN_ANIMATION_XML = "img/panceta/panceta_comer_xml.xml";
	public static inline var BACON_EATEN_ANIMATION_PNG = "img/panceta/panceta_comer_xml.png";
	public static inline var ANIMATION_BACON_EATEN_PREFIX = "splashhpanceta";
	
	public static inline var CUCUMBER_ANIMATION_XML = "img/pepinos/pepino xml data sprite.xml";
	public static inline var CUCUMBER_ANIMATION_PNG = "img/pepinos/pepino xml data sprite.png";
	public static inline var CUCUMBER_EATEN_ANIMATION_XML = "img/pepinos/pepino_comer_xml.xml";
	public static inline var CUCUMBER_EATEN_ANIMATION_PNG = "img/pepinos/pepino_comer_xml.png";
	public static inline var ANIMATION_CUCUMBER_EATEN_PREFIX = "splashhpepino";
	
	public static inline var TOMATO_ANIMATION_XML = "img/tomate/tomate xml data sprite.xml";
	public static inline var TOMATO_ANIMATION_PNG = "img/tomate/tomate xml data sprite.png";
	public static inline var TOMATO_EATEN_ANIMATION_XML = "img/tomate/tomate_comer_xml.xml";
	public static inline var TOMATO_EATEN_ANIMATION_PNG = "img/tomate/tomate_comer_xml.png";
	public static inline var ANIMATION_TOMATO_EATEN_PREFIX = "splashhtomate";
	
	public static inline var ANIMATION_45_RIGHT_DOWN = "45RightDown";
	public static inline var ANIMATION_45_LEFT_DOWN = "45LeftDown";
	public static inline var ANIMATION_45_RIGHT_UP = "45RightUp";
	public static inline var ANIMATION_45_LEFT_UP = "45LeftUp";
	public static inline var ANIMATION_LEFT = "Left";
	public static inline var ANIMATION_RIGHT = "Right";
	public static inline var ANIMATION_DOWN = "Down";
	public static inline var ANIMATION_UP = "Up";

	public static inline var ANIMATION_STOP_45_RIGHT_DOWN = "Stop45RightDown";
	public static inline var ANIMATION_STOP_45_LEFT_DOWN = "Stop45LeftDown";
	public static inline var ANIMATION_STOP_45_RIGHT_UP = "Stop45RightUp";
	public static inline var ANIMATION_STOP_45_LEFT_UP = "Stop45LeftUp";
	public static inline var ANIMATION_STOP_LEFT = "StopLeft";
	public static inline var ANIMATION_STOP_RIGHT = "StopRight";
	public static inline var ANIMATION_STOP_DOWN = "StopDown";
	public static inline var ANIMATION_STOP_UP = "StopUp";
	
	public static inline var MAIN_MENU_ANIMATION_XML = "img/mainMenu/animation/menuAnimacion1.xml";
	public static inline var MAIN_MENU_ANIMATION_PNG = "img/mainMenu/animation/menuAnimacion1.png";
	public static inline var ANIMATION_MAIN_MENU = "MainMenu";
	
	private static function loadSparrowGraphic(aAnimationType:AnimationEnum) : SparrowData
	{
		var graphics = null;
		
		switch(aAnimationType) {
			case AnimationEnum.TOP_BREAD:
				graphics = new SparrowData(TB_ANIMATION_XML,TB_ANIMATION_PNG);
			case AnimationEnum.BOTTOM_BREAD:
				graphics = new SparrowData(BB_ANIMATION_XML,BB_ANIMATION_PNG);
			case AnimationEnum.HAMBURGER:
				graphics = new SparrowData(HAMBURGER_ANIMATION_XML,HAMBURGER_ANIMATION_PNG);
			case AnimationEnum.BACON:
				graphics = new SparrowData(BACON_ANIMATION_XML,BACON_ANIMATION_PNG);
			case AnimationEnum.CUCUMBER:
				graphics = new SparrowData(CUCUMBER_ANIMATION_XML,CUCUMBER_ANIMATION_PNG);
			case AnimationEnum.LETTUCE:
				graphics = new SparrowData(LETTUCE_ANIMATION_XML,LETTUCE_ANIMATION_PNG);
			case AnimationEnum.TOMATO:
				graphics = new SparrowData(TOMATO_ANIMATION_XML, TOMATO_ANIMATION_PNG);
			case AnimationEnum.MAIN_MENU:
				graphics = new SparrowData(MAIN_MENU_ANIMATION_XML, MAIN_MENU_ANIMATION_PNG);
		}
		
		return graphics;
	}
	
	private static function loadEatenAnimation(aAnimationType:AnimationEnum) : SparrowData
	{
		var graphics = null;
		
		switch(aAnimationType) {
			case AnimationEnum.HAMBURGER:
				graphics = new SparrowData(HAMBURGER_EATEN_ANIMATION_XML,HAMBURGER_EATEN_ANIMATION_PNG);
			case AnimationEnum.BACON:
				graphics = new SparrowData(BACON_EATEN_ANIMATION_XML,BACON_EATEN_ANIMATION_PNG);
			case AnimationEnum.CUCUMBER:
				graphics = new SparrowData(CUCUMBER_EATEN_ANIMATION_XML,CUCUMBER_EATEN_ANIMATION_PNG);
			case AnimationEnum.LETTUCE:
				graphics = new SparrowData(LETTUCE_EATEN_ANIMATION_XML,LETTUCE_EATEN_ANIMATION_PNG);
			case AnimationEnum.TOMATO:
				graphics = new SparrowData(TOMATO_EATEN_ANIMATION_XML, TOMATO_EATEN_ANIMATION_PNG);
			default:
		}
		
		return graphics;
	}
	
	
	public static function loadAnimations(aObject:FlxSprite, aAnimationType:AnimationEnum, aIsEatenAnimation:Bool=false) : FlxSprite
	{
		var graphics = aIsEatenAnimation ? loadEatenAnimation(aAnimationType) : loadSparrowGraphic(aAnimationType);
		aObject.loadGraphicFromTexture(graphics);
		
		switch(aAnimationType) {
			case AnimationEnum.TOP_BREAD:
				loadIngredientAnimation(aObject,aAnimationType);
			case AnimationEnum.BOTTOM_BREAD:
				loadIngredientAnimation(aObject,aAnimationType);
			case AnimationEnum.HAMBURGER:
				if(aIsEatenAnimation)
					aObject.animation.addByPrefix(EATEN_ANIMATION, ANIMATION_HAMBURGER_EATEN_PREFIX, GeneralConstants.animationFrameRate,false);
				else
					loadIngredientAnimation(aObject, aAnimationType);
			case AnimationEnum.BACON:
				if (aIsEatenAnimation)
					aObject.animation.addByPrefix(EATEN_ANIMATION, ANIMATION_BACON_EATEN_PREFIX, GeneralConstants.animationFrameRate,false);
				else
					loadIngredientAnimation(aObject, aAnimationType);
			case AnimationEnum.CUCUMBER:
				if (aIsEatenAnimation)
					aObject.animation.addByPrefix(EATEN_ANIMATION, ANIMATION_CUCUMBER_EATEN_PREFIX, GeneralConstants.animationFrameRate,false);
				else
					loadIngredientAnimation(aObject, aAnimationType);
			case AnimationEnum.LETTUCE:
				if (aIsEatenAnimation)
					aObject.animation.addByPrefix(EATEN_ANIMATION, ANIMATION_LETTUCE_EATEN_PREFIX, GeneralConstants.animationFrameRate,false);
				else
					loadIngredientAnimation(aObject, aAnimationType);
			case AnimationEnum.TOMATO:
				if (aIsEatenAnimation)
					aObject.animation.addByPrefix(EATEN_ANIMATION, ANIMATION_TOMATO_EATEN_PREFIX, GeneralConstants.animationFrameRate,false);
				else
					loadIngredientAnimation(aObject, aAnimationType);
			case AnimationEnum.MAIN_MENU:
				aObject.animation.addByPrefix(ANIMATION_MAIN_MENU, "Menus 2_0", GeneralConstants.animationFrameRate);
		}
		return aObject;
	}
	
	static private function loadIngredientAnimation(aObject:FlxSprite,aAnimationType:AnimationEnum) : Void
	{
		aObject.animation.addByPrefix(ANIMATION_45_RIGHT_DOWN, "45 abajo derecha/45 abajo derecha", GeneralConstants.animationFrameRate);
		aObject.animation.addByPrefix(ANIMATION_45_RIGHT_UP, "45 arriba derecha/45 arriba derecha", GeneralConstants.animationFrameRate);
		aObject.animation.addByPrefix(ANIMATION_45_LEFT_DOWN, "45 abajo izquierda/45 abajo izquierda", GeneralConstants.animationFrameRate);
		aObject.animation.addByPrefix(ANIMATION_45_LEFT_UP, "45 arriba izquierda/45 arriba izquierda", GeneralConstants.animationFrameRate);
		
		aObject.animation.addByPrefix(ANIMATION_DOWN, "abajo/abajo", GeneralConstants.animationFrameRate);
		aObject.animation.addByPrefix(ANIMATION_LEFT, "izquierda/izquierda", GeneralConstants.animationFrameRate);
		aObject.animation.addByPrefix(ANIMATION_RIGHT, "derecha/derecha", GeneralConstants.animationFrameRate);
		aObject.animation.addByPrefix(ANIMATION_UP, "arriba/arriba", GeneralConstants.animationFrameRate);
	
		if (aAnimationType == AnimationEnum.TOP_BREAD || aAnimationType == AnimationEnum.BOTTOM_BREAD)
		{				
			aObject.animation.addByPrefix(ANIMATION_STOP_45_RIGHT_DOWN, "quieto/45 abajo derecha/quieto_45 abajo derecha", GeneralConstants.animationFrameRate);
			aObject.animation.addByPrefix(ANIMATION_STOP_45_RIGHT_UP, "quieto/45 arriba derecha/quieto_45 arriba derecha", GeneralConstants.animationFrameRate);
			aObject.animation.addByPrefix(ANIMATION_STOP_45_LEFT_DOWN, "quieto/45 abajo izquierda/quieto_45 abajo izquierda", GeneralConstants.animationFrameRate);
			aObject.animation.addByPrefix(ANIMATION_STOP_45_LEFT_UP, "quieto/45 arriba izquierda/quieto_45 arriba izquierda", GeneralConstants.animationFrameRate);
			
			aObject.animation.addByPrefix(ANIMATION_STOP_DOWN, "quieto/abajo/quieto_abajo", GeneralConstants.animationFrameRate);
			aObject.animation.addByPrefix(ANIMATION_STOP_LEFT, "quieto/izquierda/quieto_izquierda", GeneralConstants.animationFrameRate);
			aObject.animation.addByPrefix(ANIMATION_STOP_RIGHT, "quieto/derecha/quieto_derecha", GeneralConstants.animationFrameRate);
			aObject.animation.addByPrefix(ANIMATION_STOP_UP, "quieto/arriba/quieto_arriba", GeneralConstants.animationFrameRate);
		}
	}
	
}