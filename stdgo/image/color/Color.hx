package stdgo.image.color;
/**
    // Package color implements a basic color library.
**/
private var __go2hxdoc__package : Bool;
/**
    // Models for the standard color types.
    
    
**/
var rgbamodel : stdgo.image.color.Color.Model = modelFunc(_rgbaModel);
/**
    // Models for the standard color types.
    
    
**/
var rgba64model : stdgo.image.color.Color.Model = modelFunc(_rgba64Model);
/**
    // Models for the standard color types.
    
    
**/
var nrgbamodel : stdgo.image.color.Color.Model = modelFunc(_nrgbaModel);
/**
    // Models for the standard color types.
    
    
**/
var nrgba64model : stdgo.image.color.Color.Model = modelFunc(_nrgba64Model);
/**
    // Models for the standard color types.
    
    
**/
var alphaModel : stdgo.image.color.Color.Model = modelFunc(_alphaModel);
/**
    // Models for the standard color types.
    
    
**/
var alpha16Model : stdgo.image.color.Color.Model = modelFunc(_alpha16Model);
/**
    // Models for the standard color types.
    
    
**/
var grayModel : stdgo.image.color.Color.Model = modelFunc(_grayModel);
/**
    // Models for the standard color types.
    
    
**/
var gray16Model : stdgo.image.color.Color.Model = modelFunc(_gray16Model);
/**
    // Standard colors.
    
    
**/
var black : stdgo.image.color.Color.Gray16 = (new stdgo.image.color.Color.Gray16((0 : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.Gray16);
/**
    // Standard colors.
    
    
**/
var white : stdgo.image.color.Color.Gray16 = (new stdgo.image.color.Color.Gray16((65535 : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.Gray16);
/**
    // Standard colors.
    
    
**/
var transparent : stdgo.image.color.Color.Alpha16 = (new stdgo.image.color.Color.Alpha16((0 : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.Alpha16);
/**
    // Standard colors.
    
    
**/
var opaque : stdgo.image.color.Color.Alpha16 = (new stdgo.image.color.Color.Alpha16((65535 : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.Alpha16);
/**
    // YCbCrModel is the Model for Y'CbCr colors.
    
    
**/
var ycbCrModel : stdgo.image.color.Color.Model = modelFunc(_yCbCrModel);
/**
    // NYCbCrAModel is the Model for non-alpha-premultiplied Y'CbCr-with-alpha
    // colors.
    
    
**/
var nycbCrAModel : stdgo.image.color.Color.Model = modelFunc(_nYCbCrAModel);
/**
    // CMYKModel is the Model for CMYK colors.
    
    
**/
var cmykmodel : stdgo.image.color.Color.Model = modelFunc(_cmykModel);
/**
    
    
    
**/
var _sink8 : stdgo.StdGoTypes.GoUInt8 = (0 : stdgo.StdGoTypes.GoUInt8);
/**
    
    
    
**/
var _sink32 : stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
/**
    // Color can convert itself to alpha-premultiplied 16-bits per channel RGBA.
    // The conversion may be lossy.
    
    
**/
typedef Color = stdgo.StdGoTypes.StructType & {
    /**
        // RGBA returns the alpha-premultiplied red, green, blue and alpha values
        // for the color. Each value ranges within [0, 0xffff], but is represented
        // by a uint32 so that multiplying by a blend factor up to 0xffff will not
        // overflow.
        //
        // An alpha-premultiplied color component c has been scaled by alpha (a),
        // so has valid values 0 <= c <= a.
        
        
    **/
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; };
};
/**
    // Model can convert any Color to one from its own color model. The conversion
    // may be lossy.
    
    
**/
typedef Model = stdgo.StdGoTypes.StructType & {
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
    public var r : stdgo.StdGoTypes.GoUInt8 = 0;
    public var g : stdgo.StdGoTypes.GoUInt8 = 0;
    public var b : stdgo.StdGoTypes.GoUInt8 = 0;
    public var a : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?r:stdgo.StdGoTypes.GoUInt8, ?g:stdgo.StdGoTypes.GoUInt8, ?b:stdgo.StdGoTypes.GoUInt8, ?a:stdgo.StdGoTypes.GoUInt8) {
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
/**
    // RGBA64 represents a 64-bit alpha-premultiplied color, having 16 bits for
    // each of red, green, blue and alpha.
    //
    // An alpha-premultiplied color component C has been scaled by alpha (A), so
    // has valid values 0 <= C <= A.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.RGBA64_static_extension) class RGBA64 {
    public var r : stdgo.StdGoTypes.GoUInt16 = 0;
    public var g : stdgo.StdGoTypes.GoUInt16 = 0;
    public var b : stdgo.StdGoTypes.GoUInt16 = 0;
    public var a : stdgo.StdGoTypes.GoUInt16 = 0;
    public function new(?r:stdgo.StdGoTypes.GoUInt16, ?g:stdgo.StdGoTypes.GoUInt16, ?b:stdgo.StdGoTypes.GoUInt16, ?a:stdgo.StdGoTypes.GoUInt16) {
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
/**
    // NRGBA represents a non-alpha-premultiplied 32-bit color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.NRGBA_static_extension) class NRGBA {
    public var r : stdgo.StdGoTypes.GoUInt8 = 0;
    public var g : stdgo.StdGoTypes.GoUInt8 = 0;
    public var b : stdgo.StdGoTypes.GoUInt8 = 0;
    public var a : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?r:stdgo.StdGoTypes.GoUInt8, ?g:stdgo.StdGoTypes.GoUInt8, ?b:stdgo.StdGoTypes.GoUInt8, ?a:stdgo.StdGoTypes.GoUInt8) {
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
/**
    // NRGBA64 represents a non-alpha-premultiplied 64-bit color,
    // having 16 bits for each of red, green, blue and alpha.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.NRGBA64_static_extension) class NRGBA64 {
    public var r : stdgo.StdGoTypes.GoUInt16 = 0;
    public var g : stdgo.StdGoTypes.GoUInt16 = 0;
    public var b : stdgo.StdGoTypes.GoUInt16 = 0;
    public var a : stdgo.StdGoTypes.GoUInt16 = 0;
    public function new(?r:stdgo.StdGoTypes.GoUInt16, ?g:stdgo.StdGoTypes.GoUInt16, ?b:stdgo.StdGoTypes.GoUInt16, ?a:stdgo.StdGoTypes.GoUInt16) {
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
/**
    // Alpha represents an 8-bit alpha color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.Alpha_static_extension) class Alpha {
    public var a : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?a:stdgo.StdGoTypes.GoUInt8) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha(a);
    }
}
/**
    // Alpha16 represents a 16-bit alpha color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.Alpha16_static_extension) class Alpha16 {
    public var a : stdgo.StdGoTypes.GoUInt16 = 0;
    public function new(?a:stdgo.StdGoTypes.GoUInt16) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha16(a);
    }
}
/**
    // Gray represents an 8-bit grayscale color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.Gray_static_extension) class Gray {
    public var y : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?y:stdgo.StdGoTypes.GoUInt8) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray(y);
    }
}
/**
    // Gray16 represents a 16-bit grayscale color.
    
    
**/
@:structInit @:using(stdgo.image.color.Color.Gray16_static_extension) class Gray16 {
    public var y : stdgo.StdGoTypes.GoUInt16 = 0;
    public function new(?y:stdgo.StdGoTypes.GoUInt16) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var y : stdgo.StdGoTypes.GoUInt8 = 0;
    public var cb : stdgo.StdGoTypes.GoUInt8 = 0;
    public var cr : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?y:stdgo.StdGoTypes.GoUInt8, ?cb:stdgo.StdGoTypes.GoUInt8, ?cr:stdgo.StdGoTypes.GoUInt8) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var a : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?ycbCr:stdgo.image.color.Color.YCbCr, ?a:stdgo.StdGoTypes.GoUInt8) {
        if (ycbCr != null) this.ycbCr = ycbCr;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var c : stdgo.StdGoTypes.GoUInt8 = 0;
    public var m : stdgo.StdGoTypes.GoUInt8 = 0;
    public var y : stdgo.StdGoTypes.GoUInt8 = 0;
    public var k : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?c:stdgo.StdGoTypes.GoUInt8, ?m:stdgo.StdGoTypes.GoUInt8, ?y:stdgo.StdGoTypes.GoUInt8, ?k:stdgo.StdGoTypes.GoUInt8) {
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
/**
    // Palette is a palette of colors.
**/
@:named @:using(stdgo.image.color.Color.Palette_static_extension) typedef Palette = stdgo.Slice<stdgo.image.color.Color.Color>;
/**
    // ModelFunc returns a Model that invokes f to implement the conversion.
**/
function modelFunc(_f:Color -> Color):Model {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.color.Color.T_modelFunc(_f) : stdgo.image.color.Color.T_modelFunc)) : stdgo.StdGoTypes.Ref<stdgo.image.color.Color.T_modelFunc>));
    }
function _rgbaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : RGBA)) : RGBA), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.RGBA), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA((_r >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_g >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_b >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_a >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA));
    }
