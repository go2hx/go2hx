package stdgo._internal.image.color;
private var __go2hxdoc__package : Bool;
var _sink8 : stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _sink32 : stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var rgbamodel : stdgo._internal.image.color.Color.Model = modelFunc(_rgbaModel);
var rgba64model : stdgo._internal.image.color.Color.Model = modelFunc(_rgba64Model);
var nrgbamodel : stdgo._internal.image.color.Color.Model = modelFunc(_nrgbaModel);
var nrgba64model : stdgo._internal.image.color.Color.Model = modelFunc(_nrgba64Model);
var alphaModel : stdgo._internal.image.color.Color.Model = modelFunc(_alphaModel);
var alpha16Model : stdgo._internal.image.color.Color.Model = modelFunc(_alpha16Model);
var grayModel : stdgo._internal.image.color.Color.Model = modelFunc(_grayModel);
var gray16Model : stdgo._internal.image.color.Color.Model = modelFunc(_gray16Model);
var black : stdgo._internal.image.color.Color.Gray16 = (new stdgo._internal.image.color.Color.Gray16((0 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Gray16);
var white : stdgo._internal.image.color.Color.Gray16 = (new stdgo._internal.image.color.Color.Gray16((65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Gray16);
var transparent : stdgo._internal.image.color.Color.Alpha16 = (new stdgo._internal.image.color.Color.Alpha16((0 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Alpha16);
var opaque : stdgo._internal.image.color.Color.Alpha16 = (new stdgo._internal.image.color.Color.Alpha16((65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Alpha16);
var ycbCrModel : stdgo._internal.image.color.Color.Model = modelFunc(_yCbCrModel);
var nycbCrAModel : stdgo._internal.image.color.Color.Model = modelFunc(_nYCbCrAModel);
var cmykmodel : stdgo._internal.image.color.Color.Model = modelFunc(_cmykModel);
@:keep class Color_static_extension {
    static public function rgba(t:Color):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return t.rgba();
}
typedef Color = stdgo.StructType & {
    /**
        RGBA returns the alpha-premultiplied red, green, blue and alpha values
        for the color. Each value ranges within [0, 0xffff], but is represented
        by a uint32 so that multiplying by a blend factor up to 0xffff will not
        overflow.
        
        An alpha-premultiplied color component c has been scaled by alpha (a),
        so has valid values 0 <= c <= a.
        
        
    **/
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; };
};
@:keep class Model_static_extension {
    static public function convert(t:Model, _c:Color):Color return t.convert(_c);
}
typedef Model = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function convert(_c:Color):Color;
};
@:structInit @:using(stdgo._internal.image.color.Color.RGBA_static_extension) class RGBA {
    public var r : stdgo.GoUInt8 = 0;
    public var g : stdgo.GoUInt8 = 0;
    public var b : stdgo.GoUInt8 = 0;
    public var a : stdgo.GoUInt8 = 0;
    public function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RGBA(r, g, b, a);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.RGBA64_static_extension) class RGBA64 {
    public var r : stdgo.GoUInt16 = 0;
    public var g : stdgo.GoUInt16 = 0;
    public var b : stdgo.GoUInt16 = 0;
    public var a : stdgo.GoUInt16 = 0;
    public function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RGBA64(r, g, b, a);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.NRGBA_static_extension) class NRGBA {
    public var r : stdgo.GoUInt8 = 0;
    public var g : stdgo.GoUInt8 = 0;
    public var b : stdgo.GoUInt8 = 0;
    public var a : stdgo.GoUInt8 = 0;
    public function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NRGBA(r, g, b, a);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.NRGBA64_static_extension) class NRGBA64 {
    public var r : stdgo.GoUInt16 = 0;
    public var g : stdgo.GoUInt16 = 0;
    public var b : stdgo.GoUInt16 = 0;
    public var a : stdgo.GoUInt16 = 0;
    public function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NRGBA64(r, g, b, a);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.Alpha_static_extension) class Alpha {
    public var a : stdgo.GoUInt8 = 0;
    public function new(?a:stdgo.GoUInt8) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha(a);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.Alpha16_static_extension) class Alpha16 {
    public var a : stdgo.GoUInt16 = 0;
    public function new(?a:stdgo.GoUInt16) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha16(a);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.Gray_static_extension) class Gray {
    public var y : stdgo.GoUInt8 = 0;
    public function new(?y:stdgo.GoUInt8) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray(y);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.Gray16_static_extension) class Gray16 {
    public var y : stdgo.GoUInt16 = 0;
    public function new(?y:stdgo.GoUInt16) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray16(y);
    }
}
@:structInit @:private @:using(stdgo._internal.image.color.Color.T_modelFunc_static_extension) class T_modelFunc {
    public var _f : stdgo._internal.image.color.Color.Color -> stdgo._internal.image.color.Color.Color = null;
    public function new(?_f:stdgo._internal.image.color.Color.Color -> stdgo._internal.image.color.Color.Color) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_modelFunc(_f);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.YCbCr_static_extension) class YCbCr {
    public var y : stdgo.GoUInt8 = 0;
    public var cb : stdgo.GoUInt8 = 0;
    public var cr : stdgo.GoUInt8 = 0;
    public function new(?y:stdgo.GoUInt8, ?cb:stdgo.GoUInt8, ?cr:stdgo.GoUInt8) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new YCbCr(y, cb, cr);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.NYCbCrA_static_extension) class NYCbCrA {
    @:embedded
    public var ycbCr : stdgo._internal.image.color.Color.YCbCr = ({} : stdgo._internal.image.color.Color.YCbCr);
    public var a : stdgo.GoUInt8 = 0;
    public function new(?ycbCr:stdgo._internal.image.color.Color.YCbCr, ?a:stdgo.GoUInt8) {
        if (ycbCr != null) this.ycbCr = ycbCr;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NYCbCrA(ycbCr, a);
    }
}
@:structInit @:using(stdgo._internal.image.color.Color.CMYK_static_extension) class CMYK {
    public var c : stdgo.GoUInt8 = 0;
    public var m : stdgo.GoUInt8 = 0;
    public var y : stdgo.GoUInt8 = 0;
    public var k : stdgo.GoUInt8 = 0;
    public function new(?c:stdgo.GoUInt8, ?m:stdgo.GoUInt8, ?y:stdgo.GoUInt8, ?k:stdgo.GoUInt8) {
        if (c != null) this.c = c;
        if (m != null) this.m = m;
        if (y != null) this.y = y;
        if (k != null) this.k = k;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CMYK(c, m, y, k);
    }
}
@:named @:using(stdgo._internal.image.color.Color.Palette_static_extension) typedef Palette = stdgo.Slice<stdgo._internal.image.color.Color.Color>;
function modelFunc(_f:Color -> Color):Model {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.color.Color.T_modelFunc(_f) : stdgo._internal.image.color.Color.T_modelFunc)) : stdgo.Ref<stdgo._internal.image.color.Color.T_modelFunc>));
    }
function _rgbaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : RGBA)) : RGBA), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.RGBA), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA));
    }
