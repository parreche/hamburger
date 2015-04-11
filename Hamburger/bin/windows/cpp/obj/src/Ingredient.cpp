#include <hxcpp.h>

#ifndef INCLUDED_Ingredient
#include <Ingredient.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_FlxSprite
#include <flixel/FlxSprite.h>
#endif
#ifndef INCLUDED_flixel_interfaces_IFlxDestroyable
#include <flixel/interfaces/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_flixel_interfaces_IFlxPooled
#include <flixel/interfaces/IFlxPooled.h>
#endif
#ifndef INCLUDED_flixel_util_FlxPoint
#include <flixel/util/FlxPoint.h>
#endif
#ifndef INCLUDED_hxMath
#include <hxMath.h>
#endif
#ifndef INCLUDED_openfl__legacy_Assets
#include <openfl/_legacy/Assets.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_BitmapData
#include <openfl/_legacy/display/BitmapData.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl__legacy_geom_Point
#include <openfl/_legacy/geom/Point.h>
#endif

Void Ingredient_obj::__construct(Float X,Float Y,::String aImage)
{
HX_STACK_FRAME("Ingredient","new",0x590325e3,"Ingredient.new","Ingredient.hx",10,0x42fb66ed)
HX_STACK_THIS(this)
HX_STACK_ARG(X,"X")
HX_STACK_ARG(Y,"Y")
HX_STACK_ARG(aImage,"aImage")
{
	HX_STACK_LINE(12)
	this->mVelocity = ::openfl::_legacy::geom::Point_obj::__new(null(),null());
	HX_STACK_LINE(16)
	super::__construct(X,Y,null());
	HX_STACK_LINE(17)
	::openfl::_legacy::display::BitmapData _g = ::openfl::_legacy::Assets_obj::getBitmapData(aImage,null());		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(17)
	this->loadGraphic(_g,false,null(),null(),null(),null());
	HX_STACK_LINE(18)
	this->maxVelocity->set((int)150,(int)150);
	HX_STACK_LINE(19)
	Float _g1 = ::Math_obj::random();		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(19)
	Float _g2;		HX_STACK_VAR(_g2,"_g2");
	HX_STACK_LINE(19)
	if (((_g1 > 0.5))){
		HX_STACK_LINE(19)
		_g2 = (int)-100;
	}
	else{
		HX_STACK_LINE(19)
		_g2 = (int)100;
	}
	HX_STACK_LINE(19)
	Float _g3 = ::Math_obj::random();		HX_STACK_VAR(_g3,"_g3");
	HX_STACK_LINE(19)
	Float _g4;		HX_STACK_VAR(_g4,"_g4");
	HX_STACK_LINE(19)
	if (((_g3 > 0.5))){
		HX_STACK_LINE(19)
		_g4 = (int)-100;
	}
	else{
		HX_STACK_LINE(19)
		_g4 = (int)100;
	}
	HX_STACK_LINE(19)
	this->velocity->set(_g2,_g4);
	HX_STACK_LINE(20)
	this->elasticity = (int)1;
	HX_STACK_LINE(21)
	Float _g5 = ::Math_obj::random();		HX_STACK_VAR(_g5,"_g5");
	HX_STACK_LINE(21)
	Float _g6 = ((int)300 * _g5);		HX_STACK_VAR(_g6,"_g6");
	HX_STACK_LINE(21)
	Float _g7 = ((int)100 + _g6);		HX_STACK_VAR(_g7,"_g7");
	HX_STACK_LINE(21)
	this->set_x(_g7);
	HX_STACK_LINE(22)
	Float _g8 = ::Math_obj::random();		HX_STACK_VAR(_g8,"_g8");
	HX_STACK_LINE(22)
	Float _g9 = (_g8 * (int)200);		HX_STACK_VAR(_g9,"_g9");
	HX_STACK_LINE(22)
	this->set_y(_g9);
}
;
	return null();
}

//Ingredient_obj::~Ingredient_obj() { }

