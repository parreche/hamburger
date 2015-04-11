#include <hxcpp.h>

#ifndef INCLUDED_PlayerInput
#include <PlayerInput.h>
#endif
#ifndef INCLUDED_PlayerInputLeft
#include <PlayerInputLeft.h>
#endif
#ifndef INCLUDED_flixel_FlxG
#include <flixel/FlxG.h>
#endif
#ifndef INCLUDED_flixel_input_keyboard_FlxKeyList
#include <flixel/input/keyboard/FlxKeyList.h>
#endif
#ifndef INCLUDED_flixel_input_keyboard_FlxKeyboard
#include <flixel/input/keyboard/FlxKeyboard.h>
#endif
#ifndef INCLUDED_flixel_interfaces_IFlxInput
#include <flixel/interfaces/IFlxInput.h>
#endif

Void PlayerInputLeft_obj::__construct()
{
HX_STACK_FRAME("PlayerInputLeft","new",0xa449e662,"PlayerInputLeft.new","PlayerInputLeft.hx",12,0x15667b4e)
HX_STACK_THIS(this)
{
}
;
	return null();
}

//PlayerInputLeft_obj::~PlayerInputLeft_obj() { }

Dynamic PlayerInputLeft_obj::__CreateEmpty() { return  new PlayerInputLeft_obj; }
hx::ObjectPtr< PlayerInputLeft_obj > PlayerInputLeft_obj::__new()
{  hx::ObjectPtr< PlayerInputLeft_obj > result = new PlayerInputLeft_obj();
	result->__construct();
	return result;}

Dynamic PlayerInputLeft_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< PlayerInputLeft_obj > result = new PlayerInputLeft_obj();
	result->__construct();
	return result;}

hx::Object *PlayerInputLeft_obj::__ToInterface(const hx::type_info &inType) {
	if (inType==typeid( ::PlayerInput_obj)) return operator ::PlayerInput_obj *();
	return super::__ToInterface(inType);
}

bool PlayerInputLeft_obj::up( ){
	HX_STACK_FRAME("PlayerInputLeft","up",0x15668699,"PlayerInputLeft.up","PlayerInputLeft.hx",18,0x15667b4e)
	HX_STACK_THIS(this)
	HX_STACK_LINE(18)
	return ::flixel::FlxG_obj::keys->checkStatus((int)87,::flixel::FlxG_obj::keys->pressed->checkStatus);
}


HX_DEFINE_DYNAMIC_FUNC0(PlayerInputLeft_obj,up,return )

bool PlayerInputLeft_obj::down( ){
	HX_STACK_FRAME("PlayerInputLeft","down",0x15cb2420,"PlayerInputLeft.down","PlayerInputLeft.hx",23,0x15667b4e)
	HX_STACK_THIS(this)
	HX_STACK_LINE(23)
	return ::flixel::FlxG_obj::keys->checkStatus((int)83,::flixel::FlxG_obj::keys->pressed->checkStatus);
}


HX_DEFINE_DYNAMIC_FUNC0(PlayerInputLeft_obj,down,return )

bool PlayerInputLeft_obj::left( ){
	HX_STACK_FRAME("PlayerInputLeft","left",0x1b0d33c5,"PlayerInputLeft.left","PlayerInputLeft.hx",28,0x15667b4e)
	HX_STACK_THIS(this)
	HX_STACK_LINE(28)
	return ::flixel::FlxG_obj::keys->checkStatus((int)65,::flixel::FlxG_obj::keys->pressed->checkStatus);
}


HX_DEFINE_DYNAMIC_FUNC0(PlayerInputLeft_obj,left,return )

bool PlayerInputLeft_obj::right( ){
	HX_STACK_FRAME("PlayerInputLeft","right",0x078d265e,"PlayerInputLeft.right","PlayerInputLeft.hx",33,0x15667b4e)
	HX_STACK_THIS(this)
	HX_STACK_LINE(33)
	return ::flixel::FlxG_obj::keys->checkStatus((int)68,::flixel::FlxG_obj::keys->pressed->checkStatus);
}


HX_DEFINE_DYNAMIC_FUNC0(PlayerInputLeft_obj,right,return )


PlayerInputLeft_obj::PlayerInputLeft_obj()
{
}

Dynamic PlayerInputLeft_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 2:
		if (HX_FIELD_EQ(inName,"up") ) { return up_dyn(); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"down") ) { return down_dyn(); }
		if (HX_FIELD_EQ(inName,"left") ) { return left_dyn(); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"right") ) { return right_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic PlayerInputLeft_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	return super::__SetField(inName,inValue,inCallProp);
}

void PlayerInputLeft_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *sMemberStorageInfo = 0;
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("up"),
	HX_CSTRING("down"),
	HX_CSTRING("left"),
	HX_CSTRING("right"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(PlayerInputLeft_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(PlayerInputLeft_obj::__mClass,"__mClass");
};

#endif

Class PlayerInputLeft_obj::__mClass;

void PlayerInputLeft_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("PlayerInputLeft"), hx::TCanCast< PlayerInputLeft_obj> ,sStaticFields,sMemberFields,
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

void PlayerInputLeft_obj::__boot()
{
}

