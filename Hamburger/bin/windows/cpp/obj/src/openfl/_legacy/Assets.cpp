#include <hxcpp.h>

#ifndef INCLUDED_DefaultAssetLibrary
#include <DefaultAssetLibrary.h>
#endif
#ifndef INCLUDED_IMap
#include <IMap.h>
#endif
#ifndef INCLUDED_Type
#include <Type.h>
#endif
#ifndef INCLUDED_haxe_Log
#include <haxe/Log.h>
#endif
#ifndef INCLUDED_haxe_ds_StringMap
#include <haxe/ds/StringMap.h>
#endif
#ifndef INCLUDED_haxe_format_JsonParser
#include <haxe/format/JsonParser.h>
#endif
#ifndef INCLUDED_haxe_io_Bytes
#include <haxe/io/Bytes.h>
#endif
#ifndef INCLUDED_openfl__legacy_AssetCache
#include <openfl/_legacy/AssetCache.h>
#endif
#ifndef INCLUDED_openfl__legacy_AssetLibrary
#include <openfl/_legacy/AssetLibrary.h>
#endif
#ifndef INCLUDED_openfl__legacy_AssetType
#include <openfl/_legacy/AssetType.h>
#endif
#ifndef INCLUDED_openfl__legacy_Assets
#include <openfl/_legacy/Assets.h>
#endif
#ifndef INCLUDED_openfl__legacy_IAssetCache
#include <openfl/_legacy/IAssetCache.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_BitmapData
#include <openfl/_legacy/display/BitmapData.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_DisplayObject
#include <openfl/_legacy/display/DisplayObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_DisplayObjectContainer
#include <openfl/_legacy/display/DisplayObjectContainer.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_InteractiveObject
#include <openfl/_legacy/display/InteractiveObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_MovieClip
#include <openfl/_legacy/display/MovieClip.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_Sprite
#include <openfl/_legacy/display/Sprite.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_Event
#include <openfl/_legacy/events/Event.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_EventDispatcher
#include <openfl/_legacy/events/EventDispatcher.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_IEventDispatcher
#include <openfl/_legacy/events/IEventDispatcher.h>
#endif
#ifndef INCLUDED_openfl__legacy_media_Sound
#include <openfl/_legacy/media/Sound.h>
#endif
#ifndef INCLUDED_openfl__legacy_text_Font
#include <openfl/_legacy/text/Font.h>
#endif
#ifndef INCLUDED_openfl__legacy_utils_ByteArray
#include <openfl/_legacy/utils/ByteArray.h>
#endif
#ifndef INCLUDED_openfl__legacy_utils_IDataInput
#include <openfl/_legacy/utils/IDataInput.h>
#endif
#ifndef INCLUDED_openfl__legacy_utils_IDataOutput
#include <openfl/_legacy/utils/IDataOutput.h>
#endif
#ifndef INCLUDED_openfl__legacy_utils_IMemoryRange
#include <openfl/_legacy/utils/IMemoryRange.h>
#endif
namespace openfl{
namespace _legacy{

Void Assets_obj::__construct()
{
	return null();
}

//Assets_obj::~Assets_obj() { }

Dynamic Assets_obj::__CreateEmpty() { return  new Assets_obj; }
hx::ObjectPtr< Assets_obj > Assets_obj::__new()
{  hx::ObjectPtr< Assets_obj > result = new Assets_obj();
	result->__construct();
	return result;}

Dynamic Assets_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Assets_obj > result = new Assets_obj();
	result->__construct();
	return result;}

::openfl::_legacy::IAssetCache Assets_obj::cache;

::haxe::ds::StringMap Assets_obj::libraries;

::openfl::_legacy::events::EventDispatcher Assets_obj::dispatcher;

bool Assets_obj::initialized;

Void Assets_obj::addEventListener( ::String type,Dynamic listener,hx::Null< bool >  __o_useCapture,hx::Null< int >  __o_priority,hx::Null< bool >  __o_useWeakReference){
bool useCapture = __o_useCapture.Default(false);
int priority = __o_priority.Default(0);
bool useWeakReference = __o_useWeakReference.Default(false);
	HX_STACK_FRAME("openfl._legacy.Assets","addEventListener",0x9ea1b894,"openfl._legacy.Assets.addEventListener","openfl/_legacy/Assets.hx",46,0x9276b055)
	HX_STACK_ARG(type,"type")
	HX_STACK_ARG(listener,"listener")
	HX_STACK_ARG(useCapture,"useCapture")
	HX_STACK_ARG(priority,"priority")
	HX_STACK_ARG(useWeakReference,"useWeakReference")
{
		HX_STACK_LINE(48)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(50)
		::openfl::_legacy::Assets_obj::dispatcher->addEventListener(type,listener,useCapture,priority,useWeakReference);
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC5(Assets_obj,addEventListener,(void))

bool Assets_obj::dispatchEvent( ::openfl::_legacy::events::Event event){
	HX_STACK_FRAME("openfl._legacy.Assets","dispatchEvent",0x41da67d9,"openfl._legacy.Assets.dispatchEvent","openfl/_legacy/Assets.hx",55,0x9276b055)
	HX_STACK_ARG(event,"event")
	HX_STACK_LINE(57)
	::openfl::_legacy::Assets_obj::initialize();
	HX_STACK_LINE(59)
	return ::openfl::_legacy::Assets_obj::dispatcher->dispatchEvent(event);
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,dispatchEvent,return )

bool Assets_obj::exists( ::String id,::openfl::_legacy::AssetType type){
	HX_STACK_FRAME("openfl._legacy.Assets","exists",0x884f5be3,"openfl._legacy.Assets.exists","openfl/_legacy/Assets.hx",64,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(type,"type")
	HX_STACK_LINE(66)
	::openfl::_legacy::Assets_obj::initialize();
	HX_STACK_LINE(70)
	if (((type == null()))){
		HX_STACK_LINE(72)
		type = ::openfl::_legacy::AssetType_obj::BINARY;
	}
	HX_STACK_LINE(76)
	int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(76)
	::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
	HX_STACK_LINE(77)
	int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(77)
	int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
	HX_STACK_LINE(77)
	::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
	HX_STACK_LINE(78)
	::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
	HX_STACK_LINE(80)
	if (((library != null()))){
		HX_STACK_LINE(82)
		return library->exists(symbolName,type);
	}
	HX_STACK_LINE(88)
	return false;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,exists,return )

::openfl::_legacy::display::BitmapData Assets_obj::getBitmapData( ::String id,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","getBitmapData",0x0ba8b2c8,"openfl._legacy.Assets.getBitmapData","openfl/_legacy/Assets.hx",100,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(102)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(106)
		if (((  (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))) ? bool(::openfl::_legacy::Assets_obj::cache->hasBitmapData(id)) : bool(false) ))){
			HX_STACK_LINE(108)
			::openfl::_legacy::display::BitmapData bitmapData = ::openfl::_legacy::Assets_obj::cache->getBitmapData(id);		HX_STACK_VAR(bitmapData,"bitmapData");
			HX_STACK_LINE(110)
			if ((::openfl::_legacy::Assets_obj::isValidBitmapData(bitmapData))){
				HX_STACK_LINE(112)
				return bitmapData;
			}
		}
		HX_STACK_LINE(118)
		int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(118)
		::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(119)
		int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(119)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(119)
		::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(120)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(122)
		if (((library != null()))){
			HX_STACK_LINE(124)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::IMAGE))){
				HX_STACK_LINE(126)
				if ((library->isLocal(symbolName,::openfl::_legacy::AssetType_obj::IMAGE))){
					HX_STACK_LINE(128)
					::openfl::_legacy::display::BitmapData bitmapData = library->getBitmapData(symbolName);		HX_STACK_VAR(bitmapData,"bitmapData");
					HX_STACK_LINE(130)
					if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){
						HX_STACK_LINE(132)
						::openfl::_legacy::Assets_obj::cache->setBitmapData(id,bitmapData);
					}
					HX_STACK_LINE(136)
					return bitmapData;
				}
				else{
					HX_STACK_LINE(140)
					::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] BitmapData asset \"") + id) + HX_CSTRING("\" exists, but only asynchronously")),hx::SourceInfo(HX_CSTRING("Assets.hx"),140,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getBitmapData")));
				}
			}
			else{
				HX_STACK_LINE(146)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no BitmapData asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),146,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getBitmapData")));
			}
		}
		else{
			HX_STACK_LINE(152)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),152,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getBitmapData")));
		}
		HX_STACK_LINE(158)
		return null();
	}
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,getBitmapData,return )

