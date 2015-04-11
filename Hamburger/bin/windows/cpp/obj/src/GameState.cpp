#include <hxcpp.h>

#ifndef INCLUDED_Bread
#include <Bread.h>
#endif
#ifndef INCLUDED_GameState
#include <GameState.h>
#endif
#ifndef INCLUDED_Ingredient
#include <Ingredient.h>
#endif
#ifndef INCLUDED_PlayerInput
#include <PlayerInput.h>
#endif
#ifndef INCLUDED_PlayerInputLeft
#include <PlayerInputLeft.h>
#endif
#ifndef INCLUDED_PlayerInputRight
#include <PlayerInputRight.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxG
#include <flixel/FlxG.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_FlxSprite
#include <flixel/FlxSprite.h>
#endif
#ifndef INCLUDED_flixel_FlxState
#include <flixel/FlxState.h>
#endif
#ifndef INCLUDED_flixel_group_FlxGroup
#include <flixel/group/FlxGroup.h>
#endif
#ifndef INCLUDED_flixel_group_FlxTypedGroup
#include <flixel/group/FlxTypedGroup.h>
#endif
#ifndef INCLUDED_flixel_interfaces_IFlxDestroyable
#include <flixel/interfaces/IFlxDestroyable.h>
#endif

Void GameState_obj::__construct()
{
HX_STACK_FRAME("GameState","new",0xb65d2111,"GameState.new","GameState.hx",12,0x62656b7f)
HX_STACK_THIS(this)
{
	HX_STACK_LINE(42)
	this->time = (int)0;
	HX_STACK_LINE(16)
	this->mIngredients = ::flixel::group::FlxGroup_obj::__new(null());
	HX_STACK_LINE(20)
	super::__construct(null());
	HX_STACK_LINE(22)
	{
		HX_STACK_LINE(22)
		int _g = (int)0;		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(22)
		while((true)){
			HX_STACK_LINE(22)
			if ((!(((_g < (int)10))))){
				HX_STACK_LINE(22)
				break;
			}
			HX_STACK_LINE(22)
			int i = (_g)++;		HX_STACK_VAR(i,"i");
			HX_STACK_LINE(24)
			::Ingredient ingredient = ::Ingredient_obj::__new((int)100,(int)100,HX_CSTRING("img/Tomato.png"));		HX_STACK_VAR(ingredient,"ingredient");
			HX_STACK_LINE(25)
			this->mIngredients->add(ingredient);
		}
	}
}
;
	return null();
}

//GameState_obj::~GameState_obj() { }

Dynamic GameState_obj::__CreateEmpty() { return  new GameState_obj; }
hx::ObjectPtr< GameState_obj > GameState_obj::__new()
{  hx::ObjectPtr< GameState_obj > result = new GameState_obj();
	result->__construct();
	return result;}

Dynamic GameState_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< GameState_obj > result = new GameState_obj();
	result->__construct();
	return result;}

Void GameState_obj::create( ){
{
		HX_STACK_FRAME("GameState","create",0xc7b6daeb,"GameState.create","GameState.hx",30,0x62656b7f)
		HX_STACK_THIS(this)
		HX_STACK_LINE(32)
		::PlayerInputRight pr = ::PlayerInputRight_obj::__new();		HX_STACK_VAR(pr,"pr");
		HX_STACK_LINE(33)
		::PlayerInputLeft pl = ::PlayerInputLeft_obj::__new();		HX_STACK_VAR(pl,"pl");
		HX_STACK_LINE(34)
		::Bread _g = ::Bread_obj::__new((int)150,(int)200,pl,HX_CSTRING("img/BreadTop.png"));		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(34)
		this->mBreadTop = _g;
		HX_STACK_LINE(35)
		::Bread _g1 = ::Bread_obj::__new((int)600,(int)200,pr,HX_CSTRING("img/BreadBottom.png"));		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(35)
		this->mBreadBottom = _g1;
		HX_STACK_LINE(36)
		this->add(this->mBreadTop);
		HX_STACK_LINE(37)
		this->add(this->mBreadBottom);
		HX_STACK_LINE(38)
		this->add(this->mIngredients);
	}
return null();
}


