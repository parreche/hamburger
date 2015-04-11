#ifndef INCLUDED_Ingredient
#define INCLUDED_Ingredient

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <flixel/FlxSprite.h>
HX_DECLARE_CLASS0(Ingredient)
HX_DECLARE_CLASS1(flixel,FlxBasic)
HX_DECLARE_CLASS1(flixel,FlxObject)
HX_DECLARE_CLASS1(flixel,FlxSprite)
HX_DECLARE_CLASS2(flixel,interfaces,IFlxDestroyable)
HX_DECLARE_CLASS3(openfl,_legacy,geom,Point)


class HXCPP_CLASS_ATTRIBUTES  Ingredient_obj : public ::flixel::FlxSprite_obj{
	public:
		typedef ::flixel::FlxSprite_obj super;
		typedef Ingredient_obj OBJ_;
		Ingredient_obj();
		Void __construct(Float X,Float Y,::String aImage);

	public:
		inline void *operator new( size_t inSize, bool inContainer=true)
			{ return hx::Object::operator new(inSize,inContainer); }
		static hx::ObjectPtr< Ingredient_obj > __new(Float X,Float Y,::String aImage);
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~Ingredient_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("Ingredient"); }

		::openfl::_legacy::geom::Point mVelocity;
		virtual Void update( );

};


#endif /* INCLUDED_Ingredient */ 