::openfl::_legacy::utils::ByteArray Assets_obj::getBytes( ::String id){
	HX_STACK_FRAME("openfl._legacy.Assets","getBytes",0x4eaf25bc,"openfl._legacy.Assets.getBytes","openfl/_legacy/Assets.hx",169,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_LINE(171)
	::openfl::_legacy::Assets_obj::initialize();
	HX_STACK_LINE(175)
	int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(175)
	::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
	HX_STACK_LINE(176)
	int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(176)
	int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
	HX_STACK_LINE(176)
	::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
	HX_STACK_LINE(177)
	::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
	HX_STACK_LINE(179)
	if (((library != null()))){
		HX_STACK_LINE(181)
		if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::BINARY))){
			HX_STACK_LINE(183)
			if ((library->isLocal(symbolName,::openfl::_legacy::AssetType_obj::BINARY))){
				HX_STACK_LINE(185)
				return library->getBytes(symbolName);
			}
			else{
				HX_STACK_LINE(189)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] String or ByteArray asset \"") + id) + HX_CSTRING("\" exists, but only asynchronously")),hx::SourceInfo(HX_CSTRING("Assets.hx"),189,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getBytes")));
			}
		}
		else{
			HX_STACK_LINE(195)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no String or ByteArray asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),195,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getBytes")));
		}
	}
	else{
		HX_STACK_LINE(201)
		::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),201,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getBytes")));
	}
	HX_STACK_LINE(207)
	return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,getBytes,return )

::openfl::_legacy::text::Font Assets_obj::getFont( ::String id,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","getFont",0xaf2a159e,"openfl._legacy.Assets.getFont","openfl/_legacy/Assets.hx",218,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(220)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(224)
		if (((  (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))) ? bool(::openfl::_legacy::Assets_obj::cache->hasFont(id)) : bool(false) ))){
			HX_STACK_LINE(226)
			return ::openfl::_legacy::Assets_obj::cache->getFont(id);
		}
		HX_STACK_LINE(230)
		int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(230)
		::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(231)
		int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(231)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(231)
		::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(232)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(234)
		if (((library != null()))){
			HX_STACK_LINE(236)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::FONT))){
				HX_STACK_LINE(238)
				if ((library->isLocal(symbolName,::openfl::_legacy::AssetType_obj::FONT))){
					HX_STACK_LINE(240)
					::openfl::_legacy::text::Font font = library->getFont(symbolName);		HX_STACK_VAR(font,"font");
					HX_STACK_LINE(242)
					if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){
						HX_STACK_LINE(244)
						::openfl::_legacy::Assets_obj::cache->setFont(id,font);
					}
					HX_STACK_LINE(248)
					return font;
				}
				else{
					HX_STACK_LINE(252)
					::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] Font asset \"") + id) + HX_CSTRING("\" exists, but only asynchronously")),hx::SourceInfo(HX_CSTRING("Assets.hx"),252,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getFont")));
				}
			}
			else{
				HX_STACK_LINE(258)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no Font asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),258,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getFont")));
			}
		}
		else{
			HX_STACK_LINE(264)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),264,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getFont")));
		}
		HX_STACK_LINE(270)
		return null();
	}
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,getFont,return )

::openfl::_legacy::AssetLibrary Assets_obj::getLibrary( ::String name){
	HX_STACK_FRAME("openfl._legacy.Assets","getLibrary",0x9a85fa8c,"openfl._legacy.Assets.getLibrary","openfl/_legacy/Assets.hx",275,0x9276b055)
	HX_STACK_ARG(name,"name")
	HX_STACK_LINE(277)
	if (((bool((name == null())) || bool((name == HX_CSTRING("")))))){
		HX_STACK_LINE(279)
		name = HX_CSTRING("default");
	}
	HX_STACK_LINE(283)
	return ::openfl::_legacy::Assets_obj::libraries->get(name);
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,getLibrary,return )

::openfl::_legacy::display::MovieClip Assets_obj::getMovieClip( ::String id){
	HX_STACK_FRAME("openfl._legacy.Assets","getMovieClip",0xc2f99c71,"openfl._legacy.Assets.getMovieClip","openfl/_legacy/Assets.hx",294,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_LINE(296)
	::openfl::_legacy::Assets_obj::initialize();
	HX_STACK_LINE(300)
	int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(300)
	::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
	HX_STACK_LINE(301)
	int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(301)
	int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
	HX_STACK_LINE(301)
	::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
	HX_STACK_LINE(302)
	::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
	HX_STACK_LINE(304)
	if (((library != null()))){
		HX_STACK_LINE(306)
		if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::MOVIE_CLIP))){
			HX_STACK_LINE(308)
			if ((library->isLocal(symbolName,::openfl::_legacy::AssetType_obj::MOVIE_CLIP))){
				HX_STACK_LINE(310)
				return library->getMovieClip(symbolName);
			}
			else{
				HX_STACK_LINE(314)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] MovieClip asset \"") + id) + HX_CSTRING("\" exists, but only asynchronously")),hx::SourceInfo(HX_CSTRING("Assets.hx"),314,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getMovieClip")));
			}
		}
		else{
			HX_STACK_LINE(320)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no MovieClip asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),320,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getMovieClip")));
		}
	}
	else{
		HX_STACK_LINE(326)
		::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),326,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getMovieClip")));
	}
	HX_STACK_LINE(332)
	return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,getMovieClip,return )