Void GameState_obj::update( ){
{
		HX_STACK_FRAME("GameState","update",0xd2acf9f8,"GameState.update","GameState.hx",45,0x62656b7f)
		HX_STACK_THIS(this)
		HX_STACK_LINE(46)
		this->super::update();
		HX_STACK_LINE(47)
		::flixel::FlxG_obj::overlap(this->mBreadTop,this->mBreadBottom,null(),::flixel::FlxObject_obj::separate_dyn());
		HX_STACK_LINE(48)
		::flixel::FlxG_obj::overlap(this->mBreadTop,this->mIngredients,null(),::flixel::FlxObject_obj::separate_dyn());
		HX_STACK_LINE(49)
		::flixel::FlxG_obj::overlap(this->mBreadBottom,this->mIngredients,null(),::flixel::FlxObject_obj::separate_dyn());
		HX_STACK_LINE(50)
		::flixel::FlxG_obj::overlap(this->mIngredients,this->mIngredients,null(),::flixel::FlxObject_obj::separate_dyn());
	}
return null();
}



GameState_obj::GameState_obj()
{
}

void GameState_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(GameState);
	HX_MARK_MEMBER_NAME(mBreadTop,"mBreadTop");
	HX_MARK_MEMBER_NAME(mBreadBottom,"mBreadBottom");
	HX_MARK_MEMBER_NAME(mIngredients,"mIngredients");
	HX_MARK_MEMBER_NAME(time,"time");
	::flixel::FlxState_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void GameState_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(mBreadTop,"mBreadTop");
	HX_VISIT_MEMBER_NAME(mBreadBottom,"mBreadBottom");
	HX_VISIT_MEMBER_NAME(mIngredients,"mIngredients");
	HX_VISIT_MEMBER_NAME(time,"time");
	::flixel::FlxState_obj::__Visit(HX_VISIT_ARG);
}

Dynamic GameState_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"time") ) { return time; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"create") ) { return create_dyn(); }
		if (HX_FIELD_EQ(inName,"update") ) { return update_dyn(); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"mBreadTop") ) { return mBreadTop; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"mBreadBottom") ) { return mBreadBottom; }
		if (HX_FIELD_EQ(inName,"mIngredients") ) { return mIngredients; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic GameState_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"time") ) { time=inValue.Cast< int >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"mBreadTop") ) { mBreadTop=inValue.Cast< ::Bread >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"mBreadBottom") ) { mBreadBottom=inValue.Cast< ::Bread >(); return inValue; }
		if (HX_FIELD_EQ(inName,"mIngredients") ) { mIngredients=inValue.Cast< ::flixel::group::FlxGroup >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void GameState_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("mBreadTop"));
	outFields->push(HX_CSTRING("mBreadBottom"));
	outFields->push(HX_CSTRING("mIngredients"));
	outFields->push(HX_CSTRING("time"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsObject /*::Bread*/ ,(int)offsetof(GameState_obj,mBreadTop),HX_CSTRING("mBreadTop")},
	{hx::fsObject /*::Bread*/ ,(int)offsetof(GameState_obj,mBreadBottom),HX_CSTRING("mBreadBottom")},
	{hx::fsObject /*::flixel::group::FlxGroup*/ ,(int)offsetof(GameState_obj,mIngredients),HX_CSTRING("mIngredients")},
	{hx::fsInt,(int)offsetof(GameState_obj,time),HX_CSTRING("time")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("mBreadTop"),
	HX_CSTRING("mBreadBottom"),
	HX_CSTRING("mIngredients"),
	HX_CSTRING("create"),
	HX_CSTRING("time"),
	HX_CSTRING("update"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(GameState_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(GameState_obj::__mClass,"__mClass");
};

#endif

Class GameState_obj::__mClass;

void GameState_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("GameState"), hx::TCanCast< GameState_obj> ,sStaticFields,sMemberFields,
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

void GameState_obj::__boot()
{
}

