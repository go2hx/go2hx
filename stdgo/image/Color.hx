package stdgo.image;
/**
    Package color implements a basic color library.
**/
private var __go2hxdoc__package : Bool;
var rgbamodel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_rgbamodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgbamodel;
private function set_rgbamodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgbamodel = v;
var rgba64model(get, set) : stdgo._internal.image.color.Color.Model;
private function get_rgba64model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgba64model;
private function set_rgba64model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgba64model = v;
var nrgbamodel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_nrgbamodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgbamodel;
private function set_nrgbamodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgbamodel = v;
var nrgba64model(get, set) : stdgo._internal.image.color.Color.Model;
private function get_nrgba64model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgba64model;
private function set_nrgba64model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgba64model = v;
var alphaModel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_alphaModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alphaModel;
private function set_alphaModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alphaModel = v;
var alpha16Model(get, set) : stdgo._internal.image.color.Color.Model;
private function get_alpha16Model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alpha16Model;
private function set_alpha16Model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alpha16Model = v;
var grayModel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_grayModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.grayModel;
private function set_grayModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.grayModel = v;
var gray16Model(get, set) : stdgo._internal.image.color.Color.Model;
private function get_gray16Model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.gray16Model;
private function set_gray16Model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.gray16Model = v;
var black(get, set) : stdgo._internal.image.color.Color.Gray16;
private function get_black():stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.black;
private function set_black(v:stdgo._internal.image.color.Color.Gray16):stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.black = v;
var white(get, set) : stdgo._internal.image.color.Color.Gray16;
private function get_white():stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.white;
private function set_white(v:stdgo._internal.image.color.Color.Gray16):stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.white = v;
var transparent(get, set) : stdgo._internal.image.color.Color.Alpha16;
private function get_transparent():stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.transparent;
private function set_transparent(v:stdgo._internal.image.color.Color.Alpha16):stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.transparent = v;
var opaque(get, set) : stdgo._internal.image.color.Color.Alpha16;
private function get_opaque():stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.opaque;
private function set_opaque(v:stdgo._internal.image.color.Color.Alpha16):stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.opaque = v;
var ycbCrModel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_ycbCrModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.ycbCrModel;
private function set_ycbCrModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.ycbCrModel = v;
var nycbCrAModel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_nycbCrAModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nycbCrAModel;
private function set_nycbCrAModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nycbCrAModel = v;
var cmykmodel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_cmykmodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.cmykmodel;
private function set_cmykmodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.cmykmodel = v;
@:forward @:forward.new abstract Color_static_extension(stdgo._internal.image.color.Color.Color_static_extension) from stdgo._internal.image.color.Color.Color_static_extension to stdgo._internal.image.color.Color.Color_static_extension {

}
typedef Color = stdgo._internal.image.color.Color.Color;
@:forward @:forward.new abstract Model_static_extension(stdgo._internal.image.color.Color.Model_static_extension) from stdgo._internal.image.color.Color.Model_static_extension to stdgo._internal.image.color.Color.Model_static_extension {

}
typedef Model = stdgo._internal.image.color.Color.Model;
@:forward @:forward.new abstract RGBA(stdgo._internal.image.color.Color.RGBA) from stdgo._internal.image.color.Color.RGBA to stdgo._internal.image.color.Color.RGBA {

}
@:forward @:forward.new abstract RGBA64(stdgo._internal.image.color.Color.RGBA64) from stdgo._internal.image.color.Color.RGBA64 to stdgo._internal.image.color.Color.RGBA64 {

}
@:forward @:forward.new abstract NRGBA(stdgo._internal.image.color.Color.NRGBA) from stdgo._internal.image.color.Color.NRGBA to stdgo._internal.image.color.Color.NRGBA {

}
@:forward @:forward.new abstract NRGBA64(stdgo._internal.image.color.Color.NRGBA64) from stdgo._internal.image.color.Color.NRGBA64 to stdgo._internal.image.color.Color.NRGBA64 {

}
@:forward @:forward.new abstract Alpha(stdgo._internal.image.color.Color.Alpha) from stdgo._internal.image.color.Color.Alpha to stdgo._internal.image.color.Color.Alpha {

}
@:forward @:forward.new abstract Alpha16(stdgo._internal.image.color.Color.Alpha16) from stdgo._internal.image.color.Color.Alpha16 to stdgo._internal.image.color.Color.Alpha16 {

}
@:forward @:forward.new abstract Gray(stdgo._internal.image.color.Color.Gray) from stdgo._internal.image.color.Color.Gray to stdgo._internal.image.color.Color.Gray {

}
@:forward @:forward.new abstract Gray16(stdgo._internal.image.color.Color.Gray16) from stdgo._internal.image.color.Color.Gray16 to stdgo._internal.image.color.Color.Gray16 {

}
@:forward @:forward.new abstract T_modelFunc(stdgo._internal.image.color.Color.T_modelFunc) from stdgo._internal.image.color.Color.T_modelFunc to stdgo._internal.image.color.Color.T_modelFunc {

}
@:forward @:forward.new abstract YCbCr(stdgo._internal.image.color.Color.YCbCr) from stdgo._internal.image.color.Color.YCbCr to stdgo._internal.image.color.Color.YCbCr {

}
@:forward @:forward.new abstract NYCbCrA(stdgo._internal.image.color.Color.NYCbCrA) from stdgo._internal.image.color.Color.NYCbCrA to stdgo._internal.image.color.Color.NYCbCrA {

}
@:forward @:forward.new abstract CMYK(stdgo._internal.image.color.Color.CMYK) from stdgo._internal.image.color.Color.CMYK to stdgo._internal.image.color.Color.CMYK {

}
typedef Palette = stdgo._internal.image.color.Color.Palette;
/**
    ModelFunc returns a Model that invokes f to implement the conversion.
**/
function modelFunc(f:Color -> Color):Model {
        final f = f;
        return stdgo._internal.image.color.Color.modelFunc(f);
    }
