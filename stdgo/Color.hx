package stdgo;
var rGBAModel(get, set) : Model;
private function get_rGBAModel():Model return stdgo._internal.image.color.Color_rgbamodel.rGBAModel;
private function set_rGBAModel(v:Model):Model {
        stdgo._internal.image.color.Color_rgbamodel.rGBAModel = v;
        return v;
    }
var rGBA64Model(get, set) : Model;
private function get_rGBA64Model():Model return stdgo._internal.image.color.Color_rgba64model.rGBA64Model;
private function set_rGBA64Model(v:Model):Model {
        stdgo._internal.image.color.Color_rgba64model.rGBA64Model = v;
        return v;
    }
var nRGBAModel(get, set) : Model;
private function get_nRGBAModel():Model return stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel;
private function set_nRGBAModel(v:Model):Model {
        stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel = v;
        return v;
    }
var nRGBA64Model(get, set) : Model;
private function get_nRGBA64Model():Model return stdgo._internal.image.color.Color_nrgba64model.nRGBA64Model;
private function set_nRGBA64Model(v:Model):Model {
        stdgo._internal.image.color.Color_nrgba64model.nRGBA64Model = v;
        return v;
    }
var alphaModel(get, set) : Model;
private function get_alphaModel():Model return stdgo._internal.image.color.Color_alphamodel.alphaModel;
private function set_alphaModel(v:Model):Model {
        stdgo._internal.image.color.Color_alphamodel.alphaModel = v;
        return v;
    }
var alpha16Model(get, set) : Model;
private function get_alpha16Model():Model return stdgo._internal.image.color.Color_alpha16model.alpha16Model;
private function set_alpha16Model(v:Model):Model {
        stdgo._internal.image.color.Color_alpha16model.alpha16Model = v;
        return v;
    }
var grayModel(get, set) : Model;
private function get_grayModel():Model return stdgo._internal.image.color.Color_graymodel.grayModel;
private function set_grayModel(v:Model):Model {
        stdgo._internal.image.color.Color_graymodel.grayModel = v;
        return v;
    }
var gray16Model(get, set) : Model;
private function get_gray16Model():Model return stdgo._internal.image.color.Color_gray16model.gray16Model;
private function set_gray16Model(v:Model):Model {
        stdgo._internal.image.color.Color_gray16model.gray16Model = v;
        return v;
    }
var black(get, set) : Gray16;
private function get_black():Gray16 return stdgo._internal.image.color.Color_black.black;
private function set_black(v:Gray16):Gray16 {
        stdgo._internal.image.color.Color_black.black = v;
        return v;
    }
var white(get, set) : Gray16;
private function get_white():Gray16 return stdgo._internal.image.color.Color_white.white;
private function set_white(v:Gray16):Gray16 {
        stdgo._internal.image.color.Color_white.white = v;
        return v;
    }
var transparent(get, set) : Alpha16;
private function get_transparent():Alpha16 return stdgo._internal.image.color.Color_transparent.transparent;
private function set_transparent(v:Alpha16):Alpha16 {
        stdgo._internal.image.color.Color_transparent.transparent = v;
        return v;
    }
var opaque(get, set) : Alpha16;
private function get_opaque():Alpha16 return stdgo._internal.image.color.Color_opaque.opaque;
private function set_opaque(v:Alpha16):Alpha16 {
        stdgo._internal.image.color.Color_opaque.opaque = v;
        return v;
    }
var yCbCrModel(get, set) : Model;
private function get_yCbCrModel():Model return stdgo._internal.image.color.Color_ycbcrmodel.yCbCrModel;
private function set_yCbCrModel(v:Model):Model {
        stdgo._internal.image.color.Color_ycbcrmodel.yCbCrModel = v;
        return v;
    }
var nYCbCrAModel(get, set) : Model;
private function get_nYCbCrAModel():Model return stdgo._internal.image.color.Color_nycbcramodel.nYCbCrAModel;
private function set_nYCbCrAModel(v:Model):Model {
        stdgo._internal.image.color.Color_nycbcramodel.nYCbCrAModel = v;
        return v;
    }
