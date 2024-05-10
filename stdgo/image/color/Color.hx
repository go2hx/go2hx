package stdgo.image.color;
var rgbamodel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_rgbamodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgbamodel;
private function set_rgbamodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.rgbamodel = v;
        return v;
    }
var rgba64model(get, set) : stdgo._internal.image.color.Color.Model;
private function get_rgba64model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.rgba64model;
private function set_rgba64model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.rgba64model = v;
        return v;
    }
var nrgbamodel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_nrgbamodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgbamodel;
private function set_nrgbamodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.nrgbamodel = v;
        return v;
    }
var nrgba64model(get, set) : stdgo._internal.image.color.Color.Model;
private function get_nrgba64model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nrgba64model;
private function set_nrgba64model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.nrgba64model = v;
        return v;
    }
var alphaModel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_alphaModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alphaModel;
private function set_alphaModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.alphaModel = v;
        return v;
    }
var alpha16Model(get, set) : stdgo._internal.image.color.Color.Model;
private function get_alpha16Model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.alpha16Model;
private function set_alpha16Model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.alpha16Model = v;
        return v;
    }
var grayModel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_grayModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.grayModel;
private function set_grayModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.grayModel = v;
        return v;
    }
var gray16Model(get, set) : stdgo._internal.image.color.Color.Model;
private function get_gray16Model():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.gray16Model;
private function set_gray16Model(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.gray16Model = v;
        return v;
    }
var black(get, set) : stdgo._internal.image.color.Color.Gray16;
private function get_black():stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.black;
private function set_black(v:stdgo._internal.image.color.Color.Gray16):stdgo._internal.image.color.Color.Gray16 {
        stdgo._internal.image.color.Color.black = v;
        return v;
    }
var white(get, set) : stdgo._internal.image.color.Color.Gray16;
private function get_white():stdgo._internal.image.color.Color.Gray16 return stdgo._internal.image.color.Color.white;
private function set_white(v:stdgo._internal.image.color.Color.Gray16):stdgo._internal.image.color.Color.Gray16 {
        stdgo._internal.image.color.Color.white = v;
        return v;
    }
var transparent(get, set) : stdgo._internal.image.color.Color.Alpha16;
private function get_transparent():stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.transparent;
private function set_transparent(v:stdgo._internal.image.color.Color.Alpha16):stdgo._internal.image.color.Color.Alpha16 {
        stdgo._internal.image.color.Color.transparent = v;
        return v;
    }
var opaque(get, set) : stdgo._internal.image.color.Color.Alpha16;
private function get_opaque():stdgo._internal.image.color.Color.Alpha16 return stdgo._internal.image.color.Color.opaque;
private function set_opaque(v:stdgo._internal.image.color.Color.Alpha16):stdgo._internal.image.color.Color.Alpha16 {
        stdgo._internal.image.color.Color.opaque = v;
        return v;
    }
var ycbCrModel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_ycbCrModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.ycbCrModel;
private function set_ycbCrModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.ycbCrModel = v;
        return v;
    }
var nycbCrAModel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_nycbCrAModel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.nycbCrAModel;
private function set_nycbCrAModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.nycbCrAModel = v;
        return v;
    }
var cmykmodel(get, set) : stdgo._internal.image.color.Color.Model;
private function get_cmykmodel():stdgo._internal.image.color.Color.Model return stdgo._internal.image.color.Color.cmykmodel;
private function set_cmykmodel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        stdgo._internal.image.color.Color.cmykmodel = v;
        return v;
    }
