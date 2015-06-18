package domain;
import configuration.GeneralConstants;
import domain.AnimationEnum;
import flixel.FlxSprite;
import flixel.util.loaders.SparrowData;

/**
 * ...
 * @author Arreche-Piaggio
 */
class AnimationFactory
{
	public static inline var TB_ANIMATION_XML = "img/pan_garganta/pan garganta xml data sprite.xml";
	public static inline var TB_ANIMATION_PNG = "img/pan_garganta/pan garganta xml data sprite.png";
	public static inline var BB_ANIMATION_XML = "img/pan_lengua/pan lengua xml data sprite.xml";
	public static inline var BB_ANIMATION_PNG = "img/pan_lengua/pan lengua xml data sprite.png";
	
	public static inline var HAMBURGER_ANIMATION_XML = "img/hamburguesa/hamburgusa xml data sprite.xml";
	public static inline var HAMBURGER_ANIMATION_PNG = "img/hamburguesa/hamburgusa xml data sprite.png";
	
	public static inline var LETTUCE_ANIMATION_XML = "img/lechuga/lechuga xml data sprite.xml";
	public static inline var LETTUCE_ANIMATION_PNG = "img/lechuga/lechuga xml data sprite.png";
	
	public static inline var BACON_ANIMATION_XML = "img/panceta/panceta xml data sprite.xml";
	public static inline var BACON_ANIMATION_PNG = "img/panceta/panceta xml data sprite.png";
	
	public static inline var CUCUMBER_ANIMATION_XML = "img/pepinos/pepino xml data sprite.xml";
	public static inline var CUCUMBER_ANIMATION_PNG = "img/pepinos/pepino xml data sprite.png";
	
	public static inline var TOMATO_ANIMATION_XML = "img/tomate/tomate xml data sprite.xml";
	public static inline var TOMATO_ANIMATION_PNG = "img/tomate/tomate xml data sprite.png";
	
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
				graphics = new SparrowData(TOMATO_ANIMATION_XML,TOMATO_ANIMATION_PNG);	
		}
		
		return graphics;
	}
	
	public static function loadGraphics(aObject:FlxSprite, aAnimationType:AnimationEnum) : FlxSprite
	{
		var graphics = loadSparrowGraphic(aAnimationType);
		
		aObject.loadGraphicFromTexture(graphics);
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
		
		return aObject;
	}
	
}