package stdgo.image.color;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package color implements a basic color library.
**/
private var __go2hxdoc__package : Bool;
/**
    // Models for the standard color types.
    
    
**/
var rgbamodel : Model = modelFunc(_rgbaModel);
/**
    // Models for the standard color types.
    
    
**/
var rgba64model : Model = modelFunc(_rgba64Model);
/**
    // Models for the standard color types.
    
    
**/
var nrgbamodel : Model = modelFunc(_nrgbaModel);
/**
    // Models for the standard color types.
    
    
**/
var nrgba64model : Model = modelFunc(_nrgba64Model);
/**
    // Models for the standard color types.
    
    
**/
var alphaModel : Model = modelFunc(_alphaModel);
/**
    // Models for the standard color types.
    
    
**/
var alpha16Model : Model = modelFunc(_alpha16Model);
/**
    // Models for the standard color types.
    
    
**/
var grayModel : Model = modelFunc(_grayModel);
/**
    // Models for the standard color types.
    
    
**/
var gray16Model : Model = modelFunc(_gray16Model);
/**
    // Standard colors.
    
    
**/
var black = (new Gray16((0 : GoUInt16)) : Gray16);
/**
    // Standard colors.
    
    
**/
var white = (new Gray16((65535 : GoUInt16)) : Gray16);
/**
    // Standard colors.
    
    
**/
var transparent = (new Alpha16((0 : GoUInt16)) : Alpha16);
/**
    // Standard colors.
    
    
**/
var opaque = (new Alpha16((65535 : GoUInt16)) : Alpha16);
/**
    // YCbCrModel is the Model for Y'CbCr colors.
    
    
**/
var ycbCrModel : Model = modelFunc(_yCbCrModel);
/**
    // NYCbCrAModel is the Model for non-alpha-premultiplied Y'CbCr-with-alpha
    // colors.
    
    
**/
var nycbCrAModel : Model = modelFunc(_nYCbCrAModel);
/**
    // CMYKModel is the Model for CMYK colors.
    
    
**/
var cmykmodel : Model = modelFunc(_cmykModel);
/**
    
    
    
**/
private var _sink8 : GoUInt8 = (0 : GoUInt8);
/**
    
    
    
**/
private var _sink32 : GoUInt32 = (0 : GoUInt32);
/**
    // Color can convert itself to alpha-premultiplied 16-bits per channel RGBA.
    // The conversion may be lossy.
    
    
**/
typedef Color = StructType & {
    /**
        // RGBA returns the alpha-premultiplied red, green, blue and alpha values
        // for the color. Each value ranges within [0, 0xffff], but is represented
        // by a uint32 so that multiplying by a blend factor up to 0xffff will not
        // overflow.
        //
        // An alpha-premultiplied color component c has been scaled by alpha (a),
        // so has valid values 0 <= c <= a.
        
        
    **/
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; };
};
/**
    // Model can convert any Color to one from its own color model. The conversion
    // may be lossy.
    
    
**/
typedef Model = StructType & {
    /**
        
        
        
    **/
    public dynamic function convert(_c:Color):Color;
};
/**
    // RGBA represents a traditional 32-bit alpha-premultiplied color, having 8
    // bits for each of red, green, blue and alpha.
    //
    // An alpha-premultiplied color component C has been scaled by alpha (A), so
    // has valid values 0 <= C <= A.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.RGBA_static_extension) class RGBA {
    public var r : GoUInt8 = 0;
    public var g : GoUInt8 = 0;
    public var b : GoUInt8 = 0;
    public var a : GoUInt8 = 0;
    public function new(?r:GoUInt8, ?g:GoUInt8, ?b:GoUInt8, ?a:GoUInt8) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new RGBA(r, g, b, a);
    }
}
/**
    // RGBA64 represents a 64-bit alpha-premultiplied color, having 16 bits for
    // each of red, green, blue and alpha.
    //
    // An alpha-premultiplied color component C has been scaled by alpha (A), so
    // has valid values 0 <= C <= A.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.RGBA64_static_extension) class RGBA64 {
    public var r : GoUInt16 = 0;
    public var g : GoUInt16 = 0;
    public var b : GoUInt16 = 0;
    public var a : GoUInt16 = 0;
    public function new(?r:GoUInt16, ?g:GoUInt16, ?b:GoUInt16, ?a:GoUInt16) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new RGBA64(r, g, b, a);
    }
}
/**
    // NRGBA represents a non-alpha-premultiplied 32-bit color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.NRGBA_static_extension) class NRGBA {
    public var r : GoUInt8 = 0;
    public var g : GoUInt8 = 0;
    public var b : GoUInt8 = 0;
    public var a : GoUInt8 = 0;
    public function new(?r:GoUInt8, ?g:GoUInt8, ?b:GoUInt8, ?a:GoUInt8) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new NRGBA(r, g, b, a);
    }
}
/**
    // NRGBA64 represents a non-alpha-premultiplied 64-bit color,
    // having 16 bits for each of red, green, blue and alpha.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.NRGBA64_static_extension) class NRGBA64 {
    public var r : GoUInt16 = 0;
    public var g : GoUInt16 = 0;
    public var b : GoUInt16 = 0;
    public var a : GoUInt16 = 0;
    public function new(?r:GoUInt16, ?g:GoUInt16, ?b:GoUInt16, ?a:GoUInt16) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new NRGBA64(r, g, b, a);
    }
}
/**
    // Alpha represents an 8-bit alpha color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.Alpha_static_extension) class Alpha {
    public var a : GoUInt8 = 0;
    public function new(?a:GoUInt8) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Alpha(a);
    }
}
/**
    // Alpha16 represents a 16-bit alpha color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.Alpha16_static_extension) class Alpha16 {
    public var a : GoUInt16 = 0;
    public function new(?a:GoUInt16) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Alpha16(a);
    }
}
/**
    // Gray represents an 8-bit grayscale color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.Gray_static_extension) class Gray {
    public var y : GoUInt8 = 0;
    public function new(?y:GoUInt8) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Gray(y);
    }
}
/**
    // Gray16 represents a 16-bit grayscale color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.Gray16_static_extension) class Gray16 {
    public var y : GoUInt16 = 0;
    public function new(?y:GoUInt16) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Gray16(y);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.image.color.Color.T_modelFunc_static_extension) class T_modelFunc {
    public var _f : stdgo.image.color.Color.Color -> stdgo.image.color.Color.Color = null;
    public function new(?_f:stdgo.image.color.Color.Color -> stdgo.image.color.Color.Color) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_modelFunc(_f);
    }
}
/**
    // YCbCr represents a fully opaque 24-bit Y'CbCr color, having 8 bits each for
    // one luma and two chroma components.
    //
    // JPEG, VP8, the MPEG family and other codecs use this color model. Such
    // codecs often use the terms YUV and Y'CbCr interchangeably, but strictly
    // speaking, the term YUV applies only to analog video signals, and Y' (luma)
    // is Y (luminance) after applying gamma correction.
    //
    // Conversion between RGB and Y'CbCr is lossy and there are multiple, slightly
    // different formulae for converting between the two. This package follows
    // the JFIF specification at https://www.w3.org/Graphics/JPEG/jfif3.pdf.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.YCbCr_static_extension) class YCbCr {
    public var y : GoUInt8 = 0;
    public var cb : GoUInt8 = 0;
    public var cr : GoUInt8 = 0;
    public function new(?y:GoUInt8, ?cb:GoUInt8, ?cr:GoUInt8) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new YCbCr(y, cb, cr);
    }
}
/**
    // NYCbCrA represents a non-alpha-premultiplied Y'CbCr-with-alpha color, having
    // 8 bits each for one luma, two chroma and one alpha component.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.NYCbCrA_static_extension) class NYCbCrA {
    @:embedded
    public var ycbCr : stdgo.image.color.Color.YCbCr = ({} : stdgo.image.color.Color.YCbCr);
    public var a : GoUInt8 = 0;
    public function new(?ycbCr:stdgo.image.color.Color.YCbCr, ?a:GoUInt8) {
        if (ycbCr != null) this.ycbCr = ycbCr;
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new NYCbCrA(ycbCr, a);
    }
}
/**
    // CMYK represents a fully opaque CMYK color, having 8 bits for each of cyan,
    // magenta, yellow and black.
    //
    // It is not associated with any particular color profile.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.CMYK_static_extension) class CMYK {
    public var c : GoUInt8 = 0;
    public var m : GoUInt8 = 0;
    public var y : GoUInt8 = 0;
    public var k : GoUInt8 = 0;
    public function new(?c:GoUInt8, ?m:GoUInt8, ?y:GoUInt8, ?k:GoUInt8) {
        if (c != null) this.c = c;
        if (m != null) this.m = m;
        if (y != null) this.y = y;
        if (k != null) this.k = k;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CMYK(c, m, y, k);
    }
}
/**
    // Palette is a palette of colors.
**/
@:named @:using(stdgo.image.color.Color.Palette_static_extension) typedef Palette = Slice<stdgo.image.color.Color.Color>;
/**
    // ModelFunc returns a Model that invokes f to implement the conversion.
**/
function modelFunc(_f:Color -> Color):Model {
        return Go.asInterface((Go.setRef((new T_modelFunc(_f) : T_modelFunc)) : Ref<stdgo.image.color.Color.T_modelFunc>));
    }