function _rgba64Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : RGBA64)) : RGBA64), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.RGBA64), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA64((_r : stdgo.StdGoTypes.GoUInt16), (_g : stdgo.StdGoTypes.GoUInt16), (_b : stdgo.StdGoTypes.GoUInt16), (_a : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.RGBA64));
    }
function _nrgbaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : NRGBA)) : NRGBA), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.NRGBA), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        if (_a == ((65535u32 : stdgo.StdGoTypes.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo.image.color.Color.NRGBA((_r >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_g >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_b >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NRGBA));
        };
        if (_a == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo.image.color.Color.NRGBA((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NRGBA));
        };
        _r = (_r * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
        _g = (_g * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
        _b = (_b * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.NRGBA((_r >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_g >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_b >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_a >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NRGBA));
    }
function _nrgba64Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : NRGBA64)) : NRGBA64), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.NRGBA64), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        if (_a == ((65535u32 : stdgo.StdGoTypes.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo.image.color.Color.NRGBA64((_r : stdgo.StdGoTypes.GoUInt16), (_g : stdgo.StdGoTypes.GoUInt16), (_b : stdgo.StdGoTypes.GoUInt16), (65535 : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.NRGBA64));
        };
        if (_a == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo.image.color.Color.NRGBA64((0 : stdgo.StdGoTypes.GoUInt16), (0 : stdgo.StdGoTypes.GoUInt16), (0 : stdgo.StdGoTypes.GoUInt16), (0 : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.NRGBA64));
        };
        _r = (_r * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
        _g = (_g * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
        _b = (_b * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.NRGBA64((_r : stdgo.StdGoTypes.GoUInt16), (_g : stdgo.StdGoTypes.GoUInt16), (_b : stdgo.StdGoTypes.GoUInt16), (_a : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.NRGBA64));
    }
function _alphaModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : Alpha)) : Alpha), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.Alpha), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), __1:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, __2:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, __3:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.Alpha((_a >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.Alpha));
    }
function _alpha16Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : Alpha16)) : Alpha16), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.Alpha16), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), __1:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, __2:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, __3:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.Alpha16((_a : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.Alpha16));
    }
function _grayModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : Gray)) : Gray), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.Gray), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, __1:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        var _y:stdgo.StdGoTypes.GoUInt32 = (((((19595u32 : stdgo.StdGoTypes.GoUInt32) * _r) + ((38470u32 : stdgo.StdGoTypes.GoUInt32) * _g)) + ((7471u32 : stdgo.StdGoTypes.GoUInt32) * _b)) + (32768u32 : stdgo.StdGoTypes.GoUInt32)) >> (24i64 : stdgo.StdGoTypes.GoUInt64);
        return stdgo.Go.asInterface((new stdgo.image.color.Color.Gray((_y : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.Gray));
    }
function _gray16Model(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : Gray16)) : Gray16), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.Gray16), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, __1:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        var _y:stdgo.StdGoTypes.GoUInt32 = (((((19595u32 : stdgo.StdGoTypes.GoUInt32) * _r) + ((38470u32 : stdgo.StdGoTypes.GoUInt32) * _g)) + ((7471u32 : stdgo.StdGoTypes.GoUInt32) * _b)) + (32768u32 : stdgo.StdGoTypes.GoUInt32)) >> (16i64 : stdgo.StdGoTypes.GoUInt64);
        return stdgo.Go.asInterface((new stdgo.image.color.Color.Gray16((_y : stdgo.StdGoTypes.GoUInt16)) : stdgo.image.color.Color.Gray16));
    }