::openfl::_legacy::media::Sound Assets_obj::getMusic( ::String id,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","getMusic",0xa171edf6,"openfl._legacy.Assets.getMusic","openfl/_legacy/Assets.hx",343,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(345)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(349)
		if (((  (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))) ? bool(::openfl::_legacy::Assets_obj::cache->hasSound(id)) : bool(false) ))){
			HX_STACK_LINE(351)
			::openfl::_legacy::media::Sound sound = ::openfl::_legacy::Assets_obj::cache->getSound(id);		HX_STACK_VAR(sound,"sound");
			HX_STACK_LINE(353)
			if ((::openfl::_legacy::Assets_obj::isValidSound(sound))){
				HX_STACK_LINE(355)
				return sound;
			}
		}
		HX_STACK_LINE(361)
		int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(361)
		::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(362)
		int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(362)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(362)
		::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(363)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(365)
		if (((library != null()))){
			HX_STACK_LINE(367)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::MUSIC))){
				HX_STACK_LINE(369)
				if ((library->isLocal(symbolName,::openfl::_legacy::AssetType_obj::MUSIC))){
					HX_STACK_LINE(371)
					::openfl::_legacy::media::Sound sound = library->getMusic(symbolName);		HX_STACK_VAR(sound,"sound");
					HX_STACK_LINE(373)
					if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){
						HX_STACK_LINE(375)
						::openfl::_legacy::Assets_obj::cache->setSound(id,sound);
					}
					HX_STACK_LINE(379)
					return sound;
				}
				else{
					HX_STACK_LINE(383)
					::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] Sound asset \"") + id) + HX_CSTRING("\" exists, but only asynchronously")),hx::SourceInfo(HX_CSTRING("Assets.hx"),383,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getMusic")));
				}
			}
			else{
				HX_STACK_LINE(389)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no Sound asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),389,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getMusic")));
			}
		}
		else{
			HX_STACK_LINE(395)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),395,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getMusic")));
		}
		HX_STACK_LINE(401)
		return null();
	}
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,getMusic,return )

::String Assets_obj::getPath( ::String id){
	HX_STACK_FRAME("openfl._legacy.Assets","getPath",0xb5bb9d74,"openfl._legacy.Assets.getPath","openfl/_legacy/Assets.hx",412,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_LINE(414)
	::openfl::_legacy::Assets_obj::initialize();
	HX_STACK_LINE(418)
	int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(418)
	::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
	HX_STACK_LINE(419)
	int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(419)
	int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
	HX_STACK_LINE(419)
	::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
	HX_STACK_LINE(420)
	::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
	HX_STACK_LINE(422)
	if (((library != null()))){
		HX_STACK_LINE(424)
		if ((library->exists(symbolName,null()))){
			HX_STACK_LINE(426)
			return library->getPath(symbolName);
		}
		else{
			HX_STACK_LINE(430)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),430,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getPath")));
		}
	}
	else{
		HX_STACK_LINE(436)
		::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),436,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getPath")));
	}
	HX_STACK_LINE(442)
	return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,getPath,return )

::openfl::_legacy::media::Sound Assets_obj::getSound( ::String id,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","getSound",0x11e3aa20,"openfl._legacy.Assets.getSound","openfl/_legacy/Assets.hx",453,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(455)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(459)
		if (((  (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))) ? bool(::openfl::_legacy::Assets_obj::cache->hasSound(id)) : bool(false) ))){
			HX_STACK_LINE(461)
			::openfl::_legacy::media::Sound sound = ::openfl::_legacy::Assets_obj::cache->getSound(id);		HX_STACK_VAR(sound,"sound");
			HX_STACK_LINE(463)
			if ((::openfl::_legacy::Assets_obj::isValidSound(sound))){
				HX_STACK_LINE(465)
				return sound;
			}
		}
		HX_STACK_LINE(471)
		int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(471)
		::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(472)
		int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(472)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(472)
		::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(473)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(475)
		if (((library != null()))){
			HX_STACK_LINE(477)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::SOUND))){
				HX_STACK_LINE(479)
				if ((library->isLocal(symbolName,::openfl::_legacy::AssetType_obj::SOUND))){
					HX_STACK_LINE(481)
					::openfl::_legacy::media::Sound sound = library->getSound(symbolName);		HX_STACK_VAR(sound,"sound");
					HX_STACK_LINE(483)
					if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){
						HX_STACK_LINE(485)
						::openfl::_legacy::Assets_obj::cache->setSound(id,sound);
					}
					HX_STACK_LINE(489)
					return sound;
				}
				else{
					HX_STACK_LINE(493)
					::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] Sound asset \"") + id) + HX_CSTRING("\" exists, but only asynchronously")),hx::SourceInfo(HX_CSTRING("Assets.hx"),493,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getSound")));
				}
			}
			else{
				HX_STACK_LINE(499)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no Sound asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),499,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getSound")));
			}
		}
		else{
			HX_STACK_LINE(505)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),505,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getSound")));
		}
		HX_STACK_LINE(511)
		return null();
	}
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,getSound,return )

::String Assets_obj::getText( ::String id){
	HX_STACK_FRAME("openfl._legacy.Assets","getText",0xb863847c,"openfl._legacy.Assets.getText","openfl/_legacy/Assets.hx",522,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_LINE(524)
	::openfl::_legacy::Assets_obj::initialize();
	HX_STACK_LINE(528)
	int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(528)
	::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
	HX_STACK_LINE(529)
	int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(529)
	int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
	HX_STACK_LINE(529)
	::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
	HX_STACK_LINE(530)
	::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
	HX_STACK_LINE(532)
	if (((library != null()))){
		HX_STACK_LINE(534)
		if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::TEXT))){
			HX_STACK_LINE(536)
			if ((library->isLocal(symbolName,::openfl::_legacy::AssetType_obj::TEXT))){
				HX_STACK_LINE(538)
				return library->getText(symbolName);
			}
			else{
				HX_STACK_LINE(542)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] String asset \"") + id) + HX_CSTRING("\" exists, but only asynchronously")),hx::SourceInfo(HX_CSTRING("Assets.hx"),542,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getText")));
			}
		}
		else{
			HX_STACK_LINE(548)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no String asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),548,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getText")));
		}
	}
	else{
		HX_STACK_LINE(554)
		::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),554,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("getText")));
	}
	HX_STACK_LINE(560)
	return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,getText,return )

bool Assets_obj::hasEventListener( ::String type){
	HX_STACK_FRAME("openfl._legacy.Assets","hasEventListener",0xba27dbbb,"openfl._legacy.Assets.hasEventListener","openfl/_legacy/Assets.hx",565,0x9276b055)
	HX_STACK_ARG(type,"type")
	HX_STACK_LINE(567)
	::openfl::_legacy::Assets_obj::initialize();
	HX_STACK_LINE(569)
	return ::openfl::_legacy::Assets_obj::dispatcher->hasEventListener(type);
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,hasEventListener,return )