private function _rgbaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : RGBA)) : RGBA), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.RGBA), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, _a:GoUInt32 = __tmp__._3;
        return Go.asInterface((new RGBA((_r >> (8i64 : GoUInt64) : GoUInt8), (_g >> (8i64 : GoUInt64) : GoUInt8), (_b >> (8i64 : GoUInt64) : GoUInt8), (_a >> (8i64 : GoUInt64) : GoUInt8)) : RGBA));
    }
private function _rgba64Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : RGBA64)) : RGBA64), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.RGBA64), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, _a:GoUInt32 = __tmp__._3;
        return Go.asInterface((new RGBA64((_r : GoUInt16), (_g : GoUInt16), (_b : GoUInt16), (_a : GoUInt16)) : RGBA64));
    }
private function _nrgbaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : NRGBA)) : NRGBA), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.NRGBA), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, _a:GoUInt32 = __tmp__._3;
        if (_a == ((65535u32 : GoUInt32))) {
            return Go.asInterface((new NRGBA((_r >> (8i64 : GoUInt64) : GoUInt8), (_g >> (8i64 : GoUInt64) : GoUInt8), (_b >> (8i64 : GoUInt64) : GoUInt8), (255 : GoUInt8)) : NRGBA));
        };
        if (_a == ((0u32 : GoUInt32))) {
            return Go.asInterface((new NRGBA((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : NRGBA));
        };
        _r = (_r * (65535u32 : GoUInt32)) / _a;
        _g = (_g * (65535u32 : GoUInt32)) / _a;
        _b = (_b * (65535u32 : GoUInt32)) / _a;
        return Go.asInterface((new NRGBA((_r >> (8i64 : GoUInt64) : GoUInt8), (_g >> (8i64 : GoUInt64) : GoUInt8), (_b >> (8i64 : GoUInt64) : GoUInt8), (_a >> (8i64 : GoUInt64) : GoUInt8)) : NRGBA));
    }
private function _nrgba64Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : NRGBA64)) : NRGBA64), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.NRGBA64), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, _a:GoUInt32 = __tmp__._3;
        if (_a == ((65535u32 : GoUInt32))) {
            return Go.asInterface((new NRGBA64((_r : GoUInt16), (_g : GoUInt16), (_b : GoUInt16), (65535 : GoUInt16)) : NRGBA64));
        };
        if (_a == ((0u32 : GoUInt32))) {
            return Go.asInterface((new NRGBA64((0 : GoUInt16), (0 : GoUInt16), (0 : GoUInt16), (0 : GoUInt16)) : NRGBA64));
        };
        _r = (_r * (65535u32 : GoUInt32)) / _a;
        _g = (_g * (65535u32 : GoUInt32)) / _a;
        _b = (_b * (65535u32 : GoUInt32)) / _a;
        return Go.asInterface((new NRGBA64((_r : GoUInt16), (_g : GoUInt16), (_b : GoUInt16), (_a : GoUInt16)) : NRGBA64));
    }
private function _alphaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : Alpha)) : Alpha), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.Alpha), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), __1:GoUInt32 = __tmp__._0, __2:GoUInt32 = __tmp__._1, __3:GoUInt32 = __tmp__._2, _a:GoUInt32 = __tmp__._3;
        return Go.asInterface((new Alpha((_a >> (8i64 : GoUInt64) : GoUInt8)) : Alpha));
    }
private function _alpha16Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : Alpha16)) : Alpha16), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.Alpha16), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), __1:GoUInt32 = __tmp__._0, __2:GoUInt32 = __tmp__._1, __3:GoUInt32 = __tmp__._2, _a:GoUInt32 = __tmp__._3;
        return Go.asInterface((new Alpha16((_a : GoUInt16)) : Alpha16));
    }
private function _grayModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : Gray)) : Gray), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.Gray), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, __1:GoUInt32 = __tmp__._3;
        var _y:GoUInt32 = (((((19595u32 : GoUInt32) * _r) + ((38470u32 : GoUInt32) * _g)) + ((7471u32 : GoUInt32) * _b)) + (32768u32 : GoUInt32)) >> (24i64 : GoUInt64);
        return Go.asInterface((new Gray((_y : GoUInt8)) : Gray));
    }