function _rgba64Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : RGBA64)) : RGBA64), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.RGBA64), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64));
    }
function _nrgbaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : NRGBA)) : NRGBA), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.NRGBA), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        if (_a == ((65535u32 : stdgo.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NRGBA(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NRGBA));
        };
        if (_a == ((0u32 : stdgo.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NRGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NRGBA));
        };
        _r = (((_r * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        _g = (((_g * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        _b = (((_b * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NRGBA(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NRGBA));
    }
function _nrgba64Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : NRGBA64)) : NRGBA64), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.NRGBA64), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        if (_a == ((65535u32 : stdgo.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NRGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.NRGBA64));
        };
        if (_a == ((0u32 : stdgo.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NRGBA64((0 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (0 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.NRGBA64));
        };
        _r = (((_r * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        _g = (((_g * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        _b = (((_b * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NRGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.NRGBA64));
    }
function _alphaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : Alpha)) : Alpha), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.Alpha), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), __1:stdgo.GoUInt32 = __tmp__._0, __2:stdgo.GoUInt32 = __tmp__._1, __3:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.Alpha(((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.Alpha));
    }
function _alpha16Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : Alpha16)) : Alpha16), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.Alpha16), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), __1:stdgo.GoUInt32 = __tmp__._0, __2:stdgo.GoUInt32 = __tmp__._1, __3:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.Alpha16((_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Alpha16));
    }
function _grayModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : Gray)) : Gray), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.Gray), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __1:stdgo.GoUInt32 = __tmp__._3;
        var _y = (((((((19595u32 : stdgo.GoUInt32) * _r : stdgo.GoUInt32) + ((38470u32 : stdgo.GoUInt32) * _g : stdgo.GoUInt32) : stdgo.GoUInt32) + ((7471u32 : stdgo.GoUInt32) * _b : stdgo.GoUInt32) : stdgo.GoUInt32) + (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.Gray((_y : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.Gray));
    }
function _gray16Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : Gray16)) : Gray16), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.Gray16), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __1:stdgo.GoUInt32 = __tmp__._3;
        var _y = (((((((19595u32 : stdgo.GoUInt32) * _r : stdgo.GoUInt32) + ((38470u32 : stdgo.GoUInt32) * _g : stdgo.GoUInt32) : stdgo.GoUInt32) + ((7471u32 : stdgo.GoUInt32) * _b : stdgo.GoUInt32) : stdgo.GoUInt32) + (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.Gray16((_y : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Gray16));
    }
function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 {
        var _d = (_x - _y : stdgo.GoUInt32);
        return (((_d * _d : stdgo.GoUInt32)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _orig = (function(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 {
            var _d:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            if ((_x > _y : Bool)) {
                _d = (_x - _y : stdgo.GoUInt32);
            } else {
                _d = (_y - _x : stdgo.GoUInt32);
            };
            return (((_d * _d : stdgo.GoUInt32)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        } : (stdgo.GoUInt32, stdgo.GoUInt32) -> stdgo.GoUInt32);
        var _testCases = (new stdgo.Slice<stdgo.GoUInt32>(12, 12, ...[
(0u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(65533u32 : stdgo.GoUInt32),
(65534u32 : stdgo.GoUInt32),
(65535u32 : stdgo.GoUInt32),
(65536u32 : stdgo.GoUInt32),
(65537u32 : stdgo.GoUInt32),
(65538u32 : stdgo.GoUInt32),
(-3u32 : stdgo.GoUInt32),
(-2u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        for (__0 => _x in _testCases) {
            for (__1 => _y in _testCases) {
                {
                    var __0 = (_sqDiff(_x, _y) : stdgo.GoUInt32), __1 = (_orig(_x, _y) : stdgo.GoUInt32);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        _t.fatalf(("sqDiff(%#x, %#x): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick.checkEqual(stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_sqDiff), (stdgo.Go.setRef(({ maxCountScale : (10 : stdgo.GoFloat64) } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } {
        var _r1 = (_r : stdgo.GoInt32);
        var _g1 = (_g : stdgo.GoInt32);
        var _b1 = (_b : stdgo.GoInt32);
        var _yy = (((((((19595 : stdgo.GoInt32) * _r1 : stdgo.GoInt32) + ((38470 : stdgo.GoInt32) * _g1 : stdgo.GoInt32) : stdgo.GoInt32) + ((7471 : stdgo.GoInt32) * _b1 : stdgo.GoInt32) : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32)) >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32);
        var _cb = (((((-11056 : stdgo.GoInt32) * _r1 : stdgo.GoInt32) - ((21712 : stdgo.GoInt32) * _g1 : stdgo.GoInt32) : stdgo.GoInt32) + ((32768 : stdgo.GoInt32) * _b1 : stdgo.GoInt32) : stdgo.GoInt32) + (8421376 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_cb : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _cb = (_cb >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _cb = (-1 ^ (_cb >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        var _cr = (((((32768 : stdgo.GoInt32) * _r1 : stdgo.GoInt32) - ((27440 : stdgo.GoInt32) * _g1 : stdgo.GoInt32) : stdgo.GoInt32) - ((5328 : stdgo.GoInt32) * _b1 : stdgo.GoInt32) : stdgo.GoInt32) + (8421376 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_cr : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _cr = (_cr >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _cr = (-1 ^ (_cr >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        return { _0 : (_yy : stdgo.GoUInt8), _1 : (_cb : stdgo.GoUInt8), _2 : (_cr : stdgo.GoUInt8) };
    }
function ycbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } {
        var _yy1 = ((_y : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cb1 = ((_cb : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cr1 = ((_cr : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _r = (_r >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _r = (-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _g = (_g >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _g = (-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _b = (_b >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _b = (-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        return { _0 : (_r : stdgo.GoUInt8), _1 : (_g : stdgo.GoUInt8), _2 : (_b : stdgo.GoUInt8) };
    }
function _yCbCrModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : YCbCr)) : YCbCr), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.YCbCr), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __1:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = rgbtoYCbCr(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)), _y:stdgo.GoUInt8 = __tmp__._0, _u:stdgo.GoUInt8 = __tmp__._1, _v:stdgo.GoUInt8 = __tmp__._2;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.YCbCr(_y, _u, _v) : stdgo._internal.image.color.Color.YCbCr));
    }
function _nYCbCrAModel(_c:Color):Color {
        {
            final __type__ = _c;
            if (stdgo.Go.typeEquals((__type__ : NYCbCrA))) {
                var _c:stdgo._internal.image.color.Color.NYCbCrA = __type__ == null ? ({} : stdgo._internal.image.color.Color.NYCbCrA) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.color.Color.NYCbCrA) : __type__ == null ? ({} : stdgo._internal.image.color.Color.NYCbCrA) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_c);
            } else if (stdgo.Go.typeEquals((__type__ : YCbCr))) {
                var _c:stdgo._internal.image.color.Color.YCbCr = __type__ == null ? ({} : stdgo._internal.image.color.Color.YCbCr) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.color.Color.YCbCr) : __type__ == null ? ({} : stdgo._internal.image.color.Color.YCbCr) : __type__.__underlying__().value;
                return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NYCbCrA(_c?.__copy__(), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NYCbCrA));
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        if (_a != ((0u32 : stdgo.GoUInt32))) {
            _r = (((_r * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
            _g = (((_g * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
            _b = (((_b * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        };
        var __tmp__ = rgbtoYCbCr(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)), _y:stdgo.GoUInt8 = __tmp__._0, _u:stdgo.GoUInt8 = __tmp__._1, _v:stdgo.GoUInt8 = __tmp__._2;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NYCbCrA(({ y : _y, cb : _u, cr : _v } : stdgo._internal.image.color.Color.YCbCr), ((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NYCbCrA));
    }
function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; var _3 : stdgo.GoUInt8; } {
        var _rr = (_r : stdgo.GoUInt32);
        var _gg = (_g : stdgo.GoUInt32);
        var _bb = (_b : stdgo.GoUInt32);
        var _w = (_rr : stdgo.GoUInt32);
        if ((_w < _gg : Bool)) {
            _w = _gg;
        };
        if ((_w < _bb : Bool)) {
            _w = _bb;
        };
        if (_w == ((0u32 : stdgo.GoUInt32))) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : (0 : stdgo.GoUInt8), _2 : (0 : stdgo.GoUInt8), _3 : (255 : stdgo.GoUInt8) };
        };
        var _c = ((((_w - _rr : stdgo.GoUInt32)) * (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _w : stdgo.GoUInt32);
        var _m = ((((_w - _gg : stdgo.GoUInt32)) * (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _w : stdgo.GoUInt32);
        var _y = ((((_w - _bb : stdgo.GoUInt32)) * (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _w : stdgo.GoUInt32);
        return { _0 : (_c : stdgo.GoUInt8), _1 : (_m : stdgo.GoUInt8), _2 : (_y : stdgo.GoUInt8), _3 : (((255u32 : stdgo.GoUInt32) - _w : stdgo.GoUInt32) : stdgo.GoUInt8) };
    }
function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } {
        var _w = ((65535u32 : stdgo.GoUInt32) - ((_k : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _r = (((((65535u32 : stdgo.GoUInt32) - ((_c : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _g = (((((65535u32 : stdgo.GoUInt32) - ((_m : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _b = (((((65535u32 : stdgo.GoUInt32) - ((_y : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : ((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), _1 : ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), _2 : ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) };
    }
function _cmykModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : CMYK)) : CMYK), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color.CMYK), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __1:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = rgbtoCMYK(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)), _cc:stdgo.GoUInt8 = __tmp__._0, _mm:stdgo.GoUInt8 = __tmp__._1, _yy:stdgo.GoUInt8 = __tmp__._2, _kk:stdgo.GoUInt8 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color.CMYK(_cc, _mm, _yy, _kk) : stdgo._internal.image.color.Color.CMYK));
    }
function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8 {
        if ((_x >= _y : Bool)) {
            return (_x - _y : stdgo.GoUInt8);
        };
        return (_y - _x : stdgo.GoUInt8);
    }
function _eq(_c0:Color, _c1:Color):stdgo.Error {
        var __tmp__ = _c0.rgba(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, _a0:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = _c1.rgba(), _r1:stdgo.GoUInt32 = __tmp__._0, _g1:stdgo.GoUInt32 = __tmp__._1, _b1:stdgo.GoUInt32 = __tmp__._2, _a1:stdgo.GoUInt32 = __tmp__._3;
        if ((((_r0 != (_r1) || _g0 != (_g1) : Bool) || _b0 != (_b1) : Bool) || (_a0 != _a1) : Bool)) {
            return stdgo._internal.fmt.Fmt.errorf(("got  0x%04x 0x%04x 0x%04x 0x%04x\nwant 0x%04x 0x%04x 0x%04x 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_r0), stdgo.Go.toInterface(_g0), stdgo.Go.toInterface(_b0), stdgo.Go.toInterface(_a0), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_g1), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_a1));
        };
        return (null : stdgo.Error);
    }
function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _r = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_r < (256 : stdgo.GoInt) : Bool), _r = (_r + ((7 : stdgo.GoInt)) : stdgo.GoInt), {
                {
                    var _g = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_g < (256 : stdgo.GoInt) : Bool), _g = (_g + ((5 : stdgo.GoInt)) : stdgo.GoInt), {
                        {
                            var _b = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_b < (256 : stdgo.GoInt) : Bool), _b = (_b + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                                var __0 = (_r : stdgo.GoUInt8), __1 = (_g : stdgo.GoUInt8), __2 = (_b : stdgo.GoUInt8);
var _b0 = __2, _g0 = __1, _r0 = __0;
                                var __tmp__ = rgbtoYCbCr(_r0, _g0, _b0), _y:stdgo.GoUInt8 = __tmp__._0, _cb:stdgo.GoUInt8 = __tmp__._1, _cr:stdgo.GoUInt8 = __tmp__._2;
                                var __tmp__ = ycbCrToRGB(_y, _cb, _cr), _r1:stdgo.GoUInt8 = __tmp__._0, _g1:stdgo.GoUInt8 = __tmp__._1, _b1:stdgo.GoUInt8 = __tmp__._2;
                                if ((((_delta(_r0, _r1) > (2 : stdgo.GoUInt8) : Bool) || (_delta(_g0, _g1) > (2 : stdgo.GoUInt8) : Bool) : Bool) || (_delta(_b0, _b1) > (2 : stdgo.GoUInt8) : Bool) : Bool)) {
                                    _t.fatalf(("\nr0, g0, b0 = %d, %d, %d\ny,  cb, cr = %d, %d, %d\nr1, g1, b1 = %d, %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_r0), stdgo.Go.toInterface(_g0), stdgo.Go.toInterface(_b0), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_cb), stdgo.Go.toInterface(_cr), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_g1), stdgo.Go.toInterface(_b1));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _y = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_y < (256 : stdgo.GoInt) : Bool), _y = (_y + ((7 : stdgo.GoInt)) : stdgo.GoInt), {
                {
                    var _cb = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_cb < (256 : stdgo.GoInt) : Bool), _cb = (_cb + ((5 : stdgo.GoInt)) : stdgo.GoInt), {
                        {
                            var _cr = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_cr < (256 : stdgo.GoInt) : Bool), _cr = (_cr + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                                var _x = (new stdgo._internal.image.color.Color.YCbCr((_y : stdgo.GoUInt8), (_cb : stdgo.GoUInt8), (_cr : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr);
                                var __tmp__ = _x.rgba(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, __0:stdgo.GoUInt32 = __tmp__._3;
                                var __0 = ((_r0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), __1 = ((_g0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), __2 = ((_b0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
var _b1 = __2, _g1 = __1, _r1 = __0;
                                var __tmp__ = ycbCrToRGB(_x.y, _x.cb, _x.cr), _r2:stdgo.GoUInt8 = __tmp__._0, _g2:stdgo.GoUInt8 = __tmp__._1, _b2:stdgo.GoUInt8 = __tmp__._2;
                                if (((_r1 != (_r2) || _g1 != (_g2) : Bool) || (_b1 != _b2) : Bool)) {
                                    _t.fatalf(("y, cb, cr = %d, %d, %d\nr1, g1, b1 = %d, %d, %d\nr2, g2, b2 = %d, %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_cb), stdgo.Go.toInterface(_cr), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_g1), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_g2), stdgo.Go.toInterface(_b2));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testYCbCrGray(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _c0 = (new stdgo._internal.image.color.Color.YCbCr((_i : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr);
                var _c1 = (new stdgo._internal.image.color.Color.Gray((_i : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.Gray);
                {
                    var _err = (_eq(stdgo.Go.asInterface(_c0), stdgo.Go.asInterface(_c1)) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _c0 = (new stdgo._internal.image.color.Color.NYCbCrA((new stdgo._internal.image.color.Color.YCbCr((255 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr), (_i : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NYCbCrA);
                var _c1 = (new stdgo._internal.image.color.Color.Alpha((_i : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.Alpha);
                {
                    var _err = (_eq(stdgo.Go.asInterface(_c0), stdgo.Go.asInterface(_c1)) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _c0 = (new stdgo._internal.image.color.Color.NYCbCrA((new stdgo._internal.image.color.Color.YCbCr((_i : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (192 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NYCbCrA);
                var _c1 = (new stdgo._internal.image.color.Color.YCbCr((_i : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (192 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr);
                {
                    var _err = (_eq(stdgo.Go.asInterface(_c0), stdgo.Go.asInterface(_c1)) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
function testCMYKRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _r = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_r < (256 : stdgo.GoInt) : Bool), _r = (_r + ((7 : stdgo.GoInt)) : stdgo.GoInt), {
                {
                    var _g = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_g < (256 : stdgo.GoInt) : Bool), _g = (_g + ((5 : stdgo.GoInt)) : stdgo.GoInt), {
                        {
                            var _b = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_b < (256 : stdgo.GoInt) : Bool), _b = (_b + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                                var __0 = (_r : stdgo.GoUInt8), __1 = (_g : stdgo.GoUInt8), __2 = (_b : stdgo.GoUInt8);
var _b0 = __2, _g0 = __1, _r0 = __0;
                                var __tmp__ = rgbtoCMYK(_r0, _g0, _b0), _c:stdgo.GoUInt8 = __tmp__._0, _m:stdgo.GoUInt8 = __tmp__._1, _y:stdgo.GoUInt8 = __tmp__._2, _k:stdgo.GoUInt8 = __tmp__._3;
                                var __tmp__ = cmyktoRGB(_c, _m, _y, _k), _r1:stdgo.GoUInt8 = __tmp__._0, _g1:stdgo.GoUInt8 = __tmp__._1, _b1:stdgo.GoUInt8 = __tmp__._2;
                                if ((((_delta(_r0, _r1) > (1 : stdgo.GoUInt8) : Bool) || (_delta(_g0, _g1) > (1 : stdgo.GoUInt8) : Bool) : Bool) || (_delta(_b0, _b1) > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                                    _t.fatalf(("\nr0, g0, b0 = %d, %d, %d\nc, m, y, k = %d, %d, %d, %d\nr1, g1, b1 = %d, %d, %d" : stdgo.GoString),
stdgo.Go.toInterface(_r0),
stdgo.Go.toInterface(_g0),
stdgo.Go.toInterface(_b0),
stdgo.Go.toInterface(_c),
stdgo.Go.toInterface(_m),
stdgo.Go.toInterface(_y),
stdgo.Go.toInterface(_k),
stdgo.Go.toInterface(_r1),
stdgo.Go.toInterface(_g1),
stdgo.Go.toInterface(_b1));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _c = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_c < (256 : stdgo.GoInt) : Bool), _c = (_c + ((7 : stdgo.GoInt)) : stdgo.GoInt), {
                {
                    var _m = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_m < (256 : stdgo.GoInt) : Bool), _m = (_m + ((5 : stdgo.GoInt)) : stdgo.GoInt), {
                        {
                            var _y = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_y < (256 : stdgo.GoInt) : Bool), _y = (_y + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                                {
                                    var _k = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_k < (256 : stdgo.GoInt) : Bool), _k = (_k + ((11 : stdgo.GoInt)) : stdgo.GoInt), {
                                        var _x = (new stdgo._internal.image.color.Color.CMYK((_c : stdgo.GoUInt8), (_m : stdgo.GoUInt8), (_y : stdgo.GoUInt8), (_k : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.CMYK);
                                        var __tmp__ = _x.rgba(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, __0:stdgo.GoUInt32 = __tmp__._3;
                                        var __0 = ((_r0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), __1 = ((_g0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), __2 = ((_b0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
var _b1 = __2, _g1 = __1, _r1 = __0;
                                        var __tmp__ = cmyktoRGB(_x.c, _x.m, _x.y, _x.k), _r2:stdgo.GoUInt8 = __tmp__._0, _g2:stdgo.GoUInt8 = __tmp__._1, _b2:stdgo.GoUInt8 = __tmp__._2;
                                        if (((_r1 != (_r2) || _g1 != (_g2) : Bool) || (_b1 != _b2) : Bool)) {
                                            _t.fatalf(("c, m, y, k = %d, %d, %d, %d\nr1, g1, b1 = %d, %d, %d\nr2, g2, b2 = %d, %d, %d" : stdgo.GoString),
stdgo.Go.toInterface(_c),
stdgo.Go.toInterface(_m),
stdgo.Go.toInterface(_y),
stdgo.Go.toInterface(_k),
stdgo.Go.toInterface(_r1),
stdgo.Go.toInterface(_g1),
stdgo.Go.toInterface(_b1),
stdgo.Go.toInterface(_r2),
stdgo.Go.toInterface(_g2),
stdgo.Go.toInterface(_b2));
                                        };
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _err = (_eq(stdgo.Go.asInterface((new stdgo._internal.image.color.Color.CMYK((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (((255 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.CMYK)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color.Gray((_i : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.Gray))) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
function testPalette(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _p = (new stdgo.Slice<stdgo._internal.image.color.Color.Color>(6, 6, ...[stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA((128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA((127 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA((64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA))]) : stdgo._internal.image.color.Color.Palette);
        for (_i => _c in _p) {
            var _j = (_p.index(_c) : stdgo.GoInt);
            if (_i != (_j)) {
                _t.errorf(("Index(%v): got %d (color = %v), want %d" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_p[(_j : stdgo.GoInt)]), stdgo.Go.toInterface(_i));
            };
        };
        var _got = (_p.convert(stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA((128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA))) : stdgo._internal.image.color.Color.Color);
        var _want = (new stdgo._internal.image.color.Color.RGBA((127 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA);
        if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("128" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("255" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
    }
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("Cb" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("Cr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((255 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
    }
function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _c = (new stdgo._internal.image.color.Color.YCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = _c.rgba();
                        _sink32 = __tmp__._0;
                        _sink32 = __tmp__._1;
                        _sink32 = __tmp__._2;
                        _sink32 = __tmp__._3;
                    };
                });
            };
        });
        _b.run(("128" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _c = (new stdgo._internal.image.color.Color.YCbCr((128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = _c.rgba();
                        _sink32 = __tmp__._0;
                        _sink32 = __tmp__._1;
                        _sink32 = __tmp__._2;
                        _sink32 = __tmp__._3;
                    };
                });
            };
        });
        _b.run(("255" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _c = (new stdgo._internal.image.color.Color.YCbCr((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = _c.rgba();
                        _sink32 = __tmp__._0;
                        _sink32 = __tmp__._1;
                        _sink32 = __tmp__._2;
                        _sink32 = __tmp__._3;
                    };
                });
            };
        });
    }
function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _c = (new stdgo._internal.image.color.Color.NYCbCrA((new stdgo._internal.image.color.Color.YCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NYCbCrA);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = _c.rgba();
                        _sink32 = __tmp__._0;
                        _sink32 = __tmp__._1;
                        _sink32 = __tmp__._2;
                        _sink32 = __tmp__._3;
                    };
                });
            };
        });
        _b.run(("128" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _c = (new stdgo._internal.image.color.Color.NYCbCrA((new stdgo._internal.image.color.Color.YCbCr((128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NYCbCrA);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = _c.rgba();
                        _sink32 = __tmp__._0;
                        _sink32 = __tmp__._1;
                        _sink32 = __tmp__._2;
                        _sink32 = __tmp__._3;
                    };
                });
            };
        });
        _b.run(("255" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _c = (new stdgo._internal.image.color.Color.NYCbCrA((new stdgo._internal.image.color.Color.YCbCr((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.YCbCr), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NYCbCrA);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = _c.rgba();
                        _sink32 = __tmp__._0;
                        _sink32 = __tmp__._1;
                        _sink32 = __tmp__._2;
                        _sink32 = __tmp__._3;
                    };
                });
            };
        });
    }
class RGBA_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RGBA>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.RGBA_asInterface) class RGBA_static_extension {
    @:keep
    static public function rgba( _c:RGBA):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:RGBA = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        _r = (_c.r : stdgo.GoUInt32);
        _r = (_r | ((_r << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _g = (_c.g : stdgo.GoUInt32);
        _g = (_g | ((_g << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _b = (_c.b : stdgo.GoUInt32);
        _b = (_b | ((_b << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _a = (_c.a : stdgo.GoUInt32);
        _a = (_a | ((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class RGBA64_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RGBA64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.RGBA64_asInterface) class RGBA64_static_extension {
    @:keep
    static public function rgba( _c:RGBA64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:RGBA64 = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        return { _0 : (_c.r : stdgo.GoUInt32), _1 : (_c.g : stdgo.GoUInt32), _2 : (_c.b : stdgo.GoUInt32), _3 : (_c.a : stdgo.GoUInt32) };
    }
}
class NRGBA_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NRGBA>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.NRGBA_asInterface) class NRGBA_static_extension {
    @:keep
    static public function rgba( _c:NRGBA):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:NRGBA = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        _r = (_c.r : stdgo.GoUInt32);
        _r = (_r | ((_r << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _r = (_r * ((_c.a : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _r = (_r / ((255u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _g = (_c.g : stdgo.GoUInt32);
        _g = (_g | ((_g << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _g = (_g * ((_c.a : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _g = (_g / ((255u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _b = (_c.b : stdgo.GoUInt32);
        _b = (_b | ((_b << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _b = (_b * ((_c.a : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _b = (_b / ((255u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _a = (_c.a : stdgo.GoUInt32);
        _a = (_a | ((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class NRGBA64_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NRGBA64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.NRGBA64_asInterface) class NRGBA64_static_extension {
    @:keep
    static public function rgba( _c:NRGBA64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:NRGBA64 = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        _r = (_c.r : stdgo.GoUInt32);
        _r = (_r * ((_c.a : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _r = (_r / ((65535u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _g = (_c.g : stdgo.GoUInt32);
        _g = (_g * ((_c.a : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _g = (_g / ((65535u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _b = (_c.b : stdgo.GoUInt32);
        _b = (_b * ((_c.a : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _b = (_b / ((65535u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _a = (_c.a : stdgo.GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class Alpha_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Alpha>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.Alpha_asInterface) class Alpha_static_extension {
    @:keep
    static public function rgba( _c:Alpha):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:Alpha = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        _a = (_c.a : stdgo.GoUInt32);
        _a = (_a | ((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return { _0 : _a, _1 : _a, _2 : _a, _3 : _a };
    }
}
class Alpha16_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Alpha16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.Alpha16_asInterface) class Alpha16_static_extension {
    @:keep
    static public function rgba( _c:Alpha16):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:Alpha16 = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        _a = (_c.a : stdgo.GoUInt32);
        return { _0 : _a, _1 : _a, _2 : _a, _3 : _a };
    }
}
class Gray_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gray>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.Gray_asInterface) class Gray_static_extension {
    @:keep
    static public function rgba( _c:Gray):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:Gray = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        var _y = (_c.y : stdgo.GoUInt32);
        _y = (_y | ((_y << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return { _0 : _y, _1 : _y, _2 : _y, _3 : (65535u32 : stdgo.GoUInt32) };
    }
}
class Gray16_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gray16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.Gray16_asInterface) class Gray16_static_extension {
    @:keep
    static public function rgba( _c:Gray16):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:Gray16 = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        var _y = (_c.y : stdgo.GoUInt32);
        return { _0 : _y, _1 : _y, _2 : _y, _3 : (65535u32 : stdgo.GoUInt32) };
    }
}
class T_modelFunc_asInterface {
    @:keep
    public dynamic function convert(_c:Color):Color return __self__.value.convert(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_modelFunc>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.T_modelFunc_asInterface) class T_modelFunc_static_extension {
    @:keep
    static public function convert( _m:stdgo.Ref<T_modelFunc>, _c:Color):Color {
        @:recv var _m:stdgo.Ref<T_modelFunc> = _m;
        return _m._f(_c);
    }
}
class YCbCr_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<YCbCr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.YCbCr_asInterface) class YCbCr_static_extension {
    @:keep
    static public function rgba( _c:YCbCr):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:YCbCr = _c?.__copy__();
        var _yy1 = ((_c.y : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cb1 = ((_c.cb : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cr1 = ((_c.cr : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _r = (_r >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _r = ((-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _g = (_g >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _g = ((-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _b = (_b >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _b = ((-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        return { _0 : (_r : stdgo.GoUInt32), _1 : (_g : stdgo.GoUInt32), _2 : (_b : stdgo.GoUInt32), _3 : (65535u32 : stdgo.GoUInt32) };
    }
}
class NYCbCrA_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NYCbCrA>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.NYCbCrA_asInterface) class NYCbCrA_static_extension {
    @:keep
    static public function rgba( _c:NYCbCrA):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:NYCbCrA = _c?.__copy__();
        var _yy1 = ((_c.ycbCr.y : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cb1 = ((_c.ycbCr.cb : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cr1 = ((_c.ycbCr.cr : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _r = (_r >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _r = ((-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _g = (_g >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _g = ((-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _b = (_b >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _b = ((-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _a = ((_c.a : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : (((_r : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : (((_g : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32), _2 : (((_b : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32), _3 : _a };
    }
}
class CMYK_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CMYK>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.CMYK_asInterface) class CMYK_static_extension {
    @:keep
    static public function rgba( _c:CMYK):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:CMYK = _c?.__copy__();
        var _w = ((65535u32 : stdgo.GoUInt32) - ((_c.k : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _r = (((((65535u32 : stdgo.GoUInt32) - ((_c.c : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _g = (((((65535u32 : stdgo.GoUInt32) - ((_c.m : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _b = (((((65535u32 : stdgo.GoUInt32) - ((_c.y : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : (65535u32 : stdgo.GoUInt32) };
    }
}
class Palette_asInterface {
    @:keep
    public dynamic function index(_c:Color):stdgo.GoInt return __self__.value.index(_c);
    @:keep
    public dynamic function convert(_c:Color):Color return __self__.value.convert(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Palette>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.color.Color.Palette_asInterface) class Palette_static_extension {
    @:keep
    static public function index( _p:Palette, _c:Color):stdgo.GoInt {
        @:recv var _p:Palette = _p;
        var __tmp__ = _c.rgba(), _cr:stdgo.GoUInt32 = __tmp__._0, _cg:stdgo.GoUInt32 = __tmp__._1, _cb:stdgo.GoUInt32 = __tmp__._2, _ca:stdgo.GoUInt32 = __tmp__._3;
        var __0 = (0 : stdgo.GoInt), __1 = ((-1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _bestSum = __1, _ret = __0;
        for (_i => _v in _p) {
            var __tmp__ = _v.rgba(), _vr:stdgo.GoUInt32 = __tmp__._0, _vg:stdgo.GoUInt32 = __tmp__._1, _vb:stdgo.GoUInt32 = __tmp__._2, _va:stdgo.GoUInt32 = __tmp__._3;
            var _sum = (((_sqDiff(_cr, _vr) + _sqDiff(_cg, _vg) : stdgo.GoUInt32) + _sqDiff(_cb, _vb) : stdgo.GoUInt32) + _sqDiff(_ca, _va) : stdgo.GoUInt32);
            if ((_sum < _bestSum : Bool)) {
                if (_sum == ((0u32 : stdgo.GoUInt32))) {
                    return _i;
                };
                {
                    final __tmp__0 = _i;
                    final __tmp__1 = _sum;
                    _ret = __tmp__0;
                    _bestSum = __tmp__1;
                };
            };
        };
        return _ret;
    }
    @:keep
    static public function convert( _p:Palette, _c:Color):Color {
        @:recv var _p:Palette = _p;
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo._internal.image.color.Color.Color);
        };
        return _p[(_p.index(_c) : stdgo.GoInt)];
    }
}