Void Assets_obj::initialize( ){
{
		HX_STACK_FRAME("openfl._legacy.Assets","initialize",0xf86f7ed7,"openfl._legacy.Assets.initialize","openfl/_legacy/Assets.hx",576,0x9276b055)
		HX_STACK_LINE(576)
		if ((!(::openfl::_legacy::Assets_obj::initialized))){
			HX_STACK_LINE(580)
			::DefaultAssetLibrary _g = ::DefaultAssetLibrary_obj::__new();		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(580)
			::openfl::_legacy::Assets_obj::registerLibrary(HX_CSTRING("default"),_g);
			HX_STACK_LINE(584)
			::openfl::_legacy::Assets_obj::initialized = true;
		}
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC0(Assets_obj,initialize,(void))

bool Assets_obj::isLocal( ::String id,::openfl::_legacy::AssetType type,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","isLocal",0xae5d753a,"openfl._legacy.Assets.isLocal","openfl/_legacy/Assets.hx",591,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(type,"type")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(593)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(597)
		if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){
			HX_STACK_LINE(599)
			if (((bool((type == ::openfl::_legacy::AssetType_obj::IMAGE)) || bool((type == null()))))){
				HX_STACK_LINE(601)
				if ((::openfl::_legacy::Assets_obj::cache->hasBitmapData(id))){
					HX_STACK_LINE(601)
					return true;
				}
			}
			HX_STACK_LINE(605)
			if (((bool((type == ::openfl::_legacy::AssetType_obj::FONT)) || bool((type == null()))))){
				HX_STACK_LINE(607)
				if ((::openfl::_legacy::Assets_obj::cache->hasFont(id))){
					HX_STACK_LINE(607)
					return true;
				}
			}
			HX_STACK_LINE(611)
			if (((bool((bool((type == ::openfl::_legacy::AssetType_obj::SOUND)) || bool((type == ::openfl::_legacy::AssetType_obj::MUSIC)))) || bool((type == null()))))){
				HX_STACK_LINE(613)
				if ((::openfl::_legacy::Assets_obj::cache->hasSound(id))){
					HX_STACK_LINE(613)
					return true;
				}
			}
		}
		HX_STACK_LINE(619)
		int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(619)
		::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(620)
		int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(620)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(620)
		::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(621)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(623)
		if (((library != null()))){
			HX_STACK_LINE(625)
			return library->isLocal(symbolName,type);
		}
		HX_STACK_LINE(631)
		return false;
	}
}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(Assets_obj,isLocal,return )

bool Assets_obj::isValidBitmapData( ::openfl::_legacy::display::BitmapData bitmapData){
	HX_STACK_FRAME("openfl._legacy.Assets","isValidBitmapData",0xcf9de664,"openfl._legacy.Assets.isValidBitmapData","openfl/_legacy/Assets.hx",636,0x9276b055)
	HX_STACK_ARG(bitmapData,"bitmapData")
	HX_STACK_LINE(641)
	return (bitmapData->__handle != null());
	HX_STACK_LINE(662)
	return true;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,isValidBitmapData,return )

bool Assets_obj::isValidSound( ::openfl::_legacy::media::Sound sound){
	HX_STACK_FRAME("openfl._legacy.Assets","isValidSound",0x3cb31c04,"openfl._legacy.Assets.isValidSound","openfl/_legacy/Assets.hx",667,0x9276b055)
	HX_STACK_ARG(sound,"sound")
	HX_STACK_LINE(672)
	return (bool((sound->__handle != null())) && bool((sound->__handle != (int)0)));
	HX_STACK_LINE(677)
	return true;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,isValidSound,return )

Array< ::String > Assets_obj::list( ::openfl::_legacy::AssetType type){
	HX_STACK_FRAME("openfl._legacy.Assets","list",0x7c38faa5,"openfl._legacy.Assets.list","openfl/_legacy/Assets.hx",682,0x9276b055)
	HX_STACK_ARG(type,"type")
	HX_STACK_LINE(684)
	::openfl::_legacy::Assets_obj::initialize();
	HX_STACK_LINE(686)
	Array< ::String > items = Array_obj< ::String >::__new();		HX_STACK_VAR(items,"items");
	HX_STACK_LINE(688)
	for(::cpp::FastIterator_obj< ::openfl::_legacy::AssetLibrary > *__it = ::cpp::CreateFastIterator< ::openfl::_legacy::AssetLibrary >(::openfl::_legacy::Assets_obj::libraries->iterator());  __it->hasNext(); ){
		::openfl::_legacy::AssetLibrary library = __it->next();
		{
			HX_STACK_LINE(690)
			Array< ::String > libraryItems = library->list(type);		HX_STACK_VAR(libraryItems,"libraryItems");
			HX_STACK_LINE(692)
			if (((libraryItems != null()))){
				HX_STACK_LINE(694)
				Array< ::String > _g = items->concat(libraryItems);		HX_STACK_VAR(_g,"_g");
				HX_STACK_LINE(694)
				items = _g;
			}
		}
;
	}
	HX_STACK_LINE(700)
	return items;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,list,return )

Void Assets_obj::loadBitmapData( ::String id,Dynamic handler,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","loadBitmapData",0x55e8dc86,"openfl._legacy.Assets.loadBitmapData","openfl/_legacy/Assets.hx",705,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(handler,"handler")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(705)
		Dynamic handler1 = Dynamic( Array_obj<Dynamic>::__new().Add(handler));		HX_STACK_VAR(handler1,"handler1");
		HX_STACK_LINE(705)
		Array< ::String > id1 = Array_obj< ::String >::__new().Add(id);		HX_STACK_VAR(id1,"id1");
		HX_STACK_LINE(707)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(711)
		if (((  (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))) ? bool(::openfl::_legacy::Assets_obj::cache->hasBitmapData(id1->__get((int)0))) : bool(false) ))){
			HX_STACK_LINE(713)
			::openfl::_legacy::display::BitmapData bitmapData = ::openfl::_legacy::Assets_obj::cache->getBitmapData(id1->__get((int)0));		HX_STACK_VAR(bitmapData,"bitmapData");
			HX_STACK_LINE(715)
			if ((::openfl::_legacy::Assets_obj::isValidBitmapData(bitmapData))){
				HX_STACK_LINE(717)
				handler1->__GetItem((int)0)(bitmapData).Cast< Void >();
				HX_STACK_LINE(718)
				return null();
			}
		}
		HX_STACK_LINE(724)
		int _g = id1->__get((int)0).indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(724)
		::String libraryName = id1->__get((int)0).substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(725)
		int _g1 = id1->__get((int)0).indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(725)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(725)
		::String symbolName = id1->__get((int)0).substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(726)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(728)
		if (((library != null()))){
			HX_STACK_LINE(730)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::IMAGE))){
				HX_STACK_LINE(732)
				if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){

					HX_BEGIN_LOCAL_FUNC_S2(hx::LocalFunc,_Function_4_1,Dynamic,handler1,Array< ::String >,id1)
					Void run(::openfl::_legacy::display::BitmapData bitmapData){
						HX_STACK_FRAME("*","_Function_4_1",0x520333fa,"*._Function_4_1","openfl/_legacy/Assets.hx",734,0x9276b055)
						HX_STACK_ARG(bitmapData,"bitmapData")
						{
							HX_STACK_LINE(736)
							::openfl::_legacy::Assets_obj::cache->setBitmapData(id1->__get((int)0),bitmapData);
							HX_STACK_LINE(737)
							handler1->__GetItem((int)0)(bitmapData).Cast< Void >();
						}
						return null();
					}
					HX_END_LOCAL_FUNC1((void))

					HX_STACK_LINE(734)
					library->loadBitmapData(symbolName, Dynamic(new _Function_4_1(handler1,id1)));
				}
				else{
					HX_STACK_LINE(743)
					library->loadBitmapData(symbolName,handler1->__GetItem((int)0));
				}
				HX_STACK_LINE(747)
				return null();
			}
			else{
				HX_STACK_LINE(751)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no BitmapData asset with an ID of \"") + id1->__get((int)0)) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),751,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadBitmapData")));
			}
		}
		else{
			HX_STACK_LINE(757)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),757,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadBitmapData")));
		}
		HX_STACK_LINE(763)
		handler1->__GetItem((int)0)(null()).Cast< Void >();
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(Assets_obj,loadBitmapData,(void))