function testSqDiff(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testSqDiff(t);
    }
/**
    RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
**/
function rgbtoYCbCr(r:std.UInt, g:std.UInt, b:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.rgbtoYCbCr(r, g, b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
/**
    YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
**/
function ycbCrToRGB(y:std.UInt, cb:std.UInt, cr:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.ycbCrToRGB(y, cb, cr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
/**
    RGBToCMYK converts an RGB triple to a CMYK quadruple.
**/
function rgbtoCMYK(r:std.UInt, g:std.UInt, b:std.UInt):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.rgbtoCMYK(r, g, b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
/**
    CMYKToRGB converts a CMYK quadruple to an RGB triple.
**/
function cmyktoRGB(c:std.UInt, m:std.UInt, y:std.UInt, k:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.cmyktoRGB(c, m, y, k);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
/**
    TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
    and back to within 2/256 tolerance.
**/
function testYCbCrRoundtrip(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testYCbCrRoundtrip(t);
    }
/**
    TestYCbCrToRGBConsistency tests that calling the RGBA method (16 bit color)
    then truncating to 8 bits is equivalent to calling the YCbCrToRGB function (8
    bit color).
**/
function testYCbCrToRGBConsistency(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testYCbCrToRGBConsistency(t);
    }
/**
    TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.
**/
function testYCbCrGray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testYCbCrGray(t);
    }
/**
    TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.
**/
function testNYCbCrAAlpha(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testNYCbCrAAlpha(t);
    }
/**
    TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.
**/
function testNYCbCrAYCbCr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testNYCbCrAYCbCr(t);
    }
/**
    TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
    and back to within 1/256 tolerance.
**/
function testCMYKRoundtrip(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testCMYKRoundtrip(t);
    }
/**
    TestCMYKToRGBConsistency tests that calling the RGBA method (16 bit color)
    then truncating to 8 bits is equivalent to calling the CMYKToRGB function (8
    bit color).
**/
function testCMYKToRGBConsistency(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testCMYKToRGBConsistency(t);
    }
/**
    TestCMYKGray tests that CMYK colors are a superset of Gray colors.
**/
function testCMYKGray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testCMYKGray(t);
    }
function testPalette(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testPalette(t);
    }
function benchmarkYCbCrToRGB(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.color.Color.benchmarkYCbCrToRGB(b);
    }
function benchmarkRGBToYCbCr(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.color.Color.benchmarkRGBToYCbCr(b);
    }
function benchmarkYCbCrToRGBA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.color.Color.benchmarkYCbCrToRGBA(b);
    }
function benchmarkNYCbCrAToRGBA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.color.Color.benchmarkNYCbCrAToRGBA(b);
    }
@:forward @:forward.new abstract RGBA_asInterface(stdgo._internal.image.color.Color.RGBA_asInterface) from stdgo._internal.image.color.Color.RGBA_asInterface to stdgo._internal.image.color.Color.RGBA_asInterface {

}
@:forward @:forward.new abstract RGBA_static_extension(stdgo._internal.image.color.Color.RGBA_static_extension) from stdgo._internal.image.color.Color.RGBA_static_extension to stdgo._internal.image.color.Color.RGBA_static_extension {

}
@:forward @:forward.new abstract RGBA64_asInterface(stdgo._internal.image.color.Color.RGBA64_asInterface) from stdgo._internal.image.color.Color.RGBA64_asInterface to stdgo._internal.image.color.Color.RGBA64_asInterface {

}
@:forward @:forward.new abstract RGBA64_static_extension(stdgo._internal.image.color.Color.RGBA64_static_extension) from stdgo._internal.image.color.Color.RGBA64_static_extension to stdgo._internal.image.color.Color.RGBA64_static_extension {

}
@:forward @:forward.new abstract NRGBA_asInterface(stdgo._internal.image.color.Color.NRGBA_asInterface) from stdgo._internal.image.color.Color.NRGBA_asInterface to stdgo._internal.image.color.Color.NRGBA_asInterface {

}
@:forward @:forward.new abstract NRGBA_static_extension(stdgo._internal.image.color.Color.NRGBA_static_extension) from stdgo._internal.image.color.Color.NRGBA_static_extension to stdgo._internal.image.color.Color.NRGBA_static_extension {

}
@:forward @:forward.new abstract NRGBA64_asInterface(stdgo._internal.image.color.Color.NRGBA64_asInterface) from stdgo._internal.image.color.Color.NRGBA64_asInterface to stdgo._internal.image.color.Color.NRGBA64_asInterface {

}
@:forward @:forward.new abstract NRGBA64_static_extension(stdgo._internal.image.color.Color.NRGBA64_static_extension) from stdgo._internal.image.color.Color.NRGBA64_static_extension to stdgo._internal.image.color.Color.NRGBA64_static_extension {

}
@:forward @:forward.new abstract Alpha_asInterface(stdgo._internal.image.color.Color.Alpha_asInterface) from stdgo._internal.image.color.Color.Alpha_asInterface to stdgo._internal.image.color.Color.Alpha_asInterface {

}
@:forward @:forward.new abstract Alpha_static_extension(stdgo._internal.image.color.Color.Alpha_static_extension) from stdgo._internal.image.color.Color.Alpha_static_extension to stdgo._internal.image.color.Color.Alpha_static_extension {

}
@:forward @:forward.new abstract Alpha16_asInterface(stdgo._internal.image.color.Color.Alpha16_asInterface) from stdgo._internal.image.color.Color.Alpha16_asInterface to stdgo._internal.image.color.Color.Alpha16_asInterface {

}
@:forward @:forward.new abstract Alpha16_static_extension(stdgo._internal.image.color.Color.Alpha16_static_extension) from stdgo._internal.image.color.Color.Alpha16_static_extension to stdgo._internal.image.color.Color.Alpha16_static_extension {

}
@:forward @:forward.new abstract Gray_asInterface(stdgo._internal.image.color.Color.Gray_asInterface) from stdgo._internal.image.color.Color.Gray_asInterface to stdgo._internal.image.color.Color.Gray_asInterface {

}
@:forward @:forward.new abstract Gray_static_extension(stdgo._internal.image.color.Color.Gray_static_extension) from stdgo._internal.image.color.Color.Gray_static_extension to stdgo._internal.image.color.Color.Gray_static_extension {

}
@:forward @:forward.new abstract Gray16_asInterface(stdgo._internal.image.color.Color.Gray16_asInterface) from stdgo._internal.image.color.Color.Gray16_asInterface to stdgo._internal.image.color.Color.Gray16_asInterface {

}
@:forward @:forward.new abstract Gray16_static_extension(stdgo._internal.image.color.Color.Gray16_static_extension) from stdgo._internal.image.color.Color.Gray16_static_extension to stdgo._internal.image.color.Color.Gray16_static_extension {

}
@:forward @:forward.new abstract T_modelFunc_asInterface(stdgo._internal.image.color.Color.T_modelFunc_asInterface) from stdgo._internal.image.color.Color.T_modelFunc_asInterface to stdgo._internal.image.color.Color.T_modelFunc_asInterface {

}
@:forward @:forward.new abstract T_modelFunc_static_extension(stdgo._internal.image.color.Color.T_modelFunc_static_extension) from stdgo._internal.image.color.Color.T_modelFunc_static_extension to stdgo._internal.image.color.Color.T_modelFunc_static_extension {

}
@:forward @:forward.new abstract YCbCr_asInterface(stdgo._internal.image.color.Color.YCbCr_asInterface) from stdgo._internal.image.color.Color.YCbCr_asInterface to stdgo._internal.image.color.Color.YCbCr_asInterface {

}
@:forward @:forward.new abstract YCbCr_static_extension(stdgo._internal.image.color.Color.YCbCr_static_extension) from stdgo._internal.image.color.Color.YCbCr_static_extension to stdgo._internal.image.color.Color.YCbCr_static_extension {

}
@:forward @:forward.new abstract NYCbCrA_asInterface(stdgo._internal.image.color.Color.NYCbCrA_asInterface) from stdgo._internal.image.color.Color.NYCbCrA_asInterface to stdgo._internal.image.color.Color.NYCbCrA_asInterface {

}
@:forward @:forward.new abstract NYCbCrA_static_extension(stdgo._internal.image.color.Color.NYCbCrA_static_extension) from stdgo._internal.image.color.Color.NYCbCrA_static_extension to stdgo._internal.image.color.Color.NYCbCrA_static_extension {

}
@:forward @:forward.new abstract CMYK_asInterface(stdgo._internal.image.color.Color.CMYK_asInterface) from stdgo._internal.image.color.Color.CMYK_asInterface to stdgo._internal.image.color.Color.CMYK_asInterface {

}
@:forward @:forward.new abstract CMYK_static_extension(stdgo._internal.image.color.Color.CMYK_static_extension) from stdgo._internal.image.color.Color.CMYK_static_extension to stdgo._internal.image.color.Color.CMYK_static_extension {

}
@:forward @:forward.new abstract Palette_asInterface(stdgo._internal.image.color.Color.Palette_asInterface) from stdgo._internal.image.color.Color.Palette_asInterface to stdgo._internal.image.color.Color.Palette_asInterface {

}
@:forward @:forward.new abstract Palette_static_extension(stdgo._internal.image.color.Color.Palette_static_extension) from stdgo._internal.image.color.Color.Palette_static_extension to stdgo._internal.image.color.Color.Palette_static_extension {

}
