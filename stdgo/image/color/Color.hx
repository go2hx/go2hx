package stdgo.image.color;
/**
    // Package color implements a basic color library.
**/
private var __go2hxdoc__package : Bool;
var rgbamodel(get, set) : stdgo._internal.image.color.Color.Model;
function get_rgbamodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgbamodel;
function set_rgbamodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgbamodel = v;
var rgba64model(get, set) : stdgo._internal.image.color.Color.Model;
function get_rgba64model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgba64model;
function set_rgba64model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgba64model = v;
var nrgbamodel(get, set) : stdgo._internal.image.color.Color.Model;
function get_nrgbamodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgbamodel;
function set_nrgbamodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgbamodel = v;
var nrgba64model(get, set) : stdgo._internal.image.color.Color.Model;
function get_nrgba64model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgba64model;
function set_nrgba64model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgba64model = v;
var alphaModel(get, set) : stdgo._internal.image.color.Color.Model;
function get_alphaModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alphaModel;
function set_alphaModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alphaModel = v;
var alpha16Model(get, set) : stdgo._internal.image.color.Color.Model;
function get_alpha16Model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alpha16Model;
function set_alpha16Model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alpha16Model = v;
var grayModel(get, set) : stdgo._internal.image.color.Color.Model;
function get_grayModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.grayModel;
function set_grayModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.grayModel = v;
var gray16Model(get, set) : stdgo._internal.image.color.Color.Model;
function get_gray16Model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.gray16Model;
function set_gray16Model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.gray16Model = v;
var black(get, set) : stdgo._internal.image.color.Color.Gray16;
function get_black():stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.black;
function set_black(v:stdgo._internal.image.color.Color.Gray16):stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.black = v;
var white(get, set) : stdgo._internal.image.color.Color.Gray16;
function get_white():stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.white;
function set_white(v:stdgo._internal.image.color.Color.Gray16):stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.white = v;
var transparent(get, set) : stdgo._internal.image.color.Color.Alpha16;
function get_transparent():stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.transparent;
function set_transparent(v:stdgo._internal.image.color.Color.Alpha16):stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.transparent = v;
var opaque(get, set) : stdgo._internal.image.color.Color.Alpha16;
function get_opaque():stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.opaque;
function set_opaque(v:stdgo._internal.image.color.Color.Alpha16):stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.opaque = v;
var ycbCrModel(get, set) : stdgo._internal.image.color.Color.Model;
function get_ycbCrModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.ycbCrModel;
function set_ycbCrModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.ycbCrModel = v;
var nycbCrAModel(get, set) : stdgo._internal.image.color.Color.Model;
function get_nycbCrAModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nycbCrAModel;
function set_nycbCrAModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nycbCrAModel = v;
var cmykmodel(get, set) : stdgo._internal.image.color.Color.Model;
function get_cmykmodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.cmykmodel;
function set_cmykmodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.cmykmodel = v;
@:invalid typedef Color_static_extension = Dynamic;
typedef Color = stdgo._internal.image.color.Color.Color;
@:invalid typedef Model_static_extension = Dynamic;
typedef Model = stdgo._internal.image.color.Color.Model;
@:invalid typedef RGBA = Dynamic;
@:invalid typedef RGBA64 = Dynamic;
@:invalid typedef NRGBA = Dynamic;
@:invalid typedef NRGBA64 = Dynamic;
@:invalid typedef Alpha = Dynamic;
@:invalid typedef Alpha16 = Dynamic;
@:invalid typedef Gray = Dynamic;
@:invalid typedef Gray16 = Dynamic;
@:invalid typedef T_modelFunc = Dynamic;
@:invalid typedef YCbCr = Dynamic;
@:invalid typedef NYCbCrA = Dynamic;
@:invalid typedef CMYK = Dynamic;
typedef Palette = stdgo._internal.image.color.Color.Palette;
/**
    // ModelFunc returns a Model that invokes f to implement the conversion.
**/
inline function modelFunc(f:Color -> Color):Model throw "not implemented";
inline function testSqDiff(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
**/
inline function rgbtoYCbCr(r:UInt, g:UInt, b:UInt):stdgo.Tuple.Tuple3<UInt, UInt, UInt> throw "not implemented";
/**
    // YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
**/
inline function ycbCrToRGB(y:UInt, cb:UInt, cr:UInt):stdgo.Tuple.Tuple3<UInt, UInt, UInt> throw "not implemented";
/**
    // RGBToCMYK converts an RGB triple to a CMYK quadruple.
**/
inline function rgbtoCMYK(r:UInt, g:UInt, b:UInt):stdgo.Tuple.Tuple4<UInt, UInt, UInt, UInt> throw "not implemented";
/**
    // CMYKToRGB converts a CMYK quadruple to an RGB triple.
**/
inline function cmyktoRGB(c:UInt, m:UInt, y:UInt, k:UInt):stdgo.Tuple.Tuple3<UInt, UInt, UInt> throw "not implemented";
/**
    // TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
    // and back to within 2/256 tolerance.
**/
inline function testYCbCrRoundtrip(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestYCbCrToRGBConsistency tests that calling the RGBA method (16 bit color)
    // then truncating to 8 bits is equivalent to calling the YCbCrToRGB function (8
    // bit color).
**/
inline function testYCbCrToRGBConsistency(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.
**/
inline function testYCbCrGray(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.
**/
inline function testNYCbCrAAlpha(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.
**/
inline function testNYCbCrAYCbCr(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
    // and back to within 1/256 tolerance.
**/
inline function testCMYKRoundtrip(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestCMYKToRGBConsistency tests that calling the RGBA method (16 bit color)
    // then truncating to 8 bits is equivalent to calling the CMYKToRGB function (8
    // bit color).
**/
inline function testCMYKToRGBConsistency(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestCMYKGray tests that CMYK colors are a superset of Gray colors.
**/
inline function testCMYKGray(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testPalette(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkYCbCrToRGB(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkRGBToYCbCr(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkYCbCrToRGBA(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNYCbCrAToRGBA(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef RGBA_asInterface = Dynamic;
@:invalid typedef RGBA_static_extension = Dynamic;
@:invalid typedef RGBA64_asInterface = Dynamic;
@:invalid typedef RGBA64_static_extension = Dynamic;
@:invalid typedef NRGBA_asInterface = Dynamic;
@:invalid typedef NRGBA_static_extension = Dynamic;
@:invalid typedef NRGBA64_asInterface = Dynamic;
@:invalid typedef NRGBA64_static_extension = Dynamic;
@:invalid typedef Alpha_asInterface = Dynamic;
@:invalid typedef Alpha_static_extension = Dynamic;
@:invalid typedef Alpha16_asInterface = Dynamic;
@:invalid typedef Alpha16_static_extension = Dynamic;
@:invalid typedef Gray_asInterface = Dynamic;
@:invalid typedef Gray_static_extension = Dynamic;
@:invalid typedef Gray16_asInterface = Dynamic;
@:invalid typedef Gray16_static_extension = Dynamic;
@:invalid typedef T_modelFunc_asInterface = Dynamic;
@:invalid typedef T_modelFunc_static_extension = Dynamic;
@:invalid typedef YCbCr_asInterface = Dynamic;
@:invalid typedef YCbCr_static_extension = Dynamic;
@:invalid typedef NYCbCrA_asInterface = Dynamic;
@:invalid typedef NYCbCrA_static_extension = Dynamic;
@:invalid typedef CMYK_asInterface = Dynamic;
@:invalid typedef CMYK_static_extension = Dynamic;
@:invalid typedef Palette_asInterface = Dynamic;
@:invalid typedef Palette_static_extension = Dynamic;