Void Assets_obj::loadBytes( ::String id,Dynamic handler){
{
		HX_STACK_FRAME("openfl._legacy.Assets","loadBytes",0xbf9b54be,"openfl._legacy.Assets.loadBytes","openfl/_legacy/Assets.hx",768,0x9276b055)
		HX_STACK_ARG(id,"id")
		HX_STACK_ARG(handler,"handler")
		HX_STACK_LINE(770)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(774)
		int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(774)
		::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(775)
		int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(775)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(775)
		::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(776)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(778)
		if (((library != null()))){
			HX_STACK_LINE(780)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::BINARY))){
				HX_STACK_LINE(782)
				library->loadBytes(symbolName,handler);
				HX_STACK_LINE(783)
				return null();
			}
			else{
				HX_STACK_LINE(787)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no String or ByteArray asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),787,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadBytes")));
			}
		}
		else{
			HX_STACK_LINE(793)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),793,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadBytes")));
		}
		HX_STACK_LINE(799)
		handler(null()).Cast< Void >();
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,loadBytes,(void))

Void Assets_obj::loadFont( ::String id,Dynamic handler,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","loadFont",0xe5a03cdc,"openfl._legacy.Assets.loadFont","openfl/_legacy/Assets.hx",804,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(handler,"handler")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(804)
		Dynamic handler1 = Dynamic( Array_obj<Dynamic>::__new().Add(handler));		HX_STACK_VAR(handler1,"handler1");
		HX_STACK_LINE(804)
		Array< ::String > id1 = Array_obj< ::String >::__new().Add(id);		HX_STACK_VAR(id1,"id1");
		HX_STACK_LINE(806)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(810)
		if (((  (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))) ? bool(::openfl::_legacy::Assets_obj::cache->hasFont(id1->__get((int)0))) : bool(false) ))){
			HX_STACK_LINE(812)
			::openfl::_legacy::text::Font _g = ::openfl::_legacy::Assets_obj::cache->getFont(id1->__get((int)0));		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(812)
			handler1->__GetItem((int)0)(_g).Cast< Void >();
			HX_STACK_LINE(813)
			return null();
		}
		HX_STACK_LINE(817)
		int _g1 = id1->__get((int)0).indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(817)
		::String libraryName = id1->__get((int)0).substring((int)0,_g1);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(818)
		int _g2 = id1->__get((int)0).indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(818)
		int _g3 = (_g2 + (int)1);		HX_STACK_VAR(_g3,"_g3");
		HX_STACK_LINE(818)
		::String symbolName = id1->__get((int)0).substr(_g3,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(819)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(821)
		if (((library != null()))){
			HX_STACK_LINE(823)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::FONT))){
				HX_STACK_LINE(825)
				if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){

					HX_BEGIN_LOCAL_FUNC_S2(hx::LocalFunc,_Function_4_1,Dynamic,handler1,Array< ::String >,id1)
					Void run(::openfl::_legacy::text::Font font){
						HX_STACK_FRAME("*","_Function_4_1",0x520333fa,"*._Function_4_1","openfl/_legacy/Assets.hx",827,0x9276b055)
						HX_STACK_ARG(font,"font")
						{
							HX_STACK_LINE(829)
							::openfl::_legacy::Assets_obj::cache->setFont(id1->__get((int)0),font);
							HX_STACK_LINE(830)
							handler1->__GetItem((int)0)(font).Cast< Void >();
						}
						return null();
					}
					HX_END_LOCAL_FUNC1((void))

					HX_STACK_LINE(827)
					library->loadFont(symbolName, Dynamic(new _Function_4_1(handler1,id1)));
				}
				else{
					HX_STACK_LINE(836)
					library->loadFont(symbolName,handler1->__GetItem((int)0));
				}
				HX_STACK_LINE(840)
				return null();
			}
			else{
				HX_STACK_LINE(844)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no Font asset with an ID of \"") + id1->__get((int)0)) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),844,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadFont")));
			}
		}
		else{
			HX_STACK_LINE(850)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),850,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadFont")));
		}
		HX_STACK_LINE(856)
		handler1->__GetItem((int)0)(null()).Cast< Void >();
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(Assets_obj,loadFont,(void))

Void Assets_obj::loadLibrary( ::String name,Dynamic handler){
{
		HX_STACK_FRAME("openfl._legacy.Assets","loadLibrary",0x421d6e0e,"openfl._legacy.Assets.loadLibrary","openfl/_legacy/Assets.hx",861,0x9276b055)
		HX_STACK_ARG(name,"name")
		HX_STACK_ARG(handler,"handler")
		HX_STACK_LINE(863)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(867)
		::String data = ::openfl::_legacy::Assets_obj::getText(((HX_CSTRING("libraries/") + name) + HX_CSTRING(".json")));		HX_STACK_VAR(data,"data");
		HX_STACK_LINE(869)
		if (((bool((data != null())) && bool((data != HX_CSTRING("")))))){
			HX_STACK_LINE(871)
			Dynamic info = ::haxe::format::JsonParser_obj::__new(data)->parseRec();		HX_STACK_VAR(info,"info");
			HX_STACK_LINE(872)
			::Class _g = ::Type_obj::resolveClass(info->__Field(HX_CSTRING("type"),true));		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(872)
			::openfl::_legacy::AssetLibrary library = ::Type_obj::createInstance(_g,info->__Field(HX_CSTRING("args"),true));		HX_STACK_VAR(library,"library");
			HX_STACK_LINE(873)
			::openfl::_legacy::Assets_obj::libraries->set(name,library);
			HX_STACK_LINE(874)
			library->eventCallback = ::openfl::_legacy::Assets_obj::library_onEvent_dyn();
			HX_STACK_LINE(875)
			library->load(handler);
		}
		else{
			HX_STACK_LINE(879)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + name) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),879,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadLibrary")));
		}
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,loadLibrary,(void))