/**
    // sqDiff returns the squared-difference of x and y, shifted by 2 so that
    // adding four of those won't overflow a uint32.
    //
    // x and y are both assumed to be in the range [0, 0xffff].
**/
function _sqDiff(_x:stdgo.StdGoTypes.GoUInt32, _y:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 {
        var _d:stdgo.StdGoTypes.GoUInt32 = _x - _y;
        return (_d * _d) >> (2i64 : stdgo.StdGoTypes.GoUInt64);
    }
function testSqDiff(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _orig:(stdgo.StdGoTypes.GoUInt32, stdgo.StdGoTypes.GoUInt32) -> stdgo.StdGoTypes.GoUInt32 = function(_x:stdgo.StdGoTypes.GoUInt32, _y:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 {
            var _d:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
            if (_x > _y) {
                _d = (_x - _y : stdgo.StdGoTypes.GoUInt32);
            } else {
                _d = (_y - _x : stdgo.StdGoTypes.GoUInt32);
            };
            return (_d * _d) >> (2i64 : stdgo.StdGoTypes.GoUInt64);
        };
        var _testCases = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(
12,
12,
(0u32 : stdgo.StdGoTypes.GoUInt32),
(1u32 : stdgo.StdGoTypes.GoUInt32),
(2u32 : stdgo.StdGoTypes.GoUInt32),
(65533u32 : stdgo.StdGoTypes.GoUInt32),
(65534u32 : stdgo.StdGoTypes.GoUInt32),
(65535u32 : stdgo.StdGoTypes.GoUInt32),
(65536u32 : stdgo.StdGoTypes.GoUInt32),
(65537u32 : stdgo.StdGoTypes.GoUInt32),
(65538u32 : stdgo.StdGoTypes.GoUInt32),
(-3u32 : stdgo.StdGoTypes.GoUInt32),
(-2u32 : stdgo.StdGoTypes.GoUInt32),
(-1u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        for (__0 => _x in _testCases) {
            for (__1 => _y in _testCases) {
                {
                    var __0:stdgo.StdGoTypes.GoUInt32 = _sqDiff(_x, _y), __1:stdgo.StdGoTypes.GoUInt32 = _orig(_x, _y), _want:stdgo.StdGoTypes.GoUInt32 = __1, _got:stdgo.StdGoTypes.GoUInt32 = __0;
                    if (_got != (_want)) {
                        _t.fatalf(("sqDiff(%#x, %#x): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.checkEqual(stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_sqDiff), (stdgo.Go.setRef(({ maxCountScale : (10 : stdgo.StdGoTypes.GoFloat64) } : stdgo.testing.quick.Quick.Config)) : stdgo.StdGoTypes.Ref<stdgo.testing.quick.Quick.Config>));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
**/
function rgbtoYCbCr(_r:stdgo.StdGoTypes.GoUInt8, _g:stdgo.StdGoTypes.GoUInt8, _b:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.StdGoTypes.GoUInt8; var _2 : stdgo.StdGoTypes.GoUInt8; } {
        var _r1:stdgo.StdGoTypes.GoInt32 = (_r : stdgo.StdGoTypes.GoInt32);
        var _g1:stdgo.StdGoTypes.GoInt32 = (_g : stdgo.StdGoTypes.GoInt32);
        var _b1:stdgo.StdGoTypes.GoInt32 = (_b : stdgo.StdGoTypes.GoInt32);
        var _yy:stdgo.StdGoTypes.GoInt32 = (((((19595 : stdgo.StdGoTypes.GoInt32) * _r1) + ((38470 : stdgo.StdGoTypes.GoInt32) * _g1)) + ((7471 : stdgo.StdGoTypes.GoInt32) * _b1)) + (32768 : stdgo.StdGoTypes.GoInt32)) >> (16i64 : stdgo.StdGoTypes.GoUInt64);
        var _cb:stdgo.StdGoTypes.GoInt32 = ((((-11056 : stdgo.StdGoTypes.GoInt32) * _r1) - ((21712 : stdgo.StdGoTypes.GoInt32) * _g1)) + ((32768 : stdgo.StdGoTypes.GoInt32) * _b1)) + (8421376 : stdgo.StdGoTypes.GoInt32);
        if ((_cb : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _cb = _cb >> ((16i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _cb = (-1 ^ (_cb >> (31i64 : stdgo.StdGoTypes.GoUInt64)));
        };
        var _cr:stdgo.StdGoTypes.GoInt32 = ((((32768 : stdgo.StdGoTypes.GoInt32) * _r1) - ((27440 : stdgo.StdGoTypes.GoInt32) * _g1)) - ((5328 : stdgo.StdGoTypes.GoInt32) * _b1)) + (8421376 : stdgo.StdGoTypes.GoInt32);
        if ((_cr : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _cr = _cr >> ((16i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _cr = (-1 ^ (_cr >> (31i64 : stdgo.StdGoTypes.GoUInt64)));
        };
        return { _0 : (_yy : stdgo.StdGoTypes.GoUInt8), _1 : (_cb : stdgo.StdGoTypes.GoUInt8), _2 : (_cr : stdgo.StdGoTypes.GoUInt8) };
    }
/**
    // YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
**/
function ycbCrToRGB(_y:stdgo.StdGoTypes.GoUInt8, _cb:stdgo.StdGoTypes.GoUInt8, _cr:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.StdGoTypes.GoUInt8; var _2 : stdgo.StdGoTypes.GoUInt8; } {
        var _yy1:stdgo.StdGoTypes.GoInt32 = (_y : stdgo.StdGoTypes.GoInt32) * (65793 : stdgo.StdGoTypes.GoInt32);
        var _cb1:stdgo.StdGoTypes.GoInt32 = (_cb : stdgo.StdGoTypes.GoInt32) - (128 : stdgo.StdGoTypes.GoInt32);
        var _cr1:stdgo.StdGoTypes.GoInt32 = (_cr : stdgo.StdGoTypes.GoInt32) - (128 : stdgo.StdGoTypes.GoInt32);
        var _r:stdgo.StdGoTypes.GoInt32 = _yy1 + ((91881 : stdgo.StdGoTypes.GoInt32) * _cr1);
        if ((_r : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _r = _r >> ((16i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _r = (-1 ^ (_r >> (31i64 : stdgo.StdGoTypes.GoUInt64)));
        };
        var _g:stdgo.StdGoTypes.GoInt32 = (_yy1 - ((22554 : stdgo.StdGoTypes.GoInt32) * _cb1)) - ((46802 : stdgo.StdGoTypes.GoInt32) * _cr1);
        if ((_g : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _g = _g >> ((16i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _g = (-1 ^ (_g >> (31i64 : stdgo.StdGoTypes.GoUInt64)));
        };
        var _b:stdgo.StdGoTypes.GoInt32 = _yy1 + ((116130 : stdgo.StdGoTypes.GoInt32) * _cb1);
        if ((_b : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _b = _b >> ((16i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _b = (-1 ^ (_b >> (31i64 : stdgo.StdGoTypes.GoUInt64)));
        };
        return { _0 : (_r : stdgo.StdGoTypes.GoUInt8), _1 : (_g : stdgo.StdGoTypes.GoUInt8), _2 : (_b : stdgo.StdGoTypes.GoUInt8) };
    }
function _yCbCrModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : YCbCr)) : YCbCr), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.YCbCr), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, __1:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        var __tmp__ = rgbtoYCbCr((_r >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_g >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_b >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8)), _y:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _u:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _v:stdgo.StdGoTypes.GoUInt8 = __tmp__._2;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.YCbCr(_y, _u, _v) : stdgo.image.color.Color.YCbCr));
    }
function _nYCbCrAModel(_c:Color):Color {
        {
            final __type__ = _c;
            if (stdgo.Go.typeEquals((__type__ : NYCbCrA))) {
                var _c:stdgo.image.color.Color.NYCbCrA = __type__ == null ? ({} : stdgo.image.color.Color.NYCbCrA) : __type__.__underlying__() == null ? ({} : stdgo.image.color.Color.NYCbCrA) : __type__ == null ? ({} : stdgo.image.color.Color.NYCbCrA) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_c);
            } else if (stdgo.Go.typeEquals((__type__ : YCbCr))) {
                var _c:stdgo.image.color.Color.YCbCr = __type__ == null ? ({} : stdgo.image.color.Color.YCbCr) : __type__.__underlying__() == null ? ({} : stdgo.image.color.Color.YCbCr) : __type__ == null ? ({} : stdgo.image.color.Color.YCbCr) : __type__.__underlying__().value;
                return stdgo.Go.asInterface((new stdgo.image.color.Color.NYCbCrA(_c?.__copy__(), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NYCbCrA));
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        if (_a != ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _r = (_r * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
            _g = (_g * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
            _b = (_b * (65535u32 : stdgo.StdGoTypes.GoUInt32)) / _a;
        };
        var __tmp__ = rgbtoYCbCr((_r >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_g >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_b >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8)), _y:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _u:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _v:stdgo.StdGoTypes.GoUInt8 = __tmp__._2;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.NYCbCrA(({ y : _y, cb : _u, cr : _v } : stdgo.image.color.Color.YCbCr), (_a >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NYCbCrA));
    }
/**
    // RGBToCMYK converts an RGB triple to a CMYK quadruple.
**/
function rgbtoCMYK(_r:stdgo.StdGoTypes.GoUInt8, _g:stdgo.StdGoTypes.GoUInt8, _b:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.StdGoTypes.GoUInt8; var _2 : stdgo.StdGoTypes.GoUInt8; var _3 : stdgo.StdGoTypes.GoUInt8; } {
        var _rr:stdgo.StdGoTypes.GoUInt32 = (_r : stdgo.StdGoTypes.GoUInt32);
        var _gg:stdgo.StdGoTypes.GoUInt32 = (_g : stdgo.StdGoTypes.GoUInt32);
        var _bb:stdgo.StdGoTypes.GoUInt32 = (_b : stdgo.StdGoTypes.GoUInt32);
        var _w:stdgo.StdGoTypes.GoUInt32 = _rr;
        if (_w < _gg) {
            _w = _gg;
        };
        if (_w < _bb) {
            _w = _bb;
        };
        if (_w == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoUInt8), _1 : (0 : stdgo.StdGoTypes.GoUInt8), _2 : (0 : stdgo.StdGoTypes.GoUInt8), _3 : (255 : stdgo.StdGoTypes.GoUInt8) };
        };
        var _c:stdgo.StdGoTypes.GoUInt32 = ((_w - _rr) * (255u32 : stdgo.StdGoTypes.GoUInt32)) / _w;
        var _m:stdgo.StdGoTypes.GoUInt32 = ((_w - _gg) * (255u32 : stdgo.StdGoTypes.GoUInt32)) / _w;
        var _y:stdgo.StdGoTypes.GoUInt32 = ((_w - _bb) * (255u32 : stdgo.StdGoTypes.GoUInt32)) / _w;
        return { _0 : (_c : stdgo.StdGoTypes.GoUInt8), _1 : (_m : stdgo.StdGoTypes.GoUInt8), _2 : (_y : stdgo.StdGoTypes.GoUInt8), _3 : ((255u32 : stdgo.StdGoTypes.GoUInt32) - _w : stdgo.StdGoTypes.GoUInt8) };
    }
/**
    // CMYKToRGB converts a CMYK quadruple to an RGB triple.
**/
function cmyktoRGB(_c:stdgo.StdGoTypes.GoUInt8, _m:stdgo.StdGoTypes.GoUInt8, _y:stdgo.StdGoTypes.GoUInt8, _k:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.StdGoTypes.GoUInt8; var _2 : stdgo.StdGoTypes.GoUInt8; } {
        var _w:stdgo.StdGoTypes.GoUInt32 = (65535u32 : stdgo.StdGoTypes.GoUInt32) - ((_k : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32));
        var _r:stdgo.StdGoTypes.GoUInt32 = (((65535u32 : stdgo.StdGoTypes.GoUInt32) - ((_c : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32))) * _w) / (65535u32 : stdgo.StdGoTypes.GoUInt32);
        var _g:stdgo.StdGoTypes.GoUInt32 = (((65535u32 : stdgo.StdGoTypes.GoUInt32) - ((_m : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32))) * _w) / (65535u32 : stdgo.StdGoTypes.GoUInt32);
        var _b:stdgo.StdGoTypes.GoUInt32 = (((65535u32 : stdgo.StdGoTypes.GoUInt32) - ((_y : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32))) * _w) / (65535u32 : stdgo.StdGoTypes.GoUInt32);
        return { _0 : (_r >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), _1 : (_g >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), _2 : (_b >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8) };
    }
function _cmykModel(_c:Color):Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : CMYK)) : CMYK), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo.image.color.Color.CMYK), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, __1:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        var __tmp__ = rgbtoCMYK((_r >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_g >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), (_b >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8)), _cc:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _mm:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _yy:stdgo.StdGoTypes.GoUInt8 = __tmp__._2, _kk:stdgo.StdGoTypes.GoUInt8 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo.image.color.Color.CMYK(_cc, _mm, _yy, _kk) : stdgo.image.color.Color.CMYK));
    }
function _delta(_x:stdgo.StdGoTypes.GoUInt8, _y:stdgo.StdGoTypes.GoUInt8):stdgo.StdGoTypes.GoUInt8 {
        if (_x >= _y) {
            return _x - _y;
        };
        return _y - _x;
    }
function _eq(_c0:Color, _c1:Color):stdgo.Error {
        var __tmp__ = _c0.rgba(), _r0:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g0:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b0:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a0:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        var __tmp__ = _c1.rgba(), _r1:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g1:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b1:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _a1:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        if ((((_r0 != _r1) || (_g0 != _g1)) || (_b0 != _b1)) || (_a0 != _a1)) {
            return stdgo.fmt.Fmt.errorf(("got  0x%04x 0x%04x 0x%04x 0x%04x\nwant 0x%04x 0x%04x 0x%04x 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_r0), stdgo.Go.toInterface(_g0), stdgo.Go.toInterface(_b0), stdgo.Go.toInterface(_a0), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_g1), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_a1));
        };
        return (null : stdgo.Error);
    }
/**
    // TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
    // and back to within 2/256 tolerance.
**/
function testYCbCrRoundtrip(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _r:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_r < (256 : stdgo.StdGoTypes.GoInt), _r = _r + ((7 : stdgo.StdGoTypes.GoInt)), {
                {
                    var _g:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_g < (256 : stdgo.StdGoTypes.GoInt), _g = _g + ((5 : stdgo.StdGoTypes.GoInt)), {
                        {
                            var _b:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_b < (256 : stdgo.StdGoTypes.GoInt), _b = _b + ((3 : stdgo.StdGoTypes.GoInt)), {
                                var __0:stdgo.StdGoTypes.GoUInt8 = (_r : stdgo.StdGoTypes.GoUInt8), __1:stdgo.StdGoTypes.GoUInt8 = (_g : stdgo.StdGoTypes.GoUInt8), __2:stdgo.StdGoTypes.GoUInt8 = (_b : stdgo.StdGoTypes.GoUInt8), _b0:stdgo.StdGoTypes.GoUInt8 = __2, _g0:stdgo.StdGoTypes.GoUInt8 = __1, _r0:stdgo.StdGoTypes.GoUInt8 = __0;
                                var __tmp__ = rgbtoYCbCr(_r0, _g0, _b0), _y:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _cb:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _cr:stdgo.StdGoTypes.GoUInt8 = __tmp__._2;
                                var __tmp__ = ycbCrToRGB(_y, _cb, _cr), _r1:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _g1:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _b1:stdgo.StdGoTypes.GoUInt8 = __tmp__._2;
                                if (((_delta(_r0, _r1) > (2 : stdgo.StdGoTypes.GoUInt8)) || (_delta(_g0, _g1) > (2 : stdgo.StdGoTypes.GoUInt8))) || (_delta(_b0, _b1) > (2 : stdgo.StdGoTypes.GoUInt8))) {
                                    _t.fatalf(("\nr0, g0, b0 = %d, %d, %d\ny,  cb, cr = %d, %d, %d\nr1, g1, b1 = %d, %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_r0), stdgo.Go.toInterface(_g0), stdgo.Go.toInterface(_b0), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_cb), stdgo.Go.toInterface(_cr), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_g1), stdgo.Go.toInterface(_b1));
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
function testYCbCrToRGBConsistency(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _y:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_y < (256 : stdgo.StdGoTypes.GoInt), _y = _y + ((7 : stdgo.StdGoTypes.GoInt)), {
                {
                    var _cb:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_cb < (256 : stdgo.StdGoTypes.GoInt), _cb = _cb + ((5 : stdgo.StdGoTypes.GoInt)), {
                        {
                            var _cr:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_cr < (256 : stdgo.StdGoTypes.GoInt), _cr = _cr + ((3 : stdgo.StdGoTypes.GoInt)), {
                                var _x:stdgo.image.color.Color.YCbCr = (new stdgo.image.color.Color.YCbCr((_y : stdgo.StdGoTypes.GoUInt8), (_cb : stdgo.StdGoTypes.GoUInt8), (_cr : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr);
                                var __tmp__ = _x.rgba(), _r0:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g0:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b0:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, __0:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
                                var __0:stdgo.StdGoTypes.GoUInt8 = (_r0 >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), __1:stdgo.StdGoTypes.GoUInt8 = (_g0 >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), __2:stdgo.StdGoTypes.GoUInt8 = (_b0 >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), _b1:stdgo.StdGoTypes.GoUInt8 = __2, _g1:stdgo.StdGoTypes.GoUInt8 = __1, _r1:stdgo.StdGoTypes.GoUInt8 = __0;
                                var __tmp__ = ycbCrToRGB(_x.y, _x.cb, _x.cr), _r2:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _g2:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _b2:stdgo.StdGoTypes.GoUInt8 = __tmp__._2;
                                if (((_r1 != _r2) || (_g1 != _g2)) || (_b1 != _b2)) {
                                    _t.fatalf(("y, cb, cr = %d, %d, %d\nr1, g1, b1 = %d, %d, %d\nr2, g2, b2 = %d, %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_cb), stdgo.Go.toInterface(_cr), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_g1), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_g2), stdgo.Go.toInterface(_b2));
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
function testYCbCrGray(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                var _c0:stdgo.image.color.Color.YCbCr = (new stdgo.image.color.Color.YCbCr((_i : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr);
                var _c1:stdgo.image.color.Color.Gray = (new stdgo.image.color.Color.Gray((_i : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.Gray);
                {
                    var _err:stdgo.Error = _eq(stdgo.Go.asInterface(_c0), stdgo.Go.asInterface(_c1));
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.
**/
function testNYCbCrAAlpha(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                var _c0:stdgo.image.color.Color.NYCbCrA = (new stdgo.image.color.Color.NYCbCrA((new stdgo.image.color.Color.YCbCr((255 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr), (_i : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NYCbCrA);
                var _c1:stdgo.image.color.Color.Alpha = (new stdgo.image.color.Color.Alpha((_i : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.Alpha);
                {
                    var _err:stdgo.Error = _eq(stdgo.Go.asInterface(_c0), stdgo.Go.asInterface(_c1));
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.
**/
function testNYCbCrAYCbCr(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                var _c0:stdgo.image.color.Color.NYCbCrA = (new stdgo.image.color.Color.NYCbCrA((new stdgo.image.color.Color.YCbCr((_i : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8), (192 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NYCbCrA);
                var _c1:stdgo.image.color.Color.YCbCr = (new stdgo.image.color.Color.YCbCr((_i : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8), (192 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr);
                {
                    var _err:stdgo.Error = _eq(stdgo.Go.asInterface(_c0), stdgo.Go.asInterface(_c1));
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
    // and back to within 1/256 tolerance.
**/
function testCMYKRoundtrip(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _r:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_r < (256 : stdgo.StdGoTypes.GoInt), _r = _r + ((7 : stdgo.StdGoTypes.GoInt)), {
                {
                    var _g:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_g < (256 : stdgo.StdGoTypes.GoInt), _g = _g + ((5 : stdgo.StdGoTypes.GoInt)), {
                        {
                            var _b:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_b < (256 : stdgo.StdGoTypes.GoInt), _b = _b + ((3 : stdgo.StdGoTypes.GoInt)), {
                                var __0:stdgo.StdGoTypes.GoUInt8 = (_r : stdgo.StdGoTypes.GoUInt8), __1:stdgo.StdGoTypes.GoUInt8 = (_g : stdgo.StdGoTypes.GoUInt8), __2:stdgo.StdGoTypes.GoUInt8 = (_b : stdgo.StdGoTypes.GoUInt8), _b0:stdgo.StdGoTypes.GoUInt8 = __2, _g0:stdgo.StdGoTypes.GoUInt8 = __1, _r0:stdgo.StdGoTypes.GoUInt8 = __0;
                                var __tmp__ = rgbtoCMYK(_r0, _g0, _b0), _c:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _m:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _y:stdgo.StdGoTypes.GoUInt8 = __tmp__._2, _k:stdgo.StdGoTypes.GoUInt8 = __tmp__._3;
                                var __tmp__ = cmyktoRGB(_c, _m, _y, _k), _r1:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _g1:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _b1:stdgo.StdGoTypes.GoUInt8 = __tmp__._2;
                                if (((_delta(_r0, _r1) > (1 : stdgo.StdGoTypes.GoUInt8)) || (_delta(_g0, _g1) > (1 : stdgo.StdGoTypes.GoUInt8))) || (_delta(_b0, _b1) > (1 : stdgo.StdGoTypes.GoUInt8))) {
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
/**
    // TestCMYKToRGBConsistency tests that calling the RGBA method (16 bit color)
    // then truncating to 8 bits is equivalent to calling the CMYKToRGB function (8
    // bit color).
**/
function testCMYKToRGBConsistency(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _c:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_c < (256 : stdgo.StdGoTypes.GoInt), _c = _c + ((7 : stdgo.StdGoTypes.GoInt)), {
                {
                    var _m:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_m < (256 : stdgo.StdGoTypes.GoInt), _m = _m + ((5 : stdgo.StdGoTypes.GoInt)), {
                        {
                            var _y:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_y < (256 : stdgo.StdGoTypes.GoInt), _y = _y + ((3 : stdgo.StdGoTypes.GoInt)), {
                                {
                                    var _k:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                    stdgo.Go.cfor(_k < (256 : stdgo.StdGoTypes.GoInt), _k = _k + ((11 : stdgo.StdGoTypes.GoInt)), {
                                        var _x:stdgo.image.color.Color.CMYK = (new stdgo.image.color.Color.CMYK((_c : stdgo.StdGoTypes.GoUInt8), (_m : stdgo.StdGoTypes.GoUInt8), (_y : stdgo.StdGoTypes.GoUInt8), (_k : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.CMYK);
                                        var __tmp__ = _x.rgba(), _r0:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _g0:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _b0:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, __0:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
                                        var __0:stdgo.StdGoTypes.GoUInt8 = (_r0 >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), __1:stdgo.StdGoTypes.GoUInt8 = (_g0 >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), __2:stdgo.StdGoTypes.GoUInt8 = (_b0 >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt8), _b1:stdgo.StdGoTypes.GoUInt8 = __2, _g1:stdgo.StdGoTypes.GoUInt8 = __1, _r1:stdgo.StdGoTypes.GoUInt8 = __0;
                                        var __tmp__ = cmyktoRGB(_x.c, _x.m, _x.y, _x.k), _r2:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _g2:stdgo.StdGoTypes.GoUInt8 = __tmp__._1, _b2:stdgo.StdGoTypes.GoUInt8 = __tmp__._2;
                                        if (((_r1 != _r2) || (_g1 != _g2)) || (_b1 != _b2)) {
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
/**
    // TestCMYKGray tests that CMYK colors are a superset of Gray colors.
**/
function testCMYKGray(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                {
                    var _err:stdgo.Error = _eq(stdgo.Go.asInterface((new stdgo.image.color.Color.CMYK((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), ((255 : stdgo.StdGoTypes.GoInt) - _i : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.CMYK)), stdgo.Go.asInterface((new stdgo.image.color.Color.Gray((_i : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.Gray)));
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
function testPalette(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _p:stdgo.image.color.Color.Palette = (new stdgo.Slice<stdgo.image.color.Color.Color>(6, 6, stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA((255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA((128 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA((127 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (127 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (127 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA)), stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA((64 : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA))) : stdgo.image.color.Color.Palette);
        for (_i => _c in _p) {
            var _j:stdgo.StdGoTypes.GoInt = _p.index(_c);
            if (_i != (_j)) {
                _t.errorf(("Index(%v): got %d (color = %v), want %d" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_p[(_j : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_i));
            };
        };
        var _got:stdgo.image.color.Color.Color = _p.convert(stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA((128 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA)));
        var _want:stdgo.image.color.Color.RGBA = (new stdgo.image.color.Color.RGBA((127 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (127 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.RGBA);
        if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
function benchmarkYCbCrToRGB(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("128" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("255" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = ycbCrToRGB((255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
    }
function benchmarkRGBToYCbCr(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("Cb" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("Cr" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = rgbtoYCbCr((255 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8));
                        _sink8 = __tmp__._0;
                        _sink8 = __tmp__._1;
                        _sink8 = __tmp__._2;
                    };
                });
            };
        });
    }
function benchmarkYCbCrToRGBA(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.YCbCr = (new stdgo.image.color.Color.YCbCr((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
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
        _b.run(("128" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.YCbCr = (new stdgo.image.color.Color.YCbCr((128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
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
        _b.run(("255" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.YCbCr = (new stdgo.image.color.Color.YCbCr((255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
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
function benchmarkNYCbCrAToRGBA(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.NYCbCrA = (new stdgo.image.color.Color.NYCbCrA((new stdgo.image.color.Color.YCbCr((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NYCbCrA);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
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
        _b.run(("128" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.NYCbCrA = (new stdgo.image.color.Color.NYCbCrA((new stdgo.image.color.Color.YCbCr((128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NYCbCrA);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
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
        _b.run(("255" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            var _c:stdgo.image.color.Color.NYCbCrA = (new stdgo.image.color.Color.NYCbCrA((new stdgo.image.color.Color.YCbCr((255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.YCbCr), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.image.color.Color.NYCbCrA);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
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
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RGBA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.RGBA_asInterface) class RGBA_static_extension {
    @:keep
    static public function rgba( _c:RGBA):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:RGBA = _c?.__copy__();
        var _r:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _g:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _b:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _a:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        _r = (_c.r : stdgo.StdGoTypes.GoUInt32);
        _r = _r | (_r << (8i64 : stdgo.StdGoTypes.GoUInt64));
        _g = (_c.g : stdgo.StdGoTypes.GoUInt32);
        _g = _g | (_g << (8i64 : stdgo.StdGoTypes.GoUInt64));
        _b = (_c.b : stdgo.StdGoTypes.GoUInt32);
        _b = _b | (_b << (8i64 : stdgo.StdGoTypes.GoUInt64));
        _a = (_c.a : stdgo.StdGoTypes.GoUInt32);
        _a = _a | (_a << (8i64 : stdgo.StdGoTypes.GoUInt64));
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class RGBA64_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RGBA64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.RGBA64_asInterface) class RGBA64_static_extension {
    @:keep
    static public function rgba( _c:RGBA64):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:RGBA64 = _c?.__copy__();
        var _r:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _g:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _b:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _a:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        return { _0 : (_c.r : stdgo.StdGoTypes.GoUInt32), _1 : (_c.g : stdgo.StdGoTypes.GoUInt32), _2 : (_c.b : stdgo.StdGoTypes.GoUInt32), _3 : (_c.a : stdgo.StdGoTypes.GoUInt32) };
    }
}
class NRGBA_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NRGBA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.NRGBA_asInterface) class NRGBA_static_extension {
    @:keep
    static public function rgba( _c:NRGBA):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:NRGBA = _c?.__copy__();
        var _r:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _g:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _b:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _a:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        _r = (_c.r : stdgo.StdGoTypes.GoUInt32);
        _r = _r | (_r << (8i64 : stdgo.StdGoTypes.GoUInt64));
        _r = _r * ((_c.a : stdgo.StdGoTypes.GoUInt32));
        _r = _r / ((255u32 : stdgo.StdGoTypes.GoUInt32));
        _g = (_c.g : stdgo.StdGoTypes.GoUInt32);
        _g = _g | (_g << (8i64 : stdgo.StdGoTypes.GoUInt64));
        _g = _g * ((_c.a : stdgo.StdGoTypes.GoUInt32));
        _g = _g / ((255u32 : stdgo.StdGoTypes.GoUInt32));
        _b = (_c.b : stdgo.StdGoTypes.GoUInt32);
        _b = _b | (_b << (8i64 : stdgo.StdGoTypes.GoUInt64));
        _b = _b * ((_c.a : stdgo.StdGoTypes.GoUInt32));
        _b = _b / ((255u32 : stdgo.StdGoTypes.GoUInt32));
        _a = (_c.a : stdgo.StdGoTypes.GoUInt32);
        _a = _a | (_a << (8i64 : stdgo.StdGoTypes.GoUInt64));
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class NRGBA64_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NRGBA64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.NRGBA64_asInterface) class NRGBA64_static_extension {
    @:keep
    static public function rgba( _c:NRGBA64):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:NRGBA64 = _c?.__copy__();
        var _r:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _g:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _b:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _a:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        _r = (_c.r : stdgo.StdGoTypes.GoUInt32);
        _r = _r * ((_c.a : stdgo.StdGoTypes.GoUInt32));
        _r = _r / ((65535u32 : stdgo.StdGoTypes.GoUInt32));
        _g = (_c.g : stdgo.StdGoTypes.GoUInt32);
        _g = _g * ((_c.a : stdgo.StdGoTypes.GoUInt32));
        _g = _g / ((65535u32 : stdgo.StdGoTypes.GoUInt32));
        _b = (_c.b : stdgo.StdGoTypes.GoUInt32);
        _b = _b * ((_c.a : stdgo.StdGoTypes.GoUInt32));
        _b = _b / ((65535u32 : stdgo.StdGoTypes.GoUInt32));
        _a = (_c.a : stdgo.StdGoTypes.GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
class Alpha_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Alpha>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Alpha_asInterface) class Alpha_static_extension {
    @:keep
    static public function rgba( _c:Alpha):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:Alpha = _c?.__copy__();
        var _r:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _g:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _b:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _a:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        _a = (_c.a : stdgo.StdGoTypes.GoUInt32);
        _a = _a | (_a << (8i64 : stdgo.StdGoTypes.GoUInt64));
        return { _0 : _a, _1 : _a, _2 : _a, _3 : _a };
    }
}
class Alpha16_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Alpha16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Alpha16_asInterface) class Alpha16_static_extension {
    @:keep
    static public function rgba( _c:Alpha16):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:Alpha16 = _c?.__copy__();
        var _r:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _g:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _b:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _a:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        _a = (_c.a : stdgo.StdGoTypes.GoUInt32);
        return { _0 : _a, _1 : _a, _2 : _a, _3 : _a };
    }
}
class Gray_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gray>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Gray_asInterface) class Gray_static_extension {
    @:keep
    static public function rgba( _c:Gray):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:Gray = _c?.__copy__();
        var _r:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _g:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _b:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _a:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        var _y:stdgo.StdGoTypes.GoUInt32 = (_c.y : stdgo.StdGoTypes.GoUInt32);
        _y = _y | (_y << (8i64 : stdgo.StdGoTypes.GoUInt64));
        return { _0 : _y, _1 : _y, _2 : _y, _3 : (65535u32 : stdgo.StdGoTypes.GoUInt32) };
    }
}
class Gray16_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gray16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Gray16_asInterface) class Gray16_static_extension {
    @:keep
    static public function rgba( _c:Gray16):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:Gray16 = _c?.__copy__();
        var _r:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _g:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _b:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _a:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        var _y:stdgo.StdGoTypes.GoUInt32 = (_c.y : stdgo.StdGoTypes.GoUInt32);
        return { _0 : _y, _1 : _y, _2 : _y, _3 : (65535u32 : stdgo.StdGoTypes.GoUInt32) };
    }
}
class T_modelFunc_asInterface {
    @:keep
    public dynamic function convert(_c:Color):Color return __self__.value.convert(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_modelFunc>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.T_modelFunc_asInterface) class T_modelFunc_static_extension {
    @:keep
    static public function convert( _m:stdgo.StdGoTypes.Ref<T_modelFunc>, _c:Color):Color {
        @:recv var _m:stdgo.StdGoTypes.Ref<T_modelFunc> = _m;
        return _m._f(_c);
    }
}
class YCbCr_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<YCbCr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.YCbCr_asInterface) class YCbCr_static_extension {
    @:keep
    static public function rgba( _c:YCbCr):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:YCbCr = _c?.__copy__();
        var _yy1:stdgo.StdGoTypes.GoInt32 = (_c.y : stdgo.StdGoTypes.GoInt32) * (65793 : stdgo.StdGoTypes.GoInt32);
        var _cb1:stdgo.StdGoTypes.GoInt32 = (_c.cb : stdgo.StdGoTypes.GoInt32) - (128 : stdgo.StdGoTypes.GoInt32);
        var _cr1:stdgo.StdGoTypes.GoInt32 = (_c.cr : stdgo.StdGoTypes.GoInt32) - (128 : stdgo.StdGoTypes.GoInt32);
        var _r:stdgo.StdGoTypes.GoInt32 = _yy1 + ((91881 : stdgo.StdGoTypes.GoInt32) * _cr1);
        if ((_r : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _r = _r >> ((8i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _r = (-1 ^ (_r >> (31i64 : stdgo.StdGoTypes.GoUInt64))) & (65535 : stdgo.StdGoTypes.GoInt32);
        };
        var _g:stdgo.StdGoTypes.GoInt32 = (_yy1 - ((22554 : stdgo.StdGoTypes.GoInt32) * _cb1)) - ((46802 : stdgo.StdGoTypes.GoInt32) * _cr1);
        if ((_g : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _g = _g >> ((8i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _g = (-1 ^ (_g >> (31i64 : stdgo.StdGoTypes.GoUInt64))) & (65535 : stdgo.StdGoTypes.GoInt32);
        };
        var _b:stdgo.StdGoTypes.GoInt32 = _yy1 + ((116130 : stdgo.StdGoTypes.GoInt32) * _cb1);
        if ((_b : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _b = _b >> ((8i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _b = (-1 ^ (_b >> (31i64 : stdgo.StdGoTypes.GoUInt64))) & (65535 : stdgo.StdGoTypes.GoInt32);
        };
        return { _0 : (_r : stdgo.StdGoTypes.GoUInt32), _1 : (_g : stdgo.StdGoTypes.GoUInt32), _2 : (_b : stdgo.StdGoTypes.GoUInt32), _3 : (65535u32 : stdgo.StdGoTypes.GoUInt32) };
    }
}
class NYCbCrA_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NYCbCrA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.NYCbCrA_asInterface) class NYCbCrA_static_extension {
    @:keep
    static public function rgba( _c:NYCbCrA):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:NYCbCrA = _c?.__copy__();
        var _yy1:stdgo.StdGoTypes.GoInt32 = (_c.ycbCr.y : stdgo.StdGoTypes.GoInt32) * (65793 : stdgo.StdGoTypes.GoInt32);
        var _cb1:stdgo.StdGoTypes.GoInt32 = (_c.ycbCr.cb : stdgo.StdGoTypes.GoInt32) - (128 : stdgo.StdGoTypes.GoInt32);
        var _cr1:stdgo.StdGoTypes.GoInt32 = (_c.ycbCr.cr : stdgo.StdGoTypes.GoInt32) - (128 : stdgo.StdGoTypes.GoInt32);
        var _r:stdgo.StdGoTypes.GoInt32 = _yy1 + ((91881 : stdgo.StdGoTypes.GoInt32) * _cr1);
        if ((_r : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _r = _r >> ((8i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _r = (-1 ^ (_r >> (31i64 : stdgo.StdGoTypes.GoUInt64))) & (65535 : stdgo.StdGoTypes.GoInt32);
        };
        var _g:stdgo.StdGoTypes.GoInt32 = (_yy1 - ((22554 : stdgo.StdGoTypes.GoInt32) * _cb1)) - ((46802 : stdgo.StdGoTypes.GoInt32) * _cr1);
        if ((_g : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _g = _g >> ((8i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _g = (-1 ^ (_g >> (31i64 : stdgo.StdGoTypes.GoUInt64))) & (65535 : stdgo.StdGoTypes.GoInt32);
        };
        var _b:stdgo.StdGoTypes.GoInt32 = _yy1 + ((116130 : stdgo.StdGoTypes.GoInt32) * _cb1);
        if ((_b : stdgo.StdGoTypes.GoUInt32) & (-16777216u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _b = _b >> ((8i64 : stdgo.StdGoTypes.GoUInt64));
        } else {
            _b = (-1 ^ (_b >> (31i64 : stdgo.StdGoTypes.GoUInt64))) & (65535 : stdgo.StdGoTypes.GoInt32);
        };
        var _a:stdgo.StdGoTypes.GoUInt32 = (_c.a : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32);
        return { _0 : ((_r : stdgo.StdGoTypes.GoUInt32) * _a) / (65535u32 : stdgo.StdGoTypes.GoUInt32), _1 : ((_g : stdgo.StdGoTypes.GoUInt32) * _a) / (65535u32 : stdgo.StdGoTypes.GoUInt32), _2 : ((_b : stdgo.StdGoTypes.GoUInt32) * _a) / (65535u32 : stdgo.StdGoTypes.GoUInt32), _3 : _a };
    }
}
class CMYK_asInterface {
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CMYK>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.CMYK_asInterface) class CMYK_static_extension {
    @:keep
    static public function rgba( _c:CMYK):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; var _2 : stdgo.StdGoTypes.GoUInt32; var _3 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _c:CMYK = _c?.__copy__();
        var _w:stdgo.StdGoTypes.GoUInt32 = (65535u32 : stdgo.StdGoTypes.GoUInt32) - ((_c.k : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32));
        var _r:stdgo.StdGoTypes.GoUInt32 = (((65535u32 : stdgo.StdGoTypes.GoUInt32) - ((_c.c : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32))) * _w) / (65535u32 : stdgo.StdGoTypes.GoUInt32);
        var _g:stdgo.StdGoTypes.GoUInt32 = (((65535u32 : stdgo.StdGoTypes.GoUInt32) - ((_c.m : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32))) * _w) / (65535u32 : stdgo.StdGoTypes.GoUInt32);
        var _b:stdgo.StdGoTypes.GoUInt32 = (((65535u32 : stdgo.StdGoTypes.GoUInt32) - ((_c.y : stdgo.StdGoTypes.GoUInt32) * (257u32 : stdgo.StdGoTypes.GoUInt32))) * _w) / (65535u32 : stdgo.StdGoTypes.GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : (65535u32 : stdgo.StdGoTypes.GoUInt32) };
    }
}
class Palette_asInterface {
    /**
        // Index returns the index of the palette color closest to c in Euclidean
        // R,G,B,A space.
    **/
    @:keep
    public dynamic function index(_c:Color):stdgo.StdGoTypes.GoInt return __self__.value.index(_c);
    /**
        // Convert returns the palette color closest to c in Euclidean R,G,B space.
    **/
    @:keep
    public dynamic function convert(_c:Color):Color return __self__.value.convert(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Palette>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.color.Color.Palette_asInterface) class Palette_static_extension {
    /**
        // Index returns the index of the palette color closest to c in Euclidean
        // R,G,B,A space.
    **/
    @:keep
    static public function index( _p:Palette, _c:Color):stdgo.StdGoTypes.GoInt {
        @:recv var _p:Palette = _p;
        var __tmp__ = _c.rgba(), _cr:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _cg:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _cb:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _ca:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
        var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoUInt32 = (-1u32 : stdgo.StdGoTypes.GoUInt32), _bestSum:stdgo.StdGoTypes.GoUInt32 = __1, _ret:stdgo.StdGoTypes.GoInt = __0;
        for (_i => _v in _p) {
            var __tmp__ = _v.rgba(), _vr:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _vg:stdgo.StdGoTypes.GoUInt32 = __tmp__._1, _vb:stdgo.StdGoTypes.GoUInt32 = __tmp__._2, _va:stdgo.StdGoTypes.GoUInt32 = __tmp__._3;
            var _sum:stdgo.StdGoTypes.GoUInt32 = ((_sqDiff(_cr, _vr) + _sqDiff(_cg, _vg)) + _sqDiff(_cb, _vb)) + _sqDiff(_ca, _va);
            if (_sum < _bestSum) {
                if (_sum == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
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
        @:recv var _p:Palette = _p;
        if ((_p.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            return (null : stdgo.image.color.Color.Color);
        };
        return _p[(_p.index(_c) : stdgo.StdGoTypes.GoInt)];
    }
}
