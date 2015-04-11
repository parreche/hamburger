#include <hxcpp.h>

#ifndef INCLUDED_Bread
#include <Bread.h>
#endif
#ifndef INCLUDED_PlayerInput
#include <PlayerInput.h>
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
#ifndef INCLUDED_openfl__legacy_Assets
#include <openfl/_legacy/Assets.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_BitmapData
#include <openfl/_legacy/display/BitmapData.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif

Void Bread_obj::__construct(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,::PlayerInput aPlayerInput,::String aImage)
{
HX_STACK_FRAME("Bread","new",0xbe17618a,"Bread.new","Bread.hx",17,0xc1b69d26)
HX_STACK_THIS(this)
HX_STACK_ARG(__o_X,"X")
HX_STACK_ARG(__o_Y,"Y")
HX_STACK_ARG(aPlayerInput,"aPlayerInput")
HX_STACK_ARG(aImage,"aImage")
Float X = __o_X.Default(0);
Float Y = __o_Y.Default(0);
{
	HX_STACK_LINE(18)
	super::__construct(X,Y,null());
	HX_STACK_LINE(19)
	::openfl::_legacy::display::BitmapData _g = ::openfl::_legacy::Assets_obj::getBitmapData(aImage,null());		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(19)
	this->loadGraphic(_g,false,null(),null(),null(),null());
	HX_STACK_LINE(20)
	this->maxVelocity->set((int)100,(int)100);
	HX_STACK_LINE(21)
	this->drag->set((int)100,(int)100);
	HX_STACK_LINE(22)
	this->mPlayerInput = aPlayerInput;
	HX_STACK_LINE(23)
	this->set_immovable(true);
}
;
	return null();
}

//Bread_obj::~Bread_obj() { }

Dynamic Bread_obj::__CreateEmpty() { return  new Bread_obj; }
hx::ObjectPtr< Bread_obj > Bread_obj::__new(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,::PlayerInput aPlayerInput,::String aImage)
{  hx::ObjectPtr< Bread_obj > result = new Bread_obj();
	result->__construct(__o_X,__o_Y,aPlayerInput,aImage);
	return result;}

Dynamic Bread_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Bread_obj > result = new Bread_obj();
	result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3]);
	return result;}

Void Bread_obj::update( ){
{
		HX_STACK_FRAME("Bread","update",0x78d58b1f,"Bread.update","Bread.hx",27,0xc1b69d26)
		HX_STACK_THIS(this)
		HX_STACK_LINE(28)
		this->acceleration->set((int)0,(int)0);
		struct _Function_1_1{
			inline static bool Block( hx::ObjectPtr< ::Bread_obj > __this){
				HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","Bread.hx",29,0xc1b69d26)
				{
					HX_STACK_LINE(29)
					Float _g = __this->get_width();		HX_STACK_VAR(_g,"_g");
					HX_STACK_LINE(29)
					Float _g1 = (Float(_g) / Float((int)2));		HX_STACK_VAR(_g1,"_g1");
					HX_STACK_LINE(29)
					Float _g2 = (__this->x - _g1);		HX_STACK_VAR(_g2,"_g2");
					HX_STACK_LINE(29)
					return (_g2 > (int)0);
				}
				return null();
			}
		};
		HX_STACK_LINE(29)
		if (((  ((this->mPlayerInput->left())) ? bool(_Function_1_1::Block(this)) : bool(false) ))){
			HX_STACK_LINE(31)
			this->acceleration->set_x((int)-1000);
		}
		struct _Function_1_2{
			inline static bool Block( hx::ObjectPtr< ::Bread_obj > __this){
				HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","Bread.hx",33,0xc1b69d26)
				{
					HX_STACK_LINE(33)
					Float _g3 = __this->get_width();		HX_STACK_VAR(_g3,"_g3");
					HX_STACK_LINE(33)
					Float _g4 = (Float(_g3) / Float((int)2));		HX_STACK_VAR(_g4,"_g4");
					HX_STACK_LINE(33)
					Float _g5 = (__this->x + _g4);		HX_STACK_VAR(_g5,"_g5");
					HX_STACK_LINE(33)
					return (_g5 < (int)800);
				}
				return null();
			}
		};
		HX_STACK_LINE(33)
		if (((  ((this->mPlayerInput->right())) ? bool(_Function_1_2::Block(this)) : bool(false) ))){
			HX_STACK_LINE(35)
			this->acceleration->set_x((int)1000);
		}
		struct _Function_1_3{
			inline static bool Block( hx::ObjectPtr< ::Bread_obj > __this){
				HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","Bread.hx",37,0xc1b69d26)
				{
					HX_STACK_LINE(37)
					Float _g6 = __this->get_height();		HX_STACK_VAR(_g6,"_g6");
					HX_STACK_LINE(37)
					Float _g7 = (__this->y - _g6);		HX_STACK_VAR(_g7,"_g7");
					HX_STACK_LINE(37)
					return (_g7 > (int)0);
				}
				return null();
			}
		};
		HX_STACK_LINE(37)
		if (((  ((this->mPlayerInput->up())) ? bool(_Function_1_3::Block(this)) : bool(false) ))){
			HX_STACK_LINE(39)
			this->acceleration->set_y((int)-1000);
		}
		struct _Function_1_4{
			inline static bool Block( hx::ObjectPtr< ::Bread_obj > __this){
				HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","Bread.hx",41,0xc1b69d26)
				{
					HX_STACK_LINE(41)
					Float _g8 = __this->get_height();		HX_STACK_VAR(_g8,"_g8");
					HX_STACK_LINE(41)
					Float _g9 = (Float(_g8) / Float((int)2));		HX_STACK_VAR(_g9,"_g9");
					HX_STACK_LINE(41)
					Float _g10 = (__this->y + _g9);		HX_STACK_VAR(_g10,"_g10");
					HX_STACK_LINE(41)
					return (_g10 < (int)480);
				}
				return null();
			}
		};
		HX_STACK_LINE(41)
		if (((  ((this->mPlayerInput->down())) ? bool(_Function_1_4::Block(this)) : bool(false) ))){
			HX_STACK_LINE(43)
			this->acceleration->set_y((int)1000);
		}
		HX_STACK_LINE(45)
		this->super::update();
	}
return null();
}



Bread_obj::Bread_obj()
{
}

void Bread_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Bread);
	HX_MARK_MEMBER_NAME(mPlayerInput,"mPlayerInput");
	::flixel::FlxSprite_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Bread_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(mPlayerInput,"mPlayerInput");
	::flixel::FlxSprite_obj::__Visit(HX_VISIT_ARG);
}

Dynamic Bread_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"update") ) { return update_dyn(); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"mPlayerInput") ) { return mPlayerInput; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Bread_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 12:
		if (HX_FIELD_EQ(inName,"mPlayerInput") ) { mPlayerInput=inValue.Cast< ::PlayerInput >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Bread_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("mPlayerInput"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsObject /*::PlayerInput*/ ,(int)offsetof(Bread_obj,mPlayerInput),HX_CSTRING("mPlayerInput")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("mPlayerInput"),
	HX_CSTRING("update"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Bread_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Bread_obj::__mClass,"__mClass");
};

#endif

Class Bread_obj::__mClass;

void Bread_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Bread"), hx::TCanCast< Bread_obj> ,sStaticFields,sMemberFields,
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

void Bread_obj::__boot()
{
}

