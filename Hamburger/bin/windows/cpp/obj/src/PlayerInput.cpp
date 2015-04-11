#include <hxcpp.h>

#ifndef INCLUDED_PlayerInput
#include <PlayerInput.h>
#endif

HX_DEFINE_DYNAMIC_FUNC0(PlayerInput_obj,up,return )

HX_DEFINE_DYNAMIC_FUNC0(PlayerInput_obj,down,return )

HX_DEFINE_DYNAMIC_FUNC0(PlayerInput_obj,left,return )

HX_DEFINE_DYNAMIC_FUNC0(PlayerInput_obj,right,return )


static ::String sMemberFields[] = {
	HX_CSTRING("up"),
	HX_CSTRING("down"),
	HX_CSTRING("left"),
	HX_CSTRING("right"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(PlayerInput_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(PlayerInput_obj::__mClass,"__mClass");
};

#endif

Class PlayerInput_obj::__mClass;

void PlayerInput_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("PlayerInput"), hx::TCanCast< PlayerInput_obj> ,0,sMemberFields,
	0, 0,
	&super::__SGetClass(), 0, sMarkStatics
#ifdef HXCPP_VISIT_ALLOCS
    , sVisitStatics
#endif
#ifdef HXCPP_SCRIPTABLE
    , 0
#endif
);
}

void PlayerInput_obj::__boot()
{
}

