#include <hxcpp.h>

#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_haxe_Log
#include <haxe/Log.h>
#endif
#ifndef INCLUDED_haxe_io_Bytes
#include <haxe/io/Bytes.h>
#endif
#ifndef INCLUDED_openfl__legacy_Lib
#include <openfl/_legacy/Lib.h>
#endif
#ifndef INCLUDED_openfl__legacy_Memory
#include <openfl/_legacy/Memory.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_BitmapData
#include <openfl/_legacy/display/BitmapData.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_BlendMode
#include <openfl/_legacy/display/BlendMode.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_OptimizedPerlin
#include <openfl/_legacy/display/OptimizedPerlin.h>
#endif
#ifndef INCLUDED_openfl__legacy_filters_BitmapFilter
#include <openfl/_legacy/filters/BitmapFilter.h>
#endif
#ifndef INCLUDED_openfl__legacy_geom_ColorTransform
#include <openfl/_legacy/geom/ColorTransform.h>
#endif
#ifndef INCLUDED_openfl__legacy_geom_Matrix
#include <openfl/_legacy/geom/Matrix.h>
#endif
#ifndef INCLUDED_openfl__legacy_geom_Point
#include <openfl/_legacy/geom/Point.h>
#endif
#ifndef INCLUDED_openfl__legacy_geom_Rectangle
#include <openfl/_legacy/geom/Rectangle.h>
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
#ifndef INCLUDED_openfl_display_JPEGEncoderOptions
#include <openfl/display/JPEGEncoderOptions.h>
#endif
#ifndef INCLUDED_openfl_display_PNGEncoderOptions
#include <openfl/display/PNGEncoderOptions.h>
#endif
namespace openfl{
namespace _legacy{
namespace display{

Void BitmapData_obj::__construct(int width,int height,hx::Null< bool >  __o_transparent,hx::Null< int >  __o_fillColor,Dynamic gpuMode)
{
HX_STACK_FRAME("openfl._legacy.display.BitmapData","new",0x5b5492db,"openfl._legacy.display.BitmapData.new","openfl/_legacy/display/BitmapData.hx",51,0x0b92a012)
HX_STACK_THIS(this)
HX_STACK_ARG(width,"width")
HX_STACK_ARG(height,"height")
HX_STACK_ARG(__o_transparent,"transparent")
HX_STACK_ARG(__o_fillColor,"fillColor")
HX_STACK_ARG(gpuMode,"gpuMode")
bool transparent = __o_transparent.Default(true);
int fillColor = __o_fillColor.Default(-1);
{
	HX_STACK_LINE(53)
	this->__transparent = transparent;
	HX_STACK_LINE(55)
	if (((bool((width < (int)1)) || bool((height < (int)1))))){
		HX_STACK_LINE(57)
		this->__handle = null();
	}
	else{
		HX_STACK_LINE(61)
		int flags = (int)2;		HX_STACK_VAR(flags,"flags");
		HX_STACK_LINE(62)
		if ((transparent)){
			HX_STACK_LINE(62)
			hx::OrEq(flags,(int)1);
		}
		HX_STACK_LINE(63)
		int alpha = hx::UShr(fillColor,(int)24);		HX_STACK_VAR(alpha,"alpha");
		HX_STACK_LINE(65)
		if (((bool(transparent) && bool((alpha == (int)0))))){
			HX_STACK_LINE(67)
			fillColor = (int)0;
		}
		HX_STACK_LINE(71)
		Dynamic _g = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_create(width,height,flags,(int(fillColor) & int((int)16777215)),alpha,gpuMode);		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(71)
		this->__handle = _g;
	}
}
;
	return null();
}

//BitmapData_obj::~BitmapData_obj() { }

Dynamic BitmapData_obj::__CreateEmpty() { return  new BitmapData_obj; }
hx::ObjectPtr< BitmapData_obj > BitmapData_obj::__new(int width,int height,hx::Null< bool >  __o_transparent,hx::Null< int >  __o_fillColor,Dynamic gpuMode)
{  hx::ObjectPtr< BitmapData_obj > result = new BitmapData_obj();
	result->__construct(width,height,__o_transparent,__o_fillColor,gpuMode);
	return result;}

Dynamic BitmapData_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< BitmapData_obj > result = new BitmapData_obj();
	result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3],inArgs[4]);
	return result;}

hx::Object *BitmapData_obj::__ToInterface(const hx::type_info &inType) {
	if (inType==typeid( ::openfl::_legacy::display::IBitmapDrawable_obj)) return operator ::openfl::_legacy::display::IBitmapDrawable_obj *();
	return super::__ToInterface(inType);
}