Void Assets_obj::loadMusic( ::String id,Dynamic handler,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","loadMusic",0x125e1cf8,"openfl._legacy.Assets.loadMusic","openfl/_legacy/Assets.hx",888,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(handler,"handler")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(888)
		Dynamic handler1 = Dynamic( Array_obj<Dynamic>::__new().Add(handler));		HX_STACK_VAR(handler1,"handler1");
		HX_STACK_LINE(888)
		Array< ::String > id1 = Array_obj< ::String >::__new().Add(id);		HX_STACK_VAR(id1,"id1");
		HX_STACK_LINE(890)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(894)
		if (((  (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))) ? bool(::openfl::_legacy::Assets_obj::cache->hasSound(id1->__get((int)0))) : bool(false) ))){
			HX_STACK_LINE(896)
			::openfl::_legacy::media::Sound sound = ::openfl::_legacy::Assets_obj::cache->getSound(id1->__get((int)0));		HX_STACK_VAR(sound,"sound");
			HX_STACK_LINE(898)
			if ((::openfl::_legacy::Assets_obj::isValidSound(sound))){
				HX_STACK_LINE(900)
				handler1->__GetItem((int)0)(sound).Cast< Void >();
				HX_STACK_LINE(901)
				return null();
			}
		}
		HX_STACK_LINE(907)
		int _g = id1->__get((int)0).indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(907)
		::String libraryName = id1->__get((int)0).substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(908)
		int _g1 = id1->__get((int)0).indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(908)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(908)
		::String symbolName = id1->__get((int)0).substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(909)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(911)
		if (((library != null()))){
			HX_STACK_LINE(913)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::MUSIC))){
				HX_STACK_LINE(915)
				if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){

					HX_BEGIN_LOCAL_FUNC_S2(hx::LocalFunc,_Function_4_1,Dynamic,handler1,Array< ::String >,id1)
					Void run(::openfl::_legacy::media::Sound sound){
						HX_STACK_FRAME("*","_Function_4_1",0x520333fa,"*._Function_4_1","openfl/_legacy/Assets.hx",917,0x9276b055)
						HX_STACK_ARG(sound,"sound")
						{
							HX_STACK_LINE(919)
							::openfl::_legacy::Assets_obj::cache->setSound(id1->__get((int)0),sound);
							HX_STACK_LINE(920)
							handler1->__GetItem((int)0)(sound).Cast< Void >();
						}
						return null();
					}
					HX_END_LOCAL_FUNC1((void))

					HX_STACK_LINE(917)
					library->loadMusic(symbolName, Dynamic(new _Function_4_1(handler1,id1)));
				}
				else{
					HX_STACK_LINE(926)
					library->loadMusic(symbolName,handler1->__GetItem((int)0));
				}
				HX_STACK_LINE(930)
				return null();
			}
			else{
				HX_STACK_LINE(934)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no Sound asset with an ID of \"") + id1->__get((int)0)) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),934,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadMusic")));
			}
		}
		else{
			HX_STACK_LINE(940)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),940,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadMusic")));
		}
		HX_STACK_LINE(946)
		handler1->__GetItem((int)0)(null()).Cast< Void >();
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(Assets_obj,loadMusic,(void))

Void Assets_obj::loadMovieClip( ::String id,Dynamic handler){
{
		HX_STACK_FRAME("openfl._legacy.Assets","loadMovieClip",0x15f67473,"openfl._legacy.Assets.loadMovieClip","openfl/_legacy/Assets.hx",951,0x9276b055)
		HX_STACK_ARG(id,"id")
		HX_STACK_ARG(handler,"handler")
		HX_STACK_LINE(953)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(957)
		int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(957)
		::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(958)
		int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(958)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(958)
		::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(959)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(961)
		if (((library != null()))){
			HX_STACK_LINE(963)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::MOVIE_CLIP))){
				HX_STACK_LINE(965)
				library->loadMovieClip(symbolName,handler);
				HX_STACK_LINE(966)
				return null();
			}
			else{
				HX_STACK_LINE(970)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no MovieClip asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),970,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadMovieClip")));
			}
		}
		else{
			HX_STACK_LINE(976)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),976,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadMovieClip")));
		}
		HX_STACK_LINE(982)
		handler(null()).Cast< Void >();
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,loadMovieClip,(void))

Void Assets_obj::loadSound( ::String id,Dynamic handler,hx::Null< bool >  __o_useCache){
bool useCache = __o_useCache.Default(true);
	HX_STACK_FRAME("openfl._legacy.Assets","loadSound",0x82cfd922,"openfl._legacy.Assets.loadSound","openfl/_legacy/Assets.hx",987,0x9276b055)
	HX_STACK_ARG(id,"id")
	HX_STACK_ARG(handler,"handler")
	HX_STACK_ARG(useCache,"useCache")
{
		HX_STACK_LINE(987)
		Dynamic handler1 = Dynamic( Array_obj<Dynamic>::__new().Add(handler));		HX_STACK_VAR(handler1,"handler1");
		HX_STACK_LINE(987)
		Array< ::String > id1 = Array_obj< ::String >::__new().Add(id);		HX_STACK_VAR(id1,"id1");
		HX_STACK_LINE(989)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(993)
		if (((  (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))) ? bool(::openfl::_legacy::Assets_obj::cache->hasSound(id1->__get((int)0))) : bool(false) ))){
			HX_STACK_LINE(995)
			::openfl::_legacy::media::Sound sound = ::openfl::_legacy::Assets_obj::cache->getSound(id1->__get((int)0));		HX_STACK_VAR(sound,"sound");
			HX_STACK_LINE(997)
			if ((::openfl::_legacy::Assets_obj::isValidSound(sound))){
				HX_STACK_LINE(999)
				handler1->__GetItem((int)0)(sound).Cast< Void >();
				HX_STACK_LINE(1000)
				return null();
			}
		}
		HX_STACK_LINE(1006)
		int _g = id1->__get((int)0).indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(1006)
		::String libraryName = id1->__get((int)0).substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(1007)
		int _g1 = id1->__get((int)0).indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(1007)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(1007)
		::String symbolName = id1->__get((int)0).substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(1008)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(1010)
		if (((library != null()))){
			HX_STACK_LINE(1012)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::SOUND))){
				HX_STACK_LINE(1014)
				if (((  ((useCache)) ? bool(::openfl::_legacy::Assets_obj::cache->__Field(HX_CSTRING("get_enabled"),true)()) : bool(false) ))){

					HX_BEGIN_LOCAL_FUNC_S2(hx::LocalFunc,_Function_4_1,Dynamic,handler1,Array< ::String >,id1)
					Void run(::openfl::_legacy::media::Sound sound){
						HX_STACK_FRAME("*","_Function_4_1",0x520333fa,"*._Function_4_1","openfl/_legacy/Assets.hx",1016,0x9276b055)
						HX_STACK_ARG(sound,"sound")
						{
							HX_STACK_LINE(1018)
							::openfl::_legacy::Assets_obj::cache->setSound(id1->__get((int)0),sound);
							HX_STACK_LINE(1019)
							handler1->__GetItem((int)0)(sound).Cast< Void >();
						}
						return null();
					}
					HX_END_LOCAL_FUNC1((void))

					HX_STACK_LINE(1016)
					library->loadSound(symbolName, Dynamic(new _Function_4_1(handler1,id1)));
				}
				else{
					HX_STACK_LINE(1025)
					library->loadSound(symbolName,handler1->__GetItem((int)0));
				}
				HX_STACK_LINE(1029)
				return null();
			}
			else{
				HX_STACK_LINE(1033)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no Sound asset with an ID of \"") + id1->__get((int)0)) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),1033,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadSound")));
			}
		}
		else{
			HX_STACK_LINE(1039)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),1039,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadSound")));
		}
		HX_STACK_LINE(1045)
		handler1->__GetItem((int)0)(null()).Cast< Void >();
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(Assets_obj,loadSound,(void))

