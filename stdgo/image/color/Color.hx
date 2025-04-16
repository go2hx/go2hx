package stdgo.image.color;
var rGBAModel(get, set) : Model;
private function get_rGBAModel():Model return stdgo._internal.image.color.Color_rgbamodel.rGBAModel;
private function set_rGBAModel(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_rgbamodel.rGBAModel = v;
        return v;
    }
var rGBA64Model(get, set) : Model;
private function get_rGBA64Model():Model return stdgo._internal.image.color.Color_rgba64model.rGBA64Model;
private function set_rGBA64Model(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_rgba64model.rGBA64Model = v;
        return v;
    }
var nRGBAModel(get, set) : Model;
private function get_nRGBAModel():Model return stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel;
private function set_nRGBAModel(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel = v;
        return v;
    }
var nRGBA64Model(get, set) : Model;
private function get_nRGBA64Model():Model return stdgo._internal.image.color.Color_nrgba64model.nRGBA64Model;
private function set_nRGBA64Model(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_nrgba64model.nRGBA64Model = v;
        return v;
    }
var alphaModel(get, set) : Model;
private function get_alphaModel():Model return stdgo._internal.image.color.Color_alphamodel.alphaModel;
private function set_alphaModel(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_alphamodel.alphaModel = v;
        return v;
    }
var alpha16Model(get, set) : Model;
private function get_alpha16Model():Model return stdgo._internal.image.color.Color_alpha16model.alpha16Model;
private function set_alpha16Model(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_alpha16model.alpha16Model = v;
        return v;
    }
var grayModel(get, set) : Model;
private function get_grayModel():Model return stdgo._internal.image.color.Color_graymodel.grayModel;
private function set_grayModel(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_graymodel.grayModel = v;
        return v;
    }
var gray16Model(get, set) : Model;
private function get_gray16Model():Model return stdgo._internal.image.color.Color_gray16model.gray16Model;
private function set_gray16Model(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_gray16model.gray16Model = v;
        return v;
    }
var black(get, set) : Gray16;
private function get_black():Gray16 return stdgo._internal.image.color.Color_black.black;
private function set_black(v:Gray16):stdgo._internal.image.color.Color_gray16.Gray16 {
        stdgo._internal.image.color.Color_black.black = v;
        return v;
    }
var white(get, set) : Gray16;
private function get_white():Gray16 return stdgo._internal.image.color.Color_white.white;
private function set_white(v:Gray16):stdgo._internal.image.color.Color_gray16.Gray16 {
        stdgo._internal.image.color.Color_white.white = v;
        return v;
    }
var transparent(get, set) : Alpha16;
private function get_transparent():Alpha16 return stdgo._internal.image.color.Color_transparent.transparent;
private function set_transparent(v:Alpha16):stdgo._internal.image.color.Color_alpha16.Alpha16 {
        stdgo._internal.image.color.Color_transparent.transparent = v;
        return v;
    }
var opaque(get, set) : Alpha16;
private function get_opaque():Alpha16 return stdgo._internal.image.color.Color_opaque.opaque;
private function set_opaque(v:Alpha16):stdgo._internal.image.color.Color_alpha16.Alpha16 {
        stdgo._internal.image.color.Color_opaque.opaque = v;
        return v;
    }
var yCbCrModel(get, set) : Model;
private function get_yCbCrModel():Model return stdgo._internal.image.color.Color_ycbcrmodel.yCbCrModel;
private function set_yCbCrModel(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_ycbcrmodel.yCbCrModel = v;
        return v;
    }
var nYCbCrAModel(get, set) : Model;
private function get_nYCbCrAModel():Model return stdgo._internal.image.color.Color_nycbcramodel.nYCbCrAModel;
private function set_nYCbCrAModel(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_nycbcramodel.nYCbCrAModel = v;
        return v;
    }
var cMYKModel(get, set) : Model;
private function get_cMYKModel():Model return stdgo._internal.image.color.Color_cmykmodel.cMYKModel;
private function set_cMYKModel(v:Model):stdgo._internal.image.color.Color_model.Model {
        stdgo._internal.image.color.Color_cmykmodel.cMYKModel = v;
        return v;
    }