class Color__static_extension {
    static public function rgba(t:Color_):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.Color_static_extension.rgba(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef Color = stdgo._internal.image.color.Color.Color;
class Model_static_extension {
    static public function convert(t:Model, c:Color_):Color_ {
        return stdgo._internal.image.color.Color.Model_static_extension.convert(t, c);
    }
}
typedef Model = stdgo._internal.image.color.Color.Model;
@:structInit @:using(stdgo.image.color.Color.RGBA_static_extension) abstract RGBA(stdgo._internal.image.color.Color.RGBA) from stdgo._internal.image.color.Color.RGBA to stdgo._internal.image.color.Color.RGBA {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = v;
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = v;
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = v;
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color.RGBA(r, g, b, a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.RGBA64_static_extension) abstract RGBA64(stdgo._internal.image.color.Color.RGBA64) from stdgo._internal.image.color.Color.RGBA64 to stdgo._internal.image.color.Color.RGBA64 {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = v;
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = v;
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = v;
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color.RGBA64(r, g, b, a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.NRGBA_static_extension) abstract NRGBA(stdgo._internal.image.color.Color.NRGBA) from stdgo._internal.image.color.Color.NRGBA to stdgo._internal.image.color.Color.NRGBA {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = v;
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = v;
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = v;
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color.NRGBA(r, g, b, a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.NRGBA64_static_extension) abstract NRGBA64(stdgo._internal.image.color.Color.NRGBA64) from stdgo._internal.image.color.Color.NRGBA64 to stdgo._internal.image.color.Color.NRGBA64 {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = v;
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = v;
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = v;
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color.NRGBA64(r, g, b, a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.Alpha_static_extension) abstract Alpha(stdgo._internal.image.color.Color.Alpha) from stdgo._internal.image.color.Color.Alpha to stdgo._internal.image.color.Color.Alpha {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.image.color.Color.Alpha(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.Alpha16_static_extension) abstract Alpha16(stdgo._internal.image.color.Color.Alpha16) from stdgo._internal.image.color.Color.Alpha16 to stdgo._internal.image.color.Color.Alpha16 {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.image.color.Color.Alpha16(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.Gray_static_extension) abstract Gray(stdgo._internal.image.color.Color.Gray) from stdgo._internal.image.color.Color.Gray to stdgo._internal.image.color.Color.Gray {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = v;
        return v;
    }
    public function new(?y:std.UInt) this = new stdgo._internal.image.color.Color.Gray(y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.Gray16_static_extension) abstract Gray16(stdgo._internal.image.color.Color.Gray16) from stdgo._internal.image.color.Color.Gray16 to stdgo._internal.image.color.Color.Gray16 {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = v;
        return v;
    }
    public function new(?y:std.UInt) this = new stdgo._internal.image.color.Color.Gray16(y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.image.color.Color.T_modelFunc_static_extension) abstract T_modelFunc(stdgo._internal.image.color.Color.T_modelFunc) from stdgo._internal.image.color.Color.T_modelFunc to stdgo._internal.image.color.Color.T_modelFunc {
    public var _f(get, set) : stdgo._internal.image.color.Color.Color -> stdgo._internal.image.color.Color.Color;
    function get__f():stdgo._internal.image.color.Color.Color -> stdgo._internal.image.color.Color.Color return _0 -> this._f(_0);
    function set__f(v:stdgo._internal.image.color.Color.Color -> stdgo._internal.image.color.Color.Color):stdgo._internal.image.color.Color.Color -> stdgo._internal.image.color.Color.Color {
        this._f = v;
        return v;
    }
    public function new(?_f:stdgo._internal.image.color.Color.Color -> stdgo._internal.image.color.Color.Color) this = new stdgo._internal.image.color.Color.T_modelFunc(_f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.YCbCr_static_extension) abstract YCbCr(stdgo._internal.image.color.Color.YCbCr) from stdgo._internal.image.color.Color.YCbCr to stdgo._internal.image.color.Color.YCbCr {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = v;
        return v;
    }
    public var cb(get, set) : std.UInt;
    function get_cb():std.UInt return this.cb;
    function set_cb(v:std.UInt):std.UInt {
        this.cb = v;
        return v;
    }
    public var cr(get, set) : std.UInt;
    function get_cr():std.UInt return this.cr;
    function set_cr(v:std.UInt):std.UInt {
        this.cr = v;
        return v;
    }
    public function new(?y:std.UInt, ?cb:std.UInt, ?cr:std.UInt) this = new stdgo._internal.image.color.Color.YCbCr(y, cb, cr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.NYCbCrA_static_extension) abstract NYCbCrA(stdgo._internal.image.color.Color.NYCbCrA) from stdgo._internal.image.color.Color.NYCbCrA to stdgo._internal.image.color.Color.NYCbCrA {
    public var ycbCr(get, set) : stdgo._internal.image.color.Color.YCbCr;
    function get_ycbCr():stdgo._internal.image.color.Color.YCbCr return this.ycbCr;
    function set_ycbCr(v:stdgo._internal.image.color.Color.YCbCr):stdgo._internal.image.color.Color.YCbCr {
        this.ycbCr = v;
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?ycbCr:stdgo._internal.image.color.Color.YCbCr, ?a:std.UInt) this = new stdgo._internal.image.color.Color.NYCbCrA(ycbCr, a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.CMYK_static_extension) abstract CMYK(stdgo._internal.image.color.Color.CMYK) from stdgo._internal.image.color.Color.CMYK to stdgo._internal.image.color.Color.CMYK {
    public var c(get, set) : std.UInt;
    function get_c():std.UInt return this.c;
    function set_c(v:std.UInt):std.UInt {
        this.c = v;
        return v;
    }
    public var m(get, set) : std.UInt;
    function get_m():std.UInt return this.m;
    function set_m(v:std.UInt):std.UInt {
        this.m = v;
        return v;
    }
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = v;
        return v;
    }
    public var k(get, set) : std.UInt;
    function get_k():std.UInt return this.k;
    function set_k(v:std.UInt):std.UInt {
        this.k = v;
        return v;
    }
    public function new(?c:std.UInt, ?m:std.UInt, ?y:std.UInt, ?k:std.UInt) this = new stdgo._internal.image.color.Color.CMYK(c, m, y, k);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Palette = stdgo._internal.image.color.Color.Palette;
class RGBA_static_extension {
    static public function rgba(c:RGBA):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.RGBA_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class RGBA64_static_extension {
    static public function rgba(c:RGBA64):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.RGBA64_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class NRGBA_static_extension {
    static public function rgba(c:NRGBA):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.NRGBA_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class NRGBA64_static_extension {
    static public function rgba(c:NRGBA64):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.NRGBA64_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class Alpha_static_extension {
    static public function rgba(c:Alpha):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.Alpha_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class Alpha16_static_extension {
    static public function rgba(c:Alpha16):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.Alpha16_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class Gray_static_extension {
    static public function rgba(c:Gray):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.Gray_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class Gray16_static_extension {
    static public function rgba(c:Gray16):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.Gray16_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class T_modelFunc_static_extension {
    static public function convert(m:T_modelFunc, c:Color_):Color_ {
        return stdgo._internal.image.color.Color.T_modelFunc_static_extension.convert(m, c);
    }
}
class YCbCr_static_extension {
    static public function rgba(c:YCbCr):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.YCbCr_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class NYCbCrA_static_extension {
    static public function rgba(c:NYCbCrA):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.NYCbCrA_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class CMYK_static_extension {
    static public function rgba(c:CMYK):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.CMYK_static_extension.rgba(c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class Palette_static_extension {
    static public function index(p:Palette, c:Color_):StdTypes.Int {
        return stdgo._internal.image.color.Color.Palette_static_extension.index(p, c);
    }
    static public function convert(p:Palette, c:Color_):Color_ {
        return stdgo._internal.image.color.Color.Palette_static_extension.convert(p, c);
    }
}
/**
    Package color implements a basic color library.
**/
class Color {
    /**
        ModelFunc returns a Model that invokes f to implement the conversion.
    **/
    static public function modelFunc(f:Color -> Color):Model {
        final f = f;
        return stdgo._internal.image.color.Color.modelFunc(f);
    }
    static public function testSqDiff(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testSqDiff(t);
    }
    /**
        RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
    **/
    static public function rgbtoYCbCr(r:std.UInt, g:std.UInt, b:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.rgbtoYCbCr(r, g, b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
    **/
    static public function ycbCrToRGB(y:std.UInt, cb:std.UInt, cr:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.ycbCrToRGB(y, cb, cr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        RGBToCMYK converts an RGB triple to a CMYK quadruple.
    **/
    static public function rgbtoCMYK(r:std.UInt, g:std.UInt, b:std.UInt):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.rgbtoCMYK(r, g, b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        CMYKToRGB converts a CMYK quadruple to an RGB triple.
    **/
    static public function cmyktoRGB(c:std.UInt, m:std.UInt, y:std.UInt, k:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color.cmyktoRGB(c, m, y, k);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
        and back to within 2/256 tolerance.
    **/
    static public function testYCbCrRoundtrip(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testYCbCrRoundtrip(t);
    }
    /**
        TestYCbCrToRGBConsistency tests that calling the RGBA method (16 bit color)
        then truncating to 8 bits is equivalent to calling the YCbCrToRGB function (8
        bit color).
    **/
    static public function testYCbCrToRGBConsistency(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testYCbCrToRGBConsistency(t);
    }
    /**
        TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.
    **/
    static public function testYCbCrGray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testYCbCrGray(t);
    }
    /**
        TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.
    **/
    static public function testNYCbCrAAlpha(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testNYCbCrAAlpha(t);
    }
    /**
        TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.
    **/
    static public function testNYCbCrAYCbCr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testNYCbCrAYCbCr(t);
    }
    /**
        TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
        and back to within 1/256 tolerance.
    **/
    static public function testCMYKRoundtrip(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testCMYKRoundtrip(t);
    }
    /**
        TestCMYKToRGBConsistency tests that calling the RGBA method (16 bit color)
        then truncating to 8 bits is equivalent to calling the CMYKToRGB function (8
        bit color).
    **/
    static public function testCMYKToRGBConsistency(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testCMYKToRGBConsistency(t);
    }
    /**
        TestCMYKGray tests that CMYK colors are a superset of Gray colors.
    **/
    static public function testCMYKGray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testCMYKGray(t);
    }
    static public function testPalette(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.color.Color.testPalette(t);
    }
    static public function benchmarkYCbCrToRGB(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.color.Color.benchmarkYCbCrToRGB(b);
    }
    static public function benchmarkRGBToYCbCr(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.color.Color.benchmarkRGBToYCbCr(b);
    }
    static public function benchmarkYCbCrToRGBA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.color.Color.benchmarkYCbCrToRGBA(b);
    }
    static public function benchmarkNYCbCrAToRGBA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.color.Color.benchmarkNYCbCrAToRGBA(b);
    }
}