Void Assets_obj::loadText( ::String id,Dynamic handler){
{
		HX_STACK_FRAME("openfl._legacy.Assets","loadText",0xeed9abba,"openfl._legacy.Assets.loadText","openfl/_legacy/Assets.hx",1050,0x9276b055)
		HX_STACK_ARG(id,"id")
		HX_STACK_ARG(handler,"handler")
		HX_STACK_LINE(1052)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(1056)
		int _g = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(1056)
		::String libraryName = id.substring((int)0,_g);		HX_STACK_VAR(libraryName,"libraryName");
		HX_STACK_LINE(1057)
		int _g1 = id.indexOf(HX_CSTRING(":"),null());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(1057)
		int _g2 = (_g1 + (int)1);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(1057)
		::String symbolName = id.substr(_g2,null());		HX_STACK_VAR(symbolName,"symbolName");
		HX_STACK_LINE(1058)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::getLibrary(libraryName);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(1060)
		if (((library != null()))){
			HX_STACK_LINE(1062)
			if ((library->exists(symbolName,::openfl::_legacy::AssetType_obj::TEXT))){
				HX_STACK_LINE(1064)
				library->loadText(symbolName,handler);
				HX_STACK_LINE(1065)
				return null();
			}
			else{
				HX_STACK_LINE(1069)
				::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no String asset with an ID of \"") + id) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),1069,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadText")));
			}
		}
		else{
			HX_STACK_LINE(1075)
			::haxe::Log_obj::trace(((HX_CSTRING("[openfl.Assets] There is no asset library named \"") + libraryName) + HX_CSTRING("\"")),hx::SourceInfo(HX_CSTRING("Assets.hx"),1075,HX_CSTRING("openfl._legacy.Assets"),HX_CSTRING("loadText")));
		}
		HX_STACK_LINE(1081)
		handler(null()).Cast< Void >();
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,loadText,(void))