private function _gray16Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : Gray16)) : Gray16), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.Gray16), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, __1:GoUInt32 = __tmp__._3;
        var _y:GoUInt32 = (((((19595u32 : GoUInt32) * _r) + ((38470u32 : GoUInt32) * _g)) + ((7471u32 : GoUInt32) * _b)) + (32768u32 : GoUInt32)) >> (16i64 : GoUInt64);
        return Go.asInterface((new Gray16((_y : GoUInt16)) : Gray16));
    }
/**
    // sqDiff returns the squared-difference of x and y, shifted by 2 so that
    // adding four of those won't overflow a uint32.
    //
    // x and y are both assumed to be in the range [0, 0xffff].
**/
private function _sqDiff(_x:GoUInt32, _y:GoUInt32):GoUInt32 {
        var _d:GoUInt32 = _x - _y;
        return (_d * _d) >> (2i64 : GoUInt64);
    }
function testSqDiff(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _orig:(GoUInt32, GoUInt32) -> GoUInt32 = function(_x:GoUInt32, _y:GoUInt32):GoUInt32 {
            var _d:GoUInt32 = (0 : GoUInt32);
            if (_x > _y) {
                _d = (_x - _y : GoUInt32);
            } else {
                _d = (_y - _x : GoUInt32);
            };
            return (_d * _d) >> (2i64 : GoUInt64);
        };
        var _testCases = (new Slice<GoUInt32>(
12,
12,
(0u32 : GoUInt32),
(1u32 : GoUInt32),
(2u32 : GoUInt32),
(65533u32 : GoUInt32),
(65534u32 : GoUInt32),
(65535u32 : GoUInt32),
(65536u32 : GoUInt32),
(65537u32 : GoUInt32),
(65538u32 : GoUInt32),
(-3u32 : GoUInt32),
(-2u32 : GoUInt32),
(-1u32 : GoUInt32)) : Slice<GoUInt32>);
        for (__0 => _x in _testCases) {
            for (__1 => _y in _testCases) {
                {
                    var __0:GoUInt32 = _sqDiff(_x, _y), __1:GoUInt32 = _orig(_x, _y), _want:GoUInt32 = __1, _got:GoUInt32 = __0;
                    if (_got != (_want)) {
                        _t.fatalf(("sqDiff(%#x, %#x): got %d, want %d" : GoString), Go.toInterface(_x), Go.toInterface(_y), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
            };
        };
        {
            var _err:Error = stdgo.testing.quick.Quick.checkEqual(Go.toInterface(_orig), Go.toInterface(_sqDiff), (Go.setRef(({ maxCountScale : (10 : GoFloat64) } : stdgo.testing.quick.Quick.Config)) : Ref<stdgo.testing.quick.Quick.Config>));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
/**
    // RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
**/
function rgbtoYCbCr(_r:GoUInt8, _g:GoUInt8, _b:GoUInt8):{ var _0 : GoUInt8; var _1 : GoUInt8; var _2 : GoUInt8; } {
        var _r1:GoInt32 = (_r : GoInt32);
        var _g1:GoInt32 = (_g : GoInt32);
        var _b1:GoInt32 = (_b : GoInt32);
        var _yy:GoInt32 = (((((19595 : GoInt32) * _r1) + ((38470 : GoInt32) * _g1)) + ((7471 : GoInt32) * _b1)) + (32768 : GoInt32)) >> (16i64 : GoUInt64);
        var _cb:GoInt32 = ((((-11056 : GoInt32) * _r1) - ((21712 : GoInt32) * _g1)) + ((32768 : GoInt32) * _b1)) + (8421376 : GoInt32);
        if ((_cb : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _cb = _cb >> ((16i64 : GoUInt64));
        } else {
            _cb = (-1 ^ (_cb >> (31i64 : GoUInt64)));
        };
        var _cr:GoInt32 = ((((32768 : GoInt32) * _r1) - ((27440 : GoInt32) * _g1)) - ((5328 : GoInt32) * _b1)) + (8421376 : GoInt32);
        if ((_cr : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _cr = _cr >> ((16i64 : GoUInt64));
        } else {
            _cr = (-1 ^ (_cr >> (31i64 : GoUInt64)));
        };
        return { _0 : (_yy : GoUInt8), _1 : (_cb : GoUInt8), _2 : (_cr : GoUInt8) };
    }
/**
    // YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
**/
function ycbCrToRGB(_y:GoUInt8, _cb:GoUInt8, _cr:GoUInt8):{ var _0 : GoUInt8; var _1 : GoUInt8; var _2 : GoUInt8; } {
        var _yy1:GoInt32 = (_y : GoInt32) * (65793 : GoInt32);
        var _cb1:GoInt32 = (_cb : GoInt32) - (128 : GoInt32);
        var _cr1:GoInt32 = (_cr : GoInt32) - (128 : GoInt32);
        var _r:GoInt32 = _yy1 + ((91881 : GoInt32) * _cr1);
        if ((_r : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _r = _r >> ((16i64 : GoUInt64));
        } else {
            _r = (-1 ^ (_r >> (31i64 : GoUInt64)));
        };
        var _g:GoInt32 = (_yy1 - ((22554 : GoInt32) * _cb1)) - ((46802 : GoInt32) * _cr1);
        if ((_g : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _g = _g >> ((16i64 : GoUInt64));
        } else {
            _g = (-1 ^ (_g >> (31i64 : GoUInt64)));
        };
        var _b:GoInt32 = _yy1 + ((116130 : GoInt32) * _cb1);
        if ((_b : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _b = _b >> ((16i64 : GoUInt64));
        } else {
            _b = (-1 ^ (_b >> (31i64 : GoUInt64)));
        };
        return { _0 : (_r : GoUInt8), _1 : (_g : GoUInt8), _2 : (_b : GoUInt8) };
    }
private function _yCbCrModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : YCbCr)) : YCbCr), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.YCbCr), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, __1:GoUInt32 = __tmp__._3;
        var __tmp__ = rgbtoYCbCr((_r >> (8i64 : GoUInt64) : GoUInt8), (_g >> (8i64 : GoUInt64) : GoUInt8), (_b >> (8i64 : GoUInt64) : GoUInt8)), _y:GoUInt8 = __tmp__._0, _u:GoUInt8 = __tmp__._1, _v:GoUInt8 = __tmp__._2;
        return Go.asInterface((new YCbCr(_y, _u, _v) : YCbCr));
    }
private function _nYCbCrAModel(_c:Color):Color {
        {
            final __type__ = _c;
            if (Go.typeEquals((__type__ : NYCbCrA))) {
                var _c:stdgo.image.color.Color.NYCbCrA = __type__ == null ? ({} : stdgo.image.color.Color.NYCbCrA) : __type__.__underlying__() == null ? ({} : stdgo.image.color.Color.NYCbCrA) : __type__ == null ? ({} : stdgo.image.color.Color.NYCbCrA) : __type__.__underlying__().value;
                return Go.asInterface(_c);
            } else if (Go.typeEquals((__type__ : YCbCr))) {
                var _c:stdgo.image.color.Color.YCbCr = __type__ == null ? ({} : stdgo.image.color.Color.YCbCr) : __type__.__underlying__() == null ? ({} : stdgo.image.color.Color.YCbCr) : __type__ == null ? ({} : stdgo.image.color.Color.YCbCr) : __type__.__underlying__().value;
                return Go.asInterface((new NYCbCrA(_c?.__copy__(), (255 : GoUInt8)) : NYCbCrA));
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, _a:GoUInt32 = __tmp__._3;
        if (_a != ((0u32 : GoUInt32))) {
            _r = (_r * (65535u32 : GoUInt32)) / _a;
            _g = (_g * (65535u32 : GoUInt32)) / _a;
            _b = (_b * (65535u32 : GoUInt32)) / _a;
        };
        var __tmp__ = rgbtoYCbCr((_r >> (8i64 : GoUInt64) : GoUInt8), (_g >> (8i64 : GoUInt64) : GoUInt8), (_b >> (8i64 : GoUInt64) : GoUInt8)), _y:GoUInt8 = __tmp__._0, _u:GoUInt8 = __tmp__._1, _v:GoUInt8 = __tmp__._2;
        return Go.asInterface((new NYCbCrA(({ y : _y, cb : _u, cr : _v } : YCbCr), (_a >> (8i64 : GoUInt64) : GoUInt8)) : NYCbCrA));
    }
/**
    // RGBToCMYK converts an RGB triple to a CMYK quadruple.
**/
function rgbtoCMYK(_r:GoUInt8, _g:GoUInt8, _b:GoUInt8):{ var _0 : GoUInt8; var _1 : GoUInt8; var _2 : GoUInt8; var _3 : GoUInt8; } {
        var _rr:GoUInt32 = (_r : GoUInt32);
        var _gg:GoUInt32 = (_g : GoUInt32);
        var _bb:GoUInt32 = (_b : GoUInt32);
        var _w:GoUInt32 = _rr;
        if (_w < _gg) {
            _w = _gg;
        };
        if (_w < _bb) {
            _w = _bb;
        };
        if (_w == ((0u32 : GoUInt32))) {
            return { _0 : (0 : GoUInt8), _1 : (0 : GoUInt8), _2 : (0 : GoUInt8), _3 : (255 : GoUInt8) };
        };
        var _c:GoUInt32 = ((_w - _rr) * (255u32 : GoUInt32)) / _w;
        var _m:GoUInt32 = ((_w - _gg) * (255u32 : GoUInt32)) / _w;
        var _y:GoUInt32 = ((_w - _bb) * (255u32 : GoUInt32)) / _w;
        return { _0 : (_c : GoUInt8), _1 : (_m : GoUInt8), _2 : (_y : GoUInt8), _3 : ((255u32 : GoUInt32) - _w : GoUInt8) };
    }
/**
    // CMYKToRGB converts a CMYK quadruple to an RGB triple.
**/
function cmyktoRGB(_c:GoUInt8, _m:GoUInt8, _y:GoUInt8, _k:GoUInt8):{ var _0 : GoUInt8; var _1 : GoUInt8; var _2 : GoUInt8; } {
        var _w:GoUInt32 = (65535u32 : GoUInt32) - ((_k : GoUInt32) * (257u32 : GoUInt32));
        var _r:GoUInt32 = (((65535u32 : GoUInt32) - ((_c : GoUInt32) * (257u32 : GoUInt32))) * _w) / (65535u32 : GoUInt32);
        var _g:GoUInt32 = (((65535u32 : GoUInt32) - ((_m : GoUInt32) * (257u32 : GoUInt32))) * _w) / (65535u32 : GoUInt32);
        var _b:GoUInt32 = (((65535u32 : GoUInt32) - ((_y : GoUInt32) * (257u32 : GoUInt32))) * _w) / (65535u32 : GoUInt32);
        return { _0 : (_r >> (8i64 : GoUInt64) : GoUInt8), _1 : (_g >> (8i64 : GoUInt64) : GoUInt8), _2 : (_b >> (8i64 : GoUInt64) : GoUInt8) };
    }
private function _cmykModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_c) : CMYK)) : CMYK), ok : true };
            } catch(_) {
                { value : ({} : stdgo.image.color.Color.CMYK), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, __1:GoUInt32 = __tmp__._3;
        var __tmp__ = rgbtoCMYK((_r >> (8i64 : GoUInt64) : GoUInt8), (_g >> (8i64 : GoUInt64) : GoUInt8), (_b >> (8i64 : GoUInt64) : GoUInt8)), _cc:GoUInt8 = __tmp__._0, _mm:GoUInt8 = __tmp__._1, _yy:GoUInt8 = __tmp__._2, _kk:GoUInt8 = __tmp__._3;
        return Go.asInterface((new CMYK(_cc, _mm, _yy, _kk) : CMYK));
    }
private function _delta(_x:GoUInt8, _y:GoUInt8):GoUInt8 {
        if (_x >= _y) {
            return _x - _y;
        };
        return _y - _x;
    }
private function _eq(_c0:Color, _c1:Color):Error {
        var __tmp__ = _c0.rgba(), _r0:GoUInt32 = __tmp__._0, _g0:GoUInt32 = __tmp__._1, _b0:GoUInt32 = __tmp__._2, _a0:GoUInt32 = __tmp__._3;
        var __tmp__ = _c1.rgba(), _r1:GoUInt32 = __tmp__._0, _g1:GoUInt32 = __tmp__._1, _b1:GoUInt32 = __tmp__._2, _a1:GoUInt32 = __tmp__._3;
        if ((((_r0 != _r1) || (_g0 != _g1)) || (_b0 != _b1)) || (_a0 != _a1)) {
            return stdgo.fmt.Fmt.errorf(("got  0x%04x 0x%04x 0x%04x 0x%04x\nwant 0x%04x 0x%04x 0x%04x 0x%04x" : GoString), Go.toInterface(_r0), Go.toInterface(_g0), Go.toInterface(_b0), Go.toInterface(_a0), Go.toInterface(_r1), Go.toInterface(_g1), Go.toInterface(_b1), Go.toInterface(_a1));
        };
        return (null : Error);
    }
/**
    // TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
    // and back to within 2/256 tolerance.
**/
function testYCbCrRoundtrip(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _r:GoInt = (0 : GoInt);
            Go.cfor(_r < (256 : GoInt), _r = _r + ((7 : GoInt)), {
                {
                    var _g:GoInt = (0 : GoInt);
                    Go.cfor(_g < (256 : GoInt), _g = _g + ((5 : GoInt)), {
                        {
                            var _b:GoInt = (0 : GoInt);
                            Go.cfor(_b < (256 : GoInt), _b = _b + ((3 : GoInt)), {
                                var __0:GoUInt8 = (_r : GoUInt8), __1:GoUInt8 = (_g : GoUInt8), __2:GoUInt8 = (_b : GoUInt8), _b0:GoUInt8 = __2, _g0:GoUInt8 = __1, _r0:GoUInt8 = __0;
                                var __tmp__ = rgbtoYCbCr(_r0, _g0, _b0), _y:GoUInt8 = __tmp__._0, _cb:GoUInt8 = __tmp__._1, _cr:GoUInt8 = __tmp__._2;
                                var __tmp__ = ycbCrToRGB(_y, _cb, _cr), _r1:GoUInt8 = __tmp__._0, _g1:GoUInt8 = __tmp__._1, _b1:GoUInt8 = __tmp__._2;
                                if (((_delta(_r0, _r1) > (2 : GoUInt8)) || (_delta(_g0, _g1) > (2 : GoUInt8))) || (_delta(_b0, _b1) > (2 : GoUInt8))) {
                                    _t.fatalf(("\nr0, g0, b0 = %d, %d, %d\ny,  cb, cr = %d, %d, %d\nr1, g1, b1 = %d, %d, %d" : GoString), Go.toInterface(_r0), Go.toInterface(_g0), Go.toInterface(_b0), Go.toInterface(_y), Go.toInterface(_cb), Go.toInterface(_cr), Go.toInterface(_r1), Go.toInterface(_g1), Go.toInterface(_b1));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
/**
    // TestYCbCrToRGBConsistency tests that calling the RGBA method (16 bit color)
    // then truncating to 8 bits is equivalent to calling the YCbCrToRGB function (8
    // bit color).
**/
function testYCbCrToRGBConsistency(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _y:GoInt = (0 : GoInt);
            Go.cfor(_y < (256 : GoInt), _y = _y + ((7 : GoInt)), {
                {
                    var _cb:GoInt = (0 : GoInt);
                    Go.cfor(_cb < (256 : GoInt), _cb = _cb + ((5 : GoInt)), {
                        {
                            var _cr:GoInt = (0 : GoInt);
                            Go.cfor(_cr < (256 : GoInt), _cr = _cr + ((3 : GoInt)), {
                                var _x:stdgo.image.color.Color.YCbCr = (new YCbCr((_y : GoUInt8), (_cb : GoUInt8), (_cr : GoUInt8)) : YCbCr);
                                var __tmp__ = _x.rgba(), _r0:GoUInt32 = __tmp__._0, _g0:GoUInt32 = __tmp__._1, _b0:GoUInt32 = __tmp__._2, __0:GoUInt32 = __tmp__._3;
                                var __0:GoUInt8 = (_r0 >> (8i64 : GoUInt64) : GoUInt8), __1:GoUInt8 = (_g0 >> (8i64 : GoUInt64) : GoUInt8), __2:GoUInt8 = (_b0 >> (8i64 : GoUInt64) : GoUInt8), _b1:GoUInt8 = __2, _g1:GoUInt8 = __1, _r1:GoUInt8 = __0;
                                var __tmp__ = ycbCrToRGB(_x.y, _x.cb, _x.cr), _r2:GoUInt8 = __tmp__._0, _g2:GoUInt8 = __tmp__._1, _b2:GoUInt8 = __tmp__._2;
                                if (((_r1 != _r2) || (_g1 != _g2)) || (_b1 != _b2)) {
                                    _t.fatalf(("y, cb, cr = %d, %d, %d\nr1, g1, b1 = %d, %d, %d\nr2, g2, b2 = %d, %d, %d" : GoString), Go.toInterface(_y), Go.toInterface(_cb), Go.toInterface(_cr), Go.toInterface(_r1), Go.toInterface(_g1), Go.toInterface(_b1), Go.toInterface(_r2), Go.toInterface(_g2), Go.toInterface(_b2));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
/**
    // TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.
**/
function testYCbCrGray(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                var _c0:stdgo.image.color.Color.YCbCr = (new YCbCr((_i : GoUInt8), (128 : GoUInt8), (128 : GoUInt8)) : YCbCr);
                var _c1:stdgo.image.color.Color.Gray = (new Gray((_i : GoUInt8)) : Gray);
                {
                    var _err:Error = _eq(Go.asInterface(_c0), Go.asInterface(_c1));
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.
**/
function testNYCbCrAAlpha(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                var _c0:stdgo.image.color.Color.NYCbCrA = (new NYCbCrA((new YCbCr((255 : GoUInt8), (128 : GoUInt8), (128 : GoUInt8)) : YCbCr), (_i : GoUInt8)) : NYCbCrA);
                var _c1:stdgo.image.color.Color.Alpha = (new Alpha((_i : GoUInt8)) : Alpha);
                {
                    var _err:Error = _eq(Go.asInterface(_c0), Go.asInterface(_c1));
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.
**/
function testNYCbCrAYCbCr(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                var _c0:stdgo.image.color.Color.NYCbCrA = (new NYCbCrA((new YCbCr((_i : GoUInt8), (64 : GoUInt8), (192 : GoUInt8)) : YCbCr), (255 : GoUInt8)) : NYCbCrA);
                var _c1:stdgo.image.color.Color.YCbCr = (new YCbCr((_i : GoUInt8), (64 : GoUInt8), (192 : GoUInt8)) : YCbCr);
                {
                    var _err:Error = _eq(Go.asInterface(_c0), Go.asInterface(_c1));
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
    // and back to within 1/256 tolerance.
**/
function testCMYKRoundtrip(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _r:GoInt = (0 : GoInt);
            Go.cfor(_r < (256 : GoInt), _r = _r + ((7 : GoInt)), {
                {
                    var _g:GoInt = (0 : GoInt);
                    Go.cfor(_g < (256 : GoInt), _g = _g + ((5 : GoInt)), {
                        {
                            var _b:GoInt = (0 : GoInt);
                            Go.cfor(_b < (256 : GoInt), _b = _b + ((3 : GoInt)), {
                                var __0:GoUInt8 = (_r : GoUInt8), __1:GoUInt8 = (_g : GoUInt8), __2:GoUInt8 = (_b : GoUInt8), _b0:GoUInt8 = __2, _g0:GoUInt8 = __1, _r0:GoUInt8 = __0;
                                var __tmp__ = rgbtoCMYK(_r0, _g0, _b0), _c:GoUInt8 = __tmp__._0, _m:GoUInt8 = __tmp__._1, _y:GoUInt8 = __tmp__._2, _k:GoUInt8 = __tmp__._3;
                                var __tmp__ = cmyktoRGB(_c, _m, _y, _k), _r1:GoUInt8 = __tmp__._0, _g1:GoUInt8 = __tmp__._1, _b1:GoUInt8 = __tmp__._2;
                                if (((_delta(_r0, _r1) > (1 : GoUInt8)) || (_delta(_g0, _g1) > (1 : GoUInt8))) || (_delta(_b0, _b1) > (1 : GoUInt8))) {
                                    _t.fatalf(("\nr0, g0, b0 = %d, %d, %d\nc, m, y, k = %d, %d, %d, %d\nr1, g1, b1 = %d, %d, %d" : GoString),
Go.toInterface(_r0),
Go.toInterface(_g0),
Go.toInterface(_b0),
Go.toInterface(_c),
Go.toInterface(_m),
Go.toInterface(_y),
Go.toInterface(_k),
Go.toInterface(_r1),
Go.toInterface(_g1),
Go.toInterface(_b1));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
/**
    // TestCMYKToRGBConsistency tests that calling the RGBA method (16 bit color)
    // then truncating to 8 bits is equivalent to calling the CMYKToRGB function (8
    // bit color).
**/
function testCMYKToRGBConsistency(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _c:GoInt = (0 : GoInt);
            Go.cfor(_c < (256 : GoInt), _c = _c + ((7 : GoInt)), {
                {
                    var _m:GoInt = (0 : GoInt);
                    Go.cfor(_m < (256 : GoInt), _m = _m + ((5 : GoInt)), {
                        {
                            var _y:GoInt = (0 : GoInt);
                            Go.cfor(_y < (256 : GoInt), _y = _y + ((3 : GoInt)), {
                                {
                                    var _k:GoInt = (0 : GoInt);
                                    Go.cfor(_k < (256 : GoInt), _k = _k + ((11 : GoInt)), {
                                        var _x:stdgo.image.color.Color.CMYK = (new CMYK((_c : GoUInt8), (_m : GoUInt8), (_y : GoUInt8), (_k : GoUInt8)) : CMYK);
                                        var __tmp__ = _x.rgba(), _r0:GoUInt32 = __tmp__._0, _g0:GoUInt32 = __tmp__._1, _b0:GoUInt32 = __tmp__._2, __0:GoUInt32 = __tmp__._3;
                                        var __0:GoUInt8 = (_r0 >> (8i64 : GoUInt64) : GoUInt8), __1:GoUInt8 = (_g0 >> (8i64 : GoUInt64) : GoUInt8), __2:GoUInt8 = (_b0 >> (8i64 : GoUInt64) : GoUInt8), _b1:GoUInt8 = __2, _g1:GoUInt8 = __1, _r1:GoUInt8 = __0;
                                        var __tmp__ = cmyktoRGB(_x.c, _x.m, _x.y, _x.k), _r2:GoUInt8 = __tmp__._0, _g2:GoUInt8 = __tmp__._1, _b2:GoUInt8 = __tmp__._2;
                                        if (((_r1 != _r2) || (_g1 != _g2)) || (_b1 != _b2)) {
                                            _t.fatalf(("c, m, y, k = %d, %d, %d, %d\nr1, g1, b1 = %d, %d, %d\nr2, g2, b2 = %d, %d, %d" : GoString),
Go.toInterface(_c),
Go.toInterface(_m),
Go.toInterface(_y),
Go.toInterface(_k),
Go.toInterface(_r1),
Go.toInterface(_g1),
Go.toInterface(_b1),
Go.toInterface(_r2),
Go.toInterface(_g2),
Go.toInterface(_b2));
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
/**
    // TestCMYKGray tests that CMYK colors are a superset of Gray colors.
**/
function testCMYKGray(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                {
                    var _err:Error = _eq(Go.asInterface((new CMYK((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), ((255 : GoInt) - _i : GoUInt8)) : CMYK)), Go.asInterface((new Gray((_i : GoUInt8)) : Gray)));
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                    };
                };
            });
        };
    }
function testPalette(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _p:stdgo.image.color.Color.Palette = (new Slice<stdgo.image.color.Color.Color>(6, 6, Go.asInterface((new RGBA((255 : GoUInt8), (255 : GoUInt8), (255 : GoUInt8), (255 : GoUInt8)) : RGBA)), Go.asInterface((new RGBA((128 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (255 : GoUInt8)) : RGBA)), Go.asInterface((new RGBA((127 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (127 : GoUInt8)) : RGBA)), Go.asInterface((new RGBA((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (127 : GoUInt8)) : RGBA)), Go.asInterface((new RGBA((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : RGBA)), Go.asInterface((new RGBA((64 : GoUInt8), (64 : GoUInt8), (64 : GoUInt8), (64 : GoUInt8)) : RGBA))) : stdgo.image.color.Color.Palette);
        for (_i => _c in _p) {
            var _j:GoInt = _p.index(_c);
            if (_i != (_j)) {
                _t.errorf(("Index(%v): got %d (color = %v), want %d" : GoString), Go.toInterface(_c), Go.toInterface(_j), Go.toInterface(_p[(_j : GoInt)]), Go.toInterface(_i));
            };
        };
        var _got:stdgo.image.color.Color.Color = _p.convert(Go.asInterface((new RGBA((128 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (128 : GoUInt8)) : RGBA)));
        var _want:stdgo.image.color.Color.RGBA = (new RGBA((127 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (127 : GoUInt8)) : RGBA);
        if (Go.toInterface(_got) != (Go.toInterface(Go.asInterface(_want)))) {
            _t.errorf(("got %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface(Go.asInterface(_want)));
        };
    }
function benchmarkYCbCrToRGB(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("128" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((128 : GoUInt8), (128 : GoUInt8), (128 : GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("255" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((255 : GoUInt8), (255 : GoUInt8), (255 : GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
    }
function benchmarkRGBToYCbCr(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("Cb" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((0 : GoUInt8), (0 : GoUInt8), (255 : GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("Cr" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((255 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
    }
function benchmarkYCbCrToRGBA(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.YCbCr = (new YCbCr((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : YCbCr);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
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
        _b.run(("128" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.YCbCr = (new YCbCr((128 : GoUInt8), (128 : GoUInt8), (128 : GoUInt8)) : YCbCr);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
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
        _b.run(("255" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.YCbCr = (new YCbCr((255 : GoUInt8), (255 : GoUInt8), (255 : GoUInt8)) : YCbCr);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
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
function benchmarkNYCbCrAToRGBA(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.NYCbCrA = (new NYCbCrA((new YCbCr((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : YCbCr), (255 : GoUInt8)) : NYCbCrA);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
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
        _b.run(("128" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.NYCbCrA = (new NYCbCrA((new YCbCr((128 : GoUInt8), (128 : GoUInt8), (128 : GoUInt8)) : YCbCr), (255 : GoUInt8)) : NYCbCrA);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
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
        _b.run(("255" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.NYCbCrA = (new NYCbCrA((new YCbCr((255 : GoUInt8), (255 : GoUInt8), (255 : GoUInt8)) : YCbCr), (255 : GoUInt8)) : NYCbCrA);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
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
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<RGBA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.RGBA_asInterface) class RGBA_static_extension {
    @:keep
    static public function rgba( _c:RGBA):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _r:GoUInt32 = (0 : GoUInt32), _g:GoUInt32 = (0 : GoUInt32), _b:GoUInt32 = (0 : GoUInt32), _a:GoUInt32 = (0 : GoUInt32);
        _r = (_c.r : GoUInt32);
        _r = _r | (_r << (8i64 : GoUInt64));
        _g = (_c.g : GoUInt32);
        _g = _g | (_g << (8i64 : GoUInt64));
        _b = (_c.b : GoUInt32);
        _b = _b | (_b << (8i64 : GoUInt64));
        _a = (_c.a : GoUInt32);
        _a = _a | (_a << (8i64 : GoUInt64));
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class RGBA64_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<RGBA64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.RGBA64_asInterface) class RGBA64_static_extension {
    @:keep
    static public function rgba( _c:RGBA64):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _r:GoUInt32 = (0 : GoUInt32), _g:GoUInt32 = (0 : GoUInt32), _b:GoUInt32 = (0 : GoUInt32), _a:GoUInt32 = (0 : GoUInt32);
        return { _0 : (_c.r : GoUInt32), _1 : (_c.g : GoUInt32), _2 : (_c.b : GoUInt32), _3 : (_c.a : GoUInt32) };
    }
}
class NRGBA_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<NRGBA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.NRGBA_asInterface) class NRGBA_static_extension {
    @:keep
    static public function rgba( _c:NRGBA):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _r:GoUInt32 = (0 : GoUInt32), _g:GoUInt32 = (0 : GoUInt32), _b:GoUInt32 = (0 : GoUInt32), _a:GoUInt32 = (0 : GoUInt32);
        _r = (_c.r : GoUInt32);
        _r = _r | (_r << (8i64 : GoUInt64));
        _r = _r * ((_c.a : GoUInt32));
        _r = _r / ((255u32 : GoUInt32));
        _g = (_c.g : GoUInt32);
        _g = _g | (_g << (8i64 : GoUInt64));
        _g = _g * ((_c.a : GoUInt32));
        _g = _g / ((255u32 : GoUInt32));
        _b = (_c.b : GoUInt32);
        _b = _b | (_b << (8i64 : GoUInt64));
        _b = _b * ((_c.a : GoUInt32));
        _b = _b / ((255u32 : GoUInt32));
        _a = (_c.a : GoUInt32);
        _a = _a | (_a << (8i64 : GoUInt64));
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class NRGBA64_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<NRGBA64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.NRGBA64_asInterface) class NRGBA64_static_extension {
    @:keep
    static public function rgba( _c:NRGBA64):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _r:GoUInt32 = (0 : GoUInt32), _g:GoUInt32 = (0 : GoUInt32), _b:GoUInt32 = (0 : GoUInt32), _a:GoUInt32 = (0 : GoUInt32);
        _r = (_c.r : GoUInt32);
        _r = _r * ((_c.a : GoUInt32));
        _r = _r / ((65535u32 : GoUInt32));
        _g = (_c.g : GoUInt32);
        _g = _g * ((_c.a : GoUInt32));
        _g = _g / ((65535u32 : GoUInt32));
        _b = (_c.b : GoUInt32);
        _b = _b * ((_c.a : GoUInt32));
        _b = _b / ((65535u32 : GoUInt32));
        _a = (_c.a : GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class Alpha_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Alpha>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Alpha_asInterface) class Alpha_static_extension {
    @:keep
    static public function rgba( _c:Alpha):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _r:GoUInt32 = (0 : GoUInt32), _g:GoUInt32 = (0 : GoUInt32), _b:GoUInt32 = (0 : GoUInt32), _a:GoUInt32 = (0 : GoUInt32);
        _a = (_c.a : GoUInt32);
        _a = _a | (_a << (8i64 : GoUInt64));
        return { _0 : _a, _1 : _a, _2 : _a, _3 : _a };
    }
}
class Alpha16_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Alpha16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Alpha16_asInterface) class Alpha16_static_extension {
    @:keep
    static public function rgba( _c:Alpha16):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _r:GoUInt32 = (0 : GoUInt32), _g:GoUInt32 = (0 : GoUInt32), _b:GoUInt32 = (0 : GoUInt32), _a:GoUInt32 = (0 : GoUInt32);
        _a = (_c.a : GoUInt32);
        return { _0 : _a, _1 : _a, _2 : _a, _3 : _a };
    }
}
class Gray_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Gray>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Gray_asInterface) class Gray_static_extension {
    @:keep
    static public function rgba( _c:Gray):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _r:GoUInt32 = (0 : GoUInt32), _g:GoUInt32 = (0 : GoUInt32), _b:GoUInt32 = (0 : GoUInt32), _a:GoUInt32 = (0 : GoUInt32);
        var _y:GoUInt32 = (_c.y : GoUInt32);
        _y = _y | (_y << (8i64 : GoUInt64));
        return { _0 : _y, _1 : _y, _2 : _y, _3 : (65535u32 : GoUInt32) };
    }
}
class Gray16_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Gray16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Gray16_asInterface) class Gray16_static_extension {
    @:keep
    static public function rgba( _c:Gray16):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _r:GoUInt32 = (0 : GoUInt32), _g:GoUInt32 = (0 : GoUInt32), _b:GoUInt32 = (0 : GoUInt32), _a:GoUInt32 = (0 : GoUInt32);
        var _y:GoUInt32 = (_c.y : GoUInt32);
        return { _0 : _y, _1 : _y, _2 : _y, _3 : (65535u32 : GoUInt32) };
    }
}
class T_modelFunc_asInterface {
    @:keep
    public dynamic function convert(_c:Color):Color return __self__.value.convert(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_modelFunc>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.T_modelFunc_asInterface) class T_modelFunc_static_extension {
    @:keep
    static public function convert( _m:Ref<T_modelFunc>, _c:Color):Color {
        return _m._f(_c);
    }
}
class YCbCr_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<YCbCr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.YCbCr_asInterface) class YCbCr_static_extension {
    @:keep
    static public function rgba( _c:YCbCr):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _yy1:GoInt32 = (_c.y : GoInt32) * (65793 : GoInt32);
        var _cb1:GoInt32 = (_c.cb : GoInt32) - (128 : GoInt32);
        var _cr1:GoInt32 = (_c.cr : GoInt32) - (128 : GoInt32);
        var _r:GoInt32 = _yy1 + ((91881 : GoInt32) * _cr1);
        if ((_r : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _r = _r >> ((8i64 : GoUInt64));
        } else {
            _r = (-1 ^ (_r >> (31i64 : GoUInt64))) & (65535 : GoInt32);
        };
        var _g:GoInt32 = (_yy1 - ((22554 : GoInt32) * _cb1)) - ((46802 : GoInt32) * _cr1);
        if ((_g : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _g = _g >> ((8i64 : GoUInt64));
        } else {
            _g = (-1 ^ (_g >> (31i64 : GoUInt64))) & (65535 : GoInt32);
        };
        var _b:GoInt32 = _yy1 + ((116130 : GoInt32) * _cb1);
        if ((_b : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _b = _b >> ((8i64 : GoUInt64));
        } else {
            _b = (-1 ^ (_b >> (31i64 : GoUInt64))) & (65535 : GoInt32);
        };
        return { _0 : (_r : GoUInt32), _1 : (_g : GoUInt32), _2 : (_b : GoUInt32), _3 : (65535u32 : GoUInt32) };
    }
}
class NYCbCrA_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<NYCbCrA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.NYCbCrA_asInterface) class NYCbCrA_static_extension {
    @:keep
    static public function rgba( _c:NYCbCrA):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _yy1:GoInt32 = (_c.ycbCr.y : GoInt32) * (65793 : GoInt32);
        var _cb1:GoInt32 = (_c.ycbCr.cb : GoInt32) - (128 : GoInt32);
        var _cr1:GoInt32 = (_c.ycbCr.cr : GoInt32) - (128 : GoInt32);
        var _r:GoInt32 = _yy1 + ((91881 : GoInt32) * _cr1);
        if ((_r : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _r = _r >> ((8i64 : GoUInt64));
        } else {
            _r = (-1 ^ (_r >> (31i64 : GoUInt64))) & (65535 : GoInt32);
        };
        var _g:GoInt32 = (_yy1 - ((22554 : GoInt32) * _cb1)) - ((46802 : GoInt32) * _cr1);
        if ((_g : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _g = _g >> ((8i64 : GoUInt64));
        } else {
            _g = (-1 ^ (_g >> (31i64 : GoUInt64))) & (65535 : GoInt32);
        };
        var _b:GoInt32 = _yy1 + ((116130 : GoInt32) * _cb1);
        if ((_b : GoUInt32) & (-16777216u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _b = _b >> ((8i64 : GoUInt64));
        } else {
            _b = (-1 ^ (_b >> (31i64 : GoUInt64))) & (65535 : GoInt32);
        };
        var _a:GoUInt32 = (_c.a : GoUInt32) * (257u32 : GoUInt32);
        return { _0 : ((_r : GoUInt32) * _a) / (65535u32 : GoUInt32), _1 : ((_g : GoUInt32) * _a) / (65535u32 : GoUInt32), _2 : ((_b : GoUInt32) * _a) / (65535u32 : GoUInt32), _3 : _a };
    }
}
class CMYK_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CMYK>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.CMYK_asInterface) class CMYK_static_extension {
    @:keep
    static public function rgba( _c:CMYK):{ var _0 : GoUInt32; var _1 : GoUInt32; var _2 : GoUInt32; var _3 : GoUInt32; } {
        var _w:GoUInt32 = (65535u32 : GoUInt32) - ((_c.k : GoUInt32) * (257u32 : GoUInt32));
        var _r:GoUInt32 = (((65535u32 : GoUInt32) - ((_c.c : GoUInt32) * (257u32 : GoUInt32))) * _w) / (65535u32 : GoUInt32);
        var _g:GoUInt32 = (((65535u32 : GoUInt32) - ((_c.m : GoUInt32) * (257u32 : GoUInt32))) * _w) / (65535u32 : GoUInt32);
        var _b:GoUInt32 = (((65535u32 : GoUInt32) - ((_c.y : GoUInt32) * (257u32 : GoUInt32))) * _w) / (65535u32 : GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : (65535u32 : GoUInt32) };
    }
}
class Palette_asInterface {
    /**
        // Index returns the index of the palette color closest to c in Euclidean
        // R,G,B,A space.
    **/
    @:keep
    public dynamic function index(_c:Color):GoInt return __self__.value.index(_c);
    /**
        // Convert returns the palette color closest to c in Euclidean R,G,B space.
    **/
    @:keep
    public dynamic function convert(_c:Color):Color return __self__.value.convert(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Palette>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Palette_asInterface) class Palette_static_extension {
    /**
        // Index returns the index of the palette color closest to c in Euclidean
        // R,G,B,A space.
    **/
    @:keep
    static public function index( _p:Palette, _c:Color):GoInt {
        var __tmp__ = _c.rgba(), _cr:GoUInt32 = __tmp__._0, _cg:GoUInt32 = __tmp__._1, _cb:GoUInt32 = __tmp__._2, _ca:GoUInt32 = __tmp__._3;
        var __0:GoInt = (0 : GoInt), __1:GoUInt32 = (-1u32 : GoUInt32), _bestSum:GoUInt32 = __1, _ret:GoInt = __0;
        for (_i => _v in _p) {
            var __tmp__ = _v.rgba(), _vr:GoUInt32 = __tmp__._0, _vg:GoUInt32 = __tmp__._1, _vb:GoUInt32 = __tmp__._2, _va:GoUInt32 = __tmp__._3;
            var _sum:GoUInt32 = ((_sqDiff(_cr, _vr) + _sqDiff(_cg, _vg)) + _sqDiff(_cb, _vb)) + _sqDiff(_ca, _va);
            if (_sum < _bestSum) {
                if (_sum == ((0u32 : GoUInt32))) {
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
    /**
        // Convert returns the palette color closest to c in Euclidean R,G,B space.
    **/
    @:keep
    static public function convert( _p:Palette, _c:Color):Color {
        if ((_p.length) == ((0 : GoInt))) {
            return (null : stdgo.image.color.Color.Color);
        };
        return _p[(_p.index(_c) : GoInt)];
    }
}