Void BitmapData_obj::applyFilter( ::openfl::_legacy::display::BitmapData sourceBitmapData,::openfl::_legacy::geom::Rectangle sourceRect,::openfl::_legacy::geom::Point destPoint,::openfl::_legacy::filters::BitmapFilter filter){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","applyFilter",0x67c01541,"openfl._legacy.display.BitmapData.applyFilter","openfl/_legacy/display/BitmapData.hx",80,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(sourceBitmapData,"sourceBitmapData")
		HX_STACK_ARG(sourceRect,"sourceRect")
		HX_STACK_ARG(destPoint,"destPoint")
		HX_STACK_ARG(filter,"filter")
		HX_STACK_LINE(80)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_apply_filter(this->__handle,sourceBitmapData->__handle,sourceRect,destPoint,filter);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC4(BitmapData_obj,applyFilter,(void))

Void BitmapData_obj::clear( int color){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","clear",0xf6ee08c8,"openfl._legacy.display.BitmapData.clear","openfl/_legacy/display/BitmapData.hx",87,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(color,"color")
		HX_STACK_LINE(87)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_clear(this->__handle,color);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,clear,(void))

::openfl::_legacy::display::BitmapData BitmapData_obj::clone( ){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","clone",0xf6f5aa98,"openfl._legacy.display.BitmapData.clone","openfl/_legacy/display/BitmapData.hx",92,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_LINE(94)
	bool _g = this->get_transparent();		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(94)
	::openfl::_legacy::display::BitmapData bitmapData = ::openfl::_legacy::display::BitmapData_obj::__new((int)0,(int)0,_g,null(),null());		HX_STACK_VAR(bitmapData,"bitmapData");
	HX_STACK_LINE(95)
	Dynamic _g1 = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_clone(this->__handle);		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(95)
	bitmapData->__handle = _g1;
	HX_STACK_LINE(96)
	return bitmapData;
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,clone,return )

Void BitmapData_obj::colorTransform( ::openfl::_legacy::geom::Rectangle rect,::openfl::_legacy::geom::ColorTransform colorTransform){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","colorTransform",0xda4c00ee,"openfl._legacy.display.BitmapData.colorTransform","openfl/_legacy/display/BitmapData.hx",103,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(rect,"rect")
		HX_STACK_ARG(colorTransform,"colorTransform")
		HX_STACK_LINE(103)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_color_transform(this->__handle,rect,colorTransform);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,colorTransform,(void))

Void BitmapData_obj::copyChannel( ::openfl::_legacy::display::BitmapData sourceBitmapData,::openfl::_legacy::geom::Rectangle sourceRect,::openfl::_legacy::geom::Point destPoint,int sourceChannel,int destChannel){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","copyChannel",0xc976b309,"openfl._legacy.display.BitmapData.copyChannel","openfl/_legacy/display/BitmapData.hx",110,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(sourceBitmapData,"sourceBitmapData")
		HX_STACK_ARG(sourceRect,"sourceRect")
		HX_STACK_ARG(destPoint,"destPoint")
		HX_STACK_ARG(sourceChannel,"sourceChannel")
		HX_STACK_ARG(destChannel,"destChannel")
		HX_STACK_LINE(110)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_copy_channel(sourceBitmapData->__handle,sourceRect,this->__handle,destPoint,sourceChannel,destChannel);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC5(BitmapData_obj,copyChannel,(void))

Void BitmapData_obj::copyPixels( ::openfl::_legacy::display::BitmapData sourceBitmapData,::openfl::_legacy::geom::Rectangle sourceRect,::openfl::_legacy::geom::Point destPoint,::openfl::_legacy::display::BitmapData alphaBitmapData,::openfl::_legacy::geom::Point alphaPoint,hx::Null< bool >  __o_mergeAlpha){
bool mergeAlpha = __o_mergeAlpha.Default(false);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","copyPixels",0xfd26a7a7,"openfl._legacy.display.BitmapData.copyPixels","openfl/_legacy/display/BitmapData.hx",117,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(sourceBitmapData,"sourceBitmapData")
	HX_STACK_ARG(sourceRect,"sourceRect")
	HX_STACK_ARG(destPoint,"destPoint")
	HX_STACK_ARG(alphaBitmapData,"alphaBitmapData")
	HX_STACK_ARG(alphaPoint,"alphaPoint")
	HX_STACK_ARG(mergeAlpha,"mergeAlpha")
{
		HX_STACK_LINE(117)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_copy(sourceBitmapData->__handle,sourceRect,this->__handle,destPoint,mergeAlpha);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC6(BitmapData_obj,copyPixels,(void))

Void BitmapData_obj::createHardwareSurface( ){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","createHardwareSurface",0xf9cbaa04,"openfl._legacy.display.BitmapData.createHardwareSurface","openfl/_legacy/display/BitmapData.hx",132,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_LINE(132)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_create_hardware_surface(this->__handle);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,createHardwareSurface,(void))

Void BitmapData_obj::destroyHardwareSurface( ){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","destroyHardwareSurface",0x81fceaf0,"openfl._legacy.display.BitmapData.destroyHardwareSurface","openfl/_legacy/display/BitmapData.hx",139,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_LINE(139)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_destroy_hardware_surface(this->__handle);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,destroyHardwareSurface,(void))

Void BitmapData_obj::dispose( ){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","dispose",0x251f9c9a,"openfl._legacy.display.BitmapData.dispose","openfl/_legacy/display/BitmapData.hx",145,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_LINE(147)
		if (((this->__handle != null()))){
			HX_STACK_LINE(149)
			::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_dispose(this->__handle);
		}
		HX_STACK_LINE(153)
		this->__handle = null();
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,dispose,(void))

Void BitmapData_obj::draw( ::openfl::_legacy::display::IBitmapDrawable source,::openfl::_legacy::geom::Matrix matrix,::openfl::_legacy::geom::ColorTransform colorTransform,::openfl::_legacy::display::BlendMode blendMode,::openfl::_legacy::geom::Rectangle clipRect,hx::Null< bool >  __o_smoothing){
bool smoothing = __o_smoothing.Default(false);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","draw",0x88199529,"openfl._legacy.display.BitmapData.draw","openfl/_legacy/display/BitmapData.hx",158,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(source,"source")
	HX_STACK_ARG(matrix,"matrix")
	HX_STACK_ARG(colorTransform,"colorTransform")
	HX_STACK_ARG(blendMode,"blendMode")
	HX_STACK_ARG(clipRect,"clipRect")
	HX_STACK_ARG(smoothing,"smoothing")
{
		HX_STACK_LINE(160)
		::String _g = ::Std_obj::string(blendMode);		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(160)
		source->__drawToSurface(this->__handle,matrix,colorTransform,_g,clipRect,smoothing);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC6(BitmapData_obj,draw,(void))

Void BitmapData_obj::dumpBits( ){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","dumpBits",0xc5a0adff,"openfl._legacy.display.BitmapData.dumpBits","openfl/_legacy/display/BitmapData.hx",167,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_LINE(167)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_dump_bits(this->__handle);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,dumpBits,(void))

::openfl::_legacy::utils::ByteArray BitmapData_obj::encode( Dynamic rectOrFormat,Dynamic __o_compressorOrQuality,::openfl::_legacy::utils::ByteArray byteArray){
Dynamic compressorOrQuality = __o_compressorOrQuality.Default(0.9);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","encode",0x0b95ae7b,"openfl._legacy.display.BitmapData.encode","openfl/_legacy/display/BitmapData.hx",177,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(rectOrFormat,"rectOrFormat")
	HX_STACK_ARG(compressorOrQuality,"compressorOrQuality")
	HX_STACK_ARG(byteArray,"byteArray")
{
		HX_STACK_LINE(177)
		if ((::Std_obj::is(rectOrFormat,hx::ClassOf< ::String >()))){
			HX_STACK_LINE(179)
			::String format = rectOrFormat;		HX_STACK_VAR(format,"format");
			HX_STACK_LINE(180)
			Float quality;		HX_STACK_VAR(quality,"quality");
			HX_STACK_LINE(180)
			quality = hx::TCast< Float >::cast(compressorOrQuality);
			HX_STACK_LINE(182)
			return ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_encode(this->__handle,format,quality);
		}
		else{
			HX_STACK_LINE(186)
			if (((rectOrFormat == null()))){
				HX_STACK_LINE(186)
				return byteArray = null();
			}
			HX_STACK_LINE(188)
			if ((::Std_obj::is(compressorOrQuality,hx::ClassOf< ::openfl::display::PNGEncoderOptions >()))){
				HX_STACK_LINE(190)
				::openfl::_legacy::utils::ByteArray _g = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_encode(this->__handle,HX_CSTRING("png"),(int)0);		HX_STACK_VAR(_g,"_g");
				HX_STACK_LINE(190)
				return byteArray = _g;
			}
			else{
				HX_STACK_LINE(192)
				if ((::Std_obj::is(compressorOrQuality,hx::ClassOf< ::openfl::display::JPEGEncoderOptions >()))){
					HX_STACK_LINE(194)
					::openfl::_legacy::utils::ByteArray _g1 = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_encode(this->__handle,HX_CSTRING("jpg"),(Float((hx::TCast< openfl::display::JPEGEncoderOptions >::cast(compressorOrQuality))->quality) / Float((int)100)));		HX_STACK_VAR(_g1,"_g1");
					HX_STACK_LINE(194)
					return byteArray = _g1;
				}
			}
			HX_STACK_LINE(198)
			return byteArray = null();
		}
		HX_STACK_LINE(177)
		return null();
	}
}


HX_DEFINE_DYNAMIC_FUNC3(BitmapData_obj,encode,return )

Void BitmapData_obj::fillRect( ::openfl::_legacy::geom::Rectangle rect,int color){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","fillRect",0x9b9ea4ec,"openfl._legacy.display.BitmapData.fillRect","openfl/_legacy/display/BitmapData.hx",221,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(rect,"rect")
		HX_STACK_ARG(color,"color")
		HX_STACK_LINE(221)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_fill(this->__handle,rect,(int(color) & int((int)16777215)),hx::UShr(color,(int)24));
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,fillRect,(void))

Void BitmapData_obj::fillRectEx( ::openfl::_legacy::geom::Rectangle rect,int color,hx::Null< int >  __o_alpha){
int alpha = __o_alpha.Default(255);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","fillRectEx",0xbc42f47f,"openfl._legacy.display.BitmapData.fillRectEx","openfl/_legacy/display/BitmapData.hx",228,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(rect,"rect")
	HX_STACK_ARG(color,"color")
	HX_STACK_ARG(alpha,"alpha")
{
		HX_STACK_LINE(228)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_fill(this->__handle,rect,color,alpha);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC3(BitmapData_obj,fillRectEx,(void))

Void BitmapData_obj::floodFill( int x,int y,int color){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","floodFill",0x3358d41c,"openfl._legacy.display.BitmapData.floodFill","openfl/_legacy/display/BitmapData.hx",235,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(x,"x")
		HX_STACK_ARG(y,"y")
		HX_STACK_ARG(color,"color")
		HX_STACK_LINE(235)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_flood_fill(this->__handle,x,y,color);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC3(BitmapData_obj,floodFill,(void))

::openfl::_legacy::geom::Rectangle BitmapData_obj::generateFilterRect( ::openfl::_legacy::geom::Rectangle sourceRect,::openfl::_legacy::filters::BitmapFilter filter){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","generateFilterRect",0xb6e56c76,"openfl._legacy.display.BitmapData.generateFilterRect","openfl/_legacy/display/BitmapData.hx",274,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(sourceRect,"sourceRect")
	HX_STACK_ARG(filter,"filter")
	HX_STACK_LINE(276)
	::openfl::_legacy::geom::Rectangle result = ::openfl::_legacy::geom::Rectangle_obj::__new(null(),null(),null(),null());		HX_STACK_VAR(result,"result");
	HX_STACK_LINE(277)
	::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_generate_filter_rect(sourceRect,filter,result);
	HX_STACK_LINE(278)
	return result;
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,generateFilterRect,return )

::openfl::_legacy::geom::Rectangle BitmapData_obj::getColorBoundsRect( int mask,int color,hx::Null< bool >  __o_findColor){
bool findColor = __o_findColor.Default(true);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","getColorBoundsRect",0xb935ed6b,"openfl._legacy.display.BitmapData.getColorBoundsRect","openfl/_legacy/display/BitmapData.hx",283,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(mask,"mask")
	HX_STACK_ARG(color,"color")
	HX_STACK_ARG(findColor,"findColor")
{
		HX_STACK_LINE(285)
		::openfl::_legacy::geom::Rectangle result = ::openfl::_legacy::geom::Rectangle_obj::__new(null(),null(),null(),null());		HX_STACK_VAR(result,"result");
		HX_STACK_LINE(286)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_get_color_bounds_rect(this->__handle,mask,color,findColor,result);
		HX_STACK_LINE(287)
		return result;
	}
}


HX_DEFINE_DYNAMIC_FUNC3(BitmapData_obj,getColorBoundsRect,return )

int BitmapData_obj::getPixel( int x,int y){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","getPixel",0x516035b5,"openfl._legacy.display.BitmapData.getPixel","openfl/_legacy/display/BitmapData.hx",294,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(x,"x")
	HX_STACK_ARG(y,"y")
	HX_STACK_LINE(294)
	return ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_get_pixel(this->__handle,x,y);
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,getPixel,return )

int BitmapData_obj::getPixel32( int x,int y){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","getPixel32",0x9220f994,"openfl._legacy.display.BitmapData.getPixel32","openfl/_legacy/display/BitmapData.hx",311,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(x,"x")
	HX_STACK_ARG(y,"y")
	HX_STACK_LINE(311)
	return ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_get_pixel32(this->__handle,x,y);
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,getPixel32,return )

::openfl::_legacy::utils::ByteArray BitmapData_obj::getPixels( ::openfl::_legacy::geom::Rectangle rect){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","getPixels",0xe2cec91e,"openfl._legacy.display.BitmapData.getPixels","openfl/_legacy/display/BitmapData.hx",316,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(rect,"rect")
	HX_STACK_LINE(318)
	::openfl::_legacy::utils::ByteArray result = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_get_pixels(this->__handle,rect);		HX_STACK_VAR(result,"result");
	HX_STACK_LINE(319)
	if (((result != null()))){
		HX_STACK_LINE(319)
		result->position = result->length;
	}
	HX_STACK_LINE(320)
	return result;
}


HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,getPixels,return )

Array< int > BitmapData_obj::getVector( ::openfl::_legacy::geom::Rectangle rect){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","getVector",0xed828ab4,"openfl._legacy.display.BitmapData.getVector","openfl/_legacy/display/BitmapData.hx",346,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(rect,"rect")
	HX_STACK_LINE(348)
	int pixels = ::Std_obj::_int((rect->width * rect->height));		HX_STACK_VAR(pixels,"pixels");
	HX_STACK_LINE(349)
	if (((pixels < (int)1))){
		HX_STACK_LINE(349)
		return Array_obj< int >::__new();
	}
	HX_STACK_LINE(351)
	Array< int > result = Array_obj< int >::__new();		HX_STACK_VAR(result,"result");
	HX_STACK_LINE(352)
	result[(pixels - (int)1)] = (int)0;
	HX_STACK_LINE(355)
	::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_get_array(this->__handle,rect,result);
	HX_STACK_LINE(362)
	return result;
}


HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,getVector,return )

Void BitmapData_obj::lock( ){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","lock",0x8d610510,"openfl._legacy.display.BitmapData.lock","openfl/_legacy/display/BitmapData.hx",392,0x0b92a012)
		HX_STACK_THIS(this)
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,lock,(void))

Void BitmapData_obj::merge( ::openfl::_legacy::display::BitmapData sourceBitmapData,::openfl::_legacy::geom::Rectangle sourceRect,::openfl::_legacy::geom::Point destPoint,int redMultiplier,int greenMultiplier,int blueMultiplier,int alphaMultiplier){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","merge",0xb45939f3,"openfl._legacy.display.BitmapData.merge","openfl/_legacy/display/BitmapData.hx",399,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(sourceBitmapData,"sourceBitmapData")
		HX_STACK_ARG(sourceRect,"sourceRect")
		HX_STACK_ARG(destPoint,"destPoint")
		HX_STACK_ARG(redMultiplier,"redMultiplier")
		HX_STACK_ARG(greenMultiplier,"greenMultiplier")
		HX_STACK_ARG(blueMultiplier,"blueMultiplier")
		HX_STACK_ARG(alphaMultiplier,"alphaMultiplier")
		HX_STACK_LINE(401)
		if (((sourceBitmapData == null()))){
			HX_STACK_LINE(401)
			return null();
		}
		HX_STACK_LINE(403)
		int sw = ::Std_obj::_int(sourceRect->width);		HX_STACK_VAR(sw,"sw");
		HX_STACK_LINE(404)
		int sh = ::Std_obj::_int(sourceRect->height);		HX_STACK_VAR(sh,"sh");
		HX_STACK_LINE(406)
		::openfl::_legacy::utils::ByteArray sourcePixels = sourceBitmapData->getPixels(sourceRect);		HX_STACK_VAR(sourcePixels,"sourcePixels");
		HX_STACK_LINE(407)
		if (((sourcePixels == null()))){
			HX_STACK_LINE(407)
			return null();
		}
		HX_STACK_LINE(408)
		sourcePixels->position = (int)0;
		HX_STACK_LINE(410)
		::openfl::_legacy::geom::Rectangle destRect = ::openfl::_legacy::geom::Rectangle_obj::__new(destPoint->x,destPoint->y,sw,sh);		HX_STACK_VAR(destRect,"destRect");
		HX_STACK_LINE(411)
		::openfl::_legacy::utils::ByteArray destPixels = this->getPixels(destRect);		HX_STACK_VAR(destPixels,"destPixels");
		HX_STACK_LINE(412)
		if (((destPixels == null()))){
			HX_STACK_LINE(412)
			return null();
		}
		HX_STACK_LINE(413)
		destPixels->position = (int)0;
		HX_STACK_LINE(415)
		int sourcePixel;		HX_STACK_VAR(sourcePixel,"sourcePixel");
		HX_STACK_LINE(415)
		int destPixel;		HX_STACK_VAR(destPixel,"destPixel");
		HX_STACK_LINE(415)
		int r;		HX_STACK_VAR(r,"r");
		HX_STACK_LINE(415)
		int g;		HX_STACK_VAR(g,"g");
		HX_STACK_LINE(415)
		int b;		HX_STACK_VAR(b,"b");
		HX_STACK_LINE(415)
		int a;		HX_STACK_VAR(a,"a");
		HX_STACK_LINE(415)
		int color;		HX_STACK_VAR(color,"color");
		HX_STACK_LINE(415)
		int c1;		HX_STACK_VAR(c1,"c1");
		HX_STACK_LINE(415)
		int c2;		HX_STACK_VAR(c2,"c2");
		HX_STACK_LINE(415)
		int c3;		HX_STACK_VAR(c3,"c3");
		HX_STACK_LINE(415)
		int c4;		HX_STACK_VAR(c4,"c4");
		HX_STACK_LINE(417)
		{
			HX_STACK_LINE(417)
			int _g1 = (int)0;		HX_STACK_VAR(_g1,"_g1");
			HX_STACK_LINE(417)
			int _g = (sh * sw);		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(417)
			while((true)){
				HX_STACK_LINE(417)
				if ((!(((_g1 < _g))))){
					HX_STACK_LINE(417)
					break;
				}
				HX_STACK_LINE(417)
				int i = (_g1)++;		HX_STACK_VAR(i,"i");
				HX_STACK_LINE(419)
				int _g2 = sourcePixels->readUnsignedInt();		HX_STACK_VAR(_g2,"_g2");
				HX_STACK_LINE(419)
				sourcePixel = _g2;
				HX_STACK_LINE(420)
				int _g11 = destPixels->readUnsignedInt();		HX_STACK_VAR(_g11,"_g11");
				HX_STACK_LINE(420)
				destPixel = _g11;
				struct _Function_3_1{
					inline static Float Block( int &redMultiplier,int &sourcePixel,int &destPixel){
						HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",422,0x0b92a012)
						{
							HX_STACK_LINE(422)
							int _int = ((((int((int(sourcePixel) >> int((int)24))) & int((int)255))) * redMultiplier) + (((int((int(destPixel) >> int((int)24))) & int((int)255))) * (((int)256 - redMultiplier))));		HX_STACK_VAR(_int,"int");
							HX_STACK_LINE(422)
							return (  (((_int < (int)0))) ? Float((4294967296.0 + _int)) : Float((_int + 0.0)) );
						}
						return null();
					}
				};
				struct _Function_3_2{
					inline static Float Block( ){
						HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",422,0x0b92a012)
						{
							HX_STACK_LINE(422)
							int _int = (int)256;		HX_STACK_VAR(_int,"int");
							HX_STACK_LINE(422)
							return (  (((_int < (int)0))) ? Float((4294967296.0 + _int)) : Float((_int + 0.0)) );
						}
						return null();
					}
				};
				HX_STACK_LINE(422)
				int _g21 = ::Std_obj::_int((Float(_Function_3_1::Block(redMultiplier,sourcePixel,destPixel)) / Float(_Function_3_2::Block())));		HX_STACK_VAR(_g21,"_g21");
				HX_STACK_LINE(422)
				a = _g21;
				struct _Function_3_3{
					inline static Float Block( int &redMultiplier,int &sourcePixel,int &destPixel){
						HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",423,0x0b92a012)
						{
							HX_STACK_LINE(423)
							int _int = ((((int((int(sourcePixel) >> int((int)16))) & int((int)255))) * redMultiplier) + (((int((int(destPixel) >> int((int)16))) & int((int)255))) * (((int)256 - redMultiplier))));		HX_STACK_VAR(_int,"int");
							HX_STACK_LINE(423)
							return (  (((_int < (int)0))) ? Float((4294967296.0 + _int)) : Float((_int + 0.0)) );
						}
						return null();
					}
				};
				struct _Function_3_4{
					inline static Float Block( ){
						HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",423,0x0b92a012)
						{
							HX_STACK_LINE(423)
							int _int = (int)256;		HX_STACK_VAR(_int,"int");
							HX_STACK_LINE(423)
							return (  (((_int < (int)0))) ? Float((4294967296.0 + _int)) : Float((_int + 0.0)) );
						}
						return null();
					}
				};
				HX_STACK_LINE(423)
				int _g3 = ::Std_obj::_int((Float(_Function_3_3::Block(redMultiplier,sourcePixel,destPixel)) / Float(_Function_3_4::Block())));		HX_STACK_VAR(_g3,"_g3");
				HX_STACK_LINE(423)
				r = _g3;
				struct _Function_3_5{
					inline static Float Block( int &redMultiplier,int &sourcePixel,int &destPixel){
						HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",424,0x0b92a012)
						{
							HX_STACK_LINE(424)
							int _int = ((((int((int(sourcePixel) >> int((int)8))) & int((int)255))) * redMultiplier) + (((int((int(destPixel) >> int((int)8))) & int((int)255))) * (((int)256 - redMultiplier))));		HX_STACK_VAR(_int,"int");
							HX_STACK_LINE(424)
							return (  (((_int < (int)0))) ? Float((4294967296.0 + _int)) : Float((_int + 0.0)) );
						}
						return null();
					}
				};
				struct _Function_3_6{
					inline static Float Block( ){
						HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",424,0x0b92a012)
						{
							HX_STACK_LINE(424)
							int _int = (int)256;		HX_STACK_VAR(_int,"int");
							HX_STACK_LINE(424)
							return (  (((_int < (int)0))) ? Float((4294967296.0 + _int)) : Float((_int + 0.0)) );
						}
						return null();
					}
				};
				HX_STACK_LINE(424)
				int _g4 = ::Std_obj::_int((Float(_Function_3_5::Block(redMultiplier,sourcePixel,destPixel)) / Float(_Function_3_6::Block())));		HX_STACK_VAR(_g4,"_g4");
				HX_STACK_LINE(424)
				g = _g4;
				struct _Function_3_7{
					inline static Float Block( int &redMultiplier,int &sourcePixel,int &destPixel){
						HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",425,0x0b92a012)
						{
							HX_STACK_LINE(425)
							int _int = ((((int(sourcePixel) & int((int)255))) * redMultiplier) + (((int(destPixel) & int((int)255))) * (((int)256 - redMultiplier))));		HX_STACK_VAR(_int,"int");
							HX_STACK_LINE(425)
							return (  (((_int < (int)0))) ? Float((4294967296.0 + _int)) : Float((_int + 0.0)) );
						}
						return null();
					}
				};
				struct _Function_3_8{
					inline static Float Block( ){
						HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",425,0x0b92a012)
						{
							HX_STACK_LINE(425)
							int _int = (int)256;		HX_STACK_VAR(_int,"int");
							HX_STACK_LINE(425)
							return (  (((_int < (int)0))) ? Float((4294967296.0 + _int)) : Float((_int + 0.0)) );
						}
						return null();
					}
				};
				HX_STACK_LINE(425)
				int _g5 = ::Std_obj::_int((Float(_Function_3_7::Block(redMultiplier,sourcePixel,destPixel)) / Float(_Function_3_8::Block())));		HX_STACK_VAR(_g5,"_g5");
				HX_STACK_LINE(425)
				b = _g5;
				HX_STACK_LINE(427)
				if (((bool((bool((bool((a > (int)255)) || bool((r > (int)255)))) || bool((g > (int)255)))) || bool((b > (int)255))))){
					HX_STACK_LINE(429)
					::haxe::Log_obj::trace(((((((a + HX_CSTRING(", ")) + r) + HX_CSTRING(", ")) + g) + HX_CSTRING(", ")) + b),hx::SourceInfo(HX_CSTRING("BitmapData.hx"),429,HX_CSTRING("openfl._legacy.display.BitmapData"),HX_CSTRING("merge")));
				}
				HX_STACK_LINE(433)
				color = (int((int((int((int(a) << int((int)24))) | int((int(r) << int((int)16))))) | int((int(g) << int((int)8))))) | int(b));
				HX_STACK_LINE(435)
				destPixels->position = (i * (int)4);
				HX_STACK_LINE(436)
				destPixels->writeUnsignedInt(color);
			}
		}
		HX_STACK_LINE(440)
		destPixels->position = (int)0;
		HX_STACK_LINE(441)
		this->setPixels(destRect,destPixels);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC7(BitmapData_obj,merge,(void))

Void BitmapData_obj::multiplyAlpha( ){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","multiplyAlpha",0xfe41bcd5,"openfl._legacy.display.BitmapData.multiplyAlpha","openfl/_legacy/display/BitmapData.hx",448,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_LINE(448)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_multiply_alpha(this->__handle);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,multiplyAlpha,(void))

Void BitmapData_obj::noise( int randomSeed,hx::Null< int >  __o_low,hx::Null< int >  __o_high,hx::Null< int >  __o_channelOptions,hx::Null< bool >  __o_grayScale){
int low = __o_low.Default(0);
int high = __o_high.Default(255);
int channelOptions = __o_channelOptions.Default(7);
bool grayScale = __o_grayScale.Default(false);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","noise",0x4e5526d5,"openfl._legacy.display.BitmapData.noise","openfl/_legacy/display/BitmapData.hx",455,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(randomSeed,"randomSeed")
	HX_STACK_ARG(low,"low")
	HX_STACK_ARG(high,"high")
	HX_STACK_ARG(channelOptions,"channelOptions")
	HX_STACK_ARG(grayScale,"grayScale")
{
		HX_STACK_LINE(455)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_noise(this->__handle,randomSeed,low,high,channelOptions,grayScale);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC5(BitmapData_obj,noise,(void))

Void BitmapData_obj::paletteMap( ::openfl::_legacy::display::BitmapData sourceBitmapData,::openfl::_legacy::geom::Rectangle sourceRect,::openfl::_legacy::geom::Point destPoint,Array< int > redArray,Array< int > greenArray,Array< int > blueArray,Array< int > alphaArray){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","paletteMap",0xc0e401c6,"openfl._legacy.display.BitmapData.paletteMap","openfl/_legacy/display/BitmapData.hx",460,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(sourceBitmapData,"sourceBitmapData")
		HX_STACK_ARG(sourceRect,"sourceRect")
		HX_STACK_ARG(destPoint,"destPoint")
		HX_STACK_ARG(redArray,"redArray")
		HX_STACK_ARG(greenArray,"greenArray")
		HX_STACK_ARG(blueArray,"blueArray")
		HX_STACK_ARG(alphaArray,"alphaArray")
		HX_STACK_LINE(462)
		int sw = ::Std_obj::_int(sourceRect->width);		HX_STACK_VAR(sw,"sw");
		HX_STACK_LINE(463)
		int sh = ::Std_obj::_int(sourceRect->height);		HX_STACK_VAR(sh,"sh");
		HX_STACK_LINE(465)
		::openfl::_legacy::utils::ByteArray pixels = sourceBitmapData->getPixels(sourceRect);		HX_STACK_VAR(pixels,"pixels");
		HX_STACK_LINE(466)
		pixels->position = (int)0;
		HX_STACK_LINE(468)
		int pixelValue;		HX_STACK_VAR(pixelValue,"pixelValue");
		HX_STACK_LINE(468)
		int r;		HX_STACK_VAR(r,"r");
		HX_STACK_LINE(468)
		int g;		HX_STACK_VAR(g,"g");
		HX_STACK_LINE(468)
		int b;		HX_STACK_VAR(b,"b");
		HX_STACK_LINE(468)
		int a;		HX_STACK_VAR(a,"a");
		HX_STACK_LINE(468)
		int color;		HX_STACK_VAR(color,"color");
		HX_STACK_LINE(468)
		int c1;		HX_STACK_VAR(c1,"c1");
		HX_STACK_LINE(468)
		int c2;		HX_STACK_VAR(c2,"c2");
		HX_STACK_LINE(468)
		int c3;		HX_STACK_VAR(c3,"c3");
		HX_STACK_LINE(468)
		int c4;		HX_STACK_VAR(c4,"c4");
		HX_STACK_LINE(470)
		{
			HX_STACK_LINE(470)
			int _g1 = (int)0;		HX_STACK_VAR(_g1,"_g1");
			HX_STACK_LINE(470)
			int _g = (sh * sw);		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(470)
			while((true)){
				HX_STACK_LINE(470)
				if ((!(((_g1 < _g))))){
					HX_STACK_LINE(470)
					break;
				}
				HX_STACK_LINE(470)
				int i = (_g1)++;		HX_STACK_VAR(i,"i");
				HX_STACK_LINE(472)
				int _g2 = pixels->readUnsignedInt();		HX_STACK_VAR(_g2,"_g2");
				HX_STACK_LINE(472)
				pixelValue = _g2;
				HX_STACK_LINE(474)
				if (((alphaArray == null()))){
					HX_STACK_LINE(474)
					c1 = (int(pixelValue) & int((int)-16777216));
				}
				else{
					HX_STACK_LINE(474)
					c1 = alphaArray->__get((int((int(pixelValue) >> int((int)24))) & int((int)255)));
				}
				HX_STACK_LINE(475)
				if (((redArray == null()))){
					HX_STACK_LINE(475)
					c2 = (int(pixelValue) & int((int)16711680));
				}
				else{
					HX_STACK_LINE(475)
					c2 = redArray->__get((int((int(pixelValue) >> int((int)16))) & int((int)255)));
				}
				HX_STACK_LINE(476)
				if (((greenArray == null()))){
					HX_STACK_LINE(476)
					c3 = (int(pixelValue) & int((int)65280));
				}
				else{
					HX_STACK_LINE(476)
					c3 = greenArray->__get((int((int(pixelValue) >> int((int)8))) & int((int)255)));
				}
				HX_STACK_LINE(477)
				if (((blueArray == null()))){
					HX_STACK_LINE(477)
					c4 = (int(pixelValue) & int((int)255));
				}
				else{
					HX_STACK_LINE(477)
					c4 = blueArray->__get((int(pixelValue) & int((int)255)));
				}
				HX_STACK_LINE(479)
				a = (((((int((int(c1) >> int((int)24))) & int((int)255))) + ((int((int(c2) >> int((int)24))) & int((int)255)))) + ((int((int(c3) >> int((int)24))) & int((int)255)))) + ((int((int(c4) >> int((int)24))) & int((int)255))));
				HX_STACK_LINE(480)
				if (((a > (int)255))){
					HX_STACK_LINE(480)
					(a == (int)255);
				}
				HX_STACK_LINE(482)
				r = (((((int((int(c1) >> int((int)16))) & int((int)255))) + ((int((int(c2) >> int((int)16))) & int((int)255)))) + ((int((int(c3) >> int((int)16))) & int((int)255)))) + ((int((int(c4) >> int((int)16))) & int((int)255))));
				HX_STACK_LINE(483)
				if (((r > (int)255))){
					HX_STACK_LINE(483)
					(r == (int)255);
				}
				HX_STACK_LINE(485)
				g = (((((int((int(c1) >> int((int)8))) & int((int)255))) + ((int((int(c2) >> int((int)8))) & int((int)255)))) + ((int((int(c3) >> int((int)8))) & int((int)255)))) + ((int((int(c4) >> int((int)8))) & int((int)255))));
				HX_STACK_LINE(486)
				if (((g > (int)255))){
					HX_STACK_LINE(486)
					(g == (int)255);
				}
				HX_STACK_LINE(488)
				b = (((((int(c1) & int((int)255))) + ((int(c2) & int((int)255)))) + ((int(c3) & int((int)255)))) + ((int(c4) & int((int)255))));
				HX_STACK_LINE(489)
				if (((b > (int)255))){
					HX_STACK_LINE(489)
					(b == (int)255);
				}
				HX_STACK_LINE(491)
				color = (int((int((int((int(a) << int((int)24))) | int((int(r) << int((int)16))))) | int((int(g) << int((int)8))))) | int(b));
				HX_STACK_LINE(493)
				pixels->position = (i * (int)4);
				HX_STACK_LINE(494)
				pixels->writeUnsignedInt(color);
			}
		}
		HX_STACK_LINE(498)
		pixels->position = (int)0;
		HX_STACK_LINE(499)
		::openfl::_legacy::geom::Rectangle destRect = ::openfl::_legacy::geom::Rectangle_obj::__new(destPoint->x,destPoint->y,sw,sh);		HX_STACK_VAR(destRect,"destRect");
		HX_STACK_LINE(500)
		this->setPixels(destRect,pixels);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC7(BitmapData_obj,paletteMap,(void))

Void BitmapData_obj::perlinNoise( Float baseX,Float baseY,int numOctaves,int randomSeed,bool stitch,bool fractalNoise,hx::Null< int >  __o_channelOptions,hx::Null< bool >  __o_grayScale,Array< ::Dynamic > offsets){
int channelOptions = __o_channelOptions.Default(7);
bool grayScale = __o_grayScale.Default(false);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","perlinNoise",0x3288b9e1,"openfl._legacy.display.BitmapData.perlinNoise","openfl/_legacy/display/BitmapData.hx",505,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(baseX,"baseX")
	HX_STACK_ARG(baseY,"baseY")
	HX_STACK_ARG(numOctaves,"numOctaves")
	HX_STACK_ARG(randomSeed,"randomSeed")
	HX_STACK_ARG(stitch,"stitch")
	HX_STACK_ARG(fractalNoise,"fractalNoise")
	HX_STACK_ARG(channelOptions,"channelOptions")
	HX_STACK_ARG(grayScale,"grayScale")
	HX_STACK_ARG(offsets,"offsets")
{
		HX_STACK_LINE(507)
		::openfl::_legacy::display::OptimizedPerlin perlin = ::openfl::_legacy::display::OptimizedPerlin_obj::__new(randomSeed,numOctaves,null());		HX_STACK_VAR(perlin,"perlin");
		HX_STACK_LINE(508)
		perlin->fill(hx::ObjectPtr<OBJ_>(this),baseX,baseY,(int)0,null());
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC9(BitmapData_obj,perlinNoise,(void))

Void BitmapData_obj::scroll( int x,int y){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","scroll",0x59169472,"openfl._legacy.display.BitmapData.scroll","openfl/_legacy/display/BitmapData.hx",522,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(x,"x")
		HX_STACK_ARG(y,"y")
		HX_STACK_LINE(522)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_scroll(this->__handle,x,y);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,scroll,(void))

Void BitmapData_obj::setFlags( int flags){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","setFlags",0x3fa5f3ea,"openfl._legacy.display.BitmapData.setFlags","openfl/_legacy/display/BitmapData.hx",530,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(flags,"flags")
		HX_STACK_LINE(530)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_set_flags(this->__handle,flags);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,setFlags,(void))

Void BitmapData_obj::setFormat( int format){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","setFormat",0x37045534,"openfl._legacy.display.BitmapData.setFormat","openfl/_legacy/display/BitmapData.hx",537,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(format,"format")
		HX_STACK_LINE(537)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_set_format(this->__handle,format);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,setFormat,(void))

Void BitmapData_obj::setPixel( int x,int y,int color){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","setPixel",0xffbd8f29,"openfl._legacy.display.BitmapData.setPixel","openfl/_legacy/display/BitmapData.hx",544,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(x,"x")
		HX_STACK_ARG(y,"y")
		HX_STACK_ARG(color,"color")
		HX_STACK_LINE(544)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_set_pixel(this->__handle,x,y,color);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC3(BitmapData_obj,setPixel,(void))

Void BitmapData_obj::setPixel32( int x,int y,int color){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","setPixel32",0x959e9808,"openfl._legacy.display.BitmapData.setPixel32","openfl/_legacy/display/BitmapData.hx",551,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(x,"x")
		HX_STACK_ARG(y,"y")
		HX_STACK_ARG(color,"color")
		HX_STACK_LINE(551)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_set_pixel32(this->__handle,x,y,color);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC3(BitmapData_obj,setPixel32,(void))

Void BitmapData_obj::setPixels( ::openfl::_legacy::geom::Rectangle rect,::openfl::_legacy::utils::ByteArray pixels){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","setPixels",0xc61fb52a,"openfl._legacy.display.BitmapData.setPixels","openfl/_legacy/display/BitmapData.hx",556,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(rect,"rect")
		HX_STACK_ARG(pixels,"pixels")
		HX_STACK_LINE(558)
		int size = ::Std_obj::_int(((rect->width * rect->height) * (int)4));		HX_STACK_VAR(size,"size");
		HX_STACK_LINE(559)
		int _g = ::Std_obj::_int(size);		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(559)
		pixels->checkData(_g);
		HX_STACK_LINE(560)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_set_bytes(this->__handle,rect,pixels,pixels->position);
		HX_STACK_LINE(561)
		hx::AddEq(pixels->position,size);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,setPixels,(void))

Void BitmapData_obj::setVector( ::openfl::_legacy::geom::Rectangle rect,Array< int > pixels){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","setVector",0xd0d376c0,"openfl._legacy.display.BitmapData.setVector","openfl/_legacy/display/BitmapData.hx",566,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(rect,"rect")
		HX_STACK_ARG(pixels,"pixels")
		HX_STACK_LINE(568)
		int count = ::Std_obj::_int((rect->width * rect->height));		HX_STACK_VAR(count,"count");
		HX_STACK_LINE(569)
		if (((pixels->length < count))){
			HX_STACK_LINE(569)
			return null();
		}
		HX_STACK_LINE(572)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_set_array(this->__handle,rect,pixels);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,setVector,(void))

int BitmapData_obj::threshold( ::openfl::_legacy::display::BitmapData sourceBitmapData,::openfl::_legacy::geom::Rectangle sourceRect,::openfl::_legacy::geom::Point destPoint,::String operation,int threshold,hx::Null< int >  __o_color,hx::Null< int >  __o_mask,hx::Null< bool >  __o_copySource){
int color = __o_color.Default(0);
int mask = __o_mask.Default(-1);
bool copySource = __o_copySource.Default(false);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","threshold",0x0e721466,"openfl._legacy.display.BitmapData.threshold","openfl/_legacy/display/BitmapData.hx",590,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(sourceBitmapData,"sourceBitmapData")
	HX_STACK_ARG(sourceRect,"sourceRect")
	HX_STACK_ARG(destPoint,"destPoint")
	HX_STACK_ARG(operation,"operation")
	HX_STACK_ARG(threshold,"threshold")
	HX_STACK_ARG(color,"color")
	HX_STACK_ARG(mask,"mask")
	HX_STACK_ARG(copySource,"copySource")
{
		struct _Function_1_1{
			inline static bool Block( hx::ObjectPtr< ::openfl::_legacy::display::BitmapData_obj > __this,::openfl::_legacy::geom::Rectangle &sourceRect){
				HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","openfl/_legacy/display/BitmapData.hx",590,0x0b92a012)
				{
					HX_STACK_LINE(590)
					::openfl::_legacy::geom::Rectangle _g = __this->get_rect();		HX_STACK_VAR(_g,"_g");
					HX_STACK_LINE(590)
					return sourceRect->equals(_g);
				}
				return null();
			}
		};
		HX_STACK_LINE(590)
		if (((  (((  (((  (((sourceBitmapData == hx::ObjectPtr<OBJ_>(this)))) ? bool(_Function_1_1::Block(this,sourceRect)) : bool(false) ))) ? bool((destPoint->x == (int)0)) : bool(false) ))) ? bool((destPoint->y == (int)0)) : bool(false) ))){
			HX_STACK_LINE(592)
			int hits = (int)0;		HX_STACK_VAR(hits,"hits");
			HX_STACK_LINE(594)
			threshold = (int((int((int((int(((int(threshold) & int((int)255)))) << int((int)24))) | int((int(((int((int(threshold) >> int((int)8))) & int((int)255)))) << int((int)16))))) | int((int(((int((int(threshold) >> int((int)16))) & int((int)255)))) << int((int)8))))) | int((int((int(threshold) >> int((int)24))) & int((int)255))));
			HX_STACK_LINE(595)
			color = (int((int((int((int(((int(color) & int((int)255)))) << int((int)24))) | int((int(((int((int(color) >> int((int)8))) & int((int)255)))) << int((int)16))))) | int((int(((int((int(color) >> int((int)16))) & int((int)255)))) << int((int)8))))) | int((int((int(color) >> int((int)24))) & int((int)255))));
			HX_STACK_LINE(597)
			::openfl::_legacy::utils::ByteArray memory = ::openfl::_legacy::utils::ByteArray_obj::__new(null());		HX_STACK_VAR(memory,"memory");
			HX_STACK_LINE(598)
			int _g1 = this->get_width();		HX_STACK_VAR(_g1,"_g1");
			HX_STACK_LINE(598)
			int _g2 = this->get_height();		HX_STACK_VAR(_g2,"_g2");
			HX_STACK_LINE(598)
			int _g3 = (_g1 * _g2);		HX_STACK_VAR(_g3,"_g3");
			HX_STACK_LINE(598)
			int _g4 = (_g3 * (int)4);		HX_STACK_VAR(_g4,"_g4");
			HX_STACK_LINE(598)
			memory->setLength(_g4);
			HX_STACK_LINE(599)
			::openfl::_legacy::geom::Rectangle _g5 = this->get_rect();		HX_STACK_VAR(_g5,"_g5");
			HX_STACK_LINE(599)
			::openfl::_legacy::utils::ByteArray _g6 = this->getPixels(_g5);		HX_STACK_VAR(_g6,"_g6");
			HX_STACK_LINE(599)
			memory = _g6;
			HX_STACK_LINE(600)
			memory->position = (int)0;
			HX_STACK_LINE(601)
			::openfl::_legacy::Memory_obj::select(memory);
			HX_STACK_LINE(603)
			int thresholdMask = (int(threshold) & int(mask));		HX_STACK_VAR(thresholdMask,"thresholdMask");
			HX_STACK_LINE(605)
			int width_yy;		HX_STACK_VAR(width_yy,"width_yy");
			HX_STACK_LINE(605)
			int position;		HX_STACK_VAR(position,"position");
			HX_STACK_LINE(605)
			int pixelMask;		HX_STACK_VAR(pixelMask,"pixelMask");
			HX_STACK_LINE(605)
			int pixelValue;		HX_STACK_VAR(pixelValue,"pixelValue");
			HX_STACK_LINE(605)
			int i;		HX_STACK_VAR(i,"i");
			HX_STACK_LINE(605)
			bool test;		HX_STACK_VAR(test,"test");
			HX_STACK_LINE(607)
			{
				HX_STACK_LINE(607)
				int _g11 = (int)0;		HX_STACK_VAR(_g11,"_g11");
				HX_STACK_LINE(607)
				int _g = this->get_height();		HX_STACK_VAR(_g,"_g");
				HX_STACK_LINE(607)
				while((true)){
					HX_STACK_LINE(607)
					if ((!(((_g11 < _g))))){
						HX_STACK_LINE(607)
						break;
					}
					HX_STACK_LINE(607)
					int yy = (_g11)++;		HX_STACK_VAR(yy,"yy");
					HX_STACK_LINE(609)
					int _g7 = this->get_width();		HX_STACK_VAR(_g7,"_g7");
					HX_STACK_LINE(609)
					int _g8 = (_g7 * yy);		HX_STACK_VAR(_g8,"_g8");
					HX_STACK_LINE(609)
					width_yy = _g8;
					HX_STACK_LINE(611)
					{
						HX_STACK_LINE(611)
						int _g31 = (int)0;		HX_STACK_VAR(_g31,"_g31");
						HX_STACK_LINE(611)
						int _g21 = this->get_width();		HX_STACK_VAR(_g21,"_g21");
						HX_STACK_LINE(611)
						while((true)){
							HX_STACK_LINE(611)
							if ((!(((_g31 < _g21))))){
								HX_STACK_LINE(611)
								break;
							}
							HX_STACK_LINE(611)
							int xx = (_g31)++;		HX_STACK_VAR(xx,"xx");
							HX_STACK_LINE(613)
							position = (((width_yy + xx)) * (int)4);
							HX_STACK_LINE(614)
							int _g9 = ::openfl::_legacy::Memory_obj::getI32(position);		HX_STACK_VAR(_g9,"_g9");
							HX_STACK_LINE(614)
							pixelValue = _g9;
							HX_STACK_LINE(615)
							pixelMask = (int(pixelValue) & int(mask));
							HX_STACK_LINE(617)
							int _g10 = ::openfl::_legacy::display::BitmapData_obj::__ucompare(pixelMask,thresholdMask);		HX_STACK_VAR(_g10,"_g10");
							HX_STACK_LINE(617)
							i = _g10;
							HX_STACK_LINE(618)
							test = false;
							HX_STACK_LINE(620)
							if (((operation == HX_CSTRING("==")))){
								HX_STACK_LINE(620)
								test = (i == (int)0);
							}
							else{
								HX_STACK_LINE(621)
								if (((operation == HX_CSTRING("<")))){
									HX_STACK_LINE(621)
									test = (i == (int)-1);
								}
								else{
									HX_STACK_LINE(622)
									if (((operation == HX_CSTRING(">")))){
										HX_STACK_LINE(622)
										test = (i == (int)1);
									}
									else{
										HX_STACK_LINE(623)
										if (((operation == HX_CSTRING("!=")))){
											HX_STACK_LINE(623)
											test = (i != (int)0);
										}
										else{
											HX_STACK_LINE(624)
											if (((operation == HX_CSTRING("<=")))){
												HX_STACK_LINE(624)
												test = (bool((i == (int)0)) || bool((i == (int)-1)));
											}
											else{
												HX_STACK_LINE(625)
												if (((operation == HX_CSTRING(">=")))){
													HX_STACK_LINE(625)
													test = (bool((i == (int)0)) || bool((i == (int)1)));
												}
											}
										}
									}
								}
							}
							HX_STACK_LINE(627)
							if ((test)){
								HX_STACK_LINE(629)
								::openfl::_legacy::Memory_obj::setI32(position,color);
								HX_STACK_LINE(630)
								(hits)++;
							}
						}
					}
				}
			}
			HX_STACK_LINE(638)
			memory->position = (int)0;
			HX_STACK_LINE(639)
			::openfl::_legacy::geom::Rectangle _g11 = this->get_rect();		HX_STACK_VAR(_g11,"_g11");
			HX_STACK_LINE(639)
			this->setPixels(_g11,memory);
			HX_STACK_LINE(640)
			::openfl::_legacy::Memory_obj::select(null());
			HX_STACK_LINE(641)
			return hits;
		}
		else{
			HX_STACK_LINE(645)
			int sx = ::Std_obj::_int(sourceRect->x);		HX_STACK_VAR(sx,"sx");
			HX_STACK_LINE(646)
			int sy = ::Std_obj::_int(sourceRect->y);		HX_STACK_VAR(sy,"sy");
			HX_STACK_LINE(647)
			int _g12 = sourceBitmapData->get_width();		HX_STACK_VAR(_g12,"_g12");
			HX_STACK_LINE(647)
			int sw = ::Std_obj::_int(_g12);		HX_STACK_VAR(sw,"sw");
			HX_STACK_LINE(648)
			int _g13 = sourceBitmapData->get_height();		HX_STACK_VAR(_g13,"_g13");
			HX_STACK_LINE(648)
			int sh = ::Std_obj::_int(_g13);		HX_STACK_VAR(sh,"sh");
			HX_STACK_LINE(650)
			int dx = ::Std_obj::_int(destPoint->x);		HX_STACK_VAR(dx,"dx");
			HX_STACK_LINE(651)
			int dy = ::Std_obj::_int(destPoint->y);		HX_STACK_VAR(dy,"dy");
			HX_STACK_LINE(653)
			int _g14 = this->get_width();		HX_STACK_VAR(_g14,"_g14");
			HX_STACK_LINE(653)
			int _g15 = (_g14 - sw);		HX_STACK_VAR(_g15,"_g15");
			HX_STACK_LINE(653)
			int bw = (_g15 - dx);		HX_STACK_VAR(bw,"bw");
			HX_STACK_LINE(654)
			int _g16 = this->get_height();		HX_STACK_VAR(_g16,"_g16");
			HX_STACK_LINE(654)
			int _g17 = (_g16 - sh);		HX_STACK_VAR(_g17,"_g17");
			HX_STACK_LINE(654)
			int bh = (_g17 - dy);		HX_STACK_VAR(bh,"bh");
			HX_STACK_LINE(656)
			int dw;		HX_STACK_VAR(dw,"dw");
			HX_STACK_LINE(656)
			if (((bw < (int)0))){
				HX_STACK_LINE(656)
				int _g18 = this->get_width();		HX_STACK_VAR(_g18,"_g18");
				HX_STACK_LINE(656)
				int _g19 = (_g18 - sw);		HX_STACK_VAR(_g19,"_g19");
				HX_STACK_LINE(656)
				int _g20 = (_g19 - dx);		HX_STACK_VAR(_g20,"_g20");
				HX_STACK_LINE(656)
				dw = (sw + _g20);
			}
			else{
				HX_STACK_LINE(656)
				dw = sw;
			}
			HX_STACK_LINE(657)
			int dh;		HX_STACK_VAR(dh,"dh");
			HX_STACK_LINE(657)
			if (((bw < (int)0))){
				HX_STACK_LINE(657)
				int _g21 = this->get_height();		HX_STACK_VAR(_g21,"_g21");
				HX_STACK_LINE(657)
				int _g22 = (_g21 - sh);		HX_STACK_VAR(_g22,"_g22");
				HX_STACK_LINE(657)
				int _g23 = (_g22 - dy);		HX_STACK_VAR(_g23,"_g23");
				HX_STACK_LINE(657)
				dh = (sh + _g23);
			}
			else{
				HX_STACK_LINE(657)
				dh = sh;
			}
			HX_STACK_LINE(659)
			int hits = (int)0;		HX_STACK_VAR(hits,"hits");
			HX_STACK_LINE(661)
			threshold = (int((int((int((int(((int(threshold) & int((int)255)))) << int((int)24))) | int((int(((int((int(threshold) >> int((int)8))) & int((int)255)))) << int((int)16))))) | int((int(((int((int(threshold) >> int((int)16))) & int((int)255)))) << int((int)8))))) | int((int((int(threshold) >> int((int)24))) & int((int)255))));
			HX_STACK_LINE(662)
			color = (int((int((int((int(((int(color) & int((int)255)))) << int((int)24))) | int((int(((int((int(color) >> int((int)8))) & int((int)255)))) << int((int)16))))) | int((int(((int((int(color) >> int((int)16))) & int((int)255)))) << int((int)8))))) | int((int((int(color) >> int((int)24))) & int((int)255))));
			HX_STACK_LINE(664)
			int canvasMemory = ((sw * sh) * (int)4);		HX_STACK_VAR(canvasMemory,"canvasMemory");
			HX_STACK_LINE(665)
			int sourceMemory = (int)0;		HX_STACK_VAR(sourceMemory,"sourceMemory");
			HX_STACK_LINE(667)
			if ((copySource)){
				HX_STACK_LINE(669)
				sourceMemory = ((sw * sh) * (int)4);
			}
			HX_STACK_LINE(673)
			int totalMemory = (canvasMemory + sourceMemory);		HX_STACK_VAR(totalMemory,"totalMemory");
			HX_STACK_LINE(674)
			::openfl::_legacy::utils::ByteArray memory = ::openfl::_legacy::utils::ByteArray_obj::__new(null());		HX_STACK_VAR(memory,"memory");
			HX_STACK_LINE(675)
			memory->setLength(totalMemory);
			HX_STACK_LINE(676)
			memory->position = (int)0;
			HX_STACK_LINE(677)
			::openfl::_legacy::display::BitmapData bitmapData = sourceBitmapData->clone();		HX_STACK_VAR(bitmapData,"bitmapData");
			HX_STACK_LINE(678)
			::openfl::_legacy::utils::ByteArray pixels = bitmapData->getPixels(sourceRect);		HX_STACK_VAR(pixels,"pixels");
			HX_STACK_LINE(679)
			memory->writeBytes(pixels,null(),null());
			HX_STACK_LINE(680)
			memory->position = canvasMemory;
			HX_STACK_LINE(682)
			if ((copySource)){
				HX_STACK_LINE(684)
				memory->writeBytes(pixels,null(),null());
			}
			HX_STACK_LINE(688)
			memory->position = (int)0;
			HX_STACK_LINE(689)
			::openfl::_legacy::Memory_obj::select(memory);
			HX_STACK_LINE(691)
			int thresholdMask = (int(threshold) & int(mask));		HX_STACK_VAR(thresholdMask,"thresholdMask");
			HX_STACK_LINE(693)
			int position;		HX_STACK_VAR(position,"position");
			HX_STACK_LINE(693)
			int pixelMask;		HX_STACK_VAR(pixelMask,"pixelMask");
			HX_STACK_LINE(693)
			int pixelValue;		HX_STACK_VAR(pixelValue,"pixelValue");
			HX_STACK_LINE(693)
			int i;		HX_STACK_VAR(i,"i");
			HX_STACK_LINE(693)
			bool test;		HX_STACK_VAR(test,"test");
			HX_STACK_LINE(695)
			{
				HX_STACK_LINE(695)
				int _g = (int)0;		HX_STACK_VAR(_g,"_g");
				HX_STACK_LINE(695)
				while((true)){
					HX_STACK_LINE(695)
					if ((!(((_g < dh))))){
						HX_STACK_LINE(695)
						break;
					}
					HX_STACK_LINE(695)
					int yy = (_g)++;		HX_STACK_VAR(yy,"yy");
					HX_STACK_LINE(697)
					{
						HX_STACK_LINE(697)
						int _g1 = (int)0;		HX_STACK_VAR(_g1,"_g1");
						HX_STACK_LINE(697)
						while((true)){
							HX_STACK_LINE(697)
							if ((!(((_g1 < dw))))){
								HX_STACK_LINE(697)
								break;
							}
							HX_STACK_LINE(697)
							int xx = (_g1)++;		HX_STACK_VAR(xx,"xx");
							HX_STACK_LINE(699)
							position = ((((xx + sx) + (((yy + sy)) * sw))) * (int)4);
							HX_STACK_LINE(700)
							int _g24 = ::openfl::_legacy::Memory_obj::getI32(position);		HX_STACK_VAR(_g24,"_g24");
							HX_STACK_LINE(700)
							pixelValue = _g24;
							HX_STACK_LINE(701)
							pixelMask = (int(pixelValue) & int(mask));
							HX_STACK_LINE(703)
							int _g25 = ::openfl::_legacy::display::BitmapData_obj::__ucompare(pixelMask,thresholdMask);		HX_STACK_VAR(_g25,"_g25");
							HX_STACK_LINE(703)
							i = _g25;
							HX_STACK_LINE(704)
							test = false;
							HX_STACK_LINE(706)
							if (((operation == HX_CSTRING("==")))){
								HX_STACK_LINE(706)
								test = (i == (int)0);
							}
							else{
								HX_STACK_LINE(707)
								if (((operation == HX_CSTRING("<")))){
									HX_STACK_LINE(707)
									test = (i == (int)-1);
								}
								else{
									HX_STACK_LINE(708)
									if (((operation == HX_CSTRING(">")))){
										HX_STACK_LINE(708)
										test = (i == (int)1);
									}
									else{
										HX_STACK_LINE(709)
										if (((operation == HX_CSTRING("!=")))){
											HX_STACK_LINE(709)
											test = (i != (int)0);
										}
										else{
											HX_STACK_LINE(710)
											if (((operation == HX_CSTRING("<=")))){
												HX_STACK_LINE(710)
												test = (bool((i == (int)0)) || bool((i == (int)-1)));
											}
											else{
												HX_STACK_LINE(711)
												if (((operation == HX_CSTRING(">=")))){
													HX_STACK_LINE(711)
													test = (bool((i == (int)0)) || bool((i == (int)1)));
												}
											}
										}
									}
								}
							}
							HX_STACK_LINE(713)
							if ((test)){
								HX_STACK_LINE(715)
								::openfl::_legacy::Memory_obj::setI32(position,color);
								HX_STACK_LINE(716)
								(hits)++;
							}
							else{
								HX_STACK_LINE(718)
								if ((copySource)){
									HX_STACK_LINE(720)
									int _g26 = ::openfl::_legacy::Memory_obj::getI32((canvasMemory + position));		HX_STACK_VAR(_g26,"_g26");
									HX_STACK_LINE(720)
									::openfl::_legacy::Memory_obj::setI32(position,_g26);
								}
							}
						}
					}
				}
			}
			HX_STACK_LINE(728)
			memory->position = (int)0;
			HX_STACK_LINE(729)
			bitmapData->setPixels(sourceRect,memory);
			HX_STACK_LINE(730)
			::openfl::_legacy::geom::Rectangle _g27 = bitmapData->get_rect();		HX_STACK_VAR(_g27,"_g27");
			HX_STACK_LINE(730)
			this->copyPixels(bitmapData,_g27,destPoint,null(),null(),null());
			HX_STACK_LINE(731)
			::openfl::_legacy::Memory_obj::select(null());
			HX_STACK_LINE(732)
			return hits;
		}
		HX_STACK_LINE(590)
		return (int)0;
	}
}


HX_DEFINE_DYNAMIC_FUNC8(BitmapData_obj,threshold,return )

Void BitmapData_obj::unlock( ::openfl::_legacy::geom::Rectangle changeRect){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","unlock",0x773e5f29,"openfl._legacy.display.BitmapData.unlock","openfl/_legacy/display/BitmapData.hx",739,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(changeRect,"changeRect")
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,unlock,(void))

Void BitmapData_obj::unmultiplyAlpha( ){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","unmultiplyAlpha",0x662ed79c,"openfl._legacy.display.BitmapData.unmultiplyAlpha","openfl/_legacy/display/BitmapData.hx",748,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_LINE(748)
		::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_unmultiply_alpha(this->__handle);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,unmultiplyAlpha,(void))

Void BitmapData_obj::__drawToSurface( Dynamic surface,::openfl::_legacy::geom::Matrix matrix,::openfl::_legacy::geom::ColorTransform colorTransform,::String blendMode,::openfl::_legacy::geom::Rectangle clipRect,bool smoothing){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","__drawToSurface",0xb14ef929,"openfl._legacy.display.BitmapData.__drawToSurface","openfl/_legacy/display/BitmapData.hx",755,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(surface,"surface")
		HX_STACK_ARG(matrix,"matrix")
		HX_STACK_ARG(colorTransform,"colorTransform")
		HX_STACK_ARG(blendMode,"blendMode")
		HX_STACK_ARG(clipRect,"clipRect")
		HX_STACK_ARG(smoothing,"smoothing")
		HX_STACK_LINE(755)
		::openfl::_legacy::display::BitmapData_obj::lime_render_surface_to_surface(surface,this->__handle,matrix,colorTransform,blendMode,clipRect,smoothing);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC6(BitmapData_obj,__drawToSurface,(void))

Void BitmapData_obj::__loadFromBytes( ::openfl::_legacy::utils::ByteArray bytes,::openfl::_legacy::utils::ByteArray rawAlpha){
{
		HX_STACK_FRAME("openfl._legacy.display.BitmapData","__loadFromBytes",0xb9d10b76,"openfl._legacy.display.BitmapData.__loadFromBytes","openfl/_legacy/display/BitmapData.hx",767,0x0b92a012)
		HX_STACK_THIS(this)
		HX_STACK_ARG(bytes,"bytes")
		HX_STACK_ARG(rawAlpha,"rawAlpha")
		HX_STACK_LINE(769)
		Dynamic _g = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_from_bytes(bytes,rawAlpha);		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(769)
		this->__handle = _g;
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,__loadFromBytes,(void))

bool BitmapData_obj::get_premultipliedAlpha( ){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","get_premultipliedAlpha",0x700c9dd6,"openfl._legacy.display.BitmapData.get_premultipliedAlpha","openfl/_legacy/display/BitmapData.hx",835,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_LINE(835)
	return ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_get_prem_alpha(this->__handle);
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,get_premultipliedAlpha,return )

bool BitmapData_obj::set_premultipliedAlpha( bool value){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","set_premultipliedAlpha",0xa3b81a4a,"openfl._legacy.display.BitmapData.set_premultipliedAlpha","openfl/_legacy/display/BitmapData.hx",836,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_ARG(value,"value")
	HX_STACK_LINE(836)
	::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_set_prem_alpha(this->__handle,value);
	HX_STACK_LINE(836)
	return value;
}


HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,set_premultipliedAlpha,return )

::openfl::_legacy::geom::Rectangle BitmapData_obj::get_rect( ){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","get_rect",0xfa476852,"openfl._legacy.display.BitmapData.get_rect","openfl/_legacy/display/BitmapData.hx",837,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_LINE(837)
	int _g = this->get_width();		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(837)
	int _g1 = this->get_height();		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(837)
	return ::openfl::_legacy::geom::Rectangle_obj::__new((int)0,(int)0,_g,_g1);
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,get_rect,return )

int BitmapData_obj::get_width( ){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","get_width",0xe7da6318,"openfl._legacy.display.BitmapData.get_width","openfl/_legacy/display/BitmapData.hx",838,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_LINE(838)
	return ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_width(this->__handle);
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,get_width,return )

int BitmapData_obj::get_height( ){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","get_height",0xad8bca95,"openfl._legacy.display.BitmapData.get_height","openfl/_legacy/display/BitmapData.hx",839,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_LINE(839)
	return ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_height(this->__handle);
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,get_height,return )

bool BitmapData_obj::get_transparent( ){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","get_transparent",0x2133f1e4,"openfl._legacy.display.BitmapData.get_transparent","openfl/_legacy/display/BitmapData.hx",840,0x0b92a012)
	HX_STACK_THIS(this)
	HX_STACK_LINE(840)
	return this->__transparent;
}


HX_DEFINE_DYNAMIC_FUNC0(BitmapData_obj,get_transparent,return )

int BitmapData_obj::CLEAR;

int BitmapData_obj::BLACK;

int BitmapData_obj::WHITE;

int BitmapData_obj::RED;

int BitmapData_obj::GREEN;

int BitmapData_obj::BLUE;

::String BitmapData_obj::PNG;

::String BitmapData_obj::JPG;

int BitmapData_obj::TRANSPARENT;

int BitmapData_obj::HARDWARE;

int BitmapData_obj::FORMAT_8888;

int BitmapData_obj::FORMAT_4444;

int BitmapData_obj::FORMAT_565;

int BitmapData_obj::createColor( int rgb,hx::Null< int >  __o_alpha){
int alpha = __o_alpha.Default(255);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","createColor",0x1a67de42,"openfl._legacy.display.BitmapData.createColor","openfl/_legacy/display/BitmapData.hx",124,0x0b92a012)
	HX_STACK_ARG(rgb,"rgb")
	HX_STACK_ARG(alpha,"alpha")
{
		HX_STACK_LINE(124)
		return (int(rgb) | int((int(alpha) << int((int)24))));
	}
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,createColor,return )

int BitmapData_obj::extractAlpha( int argb){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","extractAlpha",0x58ba4c82,"openfl._legacy.display.BitmapData.extractAlpha","openfl/_legacy/display/BitmapData.hx",207,0x0b92a012)
	HX_STACK_ARG(argb,"argb")
	HX_STACK_LINE(207)
	return hx::UShr(argb,(int)24);
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,extractAlpha,return )

int BitmapData_obj::extractColor( int argb){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","extractColor",0x81801687,"openfl._legacy.display.BitmapData.extractColor","openfl/_legacy/display/BitmapData.hx",214,0x0b92a012)
	HX_STACK_ARG(argb,"argb")
	HX_STACK_LINE(214)
	return (int(argb) & int((int)16777215));
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,extractColor,return )

::openfl::_legacy::utils::ByteArray BitmapData_obj::getRGBAPixels( ::openfl::_legacy::display::BitmapData bitmapData){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","getRGBAPixels",0x20e79d52,"openfl._legacy.display.BitmapData.getRGBAPixels","openfl/_legacy/display/BitmapData.hx",325,0x0b92a012)
	HX_STACK_ARG(bitmapData,"bitmapData")
	HX_STACK_LINE(327)
	int _g = bitmapData->get_width();		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(327)
	int _g1 = bitmapData->get_height();		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(327)
	::openfl::_legacy::geom::Rectangle _g2 = ::openfl::_legacy::geom::Rectangle_obj::__new((int)0,(int)0,_g,_g1);		HX_STACK_VAR(_g2,"_g2");
	HX_STACK_LINE(327)
	::openfl::_legacy::utils::ByteArray data = bitmapData->getPixels(_g2);		HX_STACK_VAR(data,"data");
	HX_STACK_LINE(328)
	int _g3 = bitmapData->get_width();		HX_STACK_VAR(_g3,"_g3");
	HX_STACK_LINE(328)
	int _g4 = bitmapData->get_height();		HX_STACK_VAR(_g4,"_g4");
	HX_STACK_LINE(328)
	int size = (_g3 * _g4);		HX_STACK_VAR(size,"size");
	HX_STACK_LINE(329)
	int v;		HX_STACK_VAR(v,"v");
	HX_STACK_LINE(331)
	data->position = (int)0;
	HX_STACK_LINE(333)
	{
		HX_STACK_LINE(333)
		int _g5 = (int)0;		HX_STACK_VAR(_g5,"_g5");
		HX_STACK_LINE(333)
		while((true)){
			HX_STACK_LINE(333)
			if ((!(((_g5 < size))))){
				HX_STACK_LINE(333)
				break;
			}
			HX_STACK_LINE(333)
			int i = (_g5)++;		HX_STACK_VAR(i,"i");
			HX_STACK_LINE(335)
			int _g51 = data->readInt();		HX_STACK_VAR(_g51,"_g51");
			HX_STACK_LINE(335)
			v = _g51;
			HX_STACK_LINE(336)
			data->position = (int(i) << int((int)2));
			HX_STACK_LINE(337)
			data->writeInt((int((int((int((int(((int(hx::UShr(v,(int)0)) & int((int)255)))) << int((int)8))) | int((int(((int(hx::UShr(v,(int)8)) & int((int)255)))) << int((int)16))))) | int((int(((int(hx::UShr(v,(int)16)) & int((int)255)))) << int((int)24))))) | int((int(hx::UShr(v,(int)24)) & int((int)255)))));
		}
	}
	HX_STACK_LINE(341)
	return data;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,getRGBAPixels,return )

::openfl::_legacy::display::BitmapData BitmapData_obj::load( ::String filename,hx::Null< int >  __o_format){
int format = __o_format.Default(0);
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","load",0x8d61034b,"openfl._legacy.display.BitmapData.load","openfl/_legacy/display/BitmapData.hx",367,0x0b92a012)
	HX_STACK_ARG(filename,"filename")
	HX_STACK_ARG(format,"format")
{
		HX_STACK_LINE(369)
		::openfl::_legacy::display::BitmapData result = ::openfl::_legacy::display::BitmapData_obj::__new((int)0,(int)0,null(),null(),null());		HX_STACK_VAR(result,"result");
		HX_STACK_LINE(370)
		Dynamic _g = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_load(filename,format);		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(370)
		result->__handle = _g;
		HX_STACK_LINE(371)
		return result;
	}
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,load,return )

::openfl::_legacy::display::BitmapData BitmapData_obj::loadFromBytes( ::openfl::_legacy::utils::ByteArray bytes,::openfl::_legacy::utils::ByteArray rawAlpha){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","loadFromBytes",0x87ab8dd6,"openfl._legacy.display.BitmapData.loadFromBytes","openfl/_legacy/display/BitmapData.hx",376,0x0b92a012)
	HX_STACK_ARG(bytes,"bytes")
	HX_STACK_ARG(rawAlpha,"rawAlpha")
	HX_STACK_LINE(378)
	::openfl::_legacy::display::BitmapData result = ::openfl::_legacy::display::BitmapData_obj::__new((int)0,(int)0,true,null(),null());		HX_STACK_VAR(result,"result");
	HX_STACK_LINE(379)
	{
		HX_STACK_LINE(379)
		Dynamic _g = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_from_bytes(bytes,rawAlpha);		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(379)
		result->__handle = _g;
	}
	HX_STACK_LINE(380)
	return result;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,loadFromBytes,return )

::openfl::_legacy::display::BitmapData BitmapData_obj::loadFromHaxeBytes( ::haxe::io::Bytes bytes,::haxe::io::Bytes rawAlpha){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","loadFromHaxeBytes",0x45aa9150,"openfl._legacy.display.BitmapData.loadFromHaxeBytes","openfl/_legacy/display/BitmapData.hx",385,0x0b92a012)
	HX_STACK_ARG(bytes,"bytes")
	HX_STACK_ARG(rawAlpha,"rawAlpha")
	HX_STACK_LINE(387)
	::openfl::_legacy::utils::ByteArray _g = ::openfl::_legacy::utils::ByteArray_obj::fromBytes(bytes);		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(387)
	::openfl::_legacy::utils::ByteArray _g1;		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(387)
	if (((rawAlpha == null()))){
		HX_STACK_LINE(387)
		_g1 = null();
	}
	else{
		HX_STACK_LINE(387)
		_g1 = ::openfl::_legacy::utils::ByteArray_obj::fromBytes(rawAlpha);
	}
	HX_STACK_LINE(387)
	return ::openfl::_legacy::display::BitmapData_obj::loadFromBytes(_g,_g1);
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,loadFromHaxeBytes,return )

bool BitmapData_obj::sameValue( int a,int b){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","sameValue",0x23f2aae6,"openfl._legacy.display.BitmapData.sameValue","openfl/_legacy/display/BitmapData.hx",515,0x0b92a012)
	HX_STACK_ARG(a,"a")
	HX_STACK_ARG(b,"b")
	HX_STACK_LINE(515)
	return (a == b);
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,sameValue,return )

int BitmapData_obj::__flipPixel( int pixel){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","__flipPixel",0x2e4bcef4,"openfl._legacy.display.BitmapData.__flipPixel","openfl/_legacy/display/BitmapData.hx",762,0x0b92a012)
	HX_STACK_ARG(pixel,"pixel")
	HX_STACK_LINE(762)
	return (int((int((int((int(((int(pixel) & int((int)255)))) << int((int)24))) | int((int(((int((int(pixel) >> int((int)8))) & int((int)255)))) << int((int)16))))) | int((int(((int((int(pixel) >> int((int)16))) & int((int)255)))) << int((int)8))))) | int((int((int(pixel) >> int((int)24))) & int((int)255))));
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(BitmapData_obj,__flipPixel,return )

int BitmapData_obj::__ucompare( int n1,int n2){
	HX_STACK_FRAME("openfl._legacy.display.BitmapData","__ucompare",0x056806d5,"openfl._legacy.display.BitmapData.__ucompare","openfl/_legacy/display/BitmapData.hx",774,0x0b92a012)
	HX_STACK_ARG(n1,"n1")
	HX_STACK_ARG(n2,"n2")
	HX_STACK_LINE(776)
	int tmp1;		HX_STACK_VAR(tmp1,"tmp1");
	HX_STACK_LINE(777)
	int tmp2;		HX_STACK_VAR(tmp2,"tmp2");
	HX_STACK_LINE(779)
	tmp1 = (int((int(n1) >> int((int)24))) & int((int)255));
	HX_STACK_LINE(780)
	tmp2 = (int((int(n2) >> int((int)24))) & int((int)255));
	HX_STACK_LINE(782)
	if (((tmp1 != tmp2))){
		HX_STACK_LINE(784)
		if (((tmp1 > tmp2))){
			HX_STACK_LINE(784)
			return (int)1;
		}
		else{
			HX_STACK_LINE(784)
			return (int)-1;
		}
	}
	else{
		HX_STACK_LINE(788)
		tmp1 = (int((int(n1) >> int((int)16))) & int((int)255));
		HX_STACK_LINE(789)
		tmp2 = (int((int(n2) >> int((int)16))) & int((int)255));
		HX_STACK_LINE(791)
		if (((tmp1 != tmp2))){
			HX_STACK_LINE(793)
			if (((tmp1 > tmp2))){
				HX_STACK_LINE(793)
				return (int)1;
			}
			else{
				HX_STACK_LINE(793)
				return (int)-1;
			}
		}
		else{
			HX_STACK_LINE(797)
			tmp1 = (int((int(n1) >> int((int)8))) & int((int)255));
			HX_STACK_LINE(798)
			tmp2 = (int((int(n2) >> int((int)8))) & int((int)255));
			HX_STACK_LINE(800)
			if (((tmp1 != tmp2))){
				HX_STACK_LINE(802)
				if (((tmp1 > tmp2))){
					HX_STACK_LINE(802)
					return (int)1;
				}
				else{
					HX_STACK_LINE(802)
					return (int)-1;
				}
			}
			else{
				HX_STACK_LINE(806)
				tmp1 = (int(n1) & int((int)255));
				HX_STACK_LINE(807)
				tmp2 = (int(n2) & int((int)255));
				HX_STACK_LINE(809)
				if (((tmp1 != tmp2))){
					HX_STACK_LINE(811)
					if (((tmp1 > tmp2))){
						HX_STACK_LINE(811)
						return (int)1;
					}
					else{
						HX_STACK_LINE(811)
						return (int)-1;
					}
				}
				else{
					HX_STACK_LINE(815)
					return (int)0;
				}
			}
		}
	}
	HX_STACK_LINE(782)
	return (int)0;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(BitmapData_obj,__ucompare,return )

Dynamic BitmapData_obj::lime_bitmap_data_create;

Dynamic BitmapData_obj::lime_bitmap_data_load;

Dynamic BitmapData_obj::lime_bitmap_data_from_bytes;

Dynamic BitmapData_obj::lime_bitmap_data_clear;

Dynamic BitmapData_obj::lime_bitmap_data_clone;

Dynamic BitmapData_obj::lime_bitmap_data_apply_filter;

Dynamic BitmapData_obj::lime_bitmap_data_color_transform;

Dynamic BitmapData_obj::lime_bitmap_data_copy;

Dynamic BitmapData_obj::lime_bitmap_data_copy_channel;

Dynamic BitmapData_obj::lime_bitmap_data_fill;

Dynamic BitmapData_obj::lime_bitmap_data_get_pixels;

Dynamic BitmapData_obj::lime_bitmap_data_get_pixel;

Dynamic BitmapData_obj::lime_bitmap_data_get_pixel32;

Dynamic BitmapData_obj::lime_bitmap_data_get_pixel_rgba;

Dynamic BitmapData_obj::lime_bitmap_data_get_array;

Dynamic BitmapData_obj::lime_bitmap_data_get_color_bounds_rect;

Dynamic BitmapData_obj::lime_bitmap_data_scroll;

Dynamic BitmapData_obj::lime_bitmap_data_set_pixel;

Dynamic BitmapData_obj::lime_bitmap_data_set_pixel32;

Dynamic BitmapData_obj::lime_bitmap_data_set_pixel_rgba;

Dynamic BitmapData_obj::lime_bitmap_data_set_bytes;

Dynamic BitmapData_obj::lime_bitmap_data_set_format;

Dynamic BitmapData_obj::lime_bitmap_data_set_array;

Dynamic BitmapData_obj::lime_bitmap_data_create_hardware_surface;

Dynamic BitmapData_obj::lime_bitmap_data_destroy_hardware_surface;

Dynamic BitmapData_obj::lime_bitmap_data_dispose;

Dynamic BitmapData_obj::lime_bitmap_data_generate_filter_rect;

Dynamic BitmapData_obj::lime_render_surface_to_surface;

Dynamic BitmapData_obj::lime_bitmap_data_height;

Dynamic BitmapData_obj::lime_bitmap_data_width;

Dynamic BitmapData_obj::lime_bitmap_data_get_transparent;

Dynamic BitmapData_obj::lime_bitmap_data_set_flags;

Dynamic BitmapData_obj::lime_bitmap_data_encode;

Dynamic BitmapData_obj::lime_bitmap_data_dump_bits;

Dynamic BitmapData_obj::lime_bitmap_data_flood_fill;

Dynamic BitmapData_obj::lime_bitmap_data_noise;

Dynamic BitmapData_obj::lime_bitmap_data_unmultiply_alpha;

Dynamic BitmapData_obj::lime_bitmap_data_multiply_alpha;

Dynamic BitmapData_obj::lime_bitmap_data_get_prem_alpha;

Dynamic BitmapData_obj::lime_bitmap_data_set_prem_alpha;


BitmapData_obj::BitmapData_obj()
{
}

void BitmapData_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(BitmapData);
	HX_MARK_MEMBER_NAME(height,"height");
	HX_MARK_MEMBER_NAME(rect,"rect");
	HX_MARK_MEMBER_NAME(transparent,"transparent");
	HX_MARK_MEMBER_NAME(width,"width");
	HX_MARK_MEMBER_NAME(__handle,"__handle");
	HX_MARK_MEMBER_NAME(__transparent,"__transparent");
	HX_MARK_END_CLASS();
}

void BitmapData_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(height,"height");
	HX_VISIT_MEMBER_NAME(rect,"rect");
	HX_VISIT_MEMBER_NAME(transparent,"transparent");
	HX_VISIT_MEMBER_NAME(width,"width");
	HX_VISIT_MEMBER_NAME(__handle,"__handle");
	HX_VISIT_MEMBER_NAME(__transparent,"__transparent");
}

Dynamic BitmapData_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"load") ) { return load_dyn(); }
		if (HX_FIELD_EQ(inName,"rect") ) { return inCallProp ? get_rect() : rect; }
		if (HX_FIELD_EQ(inName,"draw") ) { return draw_dyn(); }
		if (HX_FIELD_EQ(inName,"lock") ) { return lock_dyn(); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"width") ) { return inCallProp ? get_width() : width; }
		if (HX_FIELD_EQ(inName,"clear") ) { return clear_dyn(); }
		if (HX_FIELD_EQ(inName,"clone") ) { return clone_dyn(); }
		if (HX_FIELD_EQ(inName,"merge") ) { return merge_dyn(); }
		if (HX_FIELD_EQ(inName,"noise") ) { return noise_dyn(); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"height") ) { return inCallProp ? get_height() : height; }
		if (HX_FIELD_EQ(inName,"encode") ) { return encode_dyn(); }
		if (HX_FIELD_EQ(inName,"scroll") ) { return scroll_dyn(); }
		if (HX_FIELD_EQ(inName,"unlock") ) { return unlock_dyn(); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"dispose") ) { return dispose_dyn(); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"__handle") ) { return __handle; }
		if (HX_FIELD_EQ(inName,"dumpBits") ) { return dumpBits_dyn(); }
		if (HX_FIELD_EQ(inName,"fillRect") ) { return fillRect_dyn(); }
		if (HX_FIELD_EQ(inName,"getPixel") ) { return getPixel_dyn(); }
		if (HX_FIELD_EQ(inName,"setFlags") ) { return setFlags_dyn(); }
		if (HX_FIELD_EQ(inName,"setPixel") ) { return setPixel_dyn(); }
		if (HX_FIELD_EQ(inName,"get_rect") ) { return get_rect_dyn(); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"sameValue") ) { return sameValue_dyn(); }
		if (HX_FIELD_EQ(inName,"floodFill") ) { return floodFill_dyn(); }
		if (HX_FIELD_EQ(inName,"getPixels") ) { return getPixels_dyn(); }
		if (HX_FIELD_EQ(inName,"getVector") ) { return getVector_dyn(); }
		if (HX_FIELD_EQ(inName,"setFormat") ) { return setFormat_dyn(); }
		if (HX_FIELD_EQ(inName,"setPixels") ) { return setPixels_dyn(); }
		if (HX_FIELD_EQ(inName,"setVector") ) { return setVector_dyn(); }
		if (HX_FIELD_EQ(inName,"threshold") ) { return threshold_dyn(); }
		if (HX_FIELD_EQ(inName,"get_width") ) { return get_width_dyn(); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"__ucompare") ) { return __ucompare_dyn(); }
		if (HX_FIELD_EQ(inName,"copyPixels") ) { return copyPixels_dyn(); }
		if (HX_FIELD_EQ(inName,"fillRectEx") ) { return fillRectEx_dyn(); }
		if (HX_FIELD_EQ(inName,"getPixel32") ) { return getPixel32_dyn(); }
		if (HX_FIELD_EQ(inName,"paletteMap") ) { return paletteMap_dyn(); }
		if (HX_FIELD_EQ(inName,"setPixel32") ) { return setPixel32_dyn(); }
		if (HX_FIELD_EQ(inName,"get_height") ) { return get_height_dyn(); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"createColor") ) { return createColor_dyn(); }
		if (HX_FIELD_EQ(inName,"__flipPixel") ) { return __flipPixel_dyn(); }
		if (HX_FIELD_EQ(inName,"transparent") ) { return inCallProp ? get_transparent() : transparent; }
		if (HX_FIELD_EQ(inName,"applyFilter") ) { return applyFilter_dyn(); }
		if (HX_FIELD_EQ(inName,"copyChannel") ) { return copyChannel_dyn(); }
		if (HX_FIELD_EQ(inName,"perlinNoise") ) { return perlinNoise_dyn(); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"extractAlpha") ) { return extractAlpha_dyn(); }
		if (HX_FIELD_EQ(inName,"extractColor") ) { return extractColor_dyn(); }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"getRGBAPixels") ) { return getRGBAPixels_dyn(); }
		if (HX_FIELD_EQ(inName,"loadFromBytes") ) { return loadFromBytes_dyn(); }
		if (HX_FIELD_EQ(inName,"__transparent") ) { return __transparent; }
		if (HX_FIELD_EQ(inName,"multiplyAlpha") ) { return multiplyAlpha_dyn(); }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"colorTransform") ) { return colorTransform_dyn(); }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"unmultiplyAlpha") ) { return unmultiplyAlpha_dyn(); }
		if (HX_FIELD_EQ(inName,"__drawToSurface") ) { return __drawToSurface_dyn(); }
		if (HX_FIELD_EQ(inName,"__loadFromBytes") ) { return __loadFromBytes_dyn(); }
		if (HX_FIELD_EQ(inName,"get_transparent") ) { return get_transparent_dyn(); }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"loadFromHaxeBytes") ) { return loadFromHaxeBytes_dyn(); }
		break;
	case 18:
		if (HX_FIELD_EQ(inName,"premultipliedAlpha") ) { return get_premultipliedAlpha(); }
		if (HX_FIELD_EQ(inName,"generateFilterRect") ) { return generateFilterRect_dyn(); }
		if (HX_FIELD_EQ(inName,"getColorBoundsRect") ) { return getColorBoundsRect_dyn(); }
		break;
	case 21:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_load") ) { return lime_bitmap_data_load; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_copy") ) { return lime_bitmap_data_copy; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_fill") ) { return lime_bitmap_data_fill; }
		if (HX_FIELD_EQ(inName,"createHardwareSurface") ) { return createHardwareSurface_dyn(); }
		break;
	case 22:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_clear") ) { return lime_bitmap_data_clear; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_clone") ) { return lime_bitmap_data_clone; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_width") ) { return lime_bitmap_data_width; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_noise") ) { return lime_bitmap_data_noise; }
		if (HX_FIELD_EQ(inName,"destroyHardwareSurface") ) { return destroyHardwareSurface_dyn(); }
		if (HX_FIELD_EQ(inName,"get_premultipliedAlpha") ) { return get_premultipliedAlpha_dyn(); }
		if (HX_FIELD_EQ(inName,"set_premultipliedAlpha") ) { return set_premultipliedAlpha_dyn(); }
		break;
	case 23:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_create") ) { return lime_bitmap_data_create; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_scroll") ) { return lime_bitmap_data_scroll; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_height") ) { return lime_bitmap_data_height; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_encode") ) { return lime_bitmap_data_encode; }
		break;
	case 24:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_dispose") ) { return lime_bitmap_data_dispose; }
		break;
	case 26:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_pixel") ) { return lime_bitmap_data_get_pixel; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_array") ) { return lime_bitmap_data_get_array; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_pixel") ) { return lime_bitmap_data_set_pixel; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_bytes") ) { return lime_bitmap_data_set_bytes; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_array") ) { return lime_bitmap_data_set_array; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_flags") ) { return lime_bitmap_data_set_flags; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_dump_bits") ) { return lime_bitmap_data_dump_bits; }
		break;
	case 27:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_from_bytes") ) { return lime_bitmap_data_from_bytes; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_pixels") ) { return lime_bitmap_data_get_pixels; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_format") ) { return lime_bitmap_data_set_format; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_flood_fill") ) { return lime_bitmap_data_flood_fill; }
		break;
	case 28:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_pixel32") ) { return lime_bitmap_data_get_pixel32; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_pixel32") ) { return lime_bitmap_data_set_pixel32; }
		break;
	case 29:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_apply_filter") ) { return lime_bitmap_data_apply_filter; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_copy_channel") ) { return lime_bitmap_data_copy_channel; }
		break;
	case 30:
		if (HX_FIELD_EQ(inName,"lime_render_surface_to_surface") ) { return lime_render_surface_to_surface; }
		break;
	case 31:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_pixel_rgba") ) { return lime_bitmap_data_get_pixel_rgba; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_pixel_rgba") ) { return lime_bitmap_data_set_pixel_rgba; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_multiply_alpha") ) { return lime_bitmap_data_multiply_alpha; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_prem_alpha") ) { return lime_bitmap_data_get_prem_alpha; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_prem_alpha") ) { return lime_bitmap_data_set_prem_alpha; }
		break;
	case 32:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_color_transform") ) { return lime_bitmap_data_color_transform; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_transparent") ) { return lime_bitmap_data_get_transparent; }
		break;
	case 33:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_unmultiply_alpha") ) { return lime_bitmap_data_unmultiply_alpha; }
		break;
	case 37:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_generate_filter_rect") ) { return lime_bitmap_data_generate_filter_rect; }
		break;
	case 38:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_color_bounds_rect") ) { return lime_bitmap_data_get_color_bounds_rect; }
		break;
	case 40:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_create_hardware_surface") ) { return lime_bitmap_data_create_hardware_surface; }
		break;
	case 41:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_destroy_hardware_surface") ) { return lime_bitmap_data_destroy_hardware_surface; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic BitmapData_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"rect") ) { rect=inValue.Cast< ::openfl::_legacy::geom::Rectangle >(); return inValue; }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"width") ) { width=inValue.Cast< int >(); return inValue; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"height") ) { height=inValue.Cast< int >(); return inValue; }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"__handle") ) { __handle=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"transparent") ) { transparent=inValue.Cast< bool >(); return inValue; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"__transparent") ) { __transparent=inValue.Cast< bool >(); return inValue; }
		break;
	case 18:
		if (HX_FIELD_EQ(inName,"premultipliedAlpha") ) { return set_premultipliedAlpha(inValue); }
		break;
	case 21:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_load") ) { lime_bitmap_data_load=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_copy") ) { lime_bitmap_data_copy=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_fill") ) { lime_bitmap_data_fill=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 22:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_clear") ) { lime_bitmap_data_clear=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_clone") ) { lime_bitmap_data_clone=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_width") ) { lime_bitmap_data_width=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_noise") ) { lime_bitmap_data_noise=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 23:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_create") ) { lime_bitmap_data_create=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_scroll") ) { lime_bitmap_data_scroll=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_height") ) { lime_bitmap_data_height=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_encode") ) { lime_bitmap_data_encode=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 24:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_dispose") ) { lime_bitmap_data_dispose=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 26:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_pixel") ) { lime_bitmap_data_get_pixel=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_array") ) { lime_bitmap_data_get_array=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_pixel") ) { lime_bitmap_data_set_pixel=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_bytes") ) { lime_bitmap_data_set_bytes=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_array") ) { lime_bitmap_data_set_array=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_flags") ) { lime_bitmap_data_set_flags=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_dump_bits") ) { lime_bitmap_data_dump_bits=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 27:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_from_bytes") ) { lime_bitmap_data_from_bytes=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_pixels") ) { lime_bitmap_data_get_pixels=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_format") ) { lime_bitmap_data_set_format=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_flood_fill") ) { lime_bitmap_data_flood_fill=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 28:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_pixel32") ) { lime_bitmap_data_get_pixel32=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_pixel32") ) { lime_bitmap_data_set_pixel32=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 29:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_apply_filter") ) { lime_bitmap_data_apply_filter=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_copy_channel") ) { lime_bitmap_data_copy_channel=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 30:
		if (HX_FIELD_EQ(inName,"lime_render_surface_to_surface") ) { lime_render_surface_to_surface=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 31:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_pixel_rgba") ) { lime_bitmap_data_get_pixel_rgba=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_pixel_rgba") ) { lime_bitmap_data_set_pixel_rgba=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_multiply_alpha") ) { lime_bitmap_data_multiply_alpha=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_prem_alpha") ) { lime_bitmap_data_get_prem_alpha=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_set_prem_alpha") ) { lime_bitmap_data_set_prem_alpha=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 32:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_color_transform") ) { lime_bitmap_data_color_transform=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_transparent") ) { lime_bitmap_data_get_transparent=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 33:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_unmultiply_alpha") ) { lime_bitmap_data_unmultiply_alpha=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 37:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_generate_filter_rect") ) { lime_bitmap_data_generate_filter_rect=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 38:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_get_color_bounds_rect") ) { lime_bitmap_data_get_color_bounds_rect=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 40:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_create_hardware_surface") ) { lime_bitmap_data_create_hardware_surface=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 41:
		if (HX_FIELD_EQ(inName,"lime_bitmap_data_destroy_hardware_surface") ) { lime_bitmap_data_destroy_hardware_surface=inValue.Cast< Dynamic >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void BitmapData_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("height"));
	outFields->push(HX_CSTRING("premultipliedAlpha"));
	outFields->push(HX_CSTRING("rect"));
	outFields->push(HX_CSTRING("transparent"));
	outFields->push(HX_CSTRING("width"));
	outFields->push(HX_CSTRING("__handle"));
	outFields->push(HX_CSTRING("__transparent"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("CLEAR"),
	HX_CSTRING("BLACK"),
	HX_CSTRING("WHITE"),
	HX_CSTRING("RED"),
	HX_CSTRING("GREEN"),
	HX_CSTRING("BLUE"),
	HX_CSTRING("PNG"),
	HX_CSTRING("JPG"),
	HX_CSTRING("TRANSPARENT"),
	HX_CSTRING("HARDWARE"),
	HX_CSTRING("FORMAT_8888"),
	HX_CSTRING("FORMAT_4444"),
	HX_CSTRING("FORMAT_565"),
	HX_CSTRING("createColor"),
	HX_CSTRING("extractAlpha"),
	HX_CSTRING("extractColor"),
	HX_CSTRING("getRGBAPixels"),
	HX_CSTRING("load"),
	HX_CSTRING("loadFromBytes"),
	HX_CSTRING("loadFromHaxeBytes"),
	HX_CSTRING("sameValue"),
	HX_CSTRING("__flipPixel"),
	HX_CSTRING("__ucompare"),
	HX_CSTRING("lime_bitmap_data_create"),
	HX_CSTRING("lime_bitmap_data_load"),
	HX_CSTRING("lime_bitmap_data_from_bytes"),
	HX_CSTRING("lime_bitmap_data_clear"),
	HX_CSTRING("lime_bitmap_data_clone"),
	HX_CSTRING("lime_bitmap_data_apply_filter"),
	HX_CSTRING("lime_bitmap_data_color_transform"),
	HX_CSTRING("lime_bitmap_data_copy"),
	HX_CSTRING("lime_bitmap_data_copy_channel"),
	HX_CSTRING("lime_bitmap_data_fill"),
	HX_CSTRING("lime_bitmap_data_get_pixels"),
	HX_CSTRING("lime_bitmap_data_get_pixel"),
	HX_CSTRING("lime_bitmap_data_get_pixel32"),
	HX_CSTRING("lime_bitmap_data_get_pixel_rgba"),
	HX_CSTRING("lime_bitmap_data_get_array"),
	HX_CSTRING("lime_bitmap_data_get_color_bounds_rect"),
	HX_CSTRING("lime_bitmap_data_scroll"),
	HX_CSTRING("lime_bitmap_data_set_pixel"),
	HX_CSTRING("lime_bitmap_data_set_pixel32"),
	HX_CSTRING("lime_bitmap_data_set_pixel_rgba"),
	HX_CSTRING("lime_bitmap_data_set_bytes"),
	HX_CSTRING("lime_bitmap_data_set_format"),
	HX_CSTRING("lime_bitmap_data_set_array"),
	HX_CSTRING("lime_bitmap_data_create_hardware_surface"),
	HX_CSTRING("lime_bitmap_data_destroy_hardware_surface"),
	HX_CSTRING("lime_bitmap_data_dispose"),
	HX_CSTRING("lime_bitmap_data_generate_filter_rect"),
	HX_CSTRING("lime_render_surface_to_surface"),
	HX_CSTRING("lime_bitmap_data_height"),
	HX_CSTRING("lime_bitmap_data_width"),
	HX_CSTRING("lime_bitmap_data_get_transparent"),
	HX_CSTRING("lime_bitmap_data_set_flags"),
	HX_CSTRING("lime_bitmap_data_encode"),
	HX_CSTRING("lime_bitmap_data_dump_bits"),
	HX_CSTRING("lime_bitmap_data_flood_fill"),
	HX_CSTRING("lime_bitmap_data_noise"),
	HX_CSTRING("lime_bitmap_data_unmultiply_alpha"),
	HX_CSTRING("lime_bitmap_data_multiply_alpha"),
	HX_CSTRING("lime_bitmap_data_get_prem_alpha"),
	HX_CSTRING("lime_bitmap_data_set_prem_alpha"),
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsInt,(int)offsetof(BitmapData_obj,height),HX_CSTRING("height")},
	{hx::fsObject /*::openfl::_legacy::geom::Rectangle*/ ,(int)offsetof(BitmapData_obj,rect),HX_CSTRING("rect")},
	{hx::fsBool,(int)offsetof(BitmapData_obj,transparent),HX_CSTRING("transparent")},
	{hx::fsInt,(int)offsetof(BitmapData_obj,width),HX_CSTRING("width")},
	{hx::fsObject /*Dynamic*/ ,(int)offsetof(BitmapData_obj,__handle),HX_CSTRING("__handle")},
	{hx::fsBool,(int)offsetof(BitmapData_obj,__transparent),HX_CSTRING("__transparent")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("height"),
	HX_CSTRING("rect"),
	HX_CSTRING("transparent"),
	HX_CSTRING("width"),
	HX_CSTRING("__handle"),
	HX_CSTRING("__transparent"),
	HX_CSTRING("applyFilter"),
	HX_CSTRING("clear"),
	HX_CSTRING("clone"),
	HX_CSTRING("colorTransform"),
	HX_CSTRING("copyChannel"),
	HX_CSTRING("copyPixels"),
	HX_CSTRING("createHardwareSurface"),
	HX_CSTRING("destroyHardwareSurface"),
	HX_CSTRING("dispose"),
	HX_CSTRING("draw"),
	HX_CSTRING("dumpBits"),
	HX_CSTRING("encode"),
	HX_CSTRING("fillRect"),
	HX_CSTRING("fillRectEx"),
	HX_CSTRING("floodFill"),
	HX_CSTRING("generateFilterRect"),
	HX_CSTRING("getColorBoundsRect"),
	HX_CSTRING("getPixel"),
	HX_CSTRING("getPixel32"),
	HX_CSTRING("getPixels"),
	HX_CSTRING("getVector"),
	HX_CSTRING("lock"),
	HX_CSTRING("merge"),
	HX_CSTRING("multiplyAlpha"),
	HX_CSTRING("noise"),
	HX_CSTRING("paletteMap"),
	HX_CSTRING("perlinNoise"),
	HX_CSTRING("scroll"),
	HX_CSTRING("setFlags"),
	HX_CSTRING("setFormat"),
	HX_CSTRING("setPixel"),
	HX_CSTRING("setPixel32"),
	HX_CSTRING("setPixels"),
	HX_CSTRING("setVector"),
	HX_CSTRING("threshold"),
	HX_CSTRING("unlock"),
	HX_CSTRING("unmultiplyAlpha"),
	HX_CSTRING("__drawToSurface"),
	HX_CSTRING("__loadFromBytes"),
	HX_CSTRING("get_premultipliedAlpha"),
	HX_CSTRING("set_premultipliedAlpha"),
	HX_CSTRING("get_rect"),
	HX_CSTRING("get_width"),
	HX_CSTRING("get_height"),
	HX_CSTRING("get_transparent"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(BitmapData_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(BitmapData_obj::CLEAR,"CLEAR");
	HX_MARK_MEMBER_NAME(BitmapData_obj::BLACK,"BLACK");
	HX_MARK_MEMBER_NAME(BitmapData_obj::WHITE,"WHITE");
	HX_MARK_MEMBER_NAME(BitmapData_obj::RED,"RED");
	HX_MARK_MEMBER_NAME(BitmapData_obj::GREEN,"GREEN");
	HX_MARK_MEMBER_NAME(BitmapData_obj::BLUE,"BLUE");
	HX_MARK_MEMBER_NAME(BitmapData_obj::PNG,"PNG");
	HX_MARK_MEMBER_NAME(BitmapData_obj::JPG,"JPG");
	HX_MARK_MEMBER_NAME(BitmapData_obj::TRANSPARENT,"TRANSPARENT");
	HX_MARK_MEMBER_NAME(BitmapData_obj::HARDWARE,"HARDWARE");
	HX_MARK_MEMBER_NAME(BitmapData_obj::FORMAT_8888,"FORMAT_8888");
	HX_MARK_MEMBER_NAME(BitmapData_obj::FORMAT_4444,"FORMAT_4444");
	HX_MARK_MEMBER_NAME(BitmapData_obj::FORMAT_565,"FORMAT_565");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_create,"lime_bitmap_data_create");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_load,"lime_bitmap_data_load");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_from_bytes,"lime_bitmap_data_from_bytes");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_clear,"lime_bitmap_data_clear");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_clone,"lime_bitmap_data_clone");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_apply_filter,"lime_bitmap_data_apply_filter");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_color_transform,"lime_bitmap_data_color_transform");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_copy,"lime_bitmap_data_copy");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_copy_channel,"lime_bitmap_data_copy_channel");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_fill,"lime_bitmap_data_fill");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_pixels,"lime_bitmap_data_get_pixels");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_pixel,"lime_bitmap_data_get_pixel");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_pixel32,"lime_bitmap_data_get_pixel32");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_pixel_rgba,"lime_bitmap_data_get_pixel_rgba");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_array,"lime_bitmap_data_get_array");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_color_bounds_rect,"lime_bitmap_data_get_color_bounds_rect");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_scroll,"lime_bitmap_data_scroll");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_pixel,"lime_bitmap_data_set_pixel");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_pixel32,"lime_bitmap_data_set_pixel32");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_pixel_rgba,"lime_bitmap_data_set_pixel_rgba");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_bytes,"lime_bitmap_data_set_bytes");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_format,"lime_bitmap_data_set_format");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_array,"lime_bitmap_data_set_array");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_create_hardware_surface,"lime_bitmap_data_create_hardware_surface");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_destroy_hardware_surface,"lime_bitmap_data_destroy_hardware_surface");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_dispose,"lime_bitmap_data_dispose");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_generate_filter_rect,"lime_bitmap_data_generate_filter_rect");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_render_surface_to_surface,"lime_render_surface_to_surface");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_height,"lime_bitmap_data_height");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_width,"lime_bitmap_data_width");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_transparent,"lime_bitmap_data_get_transparent");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_flags,"lime_bitmap_data_set_flags");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_encode,"lime_bitmap_data_encode");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_dump_bits,"lime_bitmap_data_dump_bits");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_flood_fill,"lime_bitmap_data_flood_fill");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_noise,"lime_bitmap_data_noise");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_unmultiply_alpha,"lime_bitmap_data_unmultiply_alpha");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_multiply_alpha,"lime_bitmap_data_multiply_alpha");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_prem_alpha,"lime_bitmap_data_get_prem_alpha");
	HX_MARK_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_prem_alpha,"lime_bitmap_data_set_prem_alpha");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(BitmapData_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::CLEAR,"CLEAR");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::BLACK,"BLACK");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::WHITE,"WHITE");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::RED,"RED");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::GREEN,"GREEN");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::BLUE,"BLUE");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::PNG,"PNG");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::JPG,"JPG");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::TRANSPARENT,"TRANSPARENT");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::HARDWARE,"HARDWARE");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::FORMAT_8888,"FORMAT_8888");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::FORMAT_4444,"FORMAT_4444");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::FORMAT_565,"FORMAT_565");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_create,"lime_bitmap_data_create");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_load,"lime_bitmap_data_load");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_from_bytes,"lime_bitmap_data_from_bytes");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_clear,"lime_bitmap_data_clear");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_clone,"lime_bitmap_data_clone");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_apply_filter,"lime_bitmap_data_apply_filter");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_color_transform,"lime_bitmap_data_color_transform");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_copy,"lime_bitmap_data_copy");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_copy_channel,"lime_bitmap_data_copy_channel");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_fill,"lime_bitmap_data_fill");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_pixels,"lime_bitmap_data_get_pixels");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_pixel,"lime_bitmap_data_get_pixel");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_pixel32,"lime_bitmap_data_get_pixel32");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_pixel_rgba,"lime_bitmap_data_get_pixel_rgba");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_array,"lime_bitmap_data_get_array");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_color_bounds_rect,"lime_bitmap_data_get_color_bounds_rect");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_scroll,"lime_bitmap_data_scroll");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_pixel,"lime_bitmap_data_set_pixel");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_pixel32,"lime_bitmap_data_set_pixel32");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_pixel_rgba,"lime_bitmap_data_set_pixel_rgba");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_bytes,"lime_bitmap_data_set_bytes");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_format,"lime_bitmap_data_set_format");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_array,"lime_bitmap_data_set_array");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_create_hardware_surface,"lime_bitmap_data_create_hardware_surface");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_destroy_hardware_surface,"lime_bitmap_data_destroy_hardware_surface");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_dispose,"lime_bitmap_data_dispose");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_generate_filter_rect,"lime_bitmap_data_generate_filter_rect");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_render_surface_to_surface,"lime_render_surface_to_surface");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_height,"lime_bitmap_data_height");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_width,"lime_bitmap_data_width");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_transparent,"lime_bitmap_data_get_transparent");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_flags,"lime_bitmap_data_set_flags");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_encode,"lime_bitmap_data_encode");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_dump_bits,"lime_bitmap_data_dump_bits");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_flood_fill,"lime_bitmap_data_flood_fill");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_noise,"lime_bitmap_data_noise");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_unmultiply_alpha,"lime_bitmap_data_unmultiply_alpha");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_multiply_alpha,"lime_bitmap_data_multiply_alpha");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_get_prem_alpha,"lime_bitmap_data_get_prem_alpha");
	HX_VISIT_MEMBER_NAME(BitmapData_obj::lime_bitmap_data_set_prem_alpha,"lime_bitmap_data_set_prem_alpha");
};

