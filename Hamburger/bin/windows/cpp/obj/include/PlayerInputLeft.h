#ifndef INCLUDED_PlayerInputLeft
#define INCLUDED_PlayerInputLeft

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <PlayerInput.h>
HX_DECLARE_CLASS0(PlayerInput)
HX_DECLARE_CLASS0(PlayerInputLeft)


class HXCPP_CLASS_ATTRIBUTES  PlayerInputLeft_obj : public hx::Object{
	public:
		typedef hx::Object super;
		typedef PlayerInputLeft_obj OBJ_;
		PlayerInputLeft_obj();
		Void __construct();

	public:
		inline void *operator new( size_t inSize, bool inContainer=false)
			{ return hx::Object::operator new(inSize,inContainer); }
		static hx::ObjectPtr< PlayerInputLeft_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~PlayerInputLeft_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		inline operator ::PlayerInput_obj *()
			{ return new ::PlayerInput_delegate_< PlayerInputLeft_obj >(this); }
		hx::Object *__ToInterface(const hx::type_info &inType);
		::String __ToString() const { return HX_CSTRING("PlayerInputLeft"); }

		virtual bool up( );
		Dynamic up_dyn();

		virtual bool down( );
		Dynamic down_dyn();

		virtual bool left( );
		Dynamic left_dyn();

		virtual bool right( );
		Dynamic right_dyn();

};


#endif /* INCLUDED_PlayerInputLeft */ 
