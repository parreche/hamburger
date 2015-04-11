#include <hxcpp.h>

#ifndef INCLUDED_PlayerInput
#include <PlayerInput.h>
#endif
#ifndef INCLUDED_PlayerInputRight
#include <PlayerInputRight.h>
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

Void PlayerInputRight_obj::__construct()
{
HX_STACK_FRAME("PlayerInputRight","new",0x73e4c8c5,"PlayerInputRight.new","PlayerInputRight.hx",12,0x4d6f364b)
HX_STACK_THIS(this)
{
}
;
	return null();
}

//PlayerInputRight_obj::~PlayerInputRight_obj() { }

Dynamic PlayerInputRight_obj::__CreateEmpty() { return  new PlayerInputRight_obj; }
hx::ObjectPtr< PlayerInputRight_obj > PlayerInputRight_obj::__new()
{  hx::ObjectPtr< PlayerInputRight_obj > result = new PlayerInputRight_obj();
	result->__construct();
	return result;}

Dynamic PlayerInputRight_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< PlayerInputRight_obj > result = new PlayerInputRight_obj();
	result->__construct();
	return result;}

hx::Object *PlayerInputRight_obj::__ToInterface(const hx::type_info &inType) {
	if (inType==typeid( ::PlayerInput_obj)) return operator ::PlayerInput_obj *();
	return super::__ToInterface(inType);
}

bool PlayerInputRight_obj::up( ){
	HX_STACK_FRAME("PlayerInputRight","up",0x4d6f4196,"PlayerInputRight.up","PlayerInputRight.hx",18,0x4d6f364b)
	HX_STACK_THIS(this)
	HX_STACK_LINE(18)
	return ::flixel::FlxG_obj::keys->checkStatus((int)38,::flixel::FlxG_obj::keys->pressed->checkStatus);
}


HX_DEFINE_DYNAMIC_FUNC0(PlayerInputRight_obj,up,return )

bool PlayerInputRight_obj::down( ){
	HX_STACK_FRAME("PlayerInputRight","down",0xedb6585d,"PlayerInputRight.down","PlayerInputRight.hx",23,0x4d6f364b)
	HX_STACK_THIS(this)
	HX_STACK_LINE(23)
	return ::flixel::FlxG_obj::keys->checkStatus((int)40,::flixel::FlxG_obj::keys->pressed->checkStatus);
}


HX_DEFINE_DYNAMIC_FUNC0(PlayerInputRight_obj,down,return )

bool PlayerInputRight_obj::left( ){
	HX_STACK_FRAME("PlayerInputRight","left",0xf2f86802,"PlayerInputRight.left","PlayerInputRight.hx",28,0x4d6f364b)
	HX_STACK_THIS(this)
	HX_STACK_LINE(28)
	return ::flixel::FlxG_obj::keys->checkStatus((int)37,::flixel::FlxG_obj::keys->pressed->checkStatus);
}


HX_DEFINE_DYNAMIC_FUNC0(PlayerInputRight_obj,left,return )

bool PlayerInputRight_obj::right( ){
	HX_STACK_FRAME("PlayerInputRight","right",0x1d6fa781,"PlayerInputRight.right","PlayerInputRight.hx",33,0x4d6f364b)
	HX_STACK_THIS(this)
	HX_STACK_LINE(33)
	return ::flixel::FlxG_obj::keys->checkStatus((int)39,::flixel::FlxG_obj::keys->pressed->checkStatus);
}


HX_DEFINE_DYNAMIC_FUNC0(PlayerInputRight_obj,right,return )


PlayerInputRight_obj::PlayerInputRight_obj()
{
}

Dynamic PlayerInputRight_obj::__Field(const ::String &inName,bool inCallProp)
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

Dynamic PlayerInputRight_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	return super::__SetField(inName,inValue,inCallProp);
}

void PlayerInputRight_obj::__GetFields(Array< ::String> &outFields)
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
	HX_MARK_MEMBER_NAME(PlayerInputRight_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(PlayerInputRight_obj::__mClass,"__mClass");
};

#endif

Class PlayerInputRight_obj::__mClass;

void PlayerInputRight_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("PlayerInputRight"), hx::TCanCast< PlayerInputRight_obj> ,sStaticFields,sMemberFields,
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

void PlayerInputRight_obj::__boot()
{
}

