#ifndef INCLUDED_PlayerInput
#define INCLUDED_PlayerInput

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS0(PlayerInput)


class HXCPP_CLASS_ATTRIBUTES  PlayerInput_obj : public hx::Interface{
	public:
		typedef hx::Interface super;
		typedef PlayerInput_obj OBJ_;
		HX_DO_INTERFACE_RTTI;
		static void __boot();
virtual bool up( )=0;
		Dynamic up_dyn();
virtual bool down( )=0;
		Dynamic down_dyn();
virtual bool left( )=0;
		Dynamic left_dyn();
virtual bool right( )=0;
		Dynamic right_dyn();
};

#define DELEGATE_PlayerInput \
virtual bool up( ) { return mDelegate->up();}  \
virtual Dynamic up_dyn() { return mDelegate->up_dyn();}  \
virtual bool down( ) { return mDelegate->down();}  \
virtual Dynamic down_dyn() { return mDelegate->down_dyn();}  \
virtual bool left( ) { return mDelegate->left();}  \
virtual Dynamic left_dyn() { return mDelegate->left_dyn();}  \
virtual bool right( ) { return mDelegate->right();}  \
virtual Dynamic right_dyn() { return mDelegate->right_dyn();}  \


template<typename IMPL>
class PlayerInput_delegate_ : public PlayerInput_obj
{
	protected:
		IMPL *mDelegate;
	public:
		PlayerInput_delegate_(IMPL *inDelegate) : mDelegate(inDelegate) {}
		hx::Object *__GetRealObject() { return mDelegate; }
		void __Visit(HX_VISIT_PARAMS) { HX_VISIT_OBJECT(mDelegate); }
		DELEGATE_PlayerInput
};


#endif /* INCLUDED_PlayerInput */ 