Dynamic Ingredient_obj::__CreateEmpty() { return  new Ingredient_obj; }
hx::ObjectPtr< Ingredient_obj > Ingredient_obj::__new(Float X,Float Y,::String aImage)
{  hx::ObjectPtr< Ingredient_obj > result = new Ingredient_obj();
	result->__construct(X,Y,aImage);
	return result;}

Dynamic Ingredient_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Ingredient_obj > result = new Ingredient_obj();
	result->__construct(inArgs[0],inArgs[1],inArgs[2]);
	return result;}

Void Ingredient_obj::update( ){
{
		HX_STACK_FRAME("Ingredient","update",0x0b704466,"Ingredient.update","Ingredient.hx",27,0x42fb66ed)
		HX_STACK_THIS(this)
		HX_STACK_LINE(33)
		Float _g = this->get_width();		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(33)
		Float _g1 = (this->x + _g);		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(33)
		if (((  (((_g1 > (int)800))) ? bool((this->velocity->x > (int)0)) : bool(false) ))){
			HX_STACK_LINE(35)
			::flixel::util::FlxPoint _g2 = this->velocity;		HX_STACK_VAR(_g2,"_g2");
			HX_STACK_LINE(35)
			_g2->set_x((_g2->x * (int)-1));
		}
		HX_STACK_LINE(37)
		if (((bool((this->x < (int)0)) && bool((this->velocity->x < (int)0))))){
			HX_STACK_LINE(39)
			::flixel::util::FlxPoint _g2 = this->velocity;		HX_STACK_VAR(_g2,"_g2");
			HX_STACK_LINE(39)
			_g2->set_x((_g2->x * (int)-1));
		}
		HX_STACK_LINE(41)
		if (((bool((this->y < (int)0)) && bool((this->velocity->y < (int)0))))){
			HX_STACK_LINE(43)
			::flixel::util::FlxPoint _g2 = this->velocity;		HX_STACK_VAR(_g2,"_g2");
			HX_STACK_LINE(43)
			_g2->set_y((_g2->y * (int)-1));
		}
		HX_STACK_LINE(45)
		Float _g2 = this->get_height();		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(45)
		Float _g3 = (this->y + _g2);		HX_STACK_VAR(_g3,"_g3");
		HX_STACK_LINE(45)
		if (((  (((_g3 > (int)480))) ? bool((this->velocity->y > (int)0)) : bool(false) ))){
			HX_STACK_LINE(47)
			::flixel::util::FlxPoint _g4 = this->velocity;		HX_STACK_VAR(_g4,"_g4");
			HX_STACK_LINE(47)
			_g4->set_y((_g4->y * (int)-1));
		}
		HX_STACK_LINE(49)
		this->super::update();
	}
return null();
}



Ingredient_obj::Ingredient_obj()
{
}

void Ingredient_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Ingredient);
	HX_MARK_MEMBER_NAME(mVelocity,"mVelocity");
	::flixel::FlxSprite_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Ingredient_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(mVelocity,"mVelocity");
	::flixel::FlxSprite_obj::__Visit(HX_VISIT_ARG);
}

Dynamic Ingredient_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"update") ) { return update_dyn(); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"mVelocity") ) { return mVelocity; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Ingredient_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 9:
		if (HX_FIELD_EQ(inName,"mVelocity") ) { mVelocity=inValue.Cast< ::openfl::_legacy::geom::Point >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Ingredient_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("mVelocity"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsObject /*::openfl::_legacy::geom::Point*/ ,(int)offsetof(Ingredient_obj,mVelocity),HX_CSTRING("mVelocity")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("mVelocity"),
	HX_CSTRING("update"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Ingredient_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Ingredient_obj::__mClass,"__mClass");
};

#endif

Class Ingredient_obj::__mClass;

void Ingredient_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Ingredient"), hx::TCanCast< Ingredient_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics
#ifdef HXCPP_VISIT_ALLOCS
    , sVisitStatics
#endif
#ifdef HXCPP_SCRIPTABLE
    , sMemberStorageInfo
#endif
);
}

void Ingredient_obj::__boot()
{
}

