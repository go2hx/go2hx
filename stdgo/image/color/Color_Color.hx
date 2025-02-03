package stdgo.image.color;
/**
    Package color implements a basic color library.
**/
class Color {
    /**
        ModelFunc returns a Model that invokes f to implement the conversion.
    **/
    static public inline function modelFunc(_f:stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color):Model {
        final _f = _f;
        return stdgo._internal.image.color.Color_modelFunc.modelFunc(_f);
    }
    static public inline function testSqDiff(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testSqDiff.testSqDiff(_t);
    }
    /**
        RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
    **/
    static public inline function rGBToYCbCr(_r:std.UInt, _g:std.UInt, _b:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        final _r = (_r : stdgo.GoUInt8);
        final _g = (_g : stdgo.GoUInt8);
        final _b = (_b : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.color.Color_rGBToYCbCr.rGBToYCbCr(_r, _g, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
    **/
    static public inline function yCbCrToRGB(_y:std.UInt, _cb:std.UInt, _cr:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        final _y = (_y : stdgo.GoUInt8);
        final _cb = (_cb : stdgo.GoUInt8);
        final _cr = (_cr : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.color.Color_yCbCrToRGB.yCbCrToRGB(_y, _cb, _cr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        RGBToCMYK converts an RGB triple to a CMYK quadruple.
    **/
    static public inline function rGBToCMYK(_r:std.UInt, _g:std.UInt, _b:std.UInt):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        final _r = (_r : stdgo.GoUInt8);
        final _g = (_g : stdgo.GoUInt8);
        final _b = (_b : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.color.Color_rGBToCMYK.rGBToCMYK(_r, _g, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        CMYKToRGB converts a CMYK quadruple to an RGB triple.
    **/
    static public inline function cMYKToRGB(_c:std.UInt, _m:std.UInt, _y:std.UInt, _k:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        final _c = (_c : stdgo.GoUInt8);
        final _m = (_m : stdgo.GoUInt8);
        final _y = (_y : stdgo.GoUInt8);
        final _k = (_k : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.color.Color_cMYKToRGB.cMYKToRGB(_c, _m, _y, _k);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
        and back to within 2/256 tolerance.
    **/
    static public inline function testYCbCrRoundtrip(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testYCbCrRoundtrip.testYCbCrRoundtrip(_t);
    }
    /**
        TestYCbCrToRGBConsistency tests that calling the RGBA method (16 bit color)
        then truncating to 8 bits is equivalent to calling the YCbCrToRGB function (8
        bit color).
    **/
    static public inline function testYCbCrToRGBConsistency(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testYCbCrToRGBConsistency.testYCbCrToRGBConsistency(_t);
    }
    /**
        TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.
    **/
    static public inline function testYCbCrGray(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testYCbCrGray.testYCbCrGray(_t);
    }
    /**
        TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.
    **/
    static public inline function testNYCbCrAAlpha(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testNYCbCrAAlpha.testNYCbCrAAlpha(_t);
    }
    /**
        TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.
    **/
    static public inline function testNYCbCrAYCbCr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testNYCbCrAYCbCr.testNYCbCrAYCbCr(_t);
    }
    /**
        TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
        and back to within 1/256 tolerance.
    **/
    static public inline function testCMYKRoundtrip(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testCMYKRoundtrip.testCMYKRoundtrip(_t);
    }
    /**
        TestCMYKToRGBConsistency tests that calling the RGBA method (16 bit color)
        then truncating to 8 bits is equivalent to calling the CMYKToRGB function (8
        bit color).
    **/
    static public inline function testCMYKToRGBConsistency(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testCMYKToRGBConsistency.testCMYKToRGBConsistency(_t);
    }
    /**
        TestCMYKGray tests that CMYK colors are a superset of Gray colors.
    **/
    static public inline function testCMYKGray(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testCMYKGray.testCMYKGray(_t);
    }
    static public inline function testPalette(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.color.Color_testPalette.testPalette(_t);
    }
    static public inline function benchmarkYCbCrToRGB(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.color.Color_benchmarkYCbCrToRGB.benchmarkYCbCrToRGB(_b);
    }
    static public inline function benchmarkRGBToYCbCr(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.color.Color_benchmarkRGBToYCbCr.benchmarkRGBToYCbCr(_b);
    }
    static public inline function benchmarkYCbCrToRGBA(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.color.Color_benchmarkYCbCrToRGBA.benchmarkYCbCrToRGBA(_b);
    }
    static public inline function benchmarkNYCbCrAToRGBA(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.color.Color_benchmarkNYCbCrAToRGBA.benchmarkNYCbCrAToRGBA(_b);
    }
}