Void Assets_obj::registerLibrary( ::String name,::openfl::_legacy::AssetLibrary library){
{
		HX_STACK_FRAME("openfl._legacy.Assets","registerLibrary",0x6f46d3f1,"openfl._legacy.Assets.registerLibrary","openfl/_legacy/Assets.hx",1086,0x9276b055)
		HX_STACK_ARG(name,"name")
		HX_STACK_ARG(library,"library")
		HX_STACK_LINE(1088)
		if ((::openfl::_legacy::Assets_obj::libraries->exists(name))){
			HX_STACK_LINE(1090)
			::openfl::_legacy::Assets_obj::unloadLibrary(name);
		}
		HX_STACK_LINE(1094)
		if (((library != null()))){
			HX_STACK_LINE(1096)
			library->eventCallback = ::openfl::_legacy::Assets_obj::library_onEvent_dyn();
		}
		HX_STACK_LINE(1100)
		::openfl::_legacy::Assets_obj::libraries->set(name,library);
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,registerLibrary,(void))

Void Assets_obj::removeEventListener( ::String type,Dynamic listener,hx::Null< bool >  __o_capture){
bool capture = __o_capture.Default(false);
	HX_STACK_FRAME("openfl._legacy.Assets","removeEventListener",0x0094d163,"openfl._legacy.Assets.removeEventListener","openfl/_legacy/Assets.hx",1105,0x9276b055)
	HX_STACK_ARG(type,"type")
	HX_STACK_ARG(listener,"listener")
	HX_STACK_ARG(capture,"capture")
{
		HX_STACK_LINE(1107)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(1109)
		::openfl::_legacy::Assets_obj::dispatcher->removeEventListener(type,listener,capture);
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(Assets_obj,removeEventListener,(void))

::Class Assets_obj::resolveClass( ::String name){
	HX_STACK_FRAME("openfl._legacy.Assets","resolveClass",0x1c65baf3,"openfl._legacy.Assets.resolveClass","openfl/_legacy/Assets.hx",1116,0x9276b055)
	HX_STACK_ARG(name,"name")
	HX_STACK_LINE(1116)
	return ::Type_obj::resolveClass(name);
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,resolveClass,return )

::Enum Assets_obj::resolveEnum( ::String name){
	HX_STACK_FRAME("openfl._legacy.Assets","resolveEnum",0x106118a6,"openfl._legacy.Assets.resolveEnum","openfl/_legacy/Assets.hx",1121,0x9276b055)
	HX_STACK_ARG(name,"name")
	HX_STACK_LINE(1123)
	::Enum value = ::Type_obj::resolveEnum(name);		HX_STACK_VAR(value,"value");
	HX_STACK_LINE(1135)
	return value;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,resolveEnum,return )

Void Assets_obj::unloadLibrary( ::String name){
{
		HX_STACK_FRAME("openfl._legacy.Assets","unloadLibrary",0xacbdfc95,"openfl._legacy.Assets.unloadLibrary","openfl/_legacy/Assets.hx",1140,0x9276b055)
		HX_STACK_ARG(name,"name")
		HX_STACK_LINE(1142)
		::openfl::_legacy::Assets_obj::initialize();
		HX_STACK_LINE(1146)
		::openfl::_legacy::AssetLibrary library = ::openfl::_legacy::Assets_obj::libraries->get(name);		HX_STACK_VAR(library,"library");
		HX_STACK_LINE(1148)
		if (((library != null()))){
			HX_STACK_LINE(1150)
			::openfl::_legacy::Assets_obj::cache->clear((name + HX_CSTRING(":")));
			HX_STACK_LINE(1151)
			library->eventCallback = null();
		}
		HX_STACK_LINE(1155)
		::openfl::_legacy::Assets_obj::libraries->remove(name);
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Assets_obj,unloadLibrary,(void))

Void Assets_obj::library_onEvent( ::openfl::_legacy::AssetLibrary library,::String type){
{
		HX_STACK_FRAME("openfl._legacy.Assets","library_onEvent",0x9a352310,"openfl._legacy.Assets.library_onEvent","openfl/_legacy/Assets.hx",1171,0x9276b055)
		HX_STACK_ARG(library,"library")
		HX_STACK_ARG(type,"type")
		HX_STACK_LINE(1171)
		if (((type == HX_CSTRING("change")))){
			HX_STACK_LINE(1173)
			::openfl::_legacy::Assets_obj::cache->clear(null());
			HX_STACK_LINE(1174)
			::openfl::_legacy::events::Event _g = ::openfl::_legacy::events::Event_obj::__new(::openfl::_legacy::events::Event_obj::CHANGE,null(),null());		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(1174)
			::openfl::_legacy::Assets_obj::dispatchEvent(_g);
		}
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Assets_obj,library_onEvent,(void))


Assets_obj::Assets_obj()
{
}

Dynamic Assets_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"list") ) { return list_dyn(); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"cache") ) { return cache; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"exists") ) { return exists_dyn(); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"getFont") ) { return getFont_dyn(); }
		if (HX_FIELD_EQ(inName,"getPath") ) { return getPath_dyn(); }
		if (HX_FIELD_EQ(inName,"getText") ) { return getText_dyn(); }
		if (HX_FIELD_EQ(inName,"isLocal") ) { return isLocal_dyn(); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"getBytes") ) { return getBytes_dyn(); }
		if (HX_FIELD_EQ(inName,"getMusic") ) { return getMusic_dyn(); }
		if (HX_FIELD_EQ(inName,"getSound") ) { return getSound_dyn(); }
		if (HX_FIELD_EQ(inName,"loadFont") ) { return loadFont_dyn(); }
		if (HX_FIELD_EQ(inName,"loadText") ) { return loadText_dyn(); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"libraries") ) { return libraries; }
		if (HX_FIELD_EQ(inName,"loadBytes") ) { return loadBytes_dyn(); }
		if (HX_FIELD_EQ(inName,"loadMusic") ) { return loadMusic_dyn(); }
		if (HX_FIELD_EQ(inName,"loadSound") ) { return loadSound_dyn(); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"dispatcher") ) { return dispatcher; }
		if (HX_FIELD_EQ(inName,"getLibrary") ) { return getLibrary_dyn(); }
		if (HX_FIELD_EQ(inName,"initialize") ) { return initialize_dyn(); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"initialized") ) { return initialized; }
		if (HX_FIELD_EQ(inName,"loadLibrary") ) { return loadLibrary_dyn(); }
		if (HX_FIELD_EQ(inName,"resolveEnum") ) { return resolveEnum_dyn(); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"getMovieClip") ) { return getMovieClip_dyn(); }
		if (HX_FIELD_EQ(inName,"isValidSound") ) { return isValidSound_dyn(); }
		if (HX_FIELD_EQ(inName,"resolveClass") ) { return resolveClass_dyn(); }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"dispatchEvent") ) { return dispatchEvent_dyn(); }
		if (HX_FIELD_EQ(inName,"getBitmapData") ) { return getBitmapData_dyn(); }
		if (HX_FIELD_EQ(inName,"loadMovieClip") ) { return loadMovieClip_dyn(); }
		if (HX_FIELD_EQ(inName,"unloadLibrary") ) { return unloadLibrary_dyn(); }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"loadBitmapData") ) { return loadBitmapData_dyn(); }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"registerLibrary") ) { return registerLibrary_dyn(); }
		if (HX_FIELD_EQ(inName,"library_onEvent") ) { return library_onEvent_dyn(); }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"addEventListener") ) { return addEventListener_dyn(); }
		if (HX_FIELD_EQ(inName,"hasEventListener") ) { return hasEventListener_dyn(); }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"isValidBitmapData") ) { return isValidBitmapData_dyn(); }
		break;
	case 19:
		if (HX_FIELD_EQ(inName,"removeEventListener") ) { return removeEventListener_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Assets_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"cache") ) { cache=inValue.Cast< ::openfl::_legacy::IAssetCache >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"libraries") ) { libraries=inValue.Cast< ::haxe::ds::StringMap >(); return inValue; }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"dispatcher") ) { dispatcher=inValue.Cast< ::openfl::_legacy::events::EventDispatcher >(); return inValue; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"initialized") ) { initialized=inValue.Cast< bool >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Assets_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("cache"),
	HX_CSTRING("libraries"),
	HX_CSTRING("dispatcher"),
	HX_CSTRING("initialized"),
	HX_CSTRING("addEventListener"),
	HX_CSTRING("dispatchEvent"),
	HX_CSTRING("exists"),
	HX_CSTRING("getBitmapData"),
	HX_CSTRING("getBytes"),
	HX_CSTRING("getFont"),
	HX_CSTRING("getLibrary"),
	HX_CSTRING("getMovieClip"),
	HX_CSTRING("getMusic"),
	HX_CSTRING("getPath"),
	HX_CSTRING("getSound"),
	HX_CSTRING("getText"),
	HX_CSTRING("hasEventListener"),
	HX_CSTRING("initialize"),
	HX_CSTRING("isLocal"),
	HX_CSTRING("isValidBitmapData"),
	HX_CSTRING("isValidSound"),
	HX_CSTRING("list"),
	HX_CSTRING("loadBitmapData"),
	HX_CSTRING("loadBytes"),
	HX_CSTRING("loadFont"),
	HX_CSTRING("loadLibrary"),
	HX_CSTRING("loadMusic"),
	HX_CSTRING("loadMovieClip"),
	HX_CSTRING("loadSound"),
	HX_CSTRING("loadText"),
	HX_CSTRING("registerLibrary"),
	HX_CSTRING("removeEventListener"),
	HX_CSTRING("resolveClass"),
	HX_CSTRING("resolveEnum"),
	HX_CSTRING("unloadLibrary"),
	HX_CSTRING("library_onEvent"),
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *sMemberStorageInfo = 0;
#endif

static ::String sMemberFields[] = {
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Assets_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(Assets_obj::cache,"cache");
	HX_MARK_MEMBER_NAME(Assets_obj::libraries,"libraries");
	HX_MARK_MEMBER_NAME(Assets_obj::dispatcher,"dispatcher");
	HX_MARK_MEMBER_NAME(Assets_obj::initialized,"initialized");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Assets_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(Assets_obj::cache,"cache");
	HX_VISIT_MEMBER_NAME(Assets_obj::libraries,"libraries");
	HX_VISIT_MEMBER_NAME(Assets_obj::dispatcher,"dispatcher");
	HX_VISIT_MEMBER_NAME(Assets_obj::initialized,"initialized");
};

#endif

Class Assets_obj::__mClass;

void Assets_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("openfl._legacy.Assets"), hx::TCanCast< Assets_obj> ,sStaticFields,sMemberFields,
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

void Assets_obj::__boot()
{
	cache= ::openfl::_legacy::AssetCache_obj::__new();
	libraries= ::haxe::ds::StringMap_obj::__new();
	dispatcher= ::openfl::_legacy::events::EventDispatcher_obj::__new(null());
	initialized= false;
}

} // end namespace openfl
} // end namespace _legacy
