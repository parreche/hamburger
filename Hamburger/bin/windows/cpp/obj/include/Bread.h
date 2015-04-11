#ifndef INCLUDED_Bread
#define INCLUDED_Bread

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <flixel/FlxSprite.h>
HX_DECLARE_CLASS0(Bread)
HX_DECLARE_CLASS0(PlayerInput)
HX_DECLARE_CLASS1(flixel,FlxBasic)
HX_DECLARE_CLASS1(flixel,FlxObject)
HX_DECLARE_CLASS1(flixel,FlxSprite)
HX_DECLARE_CLASS2(flixel,interfaces,IFlxDestroyable)


class HXCPP_CLASS_ATTRIBUTES  Bread_obj : public ::flixel::FlxSprite_obj{
	public:
		typedef ::flixel::FlxSprite_obj super;
		typedef Bread_obj OBJ_;
		Bread_obj();
		Void __construct(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,::PlayerInput aPlayerInput,::String aImage);

	public:
		inline void *operator new( size_t inSize, bool inContainer=true)
			{ return hx::Object::operator new(inSize,inContainer); }
		static hx::ObjectPtr< Bread_obj > __new(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,::PlayerInput aPlayerInput,::String aImage);
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~Bread_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("Bread"); }

		::PlayerInput mPlayerInput;
		virtual Void update( );

};


#endif /* INCLUDED_Bread */ 