#endif

Class BitmapData_obj::__mClass;

void BitmapData_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("openfl._legacy.display.BitmapData"), hx::TCanCast< BitmapData_obj> ,sStaticFields,sMemberFields,
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

void BitmapData_obj::__boot()
{
	CLEAR= (int)0;
	BLACK= (int)-16777216;
	WHITE= (int)-16777216;
	RED= (int)-65536;
	GREEN= (int)-16711936;
	BLUE= (int)-16776961;
	PNG= HX_CSTRING("png");
	JPG= HX_CSTRING("jpg");
	TRANSPARENT= (int)1;
	HARDWARE= (int)2;
	FORMAT_8888= (int)0;
	FORMAT_4444= (int)1;
	FORMAT_565= (int)2;
	lime_bitmap_data_create= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_create"),(int)-1);
	lime_bitmap_data_load= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_load"),(int)2);
	lime_bitmap_data_from_bytes= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_from_bytes"),(int)2);
	lime_bitmap_data_clear= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_clear"),(int)2);
	lime_bitmap_data_clone= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_clone"),(int)1);
	lime_bitmap_data_apply_filter= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_apply_filter"),(int)5);
	lime_bitmap_data_color_transform= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_color_transform"),(int)3);
	lime_bitmap_data_copy= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_copy"),(int)5);
	lime_bitmap_data_copy_channel= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_copy_channel"),(int)-1);
	lime_bitmap_data_fill= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_fill"),(int)4);
	lime_bitmap_data_get_pixels= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_get_pixels"),(int)2);
	lime_bitmap_data_get_pixel= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_get_pixel"),(int)3);
	lime_bitmap_data_get_pixel32= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_get_pixel32"),(int)3);
	lime_bitmap_data_get_pixel_rgba= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_get_pixel_rgba"),(int)3);
	lime_bitmap_data_get_array= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_get_array"),(int)3);
	lime_bitmap_data_get_color_bounds_rect= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_get_color_bounds_rect"),(int)5);
	lime_bitmap_data_scroll= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_scroll"),(int)3);
	lime_bitmap_data_set_pixel= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_set_pixel"),(int)4);
	lime_bitmap_data_set_pixel32= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_set_pixel32"),(int)4);
	lime_bitmap_data_set_pixel_rgba= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_set_pixel_rgba"),(int)4);
	lime_bitmap_data_set_bytes= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_set_bytes"),(int)4);
	lime_bitmap_data_set_format= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_set_format"),(int)2);
	lime_bitmap_data_set_array= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_set_array"),(int)3);
	lime_bitmap_data_create_hardware_surface= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_create_hardware_surface"),(int)1);
	lime_bitmap_data_destroy_hardware_surface= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_destroy_hardware_surface"),(int)1);
	lime_bitmap_data_dispose= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_dispose"),(int)1);
	lime_bitmap_data_generate_filter_rect= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_generate_filter_rect"),(int)3);
	lime_render_surface_to_surface= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_render_surface_to_surface"),(int)-1);
	lime_bitmap_data_height= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_height"),(int)1);
	lime_bitmap_data_width= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_width"),(int)1);
	lime_bitmap_data_get_transparent= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_get_transparent"),(int)1);
	lime_bitmap_data_set_flags= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_set_flags"),(int)2);
	lime_bitmap_data_encode= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_encode"),(int)3);
	lime_bitmap_data_dump_bits= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_dump_bits"),(int)1);
	lime_bitmap_data_flood_fill= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_flood_fill"),(int)4);
	lime_bitmap_data_noise= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_noise"),(int)-1);
	lime_bitmap_data_unmultiply_alpha= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_unmultiply_alpha"),(int)1);
	lime_bitmap_data_multiply_alpha= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_multiply_alpha"),(int)1);
	lime_bitmap_data_get_prem_alpha= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_get_prem_alpha"),(int)1);
	lime_bitmap_data_set_prem_alpha= ::openfl::_legacy::Lib_obj::load(HX_CSTRING("lime-legacy"),HX_CSTRING("lime_legacy_bitmap_data_set_prem_alpha"),(int)2);
}

} // end namespace openfl
} // end namespace _legacy
} // end namespace display