var cMYKModel(get, set) : Model;
private function get_cMYKModel():Model return stdgo._internal.image.color.Color_cmykmodel.cMYKModel;
private function set_cMYKModel(v:Model):Model {
        stdgo._internal.image.color.Color_cmykmodel.cMYKModel = v;
        return v;
    }
class Color_static_extension {
    static public function rGBA(t:stdgo._internal.image.color.Color_color.Color):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_color_static_extension.Color_static_extension.rGBA(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
@:forward abstract Color_(stdgo._internal.image.color.Color_color.Color) from stdgo._internal.image.color.Color_color.Color to stdgo._internal.image.color.Color_color.Color {
    @:from
    static function fromHaxeInterface(x:{ function rGBA():stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt>; }):Color_ {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Color_ = { rGBA : () -> x.rGBA(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Model_static_extension {
    static public function convert(t:stdgo._internal.image.color.Color_model.Model, _c:Color_):Color_ {
        return stdgo._internal.image.color.Color_model_static_extension.Model_static_extension.convert(t, _c);
    }
}
@:forward abstract Model(stdgo._internal.image.color.Color_model.Model) from stdgo._internal.image.color.Color_model.Model to stdgo._internal.image.color.Color_model.Model {
    @:from
    static function fromHaxeInterface(x:{ function convert(_c:Color_):Color_; }):Model {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Model = { convert : _0 -> x.convert(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.image.color.Color.RGBA_static_extension) abstract RGBA(stdgo._internal.image.color.Color_rgba.RGBA) from stdgo._internal.image.color.Color_rgba.RGBA to stdgo._internal.image.color.Color_rgba.RGBA {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = (v : stdgo.GoUInt8);
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = (v : stdgo.GoUInt8);
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt8);
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color_rgba.RGBA((r : stdgo.GoUInt8), (g : stdgo.GoUInt8), (b : stdgo.GoUInt8), (a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.RGBA64_static_extension) abstract RGBA64(stdgo._internal.image.color.Color_rgba64.RGBA64) from stdgo._internal.image.color.Color_rgba64.RGBA64 to stdgo._internal.image.color.Color_rgba64.RGBA64 {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = (v : stdgo.GoUInt16);
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = (v : stdgo.GoUInt16);
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt16);
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color_rgba64.RGBA64((r : stdgo.GoUInt16), (g : stdgo.GoUInt16), (b : stdgo.GoUInt16), (a : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.NRGBA_static_extension) abstract NRGBA(stdgo._internal.image.color.Color_nrgba.NRGBA) from stdgo._internal.image.color.Color_nrgba.NRGBA to stdgo._internal.image.color.Color_nrgba.NRGBA {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = (v : stdgo.GoUInt8);
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = (v : stdgo.GoUInt8);
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt8);
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color_nrgba.NRGBA((r : stdgo.GoUInt8), (g : stdgo.GoUInt8), (b : stdgo.GoUInt8), (a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.NRGBA64_static_extension) abstract NRGBA64(stdgo._internal.image.color.Color_nrgba64.NRGBA64) from stdgo._internal.image.color.Color_nrgba64.NRGBA64 to stdgo._internal.image.color.Color_nrgba64.NRGBA64 {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = (v : stdgo.GoUInt16);
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = (v : stdgo.GoUInt16);
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt16);
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color_nrgba64.NRGBA64((r : stdgo.GoUInt16), (g : stdgo.GoUInt16), (b : stdgo.GoUInt16), (a : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.Alpha_static_extension) abstract Alpha(stdgo._internal.image.color.Color_alpha.Alpha) from stdgo._internal.image.color.Color_alpha.Alpha to stdgo._internal.image.color.Color_alpha.Alpha {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.image.color.Color_alpha.Alpha((a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.Alpha16_static_extension) abstract Alpha16(stdgo._internal.image.color.Color_alpha16.Alpha16) from stdgo._internal.image.color.Color_alpha16.Alpha16 to stdgo._internal.image.color.Color_alpha16.Alpha16 {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.image.color.Color_alpha16.Alpha16((a : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.Gray_static_extension) abstract Gray(stdgo._internal.image.color.Color_gray.Gray) from stdgo._internal.image.color.Color_gray.Gray to stdgo._internal.image.color.Color_gray.Gray {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?y:std.UInt) this = new stdgo._internal.image.color.Color_gray.Gray((y : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.Gray16_static_extension) abstract Gray16(stdgo._internal.image.color.Color_gray16.Gray16) from stdgo._internal.image.color.Color_gray16.Gray16 to stdgo._internal.image.color.Color_gray16.Gray16 {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?y:std.UInt) this = new stdgo._internal.image.color.Color_gray16.Gray16((y : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.T_modelFunc_static_extension) @:dox(hide) abstract T_modelFunc(stdgo._internal.image.color.Color_t_modelfunc.T_modelFunc) from stdgo._internal.image.color.Color_t_modelfunc.T_modelFunc to stdgo._internal.image.color.Color_t_modelfunc.T_modelFunc {
    public var _f(get, set) : Color_ -> Color_;
    function get__f():Color_ -> Color_ return _0 -> this._f(_0);
    function set__f(v:Color_ -> Color_):Color_ -> Color_ {
        this._f = v;
        return v;
    }
    public function new(?_f:Color_ -> Color_) this = new stdgo._internal.image.color.Color_t_modelfunc.T_modelFunc(_f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.YCbCr_static_extension) abstract YCbCr(stdgo._internal.image.color.Color_ycbcr.YCbCr) from stdgo._internal.image.color.Color_ycbcr.YCbCr to stdgo._internal.image.color.Color_ycbcr.YCbCr {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = (v : stdgo.GoUInt8);
        return v;
    }
    public var cb(get, set) : std.UInt;
    function get_cb():std.UInt return this.cb;
    function set_cb(v:std.UInt):std.UInt {
        this.cb = (v : stdgo.GoUInt8);
        return v;
    }
    public var cr(get, set) : std.UInt;
    function get_cr():std.UInt return this.cr;
    function set_cr(v:std.UInt):std.UInt {
        this.cr = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?y:std.UInt, ?cb:std.UInt, ?cr:std.UInt) this = new stdgo._internal.image.color.Color_ycbcr.YCbCr((y : stdgo.GoUInt8), (cb : stdgo.GoUInt8), (cr : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.NYCbCrA_static_extension) abstract NYCbCrA(stdgo._internal.image.color.Color_nycbcra.NYCbCrA) from stdgo._internal.image.color.Color_nycbcra.NYCbCrA to stdgo._internal.image.color.Color_nycbcra.NYCbCrA {
    public var yCbCr(get, set) : YCbCr;
    function get_yCbCr():YCbCr return this.yCbCr;
    function set_yCbCr(v:YCbCr):YCbCr {
        this.yCbCr = v;
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?yCbCr:YCbCr, ?a:std.UInt) this = new stdgo._internal.image.color.Color_nycbcra.NYCbCrA(yCbCr, (a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.color.Color.CMYK_static_extension) abstract CMYK(stdgo._internal.image.color.Color_cmyk.CMYK) from stdgo._internal.image.color.Color_cmyk.CMYK to stdgo._internal.image.color.Color_cmyk.CMYK {
    public var c(get, set) : std.UInt;
    function get_c():std.UInt return this.c;
    function set_c(v:std.UInt):std.UInt {
        this.c = (v : stdgo.GoUInt8);
        return v;
    }
    public var m(get, set) : std.UInt;
    function get_m():std.UInt return this.m;
    function set_m(v:std.UInt):std.UInt {
        this.m = (v : stdgo.GoUInt8);
        return v;
    }
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = (v : stdgo.GoUInt8);
        return v;
    }
    public var k(get, set) : std.UInt;
    function get_k():std.UInt return this.k;
    function set_k(v:std.UInt):std.UInt {
        this.k = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?c:std.UInt, ?m:std.UInt, ?y:std.UInt, ?k:std.UInt) this = new stdgo._internal.image.color.Color_cmyk.CMYK((c : stdgo.GoUInt8), (m : stdgo.GoUInt8), (y : stdgo.GoUInt8), (k : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Palette = stdgo._internal.image.color.Color_palette.Palette;
typedef RGBAPointer = stdgo._internal.image.color.Color_rgbapointer.RGBAPointer;
class RGBA_static_extension {
    static public function rGBA(_c:RGBA):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_rgba_static_extension.RGBA_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef RGBA64Pointer = stdgo._internal.image.color.Color_rgba64pointer.RGBA64Pointer;
class RGBA64_static_extension {
    static public function rGBA(_c:RGBA64):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_rgba64_static_extension.RGBA64_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef NRGBAPointer = stdgo._internal.image.color.Color_nrgbapointer.NRGBAPointer;
class NRGBA_static_extension {
    static public function rGBA(_c:NRGBA):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_nrgba_static_extension.NRGBA_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef NRGBA64Pointer = stdgo._internal.image.color.Color_nrgba64pointer.NRGBA64Pointer;
class NRGBA64_static_extension {
    static public function rGBA(_c:NRGBA64):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_nrgba64_static_extension.NRGBA64_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef AlphaPointer = stdgo._internal.image.color.Color_alphapointer.AlphaPointer;
class Alpha_static_extension {
    static public function rGBA(_c:Alpha):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_alpha_static_extension.Alpha_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef Alpha16Pointer = stdgo._internal.image.color.Color_alpha16pointer.Alpha16Pointer;
class Alpha16_static_extension {
    static public function rGBA(_c:Alpha16):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_alpha16_static_extension.Alpha16_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef GrayPointer = stdgo._internal.image.color.Color_graypointer.GrayPointer;
class Gray_static_extension {
    static public function rGBA(_c:Gray):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_gray_static_extension.Gray_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef Gray16Pointer = stdgo._internal.image.color.Color_gray16pointer.Gray16Pointer;
class Gray16_static_extension {
    static public function rGBA(_c:Gray16):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_gray16_static_extension.Gray16_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
@:dox(hide) typedef T_modelFuncPointer = stdgo._internal.image.color.Color_t_modelfuncpointer.T_modelFuncPointer;
@:dox(hide) class T_modelFunc_static_extension {
    static public function convert(_m:T_modelFunc, _c:Color_):Color_ {
        final _m = (_m : stdgo.Ref<stdgo._internal.image.color.Color_t_modelfunc.T_modelFunc>);
        return stdgo._internal.image.color.Color_t_modelfunc_static_extension.T_modelFunc_static_extension.convert(_m, _c);
    }
}
typedef YCbCrPointer = stdgo._internal.image.color.Color_ycbcrpointer.YCbCrPointer;
class YCbCr_static_extension {
    static public function rGBA(_c:YCbCr):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_ycbcr_static_extension.YCbCr_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef NYCbCrAPointer = stdgo._internal.image.color.Color_nycbcrapointer.NYCbCrAPointer;
class NYCbCrA_static_extension {
    static public function rGBA(_c:NYCbCrA):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_nycbcra_static_extension.NYCbCrA_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef CMYKPointer = stdgo._internal.image.color.Color_cmykpointer.CMYKPointer;
class CMYK_static_extension {
    static public function rGBA(_c:CMYK):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_cmyk_static_extension.CMYK_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef PalettePointer = stdgo._internal.image.color.Color_palettepointer.PalettePointer;
class Palette_static_extension {
    static public function index(_p:Palette, _c:Color_):StdTypes.Int {
        return stdgo._internal.image.color.Color_palette_static_extension.Palette_static_extension.index(_p, _c);
    }
    static public function convert(_p:Palette, _c:Color_):Color_ {
        return stdgo._internal.image.color.Color_palette_static_extension.Palette_static_extension.convert(_p, _c);
    }
}
/**
    * Package color implements a basic color library.
**/
class Color {
    /**
        * ModelFunc returns a Model that invokes f to implement the conversion.
    **/
    static public inline function modelFunc(_f:Color_ -> Color_):Model {
        final _f = _f;
        return stdgo._internal.image.color.Color_modelfunc.modelFunc(_f);
    }
    static public inline function testSqDiff(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testsqdiff.testSqDiff(_t);
    }
    /**
        * RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
    **/
    static public inline function rGBToYCbCr(_r:std.UInt, _g:std.UInt, _b:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        final _r = (_r : stdgo.GoUInt8);
        final _g = (_g : stdgo.GoUInt8);
        final _b = (_b : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.color.Color_rgbtoycbcr.rGBToYCbCr(_r, _g, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
    **/
    static public inline function yCbCrToRGB(_y:std.UInt, _cb:std.UInt, _cr:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        final _y = (_y : stdgo.GoUInt8);
        final _cb = (_cb : stdgo.GoUInt8);
        final _cr = (_cr : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.color.Color_ycbcrtorgb.yCbCrToRGB(_y, _cb, _cr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * RGBToCMYK converts an RGB triple to a CMYK quadruple.
    **/
    static public inline function rGBToCMYK(_r:std.UInt, _g:std.UInt, _b:std.UInt):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        final _r = (_r : stdgo.GoUInt8);
        final _g = (_g : stdgo.GoUInt8);
        final _b = (_b : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.color.Color_rgbtocmyk.rGBToCMYK(_r, _g, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        * CMYKToRGB converts a CMYK quadruple to an RGB triple.
    **/
    static public inline function cMYKToRGB(_c:std.UInt, _m:std.UInt, _y:std.UInt, _k:std.UInt):stdgo.Tuple.Tuple3<std.UInt, std.UInt, std.UInt> {
        final _c = (_c : stdgo.GoUInt8);
        final _m = (_m : stdgo.GoUInt8);
        final _y = (_y : stdgo.GoUInt8);
        final _k = (_k : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.color.Color_cmyktorgb.cMYKToRGB(_c, _m, _y, _k);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
        * and back to within 2/256 tolerance.
    **/
    static public inline function testYCbCrRoundtrip(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testycbcrroundtrip.testYCbCrRoundtrip(_t);
    }
    /**
        * TestYCbCrToRGBConsistency tests that calling the RGBA method (16 bit color)
        * then truncating to 8 bits is equivalent to calling the YCbCrToRGB function (8
        * bit color).
    **/
    static public inline function testYCbCrToRGBConsistency(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testycbcrtorgbconsistency.testYCbCrToRGBConsistency(_t);
    }
    /**
        * TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.
    **/
    static public inline function testYCbCrGray(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testycbcrgray.testYCbCrGray(_t);
    }
    /**
        * TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.
    **/
    static public inline function testNYCbCrAAlpha(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testnycbcraalpha.testNYCbCrAAlpha(_t);
    }
    /**
        * TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.
    **/
    static public inline function testNYCbCrAYCbCr(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testnycbcraycbcr.testNYCbCrAYCbCr(_t);
    }
    /**
        * TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
        * and back to within 1/256 tolerance.
    **/
    static public inline function testCMYKRoundtrip(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testcmykroundtrip.testCMYKRoundtrip(_t);
    }
    /**
        * TestCMYKToRGBConsistency tests that calling the RGBA method (16 bit color)
        * then truncating to 8 bits is equivalent to calling the CMYKToRGB function (8
        * bit color).
    **/
    static public inline function testCMYKToRGBConsistency(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testcmyktorgbconsistency.testCMYKToRGBConsistency(_t);
    }
    /**
        * TestCMYKGray tests that CMYK colors are a superset of Gray colors.
    **/
    static public inline function testCMYKGray(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testcmykgray.testCMYKGray(_t);
    }
    static public inline function testPalette(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.color.Color_testpalette.testPalette(_t);
    }
    static public inline function benchmarkYCbCrToRGB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.color.Color_benchmarkycbcrtorgb.benchmarkYCbCrToRGB(_b);
    }
    static public inline function benchmarkRGBToYCbCr(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.color.Color_benchmarkrgbtoycbcr.benchmarkRGBToYCbCr(_b);
    }
    static public inline function benchmarkYCbCrToRGBA(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.color.Color_benchmarkycbcrtorgba.benchmarkYCbCrToRGBA(_b);
    }
    static public inline function benchmarkNYCbCrAToRGBA(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.color.Color_benchmarknycbcratorgba.benchmarkNYCbCrAToRGBA(_b);
    }
}