typedef Color_ = stdgo._internal.image.color.Color_color.Color;
typedef Model = stdgo._internal.image.color.Color_model.Model;
typedef RGBA = stdgo._internal.image.color.Color_rgba.RGBA;
typedef RGBA64 = stdgo._internal.image.color.Color_rgba64.RGBA64;
typedef NRGBA = stdgo._internal.image.color.Color_nrgba.NRGBA;
typedef NRGBA64 = stdgo._internal.image.color.Color_nrgba64.NRGBA64;
typedef Alpha = stdgo._internal.image.color.Color_alpha.Alpha;
typedef Alpha16 = stdgo._internal.image.color.Color_alpha16.Alpha16;
typedef Gray = stdgo._internal.image.color.Color_gray.Gray;
typedef Gray16 = stdgo._internal.image.color.Color_gray16.Gray16;
typedef YCbCr = stdgo._internal.image.color.Color_ycbcr.YCbCr;
typedef NYCbCrA = stdgo._internal.image.color.Color_nycbcra.NYCbCrA;
typedef CMYK = stdgo._internal.image.color.Color_cmyk.CMYK;
typedef Palette = stdgo._internal.image.color.Color_palette.Palette;
typedef RGBAPointer = stdgo._internal.image.color.Color_rgbapointer.RGBAPointer;
typedef RGBA64Pointer = stdgo._internal.image.color.Color_rgba64pointer.RGBA64Pointer;
typedef NRGBAPointer = stdgo._internal.image.color.Color_nrgbapointer.NRGBAPointer;
typedef NRGBA64Pointer = stdgo._internal.image.color.Color_nrgba64pointer.NRGBA64Pointer;
typedef AlphaPointer = stdgo._internal.image.color.Color_alphapointer.AlphaPointer;
typedef Alpha16Pointer = stdgo._internal.image.color.Color_alpha16pointer.Alpha16Pointer;
typedef GrayPointer = stdgo._internal.image.color.Color_graypointer.GrayPointer;
typedef Gray16Pointer = stdgo._internal.image.color.Color_gray16pointer.Gray16Pointer;
typedef YCbCrPointer = stdgo._internal.image.color.Color_ycbcrpointer.YCbCrPointer;
typedef NYCbCrAPointer = stdgo._internal.image.color.Color_nycbcrapointer.NYCbCrAPointer;
typedef CMYKPointer = stdgo._internal.image.color.Color_cmykpointer.CMYKPointer;
typedef PalettePointer = stdgo._internal.image.color.Color_palettepointer.PalettePointer;
/**
    * Package color implements a basic color library.
**/
class Color {
    /**
        * ModelFunc returns a Model that invokes f to implement the conversion.
    **/
    static public inline function modelFunc(_f:Color_ -> Color_):stdgo._internal.image.color.Color_model.Model return stdgo._internal.image.color.Color_modelfunc.modelFunc(_f);
    static public inline function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testsqdiff.testSqDiff(_t);
    /**
        * RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
    **/
    static public inline function rGBToYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } return stdgo._internal.image.color.Color_rgbtoycbcr.rGBToYCbCr(_r, _g, _b);
    /**
        * YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
    **/
    static public inline function yCbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } return stdgo._internal.image.color.Color_ycbcrtorgb.yCbCrToRGB(_y, _cb, _cr);
    /**
        * RGBToCMYK converts an RGB triple to a CMYK quadruple.
    **/
    static public inline function rGBToCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; var _3 : stdgo.GoUInt8; } return stdgo._internal.image.color.Color_rgbtocmyk.rGBToCMYK(_r, _g, _b);
    /**
        * CMYKToRGB converts a CMYK quadruple to an RGB triple.
    **/
    static public inline function cMYKToRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } return stdgo._internal.image.color.Color_cmyktorgb.cMYKToRGB(_c, _m, _y, _k);
    /**
        * TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
        * and back to within 2/256 tolerance.
    **/
    static public inline function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testycbcrroundtrip.testYCbCrRoundtrip(_t);
    /**
        * TestYCbCrToRGBConsistency tests that calling the RGBA method (16 bit color)
        * then truncating to 8 bits is equivalent to calling the YCbCrToRGB function (8
        * bit color).
    **/
    static public inline function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testycbcrtorgbconsistency.testYCbCrToRGBConsistency(_t);
    /**
        * TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.
    **/
    static public inline function testYCbCrGray(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testycbcrgray.testYCbCrGray(_t);
    /**
        * TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.
    **/
    static public inline function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testnycbcraalpha.testNYCbCrAAlpha(_t);
    /**
        * TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.
    **/
    static public inline function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testnycbcraycbcr.testNYCbCrAYCbCr(_t);
    /**
        * TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
        * and back to within 1/256 tolerance.
    **/
    static public inline function testCMYKRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testcmykroundtrip.testCMYKRoundtrip(_t);
    /**
        * TestCMYKToRGBConsistency tests that calling the RGBA method (16 bit color)
        * then truncating to 8 bits is equivalent to calling the CMYKToRGB function (8
        * bit color).
    **/
    static public inline function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testcmyktorgbconsistency.testCMYKToRGBConsistency(_t);
    /**
        * TestCMYKGray tests that CMYK colors are a superset of Gray colors.
    **/
    static public inline function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testcmykgray.testCMYKGray(_t);
    static public inline function testPalette(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.color.Color_testpalette.testPalette(_t);
    static public inline function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.color.Color_benchmarkycbcrtorgb.benchmarkYCbCrToRGB(_b);
    static public inline function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.color.Color_benchmarkrgbtoycbcr.benchmarkRGBToYCbCr(_b);
    static public inline function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.color.Color_benchmarkycbcrtorgba.benchmarkYCbCrToRGBA(_b);
    static public inline function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.color.Color_benchmarknycbcratorgba.benchmarkNYCbCrAToRGBA(_b);
}
