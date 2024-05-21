package stdgo._internal.image;
private var __go2hxdoc__package : Bool;
var _formatsMu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
var _atomicFormats : stdgo._internal.sync.atomic_.Atomic_.Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
var zp : Point = ({} : stdgo._internal.image.Image.Point);
var zr : Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
final ycbCrSubsampleRatio444 : stdgo._internal.image.Image.YCbCrSubsampleRatio = (5 : stdgo._internal.image.Image.YCbCrSubsampleRatio);
final ycbCrSubsampleRatio422 = (5 : stdgo._internal.image.Image.YCbCrSubsampleRatio);
final ycbCrSubsampleRatio420 = (5 : stdgo._internal.image.Image.YCbCrSubsampleRatio);
final ycbCrSubsampleRatio440 = (5 : stdgo._internal.image.Image.YCbCrSubsampleRatio);
final ycbCrSubsampleRatio411 = (5 : stdgo._internal.image.Image.YCbCrSubsampleRatio);
final ycbCrSubsampleRatio410 = (5 : stdgo._internal.image.Image.YCbCrSubsampleRatio);
var errFormat : stdgo.Error = stdgo._internal.errors.Errors.new_(("image: unknown format" : stdgo.GoString));
var black : stdgo.Ref<stdgo._internal.image.Image.Uniform> = newUniform(stdgo.Go.asInterface(stdgo._internal.image.color.Color.black));
var white : stdgo.Ref<stdgo._internal.image.Image.Uniform> = newUniform(stdgo.Go.asInterface(stdgo._internal.image.color.Color.white));
var transparent : stdgo.Ref<stdgo._internal.image.Image.Uniform> = newUniform(stdgo.Go.asInterface(stdgo._internal.image.color.Color.transparent));
var opaque : stdgo.Ref<stdgo._internal.image.Image.Uniform> = newUniform(stdgo.Go.asInterface(stdgo._internal.image.color.Color.opaque));
var _testImages : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(9, 9, ...[({ _name : ("rgba" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0), ({ _name : ("rgba64" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0), ({ _name : ("nrgba" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newNRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0), ({ _name : ("nrgba64" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newNRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0), ({ _name : ("alpha" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newAlpha(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0), ({ _name : ("alpha16" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newAlpha16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0), ({ _name : ("gray" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newGray(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0), ({ _name : ("gray16" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newGray16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0), ({ _name : ("paletted" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newPaletted(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(), (new stdgo.Slice<stdgo._internal.image.color.Color.Color>(2, 2, ...[stdgo.Go.asInterface(transparent), stdgo.Go.asInterface(opaque)]) : stdgo._internal.image.color.Color.Palette)));
    } } : T__struct_0)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _image : null } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
@:keep class T_reader_static_extension {
    static public function peek(t:T_reader, _0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return t.peek(_0);
}
typedef T_reader = stdgo.StructType & {
    > stdgo._internal.io.Io.Reader,
    /**
        
        
        
    **/
    public dynamic function peek(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
@:keep class Image_static_extension {
    static public function at(t:Image, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return t.at(_x, _y);
    static public function bounds(t:Image):Rectangle return t.bounds();
    static public function colorModel(t:Image):stdgo._internal.image.color.Color.Model return t.colorModel();
}
typedef Image = stdgo.StructType & {
    /**
        ColorModel returns the Image's color model.
        
        
    **/
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model;
    /**
        Bounds returns the domain for which At can return non-zero color.
        The bounds do not necessarily contain the point (0, 0).
        
        
    **/
    public dynamic function bounds():Rectangle;
    /**
        At returns the color of the pixel at (x, y).
        At(Bounds().Min.X, Bounds().Min.Y) returns the upper-left pixel of the grid.
        At(Bounds().Max.X-1, Bounds().Max.Y-1) returns the lower-right one.
        
        
    **/
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color;
};
@:keep class RGBA64Image_static_extension {
    static public function rgba64at(t:RGBA64Image, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return t.rgba64at(_x, _y);
}
typedef RGBA64Image = stdgo.StructType & {
    > Image,
    /**
        RGBA64At returns the RGBA64 color of the pixel at (x, y). It is
        equivalent to calling At(x, y).RGBA() and converting the resulting
        32-bit return values to a color.RGBA64, but it can avoid allocations
        from converting concrete color types to the color.Color interface type.
        
        
    **/
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64;
};
@:keep class PalettedImage_static_extension {
    static public function colorIndexAt(t:PalettedImage, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8 return t.colorIndexAt(_x, _y);
}
typedef PalettedImage = stdgo.StructType & {
    > Image,
    /**
        ColorIndexAt returns the palette index of the pixel at (x, y).
        
        
    **/
    public dynamic function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8;
};
@:keep class T_image_static_extension {
    static public function subImage(t:T_image, _0:Rectangle):Image return t.subImage(_0);
    static public function set(t:T_image, _0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color.Color):Void t.set(_0, _1, _2);
    static public function opaque(t:T_image):Bool return t.opaque();
}
typedef T_image = stdgo.StructType & {
    > Image,
    /**
        
        
        
    **/
    public dynamic function opaque():Bool;
    /**
        
        
        
    **/
    public dynamic function set(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color.Color):Void;
    /**
        
        
        
    **/
    public dynamic function subImage(_0:Rectangle):Image;
};
@:keep class T__interface_0_static_extension {
    static public function setRGBA64(t:T__interface_0, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void t.setRGBA64(_x, _y, _c);
}
typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void;
};
@:structInit @:private class T_format {
    public var _name : stdgo.GoString = "";
    public var _magic : stdgo.GoString = "";
    public var _decode : stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.Error; } = null;
    public var _decodeConfig : stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.Error; } = null;
    public function new(?_name:stdgo.GoString, ?_magic:stdgo.GoString, ?_decode:stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.Error; }, ?_decodeConfig:stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.Error; }) {
        if (_name != null) this._name = _name;
        if (_magic != null) this._magic = _magic;
        if (_decode != null) this._decode = _decode;
        if (_decodeConfig != null) this._decodeConfig = _decodeConfig;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_format(_name, _magic, _decode, _decodeConfig);
    }
}
@:structInit @:using(stdgo._internal.image.Image.Point_static_extension) class Point {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoInt, ?y:stdgo.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(x, y);
    }
}
@:structInit @:using(stdgo._internal.image.Image.Rectangle_static_extension) class Rectangle {
    public var min : stdgo._internal.image.Image.Point = ({} : stdgo._internal.image.Image.Point);
    public var max : stdgo._internal.image.Image.Point = ({} : stdgo._internal.image.Image.Point);
    public function new(?min:stdgo._internal.image.Image.Point, ?max:stdgo._internal.image.Image.Point) {
        if (min != null) this.min = min;
        if (max != null) this.max = max;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rectangle(min, max);
    }
}
@:structInit class Config {
    public var colorModel : stdgo._internal.image.color.Color.Model = (null : stdgo._internal.image.color.Color.Model);
    public var width : stdgo.GoInt = 0;
    public var height : stdgo.GoInt = 0;
    public function new(?colorModel:stdgo._internal.image.color.Color.Model, ?width:stdgo.GoInt, ?height:stdgo.GoInt) {
        if (colorModel != null) this.colorModel = colorModel;
        if (width != null) this.width = width;
        if (height != null) this.height = height;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(colorModel, width, height);
    }
}
@:structInit @:using(stdgo._internal.image.Image.RGBA_static_extension) class RGBA {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RGBA(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.RGBA64_static_extension) class RGBA64 {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RGBA64(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.NRGBA_static_extension) class NRGBA {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NRGBA(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.NRGBA64_static_extension) class NRGBA64 {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NRGBA64(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.Alpha_static_extension) class Alpha {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.Alpha16_static_extension) class Alpha16 {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha16(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.Gray_static_extension) class Gray {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.Gray16_static_extension) class Gray16 {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray16(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.CMYK_static_extension) class CMYK {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CMYK(pix, stride, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.Paletted_static_extension) class Paletted {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public var palette : stdgo._internal.image.color.Color.Palette = new stdgo._internal.image.color.Color.Palette(0, 0);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image.Rectangle, ?palette:stdgo._internal.image.color.Color.Palette) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
        if (palette != null) this.palette = palette;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Paletted(pix, stride, rect, palette);
    }
}
@:structInit @:using(stdgo._internal.image.Image.Uniform_static_extension) class Uniform {
    public var c : stdgo._internal.image.color.Color.Color = (null : stdgo._internal.image.color.Color.Color);
    public function new(?c:stdgo._internal.image.color.Color.Color) {
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uniform(c);
    }
}
@:structInit @:using(stdgo._internal.image.Image.YCbCr_static_extension) class YCbCr {
    public var y : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cb : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var ystride : stdgo.GoInt = 0;
    public var cstride : stdgo.GoInt = 0;
    public var subsampleRatio : stdgo._internal.image.Image.YCbCrSubsampleRatio = ((0 : stdgo.GoInt) : stdgo._internal.image.Image.YCbCrSubsampleRatio);
    public var rect : stdgo._internal.image.Image.Rectangle = ({} : stdgo._internal.image.Image.Rectangle);
    public function new(?y:stdgo.Slice<stdgo.GoUInt8>, ?cb:stdgo.Slice<stdgo.GoUInt8>, ?cr:stdgo.Slice<stdgo.GoUInt8>, ?ystride:stdgo.GoInt, ?cstride:stdgo.GoInt, ?subsampleRatio:stdgo._internal.image.Image.YCbCrSubsampleRatio, ?rect:stdgo._internal.image.Image.Rectangle) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
        if (ystride != null) this.ystride = ystride;
        if (cstride != null) this.cstride = cstride;
        if (subsampleRatio != null) this.subsampleRatio = subsampleRatio;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new YCbCr(y, cb, cr, ystride, cstride, subsampleRatio, rect);
    }
}
@:structInit @:using(stdgo._internal.image.Image.NYCbCrA_static_extension) class NYCbCrA {
    @:embedded
    public var ycbCr : stdgo._internal.image.Image.YCbCr = ({} : stdgo._internal.image.Image.YCbCr);
    public var a : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var astride : stdgo.GoInt = 0;
    public function new(?ycbCr:stdgo._internal.image.Image.YCbCr, ?a:stdgo.Slice<stdgo.GoUInt8>, ?astride:stdgo.GoInt) {
        if (ycbCr != null) this.ycbCr = ycbCr;
        if (a != null) this.a = a;
        if (astride != null) this.astride = astride;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function bounds():stdgo._internal.image.Image.Rectangle return ycbCr.bounds();
    @:embedded
    public function coffset(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return ycbCr.coffset(_x_, _y_);
    @:embedded
    public function ycbCrAt(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo._internal.image.color.Color.YCbCr return ycbCr.ycbCrAt(_x_, _y_);
    @:embedded
    public function yoffset(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return ycbCr.yoffset(_x_, _y_);
    public function __copy__() {
        return new NYCbCrA(ycbCr, a, astride);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.image.Image.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _name : stdgo.GoString;
    public var _image : () -> stdgo._internal.image.Image.T_image;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.image.Image.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _name : stdgo.GoString;
    public var _f : stdgo._internal.image.Image.Rectangle -> Void;
};
@:named @:using(stdgo._internal.image.Image.YCbCrSubsampleRatio_static_extension) typedef YCbCrSubsampleRatio = stdgo.GoInt;
function registerFormat(_name:stdgo.GoString, _magic:stdgo.GoString, _decode:stdgo._internal.io.Io.Reader -> { var _0 : Image; var _1 : stdgo.Error; }, _decodeConfig:stdgo._internal.io.Io.Reader -> { var _0 : Config; var _1 : stdgo.Error; }):Void {
        _formatsMu.lock();
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_atomicFormats.load() : stdgo.Slice<T_format>)) : stdgo.Slice<T_format>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo._internal.image.Image.T_format>), _1 : false };
        }, _formats = __tmp__._0, __0 = __tmp__._1;
        _atomicFormats.store(stdgo.Go.toInterface((_formats.__append__((new stdgo._internal.image.Image.T_format(_name?.__copy__(), _magic?.__copy__(), _decode, _decodeConfig) : stdgo._internal.image.Image.T_format)))));
        _formatsMu.unlock();
    }
function _asReader(_r:stdgo._internal.io.Io.Reader):T_reader {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : T_reader)) : T_reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.Image.T_reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _rr;
            };
        };
        return stdgo.Go.asInterface(stdgo._internal.bufio.Bufio.newReader(_r));
    }
function _match(_magic:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):Bool {
        if ((_magic.length) != ((_b.length))) {
            return false;
        };
        for (_i => _c in _b) {
            if (((_magic[(_i : stdgo.GoInt)] != _c) && (_magic[(_i : stdgo.GoInt)] != (63 : stdgo.GoUInt8)) : Bool)) {
                return false;
            };
        };
        return true;
    }
function _sniff(_r:T_reader):T_format {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_atomicFormats.load() : stdgo.Slice<T_format>)) : stdgo.Slice<T_format>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo._internal.image.Image.T_format>), _1 : false };
        }, _formats = __tmp__._0, __0 = __tmp__._1;
        for (__1 => _f in _formats) {
            var __tmp__ = _r.peek((_f._magic.length)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && _match(_f._magic?.__copy__(), _b) : Bool)) {
                return _f?.__copy__();
            };
        };
        return (new stdgo._internal.image.Image.T_format() : stdgo._internal.image.Image.T_format);
    }
function decode(_r:stdgo._internal.io.Io.Reader):{ var _0 : Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _rr:stdgo._internal.image.Image.T_reader = _asReader(_r);
        var _f:stdgo._internal.image.Image.T_format = _sniff(_rr)?.__copy__();
        if (_f._decode == null) {
            return { _0 : (null : stdgo._internal.image.Image.Image), _1 : stdgo.Go.str()?.__copy__(), _2 : errFormat };
        };
        var __tmp__ = _f._decode(_rr), _m:stdgo._internal.image.Image.Image = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _m, _1 : _f._name?.__copy__(), _2 : _err };
    }
function decodeConfig(_r:stdgo._internal.io.Io.Reader):{ var _0 : Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _rr:stdgo._internal.image.Image.T_reader = _asReader(_r);
        var _f:stdgo._internal.image.Image.T_format = _sniff(_rr)?.__copy__();
        if (_f._decodeConfig == null) {
            return { _0 : (new stdgo._internal.image.Image.Config() : stdgo._internal.image.Image.Config), _1 : stdgo.Go.str()?.__copy__(), _2 : errFormat };
        };
        var __tmp__ = _f._decodeConfig(_rr), _c:stdgo._internal.image.Image.Config = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _c?.__copy__(), _1 : _f._name?.__copy__(), _2 : _err };
    }
function pt(x:stdgo.GoInt, y:stdgo.GoInt):Point {
        return (new stdgo._internal.image.Image.Point(x, y) : stdgo._internal.image.Image.Point);
    }
function rect(_x0:stdgo.GoInt, _y0:stdgo.GoInt, _x1:stdgo.GoInt, _y1:stdgo.GoInt):Rectangle {
        if ((_x0 > _x1 : Bool)) {
            {
                final __tmp__0 = _x1;
                final __tmp__1 = _x0;
                _x0 = __tmp__0;
                _x1 = __tmp__1;
            };
        };
        if ((_y0 > _y1 : Bool)) {
            {
                final __tmp__0 = _y1;
                final __tmp__1 = _y0;
                _y0 = __tmp__0;
                _y1 = __tmp__1;
            };
        };
        return (new stdgo._internal.image.Image.Rectangle((new stdgo._internal.image.Image.Point(_x0, _y0) : stdgo._internal.image.Image.Point), (new stdgo._internal.image.Image.Point(_x1, _y1) : stdgo._internal.image.Image.Point)) : stdgo._internal.image.Image.Rectangle);
    }
function _mul3NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt, _z:stdgo.GoInt):stdgo.GoInt {
        if (((((_x < (0 : stdgo.GoInt) : Bool)) || ((_y < (0 : stdgo.GoInt) : Bool)) : Bool) || ((_z < (0 : stdgo.GoInt) : Bool)) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64((_x : stdgo.GoUInt64), (_y : stdgo.GoUInt64)), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        if (_hi != ((0i64 : stdgo.GoUInt64))) {
            return (-1 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_lo, (_z : stdgo.GoUInt64));
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        if (_hi != ((0i64 : stdgo.GoUInt64))) {
            return (-1 : stdgo.GoInt);
        };
        var _a:stdgo.GoInt = (_lo : stdgo.GoInt);
        if ((((_a < (0 : stdgo.GoInt) : Bool)) || ((_a : stdgo.GoUInt64) != _lo) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        return _a;
    }
function _add2NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        if ((((_x < (0 : stdgo.GoInt) : Bool)) || ((_y < (0 : stdgo.GoInt) : Bool)) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var _a:stdgo.GoInt = (_x + _y : stdgo.GoInt);
        if ((_a < (0 : stdgo.GoInt) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        return _a;
    }
function testRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _in:(stdgo._internal.image.Image.Rectangle, stdgo._internal.image.Image.Rectangle) -> stdgo.Error = function(_f:Rectangle, _g:Rectangle):stdgo.Error {
            if (!_f.in_(_g?.__copy__())) {
                return stdgo._internal.fmt.Fmt.errorf(("f=%s, f.In(%s): got false, want true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)));
            };
            {
                var _y:stdgo.GoInt = _f.min.y;
                stdgo.Go.cfor((_y < _f.max.y : Bool), _y++, {
                    {
                        var _x:stdgo.GoInt = _f.min.x;
                        stdgo.Go.cfor((_x < _f.max.x : Bool), _x++, {
                            var _p:stdgo._internal.image.Image.Point = (new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point);
                            if (!_p.in_(_g?.__copy__())) {
                                return stdgo._internal.fmt.Fmt.errorf(("p=%s, p.In(%s): got false, want true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)));
                            };
                        });
                    };
                });
            };
            return (null : stdgo.Error);
        };
        var _rects = (new stdgo.Slice<stdgo._internal.image.Image.Rectangle>(11, 11, ...[
rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(),
rect((10 : stdgo.GoInt), (0 : stdgo.GoInt), (20 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(),
rect((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__(),
rect((4 : stdgo.GoInt), (6 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(),
rect((2 : stdgo.GoInt), (3 : stdgo.GoInt), (12 : stdgo.GoInt), (5 : stdgo.GoInt))?.__copy__(),
rect((-1 : stdgo.GoInt), (-2 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(),
rect((-1 : stdgo.GoInt), (-2 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt))?.__copy__(),
rect((-10 : stdgo.GoInt), (-20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt))?.__copy__(),
rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
rect((88 : stdgo.GoInt), (88 : stdgo.GoInt), (88 : stdgo.GoInt), (88 : stdgo.GoInt))?.__copy__(),
rect((6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt))?.__copy__()].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image.Rectangle)])) : stdgo.Slice<stdgo._internal.image.Image.Rectangle>);
        for (__0 => _r in _rects) {
            for (__1 => _s in _rects) {
                var _got:Bool = _r.eq(_s?.__copy__());
                var _want:Bool = ((_in(_r?.__copy__(), _s?.__copy__()) == null) && (_in(_s?.__copy__(), _r?.__copy__()) == null) : Bool);
                if (_got != (_want)) {
                    _t.errorf(("Eq: r=%s, s=%s: got %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        for (__10 => _r in _rects) {
            for (__11 => _s in _rects) {
                var _a:stdgo._internal.image.Image.Rectangle = _r.intersect(_s?.__copy__())?.__copy__();
                {
                    var _err:stdgo.Error = _in(_a?.__copy__(), _r?.__copy__());
                    if (_err != null) {
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s, a not in r: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err:stdgo.Error = _in(_a?.__copy__(), _s?.__copy__());
                    if (_err != null) {
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s, a not in s: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __0:Bool = stdgo.Go.toInterface(_a) == stdgo.Go.toInterface(((new stdgo._internal.image.Image.Rectangle() : stdgo._internal.image.Image.Rectangle))), __1:Bool = _r.overlaps(_s?.__copy__()), _overlaps:Bool = __1, _isZero:Bool = __0;
                    if (_isZero == (_overlaps)) {
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s: isZero=%t same as overlaps=%t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_isZero), stdgo.Go.toInterface(_overlaps));
                    };
                };
                var _largerThanA = (new stdgo.GoArray<stdgo._internal.image.Image.Rectangle>(4, 4, ...[_a?.__copy__(), _a?.__copy__(), _a?.__copy__(), _a?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image.Rectangle)])) : stdgo.GoArray<stdgo._internal.image.Image.Rectangle>);
                _largerThanA[(0 : stdgo.GoInt)].min.x--;
                _largerThanA[(1 : stdgo.GoInt)].min.y--;
                _largerThanA[(2 : stdgo.GoInt)].max.x++;
                _largerThanA[(3 : stdgo.GoInt)].max.y++;
                for (_i => _b in _largerThanA) {
                    if (_b.empty()) {
                        continue;
                    };
                    if (((_in(_b?.__copy__(), _r?.__copy__()) == null) && (_in(_b?.__copy__(), _s?.__copy__()) == null) : Bool)) {
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s, b=%s, i=%d: intersection could be larger" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(_i));
                    };
                };
            };
        };
        for (__44 => _r in _rects) {
            for (__45 => _s in _rects) {
                var _a:stdgo._internal.image.Image.Rectangle = _r.union(_s?.__copy__())?.__copy__();
                {
                    var _err:stdgo.Error = _in(_r?.__copy__(), _a?.__copy__());
                    if (_err != null) {
                        _t.errorf(("Union: r=%s, s=%s, a=%s, r not in a: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err:stdgo.Error = _in(_s?.__copy__(), _a?.__copy__());
                    if (_err != null) {
                        _t.errorf(("Union: r=%s, s=%s, a=%s, s not in a: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                if (_a.empty()) {
                    continue;
                };
                var _smallerThanA = (new stdgo.GoArray<stdgo._internal.image.Image.Rectangle>(4, 4, ...[_a?.__copy__(), _a?.__copy__(), _a?.__copy__(), _a?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image.Rectangle)])) : stdgo.GoArray<stdgo._internal.image.Image.Rectangle>);
                _smallerThanA[(0 : stdgo.GoInt)].min.x++;
                _smallerThanA[(1 : stdgo.GoInt)].min.y++;
                _smallerThanA[(2 : stdgo.GoInt)].max.x--;
                _smallerThanA[(3 : stdgo.GoInt)].max.y--;
                for (_i => _b in _smallerThanA) {
                    if (((_in(_r?.__copy__(), _b?.__copy__()) == null) && (_in(_s?.__copy__(), _b?.__copy__()) == null) : Bool)) {
                        _t.errorf(("Union: r=%s, s=%s, a=%s, b=%s, i=%d: union could be smaller" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(_i));
                    };
                };
            };
        };
    }
function _pixelBufferLength(_bytesPerPixel:stdgo.GoInt, _r:Rectangle, _imageTypeName:stdgo.GoString):stdgo.GoInt {
        var _totalLength:stdgo.GoInt = _mul3NonNeg(_bytesPerPixel, _r.dx(), _r.dy());
        if ((_totalLength < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(((("image: New" : stdgo.GoString) + _imageTypeName?.__copy__() : stdgo.GoString) + (" Rectangle has huge or negative dimensions" : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        return _totalLength;
    }
function newRGBA(_r:Rectangle):stdgo.Ref<RGBA> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((4 : stdgo.GoInt), _r?.__copy__(), ("RGBA" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((4 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.RGBA)) : stdgo.Ref<stdgo._internal.image.Image.RGBA>);
    }
function newRGBA64(_r:Rectangle):stdgo.Ref<RGBA64> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((8 : stdgo.GoInt), _r?.__copy__(), ("RGBA64" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((8 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.RGBA64)) : stdgo.Ref<stdgo._internal.image.Image.RGBA64>);
    }
function newNRGBA(_r:Rectangle):stdgo.Ref<NRGBA> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((4 : stdgo.GoInt), _r?.__copy__(), ("NRGBA" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((4 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.NRGBA)) : stdgo.Ref<stdgo._internal.image.Image.NRGBA>);
    }
function newNRGBA64(_r:Rectangle):stdgo.Ref<NRGBA64> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((8 : stdgo.GoInt), _r?.__copy__(), ("NRGBA64" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((8 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.NRGBA64)) : stdgo.Ref<stdgo._internal.image.Image.NRGBA64>);
    }
function newAlpha(_r:Rectangle):stdgo.Ref<Alpha> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((1 : stdgo.GoInt), _r?.__copy__(), ("Alpha" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((1 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.Alpha)) : stdgo.Ref<stdgo._internal.image.Image.Alpha>);
    }
function newAlpha16(_r:Rectangle):stdgo.Ref<Alpha16> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((2 : stdgo.GoInt), _r?.__copy__(), ("Alpha16" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((2 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.Alpha16)) : stdgo.Ref<stdgo._internal.image.Image.Alpha16>);
    }
function newGray(_r:Rectangle):stdgo.Ref<Gray> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((1 : stdgo.GoInt), _r?.__copy__(), ("Gray" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((1 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.Gray)) : stdgo.Ref<stdgo._internal.image.Image.Gray>);
    }
function newGray16(_r:Rectangle):stdgo.Ref<Gray16> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((2 : stdgo.GoInt), _r?.__copy__(), ("Gray16" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((2 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.Gray16)) : stdgo.Ref<stdgo._internal.image.Image.Gray16>);
    }
function newCMYK(_r:Rectangle):stdgo.Ref<CMYK> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((4 : stdgo.GoInt), _r?.__copy__(), ("CMYK" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((4 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image.CMYK)) : stdgo.Ref<stdgo._internal.image.Image.CMYK>);
    }
function newPaletted(_r:Rectangle, _p:stdgo._internal.image.color.Color.Palette):stdgo.Ref<Paletted> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((1 : stdgo.GoInt), _r?.__copy__(), ("Paletted" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((1 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__(), palette : _p } : stdgo._internal.image.Image.Paletted)) : stdgo.Ref<stdgo._internal.image.Image.Paletted>);
    }
function _cmp(_cm:stdgo._internal.image.color.Color.Model, _c0:stdgo._internal.image.color.Color.Color, _c1:stdgo._internal.image.color.Color.Color):Bool {
        var __tmp__ = _cm.convert(_c0).rgba(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, _a0:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = _cm.convert(_c1).rgba(), _r1:stdgo.GoUInt32 = __tmp__._0, _g1:stdgo.GoUInt32 = __tmp__._1, _b1:stdgo.GoUInt32 = __tmp__._2, _a1:stdgo.GoUInt32 = __tmp__._3;
        return (((_r0 == (_r1) && _g0 == (_g1) : Bool) && _b0 == (_b1) : Bool) && (_a0 == _a1) : Bool);
    }
function testImage(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _testImages) {
            var _m:stdgo._internal.image.Image.T_image = _tc._image();
            if (!rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt)).eq(_m.bounds()?.__copy__())) {
                _t.errorf(("%T: want bounds %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(stdgo.Go.asInterface(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt)))), stdgo.Go.toInterface(stdgo.Go.asInterface(_m.bounds())));
                continue;
            };
            if (!_cmp(_m.colorModel(), stdgo.Go.asInterface(transparent), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                _t.errorf(("%T: at (6, 3), want a zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            _m.set((6 : stdgo.GoInt), (3 : stdgo.GoInt), stdgo.Go.asInterface(opaque));
            if (!_cmp(_m.colorModel(), stdgo.Go.asInterface(opaque), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                _t.errorf(("%T: at (6, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            if (!(stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(rect((6 : stdgo.GoInt), (3 : stdgo.GoInt), (7 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__())) : T_image)) : T_image).opaque()) {
                _t.errorf(("%T: at (6, 3) was not opaque" : stdgo.GoString), stdgo.Go.toInterface(_m));
                continue;
            };
            _m = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__())) : T_image)) : T_image);
            if (!rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt)).eq(_m.bounds()?.__copy__())) {
                _t.errorf(("%T: sub-image want bounds %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(stdgo.Go.asInterface(rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt)))), stdgo.Go.toInterface(stdgo.Go.asInterface(_m.bounds())));
                continue;
            };
            if (!_cmp(_m.colorModel(), stdgo.Go.asInterface(opaque), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                _t.errorf(("%T: sub-image at (6, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            if (!_cmp(_m.colorModel(), stdgo.Go.asInterface(transparent), _m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                _t.errorf(("%T: sub-image at (3, 3), want a zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            _m.set((3 : stdgo.GoInt), (3 : stdgo.GoInt), stdgo.Go.asInterface(opaque));
            if (!_cmp(_m.colorModel(), stdgo.Go.asInterface(opaque), _m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                _t.errorf(("%T: sub-image at (3, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            _m.subImage(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
            _m.subImage(rect((10 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
            _m.subImage(rect((0 : stdgo.GoInt), (10 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
            _m.subImage(rect((10 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        };
    }
function testNewXxxBadRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _call:(stdgo._internal.image.Image.Rectangle -> Void, stdgo._internal.image.Image.Rectangle) -> Bool = function(_f:Rectangle -> Void, _r:Rectangle):Bool {
            var __deferstack__:Array<Void -> Void> = [];
            var _ok:Bool = false;
            try {
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        if (({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }) != null) {
                            _ok = false;
                        };
                    };
                    a();
                });
                _f(_r?.__copy__());
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return _ok;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _ok;
            };
        };
        var _testCases = (new stdgo.Slice<T__struct_1>(12, 12, ...[
({ _name : ("RGBA" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newRGBA(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("RGBA64" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newRGBA64(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("NRGBA" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newNRGBA(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("NRGBA64" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newNRGBA64(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("Alpha" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newAlpha(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("Alpha16" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newAlpha16(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("Gray" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newGray(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("Gray16" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newGray16(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("CMYK" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newCMYK(_r?.__copy__());
        } } : T__struct_1),
({ _name : ("Paletted" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newPaletted(_r?.__copy__(), (new stdgo.Slice<stdgo._internal.image.color.Color.Color>(2, 2, ...[stdgo.Go.asInterface(stdgo._internal.image.color.Color.black), stdgo.Go.asInterface(stdgo._internal.image.color.Color.white)]) : stdgo._internal.image.color.Color.Palette));
        } } : T__struct_1),
({ _name : ("YCbCr" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newYCbCr(_r?.__copy__(), (1 : stdgo._internal.image.Image.YCbCrSubsampleRatio));
        } } : T__struct_1),
({ _name : ("NYCbCrA" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newNYCbCrA(_r?.__copy__(), (0 : stdgo._internal.image.Image.YCbCrSubsampleRatio));
        } } : T__struct_1)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
        for (__0 => _tc in _testCases) {
            for (__1 => _negDx in (new stdgo.Slice<Bool>(2, 2, ...[false, true]) : stdgo.Slice<Bool>)) {
                for (__2 => _negDy in (new stdgo.Slice<Bool>(2, 2, ...[false, true]) : stdgo.Slice<Bool>)) {
                    var _r:stdgo._internal.image.Image.Rectangle = ({ min : (new stdgo._internal.image.Image.Point((15 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo._internal.image.Image.Point), max : (new stdgo._internal.image.Image.Point((16 : stdgo.GoInt), (29 : stdgo.GoInt)) : stdgo._internal.image.Image.Point) } : stdgo._internal.image.Image.Rectangle);
                    if (_negDx) {
                        _r.max.x = (14 : stdgo.GoInt);
                    };
                    if (_negDy) {
                        _r.max.y = (27 : stdgo.GoInt);
                    };
                    var _got:Bool = _call(_tc._f, _r?.__copy__());
                    var _want:Bool = (!_negDx && !_negDy : Bool);
                    if (_got != (_want)) {
                        _t.errorf(("New%s: negDx=%t, negDy=%t: got %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), stdgo.Go.toInterface(_negDx), stdgo.Go.toInterface(_negDy), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
            {
                var _zeroAsUint:stdgo.GoUInt = (0u32 : stdgo.GoUInt);
                var _maxUint:stdgo.GoUInt = (_zeroAsUint - (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _maxInt:stdgo.GoInt = ((_maxUint / (2u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
                var _got:Bool = _call(_tc._f, ({ min : (new stdgo._internal.image.Image.Point((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.image.Image.Point), max : (new stdgo._internal.image.Image.Point(_maxInt, _maxInt) : stdgo._internal.image.Image.Point) } : stdgo._internal.image.Image.Rectangle));
                if (_got) {
                    _t.errorf(("New%s: overflow: got ok, want !ok" : stdgo.GoString), stdgo.Go.toInterface(_tc._name));
                };
            };
        };
    }
function test16BitsPerColorChannel(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testColorModel = (new stdgo.Slice<stdgo._internal.image.color.Color.Model>(4, 4, ...[stdgo._internal.image.color.Color.rgba64model, stdgo._internal.image.color.Color.nrgba64model, stdgo._internal.image.color.Color.alpha16Model, stdgo._internal.image.color.Color.gray16Model]) : stdgo.Slice<stdgo._internal.image.color.Color.Model>);
        for (__0 => _cm in _testColorModel) {
            var _c:stdgo._internal.image.color.Color.Color = _cm.convert(stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA64((4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64)));
            var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, __3:stdgo.GoUInt32 = __tmp__._3;
            if (_r != ((4660u32 : stdgo.GoUInt32))) {
                _t.errorf(("%T: want red value 0x%04x got 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((4660 : stdgo.GoInt)), stdgo.Go.toInterface(_r));
                continue;
            };
        };
        var _testImage = (new stdgo.Slice<stdgo._internal.image.Image.T_image>(4, 4, ...[stdgo.Go.asInterface(newRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(newNRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(newAlpha16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(newGray16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()))]) : stdgo.Slice<stdgo._internal.image.Image.T_image>);
        for (__12 => _m in _testImage) {
            _m.set((1 : stdgo.GoInt), (2 : stdgo.GoInt), stdgo.Go.asInterface((new stdgo._internal.image.color.Color.NRGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (4951 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.NRGBA64)));
            var __tmp__ = _m.at((1 : stdgo.GoInt), (2 : stdgo.GoInt)).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, __13:stdgo.GoUInt32 = __tmp__._1, __14:stdgo.GoUInt32 = __tmp__._2, __15:stdgo.GoUInt32 = __tmp__._3;
            if (_r != ((4951u32 : stdgo.GoUInt32))) {
                _t.errorf(("%T: want red value 0x%04x got 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((4951 : stdgo.GoInt)), stdgo.Go.toInterface(_r));
                continue;
            };
        };
    }
function testRGBA64Image(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _memset = function(_s:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoByte):Void {
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = _v;
            };
        };
        var _r:stdgo._internal.image.Image.Rectangle = rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt))?.__copy__();
        var _testCases = (new stdgo.Slice<stdgo._internal.image.Image.Image>(14, 14, ...[
stdgo.Go.asInterface(newAlpha(_r?.__copy__())),
stdgo.Go.asInterface(newAlpha16(_r?.__copy__())),
stdgo.Go.asInterface(newCMYK(_r?.__copy__())),
stdgo.Go.asInterface(newGray(_r?.__copy__())),
stdgo.Go.asInterface(newGray16(_r?.__copy__())),
stdgo.Go.asInterface(newNRGBA(_r?.__copy__())),
stdgo.Go.asInterface(newNRGBA64(_r?.__copy__())),
stdgo.Go.asInterface(newNYCbCrA(_r?.__copy__(), (0 : stdgo._internal.image.Image.YCbCrSubsampleRatio))),
stdgo.Go.asInterface(newPaletted(_r?.__copy__(), stdgo._internal.image.color.palette.Palette.plan9)),
stdgo.Go.asInterface(newRGBA(_r?.__copy__())),
stdgo.Go.asInterface(newRGBA64(_r?.__copy__())),
stdgo.Go.asInterface(newUniform(stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA64() : stdgo._internal.image.color.Color.RGBA64)))),
stdgo.Go.asInterface(newYCbCr(_r?.__copy__(), (0 : stdgo._internal.image.Image.YCbCrSubsampleRatio))),
stdgo.Go.asInterface(_r)]) : stdgo.Slice<stdgo._internal.image.Image.Image>);
        for (__0 => _tc in _testCases) {
            {
                final __type__ = _tc;
                if (stdgo.Go.typeEquals((__type__ : T__interface_0))) {
                    var _tc:stdgo._internal.image.Image.T__interface_0 = __type__ == null ? (null : stdgo._internal.image.Image.T__interface_0) : cast __type__;
                    _tc.setRGBA64((1 : stdgo.GoInt), (1 : stdgo.GoInt), (new stdgo._internal.image.color.Color.RGBA64((32767 : stdgo.GoUInt16), (16383 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<NYCbCrA>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image.NYCbCrA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.__underlying__().value;
                    _memset(_tc.ycbCr.y, (119 : stdgo.GoUInt8));
                    _memset(_tc.ycbCr.cb, (136 : stdgo.GoUInt8));
                    _memset(_tc.ycbCr.cr, (153 : stdgo.GoUInt8));
                    _memset(_tc.a, (170 : stdgo.GoUInt8));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Uniform>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.__underlying__().value;
                    _tc.c = stdgo.Go.asInterface((new stdgo._internal.image.color.Color.RGBA64((32767 : stdgo.GoUInt16), (16383 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<YCbCr>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.__underlying__().value;
                    _memset(_tc.y, (119 : stdgo.GoUInt8));
                    _memset(_tc.cb, (136 : stdgo.GoUInt8));
                    _memset(_tc.cr, (153 : stdgo.GoUInt8));
                } else if (stdgo.Go.typeEquals((__type__ : Rectangle))) {
                    var _tc:stdgo._internal.image.Image.Rectangle = __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.__underlying__().value;
                } else {
                    var _tc:stdgo._internal.image.Image.Image = __type__ == null ? (null : stdgo._internal.image.Image.Image) : cast __type__;
                    _t.errorf(("could not initialize pixels for %T" : stdgo.GoString), stdgo.Go.toInterface(_tc));
                    continue;
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tc) : RGBA64Image)) : RGBA64Image), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.Image.RGBA64Image), _1 : false };
            }, _rgba64Image = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("%T is not an RGBA64Image" : stdgo.GoString), stdgo.Go.toInterface(_tc));
                continue;
            };
            var _got:stdgo._internal.image.color.Color.RGBA64 = _rgba64Image.rgba64at((1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__();
            var __tmp__ = _tc.at((1 : stdgo.GoInt), (1 : stdgo.GoInt)).rgba(), _wantR:stdgo.GoUInt32 = __tmp__._0, _wantG:stdgo.GoUInt32 = __tmp__._1, _wantB:stdgo.GoUInt32 = __tmp__._2, _wantA:stdgo.GoUInt32 = __tmp__._3;
            if ((((((_got.r : stdgo.GoUInt32) != _wantR) || ((_got.g : stdgo.GoUInt32) != _wantG) : Bool) || ((_got.b : stdgo.GoUInt32) != _wantB) : Bool) || ((_got.a : stdgo.GoUInt32) != _wantA) : Bool)) {
                _t.errorf(("%T:\ngot  (0x%04X, 0x%04X, 0x%04X, 0x%04X)\nwant (0x%04X, 0x%04X, 0x%04X, 0x%04X)" : stdgo.GoString), stdgo.Go.toInterface(_tc), stdgo.Go.toInterface(_got.r), stdgo.Go.toInterface(_got.g), stdgo.Go.toInterface(_got.b), stdgo.Go.toInterface(_got.a), stdgo.Go.toInterface(_wantR), stdgo.Go.toInterface(_wantG), stdgo.Go.toInterface(_wantB), stdgo.Go.toInterface(_wantA));
                continue;
            };
        };
    }
function benchmarkAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _tc in _testImages) {
            _b.run(_tc._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _m:stdgo._internal.image.Image.T_image = _tc._image();
                _b.reportAllocs();
                _b.resetTimer();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _m.at((4 : stdgo.GoInt), (5 : stdgo.GoInt));
                    });
                };
            });
        };
    }
function benchmarkSet(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _c:stdgo._internal.image.color.Color.Gray = (new stdgo._internal.image.color.Color.Gray((255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.Gray);
        for (__0 => _tc in _testImages) {
            _b.run(_tc._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _m:stdgo._internal.image.Image.T_image = _tc._image();
                _b.reportAllocs();
                _b.resetTimer();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _m.set((4 : stdgo.GoInt), (5 : stdgo.GoInt), stdgo.Go.asInterface(_c));
                    });
                };
            });
        };
    }
function benchmarkRGBAAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.rgbaat((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkRGBASetRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo._internal.image.color.Color.RGBA = (new stdgo._internal.image.color.Color.RGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (19 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.RGBA);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setRGBA((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkRGBA64At(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.rgba64at((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkRGBA64SetRGBA64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo._internal.image.color.Color.RGBA64 = (new stdgo._internal.image.color.Color.RGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (4951 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setRGBA64((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkNRGBAAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newNRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.nrgbaat((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkNRGBASetNRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newNRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo._internal.image.color.Color.NRGBA = (new stdgo._internal.image.color.Color.NRGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (19 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.NRGBA);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setNRGBA((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkNRGBA64At(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newNRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.nrgba64at((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkNRGBA64SetNRGBA64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newNRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo._internal.image.color.Color.NRGBA64 = (new stdgo._internal.image.color.Color.NRGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (4951 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.NRGBA64);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setNRGBA64((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkAlphaAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newAlpha(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.alphaAt((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkAlphaSetAlpha(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newAlpha(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo._internal.image.color.Color.Alpha = (new stdgo._internal.image.color.Color.Alpha((19 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.Alpha);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setAlpha((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkAlpha16At(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newAlpha16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.alpha16At((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkAlphaSetAlpha16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newAlpha16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo._internal.image.color.Color.Alpha16 = (new stdgo._internal.image.color.Color.Alpha16((19 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Alpha16);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setAlpha16((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkGrayAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newGray(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.grayAt((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkGraySetGray(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newGray(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo._internal.image.color.Color.Gray = (new stdgo._internal.image.color.Color.Gray((19 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color.Gray);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setGray((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkGray16At(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newGray16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.gray16At((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkGraySetGray16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m = newGray16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo._internal.image.color.Color.Gray16 = (new stdgo._internal.image.color.Color.Gray16((19 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Gray16);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setGray16((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function newUniform(_c:stdgo._internal.image.color.Color.Color):stdgo.Ref<Uniform> {
        return (stdgo.Go.setRef((new stdgo._internal.image.Image.Uniform(_c) : stdgo._internal.image.Image.Uniform)) : stdgo.Ref<stdgo._internal.image.Image.Uniform>);
    }
function _yCbCrSize(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } {
        var _w:stdgo.GoInt = (0 : stdgo.GoInt), _h:stdgo.GoInt = (0 : stdgo.GoInt), _cw:stdgo.GoInt = (0 : stdgo.GoInt), _ch:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _r.dx();
            final __tmp__1 = _r.dy();
            _w = __tmp__0;
            _h = __tmp__1;
        };
        {
            final __value__ = _subsampleRatio;
            if (__value__ == ((1 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                _cw = ((((_r.max.x + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                _ch = _h;
            } else if (__value__ == ((2 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                _cw = ((((_r.max.x + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                _ch = ((((_r.max.y + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                _cw = _w;
                _ch = ((((_r.max.y + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                _cw = ((((_r.max.x + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                _ch = _h;
            } else if (__value__ == ((5 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                _cw = ((((_r.max.x + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                _ch = ((((_r.max.y + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _cw = _w;
                _ch = _h;
            };
        };
        return { _0 : _w, _1 : _h, _2 : _cw, _3 : _ch };
    }
function newYCbCr(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):stdgo.Ref<YCbCr> {
        var __tmp__ = _yCbCrSize(_r?.__copy__(), _subsampleRatio), _w:stdgo.GoInt = __tmp__._0, _h:stdgo.GoInt = __tmp__._1, _cw:stdgo.GoInt = __tmp__._2, _ch:stdgo.GoInt = __tmp__._3;
        var _totalLength:stdgo.GoInt = _add2NonNeg(_mul3NonNeg((1 : stdgo.GoInt), _w, _h), _mul3NonNeg((2 : stdgo.GoInt), _cw, _ch));
        if ((_totalLength < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("image: NewYCbCr Rectangle has huge or negative dimensions" : stdgo.GoString));
        };
        var _i0:stdgo.GoInt = ((_w * _h : stdgo.GoInt) + (((0 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _i1:stdgo.GoInt = ((_w * _h : stdgo.GoInt) + (((1 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _i2:stdgo.GoInt = ((_w * _h : stdgo.GoInt) + (((2 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_i2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return (stdgo.Go.setRef(({ y : (_b.__slice__(0, _i0, _i0) : stdgo.Slice<stdgo.GoUInt8>), cb : (_b.__slice__(_i0, _i1, _i1) : stdgo.Slice<stdgo.GoUInt8>), cr : (_b.__slice__(_i1, _i2, _i2) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : _subsampleRatio, ystride : _w, cstride : _cw, rect : _r?.__copy__() } : stdgo._internal.image.Image.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image.YCbCr>);
    }
function newNYCbCrA(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):stdgo.Ref<NYCbCrA> {
        var __tmp__ = _yCbCrSize(_r?.__copy__(), _subsampleRatio), _w:stdgo.GoInt = __tmp__._0, _h:stdgo.GoInt = __tmp__._1, _cw:stdgo.GoInt = __tmp__._2, _ch:stdgo.GoInt = __tmp__._3;
        var _totalLength:stdgo.GoInt = _add2NonNeg(_mul3NonNeg((2 : stdgo.GoInt), _w, _h), _mul3NonNeg((2 : stdgo.GoInt), _cw, _ch));
        if ((_totalLength < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("image: NewNYCbCrA Rectangle has huge or negative dimension" : stdgo.GoString));
        };
        var _i0:stdgo.GoInt = ((((1 : stdgo.GoInt) * _w : stdgo.GoInt) * _h : stdgo.GoInt) + (((0 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _i1:stdgo.GoInt = ((((1 : stdgo.GoInt) * _w : stdgo.GoInt) * _h : stdgo.GoInt) + (((1 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _i2:stdgo.GoInt = ((((1 : stdgo.GoInt) * _w : stdgo.GoInt) * _h : stdgo.GoInt) + (((2 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _i3:stdgo.GoInt = ((((2 : stdgo.GoInt) * _w : stdgo.GoInt) * _h : stdgo.GoInt) + (((2 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_i3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return (stdgo.Go.setRef(({ ycbCr : ({ y : (_b.__slice__(0, _i0, _i0) : stdgo.Slice<stdgo.GoUInt8>), cb : (_b.__slice__(_i0, _i1, _i1) : stdgo.Slice<stdgo.GoUInt8>), cr : (_b.__slice__(_i1, _i2, _i2) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : _subsampleRatio, ystride : _w, cstride : _cw, rect : _r?.__copy__() } : stdgo._internal.image.Image.YCbCr), a : (_b.__slice__(_i2) : stdgo.Slice<stdgo.GoUInt8>), astride : _w } : stdgo._internal.image.Image.NYCbCrA)) : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>);
    }
function testYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rects = (new stdgo.Slice<stdgo._internal.image.Image.Rectangle>(20, 20, ...[
rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
rect((1 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
rect((0 : stdgo.GoInt), (1 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
rect((1 : stdgo.GoInt), (1 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
rect((1 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
rect((1 : stdgo.GoInt), (1 : stdgo.GoInt), (16 : stdgo.GoInt), (15 : stdgo.GoInt))?.__copy__(),
rect((1 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (15 : stdgo.GoInt))?.__copy__(),
rect((2 : stdgo.GoInt), (3 : stdgo.GoInt), (14 : stdgo.GoInt), (15 : stdgo.GoInt))?.__copy__(),
rect((7 : stdgo.GoInt), (0 : stdgo.GoInt), (7 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
rect((0 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (11 : stdgo.GoInt))?.__copy__(),
rect((5 : stdgo.GoInt), (6 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
rect((7 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
rect((7 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(),
rect((8 : stdgo.GoInt), (7 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(),
rect((7 : stdgo.GoInt), (7 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__(),
rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__(),
rect((9 : stdgo.GoInt), (9 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__(),
rect((10 : stdgo.GoInt), (10 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__()].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image.Rectangle)])) : stdgo.Slice<stdgo._internal.image.Image.Rectangle>);
        var _subsampleRatios = (new stdgo.Slice<stdgo._internal.image.Image.YCbCrSubsampleRatio>(6, 6, ...[(0 : stdgo._internal.image.Image.YCbCrSubsampleRatio), (1 : stdgo._internal.image.Image.YCbCrSubsampleRatio), (2 : stdgo._internal.image.Image.YCbCrSubsampleRatio), (3 : stdgo._internal.image.Image.YCbCrSubsampleRatio), (4 : stdgo._internal.image.Image.YCbCrSubsampleRatio), (5 : stdgo._internal.image.Image.YCbCrSubsampleRatio)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.Image.YCbCrSubsampleRatio>);
        var _deltas = (new stdgo.Slice<stdgo._internal.image.Image.Point>(4, 4, ...[pt((0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(), pt((1000 : stdgo.GoInt), (1001 : stdgo.GoInt))?.__copy__(), pt((5001 : stdgo.GoInt), (-400 : stdgo.GoInt))?.__copy__(), pt((-701 : stdgo.GoInt), (-801 : stdgo.GoInt))?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image.Point)])) : stdgo.Slice<stdgo._internal.image.Image.Point>);
        for (__0 => _r in _rects) {
            for (__1 => _subsampleRatio in _subsampleRatios) {
                for (__2 => _delta in _deltas) {
                    _testYCbCr(_t, _r?.__copy__(), _subsampleRatio, _delta?.__copy__());
                };
            };
            if (stdgo._internal.testing.Testing.short()) {
                break;
            };
        };
    }
function _testYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio, _delta:Point):Void {
        var _r1:stdgo._internal.image.Image.Rectangle = _r.add(_delta?.__copy__())?.__copy__();
        var _m = newYCbCr(_r1?.__copy__(), _subsampleRatio);
        if (((_m.y.length) > (10000 : stdgo.GoInt) : Bool)) {
            _t.errorf(("r=%v, subsampleRatio=%v, delta=%v: image buffer is too large" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_subsampleRatio)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)));
            return;
        };
        {
            var _y:stdgo.GoInt = _r1.min.y;
            stdgo.Go.cfor((_y < _r1.max.y : Bool), _y++, {
                {
                    var _x:stdgo.GoInt = _r1.min.x;
                    stdgo.Go.cfor((_x < _r1.max.x : Bool), _x++, {
                        var _yi:stdgo.GoInt = _m.yoffset(_x, _y);
                        var _ci:stdgo.GoInt = _m.coffset(_x, _y);
                        _m.y[(_yi : stdgo.GoInt)] = ((((16 : stdgo.GoInt) * _y : stdgo.GoInt) + _x : stdgo.GoInt) : stdgo.GoUInt8);
                        _m.cb[(_ci : stdgo.GoInt)] = ((_y + ((16 : stdgo.GoInt) * _x : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _m.cr[(_ci : stdgo.GoInt)] = ((_y + ((16 : stdgo.GoInt) * _x : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                    });
                };
            });
        };
        {
            var _y0:stdgo.GoInt = (_delta.y + (3 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_y0 < (_delta.y + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool), _y0++, {
                {
                    var _y1:stdgo.GoInt = (_delta.y + (8 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo.Go.cfor((_y1 < (_delta.y + (13 : stdgo.GoInt) : stdgo.GoInt) : Bool), _y1++, {
                        {
                            var _x0:stdgo.GoInt = (_delta.x + (3 : stdgo.GoInt) : stdgo.GoInt);
                            stdgo.Go.cfor((_x0 < (_delta.x + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool), _x0++, {
                                {
                                    var _x1:stdgo.GoInt = (_delta.x + (8 : stdgo.GoInt) : stdgo.GoInt);
                                    stdgo.Go.cfor((_x1 < (_delta.x + (13 : stdgo.GoInt) : stdgo.GoInt) : Bool), _x1++, {
                                        var _subRect:stdgo._internal.image.Image.Rectangle = rect(_x0, _y0, _x1, _y1)?.__copy__();
                                        var _sub = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(_subRect?.__copy__())) : stdgo.Ref<YCbCr>)) : stdgo.Ref<YCbCr>);
                                        {
                                            var _y:stdgo.GoInt = _sub.rect.min.y;
                                            stdgo.Go.cfor((_y < _sub.rect.max.y : Bool), _y++, {
                                                {
                                                    var _x:stdgo.GoInt = _sub.rect.min.x;
                                                    stdgo.Go.cfor((_x < _sub.rect.max.x : Bool), _x++, {
                                                        var _color0:stdgo._internal.image.color.Color.YCbCr = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.at(_x, _y)) : stdgo._internal.image.color.Color.YCbCr)) : stdgo._internal.image.color.Color.YCbCr)?.__copy__();
                                                        var _color1:stdgo._internal.image.color.Color.YCbCr = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_sub.at(_x, _y)) : stdgo._internal.image.color.Color.YCbCr)) : stdgo._internal.image.color.Color.YCbCr)?.__copy__();
                                                        if (stdgo.Go.toInterface(_color0) != stdgo.Go.toInterface(_color1)) {
                                                            _t.errorf(("r=%v, subsampleRatio=%v, delta=%v, x=%d, y=%d, color0=%v, color1=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_subsampleRatio)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_color0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_color1)));
                                                            return;
                                                        };
                                                    });
                                                };
                                            });
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
function testYCbCrSlicesDontOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m = newYCbCr(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(), (2 : stdgo._internal.image.Image.YCbCrSubsampleRatio));
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Y" : stdgo.GoString), ("Cb" : stdgo.GoString), ("Cr" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _slices = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, ...[(_m.y.__slice__(0, _m.y.capacity) : stdgo.Slice<stdgo.GoUInt8>), (_m.cb.__slice__(0, _m.cb.capacity) : stdgo.Slice<stdgo.GoUInt8>), (_m.cr.__slice__(0, _m.cr.capacity) : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _slice in _slices) {
            var _want:stdgo.GoUInt8 = (((10 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoUInt8);
            for (_j => _ in _slice) {
                _slice[(_j : stdgo.GoInt)] = _want;
            };
        };
        for (_i => _slice in _slices) {
            var _want:stdgo.GoUInt8 = (((10 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoUInt8);
            for (_j => _got in _slice) {
                if (_got != (_want)) {
                    _t.fatalf(("m.%s[%d]: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
class Point_asInterface {
    @:keep
    public dynamic function eq(_q:Point):Bool return __self__.value.eq(_q);
    @:keep
    public dynamic function mod(_r:Rectangle):Point return __self__.value.mod(_r);
    @:keep
    public dynamic function in_(_r:Rectangle):Bool return __self__.value.in_(_r);
    @:keep
    public dynamic function div(_k:stdgo.GoInt):Point return __self__.value.div(_k);
    @:keep
    public dynamic function mul(_k:stdgo.GoInt):Point return __self__.value.mul(_k);
    @:keep
    public dynamic function sub(_q:Point):Point return __self__.value.sub(_q);
    @:keep
    public dynamic function add(_q:Point):Point return __self__.value.add(_q);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Point>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.Point_asInterface) class Point_static_extension {
    @:keep
    static public function eq( _p:Point, _q:Point):Bool {
        @:recv var _p:Point = _p?.__copy__();
        return stdgo.Go.toInterface(_p) == stdgo.Go.toInterface(_q);
    }
    @:keep
    static public function mod( _p:Point, _r:Rectangle):Point {
        @:recv var _p:Point = _p?.__copy__();
        var __0:stdgo.GoInt = _r.dx(), __1:stdgo.GoInt = _r.dy(), _h:stdgo.GoInt = __1, _w:stdgo.GoInt = __0;
        _p = _p.sub(_r.min?.__copy__())?.__copy__();
        _p.x = (_p.x % _w : stdgo.GoInt);
        if ((_p.x < (0 : stdgo.GoInt) : Bool)) {
            _p.x = (_p.x + (_w) : stdgo.GoInt);
        };
        _p.y = (_p.y % _h : stdgo.GoInt);
        if ((_p.y < (0 : stdgo.GoInt) : Bool)) {
            _p.y = (_p.y + (_h) : stdgo.GoInt);
        };
        return _p.add(_r.min?.__copy__())?.__copy__();
    }
    @:keep
    static public function in_( _p:Point, _r:Rectangle):Bool {
        @:recv var _p:Point = _p?.__copy__();
        return ((((_r.min.x <= _p.x : Bool) && (_p.x < _r.max.x : Bool) : Bool) && (_r.min.y <= _p.y : Bool) : Bool) && (_p.y < _r.max.y : Bool) : Bool);
    }
    @:keep
    static public function div( _p:Point, _k:stdgo.GoInt):Point {
        @:recv var _p:Point = _p?.__copy__();
        return (new stdgo._internal.image.Image.Point((_p.x / _k : stdgo.GoInt), (_p.y / _k : stdgo.GoInt)) : stdgo._internal.image.Image.Point);
    }
    @:keep
    static public function mul( _p:Point, _k:stdgo.GoInt):Point {
        @:recv var _p:Point = _p?.__copy__();
        return (new stdgo._internal.image.Image.Point((_p.x * _k : stdgo.GoInt), (_p.y * _k : stdgo.GoInt)) : stdgo._internal.image.Image.Point);
    }
    @:keep
    static public function sub( _p:Point, _q:Point):Point {
        @:recv var _p:Point = _p?.__copy__();
        return (new stdgo._internal.image.Image.Point((_p.x - _q.x : stdgo.GoInt), (_p.y - _q.y : stdgo.GoInt)) : stdgo._internal.image.Image.Point);
    }
    @:keep
    static public function add( _p:Point, _q:Point):Point {
        @:recv var _p:Point = _p?.__copy__();
        return (new stdgo._internal.image.Image.Point((_p.x + _q.x : stdgo.GoInt), (_p.y + _q.y : stdgo.GoInt)) : stdgo._internal.image.Image.Point);
    }
    @:keep
    static public function string( _p:Point):stdgo.GoString {
        @:recv var _p:Point = _p?.__copy__();
        return ((((("(" : stdgo.GoString) + stdgo._internal.strconv.Strconv.itoa(_p.x)?.__copy__() : stdgo.GoString) + ("," : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv.itoa(_p.y)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class Rectangle_asInterface {
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function canon():Rectangle return __self__.value.canon();
    @:keep
    public dynamic function in_(_s:Rectangle):Bool return __self__.value.in_(_s);
    @:keep
    public dynamic function overlaps(_s:Rectangle):Bool return __self__.value.overlaps(_s);
    @:keep
    public dynamic function eq(_s:Rectangle):Bool return __self__.value.eq(_s);
    @:keep
    public dynamic function empty():Bool return __self__.value.empty();
    @:keep
    public dynamic function union(_s:Rectangle):Rectangle return __self__.value.union(_s);
    @:keep
    public dynamic function intersect(_s:Rectangle):Rectangle return __self__.value.intersect(_s);
    @:keep
    public dynamic function inset(_n:stdgo.GoInt):Rectangle return __self__.value.inset(_n);
    @:keep
    public dynamic function sub(_p:Point):Rectangle return __self__.value.sub(_p);
    @:keep
    public dynamic function add(_p:Point):Rectangle return __self__.value.add(_p);
    @:keep
    public dynamic function size():Point return __self__.value.size();
    @:keep
    public dynamic function dy():stdgo.GoInt return __self__.value.dy();
    @:keep
    public dynamic function dx():stdgo.GoInt return __self__.value.dx();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Rectangle>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.Rectangle_asInterface) class Rectangle_static_extension {
    @:keep
    static public function colorModel( _r:Rectangle):stdgo._internal.image.color.Color.Model {
        @:recv var _r:Rectangle = _r?.__copy__();
        return stdgo._internal.image.color.Color.alpha16Model;
    }
    @:keep
    static public function bounds( _r:Rectangle):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        return _r?.__copy__();
    }
    @:keep
    static public function rgba64at( _r:Rectangle, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _r:Rectangle = _r?.__copy__();
        if ((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_r?.__copy__())) {
            return (new stdgo._internal.image.color.Color.RGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
        };
        return (new stdgo._internal.image.color.Color.RGBA64() : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _r:Rectangle, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _r:Rectangle = _r?.__copy__();
        if ((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_r?.__copy__())) {
            return stdgo.Go.asInterface(stdgo._internal.image.color.Color.opaque);
        };
        return stdgo.Go.asInterface(stdgo._internal.image.color.Color.transparent);
    }
    @:keep
    static public function canon( _r:Rectangle):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        if ((_r.max.x < _r.min.x : Bool)) {
            {
                final __tmp__0 = _r.max.x;
                final __tmp__1 = _r.min.x;
                _r.min.x = __tmp__0;
                _r.max.x = __tmp__1;
            };
        };
        if ((_r.max.y < _r.min.y : Bool)) {
            {
                final __tmp__0 = _r.max.y;
                final __tmp__1 = _r.min.y;
                _r.min.y = __tmp__0;
                _r.max.y = __tmp__1;
            };
        };
        return _r?.__copy__();
    }
    @:keep
    static public function in_( _r:Rectangle, _s:Rectangle):Bool {
        @:recv var _r:Rectangle = _r?.__copy__();
        if (_r.empty()) {
            return true;
        };
        return ((((_s.min.x <= _r.min.x : Bool) && (_r.max.x <= _s.max.x : Bool) : Bool) && (_s.min.y <= _r.min.y : Bool) : Bool) && (_r.max.y <= _s.max.y : Bool) : Bool);
    }
    @:keep
    static public function overlaps( _r:Rectangle, _s:Rectangle):Bool {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (((((!_r.empty() && !_s.empty() : Bool) && (_r.min.x < _s.max.x : Bool) : Bool) && (_s.min.x < _r.max.x : Bool) : Bool) && (_r.min.y < _s.max.y : Bool) : Bool) && (_s.min.y < _r.max.y : Bool) : Bool);
    }
    @:keep
    static public function eq( _r:Rectangle, _s:Rectangle):Bool {
        @:recv var _r:Rectangle = _r?.__copy__();
        return ((stdgo.Go.toInterface(_r) == stdgo.Go.toInterface(_s)) || (_r.empty() && _s.empty() : Bool) : Bool);
    }
    @:keep
    static public function empty( _r:Rectangle):Bool {
        @:recv var _r:Rectangle = _r?.__copy__();
        return ((_r.min.x >= _r.max.x : Bool) || (_r.min.y >= _r.max.y : Bool) : Bool);
    }
    @:keep
    static public function union( _r:Rectangle, _s:Rectangle):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        if (_r.empty()) {
            return _s?.__copy__();
        };
        if (_s.empty()) {
            return _r?.__copy__();
        };
        if ((_r.min.x > _s.min.x : Bool)) {
            _r.min.x = _s.min.x;
        };
        if ((_r.min.y > _s.min.y : Bool)) {
            _r.min.y = _s.min.y;
        };
        if ((_r.max.x < _s.max.x : Bool)) {
            _r.max.x = _s.max.x;
        };
        if ((_r.max.y < _s.max.y : Bool)) {
            _r.max.y = _s.max.y;
        };
        return _r?.__copy__();
    }
    @:keep
    static public function intersect( _r:Rectangle, _s:Rectangle):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        if ((_r.min.x < _s.min.x : Bool)) {
            _r.min.x = _s.min.x;
        };
        if ((_r.min.y < _s.min.y : Bool)) {
            _r.min.y = _s.min.y;
        };
        if ((_r.max.x > _s.max.x : Bool)) {
            _r.max.x = _s.max.x;
        };
        if ((_r.max.y > _s.max.y : Bool)) {
            _r.max.y = _s.max.y;
        };
        if (_r.empty()) {
            return zr?.__copy__();
        };
        return _r?.__copy__();
    }
    @:keep
    static public function inset( _r:Rectangle, _n:stdgo.GoInt):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        if ((_r.dx() < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
            _r.min.x = (((_r.min.x + _r.max.x : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            _r.max.x = _r.min.x;
        } else {
            _r.min.x = (_r.min.x + (_n) : stdgo.GoInt);
            _r.max.x = (_r.max.x - (_n) : stdgo.GoInt);
        };
        if ((_r.dy() < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
            _r.min.y = (((_r.min.y + _r.max.y : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            _r.max.y = _r.min.y;
        } else {
            _r.min.y = (_r.min.y + (_n) : stdgo.GoInt);
            _r.max.y = (_r.max.y - (_n) : stdgo.GoInt);
        };
        return _r?.__copy__();
    }
    @:keep
    static public function sub( _r:Rectangle, _p:Point):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (new stdgo._internal.image.Image.Rectangle((new stdgo._internal.image.Image.Point((_r.min.x - _p.x : stdgo.GoInt), (_r.min.y - _p.y : stdgo.GoInt)) : stdgo._internal.image.Image.Point), (new stdgo._internal.image.Image.Point((_r.max.x - _p.x : stdgo.GoInt), (_r.max.y - _p.y : stdgo.GoInt)) : stdgo._internal.image.Image.Point)) : stdgo._internal.image.Image.Rectangle);
    }
    @:keep
    static public function add( _r:Rectangle, _p:Point):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (new stdgo._internal.image.Image.Rectangle((new stdgo._internal.image.Image.Point((_r.min.x + _p.x : stdgo.GoInt), (_r.min.y + _p.y : stdgo.GoInt)) : stdgo._internal.image.Image.Point), (new stdgo._internal.image.Image.Point((_r.max.x + _p.x : stdgo.GoInt), (_r.max.y + _p.y : stdgo.GoInt)) : stdgo._internal.image.Image.Point)) : stdgo._internal.image.Image.Rectangle);
    }
    @:keep
    static public function size( _r:Rectangle):Point {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (new stdgo._internal.image.Image.Point((_r.max.x - _r.min.x : stdgo.GoInt), (_r.max.y - _r.min.y : stdgo.GoInt)) : stdgo._internal.image.Image.Point);
    }
    @:keep
    static public function dy( _r:Rectangle):stdgo.GoInt {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (_r.max.y - _r.min.y : stdgo.GoInt);
    }
    @:keep
    static public function dx( _r:Rectangle):stdgo.GoInt {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (_r.max.x - _r.min.x : stdgo.GoInt);
    }
    @:keep
    static public function string( _r:Rectangle):stdgo.GoString {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (((_r.min.string() : stdgo.GoString) + ("-" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_r.max.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class RGBA_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setRGBA(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA):Void __self__.value.setRGBA(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function rgbaat(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA return __self__.value.rgbaat(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RGBA>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.RGBA_asInterface) class RGBA_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<RGBA>):Bool {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (3 : stdgo.GoInt), __1:stdgo.GoInt = (_p.rect.dx() * (4 : stdgo.GoInt) : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor((_y < _p.rect.max.y : Bool), _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor((_i < _i1 : Bool), _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                        if (_p.pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = (_i0 + (_p.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.stride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<RGBA>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.RGBA() : stdgo._internal.image.Image.RGBA)) : stdgo.Ref<stdgo._internal.image.Image.RGBA>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.RGBA)) : stdgo.Ref<stdgo._internal.image.Image.RGBA>));
    }
    @:keep
    static public function setRGBA( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA):Void {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c.r;
        _s[(1 : stdgo.GoInt)] = _c.g;
        _s[(2 : stdgo.GoInt)] = _c.b;
        _s[(3 : stdgo.GoInt)] = _c.a;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = ((_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo._internal.image.color.Color.RGBA = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.rgbamodel.convert(_c)) : stdgo._internal.image.color.Color.RGBA)) : stdgo._internal.image.color.Color.RGBA)?.__copy__();
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.r;
        _s[(1 : stdgo.GoInt)] = _c1.g;
        _s[(2 : stdgo.GoInt)] = _c1.b;
        _s[(3 : stdgo.GoInt)] = _c1.a;
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function rgbaat( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.RGBA() : stdgo._internal.image.color.Color.RGBA);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo._internal.image.color.Color.RGBA(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]) : stdgo._internal.image.color.Color.RGBA);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.RGBA64() : stdgo._internal.image.color.Color.RGBA64);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _r:stdgo.GoUInt16 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _g:stdgo.GoUInt16 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _b:stdgo.GoUInt16 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _a:stdgo.GoUInt16 = (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16);
        return (new stdgo._internal.image.color.Color.RGBA64((((_r << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _r : stdgo.GoUInt16), (((_g << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _g : stdgo.GoUInt16), (((_b << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _b : stdgo.GoUInt16), (((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        return stdgo.Go.asInterface(_p.rgbaat(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<RGBA>):Rectangle {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<RGBA>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        return stdgo._internal.image.color.Color.rgbamodel;
    }
}
class RGBA64_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RGBA64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.RGBA64_asInterface) class RGBA64_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<RGBA64>):Bool {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (6 : stdgo.GoInt), __1:stdgo.GoInt = (_p.rect.dx() * (8 : stdgo.GoInt) : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor((_y < _p.rect.max.y : Bool), _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor((_i < _i1 : Bool), _i = (_i + ((8 : stdgo.GoInt)) : stdgo.GoInt), {
                        if (((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) : Bool)) {
                            return false;
                        };
                    });
                };
                _i0 = (_i0 + (_p.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.stride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<RGBA64>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.RGBA64() : stdgo._internal.image.Image.RGBA64)) : stdgo.Ref<stdgo._internal.image.Image.RGBA64>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.RGBA64)) : stdgo.Ref<stdgo._internal.image.Image.RGBA64>));
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = ((_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo._internal.image.color.Color.RGBA64 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.rgba64model.convert(_c)) : stdgo._internal.image.color.Color.RGBA64)) : stdgo._internal.image.color.Color.RGBA64)?.__copy__();
        var _s = (_p.pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_c1.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c1.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_c1.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c1.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = ((_c1.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c1.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = ((_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.RGBA64() : stdgo._internal.image.color.Color.RGBA64);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo._internal.image.color.Color.RGBA64((((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(4 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(5 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(6 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(7 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        return stdgo.Go.asInterface(_p.rgba64at(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<RGBA64>):Rectangle {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<RGBA64>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        return stdgo._internal.image.color.Color.rgba64model;
    }
}
class NRGBA_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setNRGBA(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.NRGBA):Void __self__.value.setNRGBA(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function nrgbaat(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.NRGBA return __self__.value.nrgbaat(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NRGBA>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.NRGBA_asInterface) class NRGBA_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<NRGBA>):Bool {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (3 : stdgo.GoInt), __1:stdgo.GoInt = (_p.rect.dx() * (4 : stdgo.GoInt) : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor((_y < _p.rect.max.y : Bool), _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor((_i < _i1 : Bool), _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                        if (_p.pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = (_i0 + (_p.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.stride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<NRGBA>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.NRGBA() : stdgo._internal.image.Image.NRGBA)) : stdgo.Ref<stdgo._internal.image.Image.NRGBA>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.NRGBA)) : stdgo.Ref<stdgo._internal.image.Image.NRGBA>));
    }
    @:keep
    static public function setNRGBA( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.NRGBA):Void {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c.r;
        _s[(1 : stdgo.GoInt)] = _c.g;
        _s[(2 : stdgo.GoInt)] = _c.b;
        _s[(3 : stdgo.GoInt)] = _c.a;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var __0:stdgo.GoUInt32 = (_c.r : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (_c.g : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (_c.b : stdgo.GoUInt32), __3:stdgo.GoUInt32 = (_c.a : stdgo.GoUInt32), _a:stdgo.GoUInt32 = __3, _b:stdgo.GoUInt32 = __2, _g:stdgo.GoUInt32 = __1, _r:stdgo.GoUInt32 = __0;
        if (((_a != (0u32 : stdgo.GoUInt32)) && (_a != (65535u32 : stdgo.GoUInt32)) : Bool)) {
            _r = (((_r * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
            _g = (((_g * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
            _b = (((_b * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = ((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo._internal.image.color.Color.NRGBA = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.nrgbamodel.convert(_c)) : stdgo._internal.image.color.Color.NRGBA)) : stdgo._internal.image.color.Color.NRGBA)?.__copy__();
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.r;
        _s[(1 : stdgo.GoInt)] = _c1.g;
        _s[(2 : stdgo.GoInt)] = _c1.b;
        _s[(3 : stdgo.GoInt)] = _c1.a;
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function nrgbaat( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.NRGBA {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.NRGBA() : stdgo._internal.image.color.Color.NRGBA);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo._internal.image.color.Color.NRGBA(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]) : stdgo._internal.image.color.Color.NRGBA);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        var __tmp__ = _p.nrgbaat(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        return stdgo.Go.asInterface(_p.nrgbaat(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<NRGBA>):Rectangle {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<NRGBA>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        return stdgo._internal.image.color.Color.nrgbamodel;
    }
}
class NRGBA64_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setNRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.NRGBA64):Void __self__.value.setNRGBA64(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function nrgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.NRGBA64 return __self__.value.nrgba64at(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NRGBA64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.NRGBA64_asInterface) class NRGBA64_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<NRGBA64>):Bool {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (6 : stdgo.GoInt), __1:stdgo.GoInt = (_p.rect.dx() * (8 : stdgo.GoInt) : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor((_y < _p.rect.max.y : Bool), _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor((_i < _i1 : Bool), _i = (_i + ((8 : stdgo.GoInt)) : stdgo.GoInt), {
                        if (((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) : Bool)) {
                            return false;
                        };
                    });
                };
                _i0 = (_i0 + (_p.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.stride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<NRGBA64>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.NRGBA64() : stdgo._internal.image.Image.NRGBA64)) : stdgo.Ref<stdgo._internal.image.Image.NRGBA64>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.NRGBA64)) : stdgo.Ref<stdgo._internal.image.Image.NRGBA64>));
    }
    @:keep
    static public function setNRGBA64( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.NRGBA64):Void {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = ((_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var __0:stdgo.GoUInt32 = (_c.r : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (_c.g : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (_c.b : stdgo.GoUInt32), __3:stdgo.GoUInt32 = (_c.a : stdgo.GoUInt32), _a:stdgo.GoUInt32 = __3, _b:stdgo.GoUInt32 = __2, _g:stdgo.GoUInt32 = __1, _r:stdgo.GoUInt32 = __0;
        if (((_a != (0u32 : stdgo.GoUInt32)) && (_a != (65535u32 : stdgo.GoUInt32)) : Bool)) {
            _r = (((_r * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
            _g = (((_g * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
            _b = (((_b * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = ((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_a : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo._internal.image.color.Color.NRGBA64 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.nrgba64model.convert(_c)) : stdgo._internal.image.color.Color.NRGBA64)) : stdgo._internal.image.color.Color.NRGBA64)?.__copy__();
        var _s = (_p.pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_c1.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c1.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_c1.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c1.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = ((_c1.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c1.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = ((_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function nrgba64at( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.NRGBA64 {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.NRGBA64() : stdgo._internal.image.color.Color.NRGBA64);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo._internal.image.color.Color.NRGBA64((((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(4 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(5 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(6 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(7 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.NRGBA64);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        var __tmp__ = _p.nrgba64at(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        return stdgo.Go.asInterface(_p.nrgba64at(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<NRGBA64>):Rectangle {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<NRGBA64>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        return stdgo._internal.image.color.Color.nrgba64model;
    }
}
class Alpha_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setAlpha(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Alpha):Void __self__.value.setAlpha(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function alphaAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Alpha return __self__.value.alphaAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Alpha>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.Alpha_asInterface) class Alpha_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<Alpha>):Bool {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx(), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor((_y < _p.rect.max.y : Bool), _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor((_i < _i1 : Bool), _i++, {
                        if (_p.pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = (_i0 + (_p.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.stride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<Alpha>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.Alpha() : stdgo._internal.image.Image.Alpha)) : stdgo.Ref<stdgo._internal.image.Image.Alpha>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.Alpha)) : stdgo.Ref<stdgo._internal.image.Image.Alpha>));
    }
    @:keep
    static public function setAlpha( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Alpha):Void {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = _c.a;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.alphaModel.convert(_c)) : stdgo._internal.image.color.Color.Alpha)) : stdgo._internal.image.color.Color.Alpha).a;
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function alphaAt( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Alpha {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.Alpha() : stdgo._internal.image.color.Color.Alpha);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return (new stdgo._internal.image.color.Color.Alpha(_p.pix[(_i : stdgo.GoInt)]) : stdgo._internal.image.color.Color.Alpha);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        var _a:stdgo.GoUInt16 = (_p.alphaAt(_x, _y).a : stdgo.GoUInt16);
        _a = (_a | ((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) : stdgo.GoUInt16);
        return (new stdgo._internal.image.color.Color.RGBA64(_a, _a, _a, _a) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        return stdgo.Go.asInterface(_p.alphaAt(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Alpha>):Rectangle {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Alpha>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        return stdgo._internal.image.color.Color.alphaModel;
    }
}
class Alpha16_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setAlpha16(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Alpha16):Void __self__.value.setAlpha16(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function alpha16At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Alpha16 return __self__.value.alpha16At(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Alpha16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.Alpha16_asInterface) class Alpha16_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<Alpha16>):Bool {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (_p.rect.dx() * (2 : stdgo.GoInt) : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor((_y < _p.rect.max.y : Bool), _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor((_i < _i1 : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        if (((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) : Bool)) {
                            return false;
                        };
                    });
                };
                _i0 = (_i0 + (_p.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.stride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<Alpha16>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.Alpha16() : stdgo._internal.image.Image.Alpha16)) : stdgo.Ref<stdgo._internal.image.Image.Alpha16>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.Alpha16)) : stdgo.Ref<stdgo._internal.image.Image.Alpha16>));
    }
    @:keep
    static public function setAlpha16( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Alpha16):Void {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo._internal.image.color.Color.Alpha16 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.alpha16Model.convert(_c)) : stdgo._internal.image.color.Color.Alpha16)) : stdgo._internal.image.color.Color.Alpha16)?.__copy__();
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function alpha16At( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Alpha16 {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.Alpha16() : stdgo._internal.image.color.Color.Alpha16);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return (new stdgo._internal.image.color.Color.Alpha16((((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Alpha16);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        var _a:stdgo.GoUInt16 = _p.alpha16At(_x, _y).a;
        return (new stdgo._internal.image.color.Color.RGBA64(_a, _a, _a, _a) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        return stdgo.Go.asInterface(_p.alpha16At(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Alpha16>):Rectangle {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Alpha16>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        return stdgo._internal.image.color.Color.alpha16Model;
    }
}
class Gray_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setGray(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Gray):Void __self__.value.setGray(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function grayAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Gray return __self__.value.grayAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gray>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.Gray_asInterface) class Gray_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<Gray>):Bool {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<Gray>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.Gray() : stdgo._internal.image.Image.Gray)) : stdgo.Ref<stdgo._internal.image.Image.Gray>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.Gray)) : stdgo.Ref<stdgo._internal.image.Image.Gray>));
    }
    @:keep
    static public function setGray( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Gray):Void {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = _c.y;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _gray:stdgo.GoUInt32 = (((((((19595u32 : stdgo.GoUInt32) * (_c.r : stdgo.GoUInt32) : stdgo.GoUInt32) + ((38470u32 : stdgo.GoUInt32) * (_c.g : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + ((7471u32 : stdgo.GoUInt32) * (_c.b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (_gray : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.grayModel.convert(_c)) : stdgo._internal.image.color.Color.Gray)) : stdgo._internal.image.color.Color.Gray).y;
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function grayAt( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Gray {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.Gray() : stdgo._internal.image.color.Color.Gray);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return (new stdgo._internal.image.color.Color.Gray(_p.pix[(_i : stdgo.GoInt)]) : stdgo._internal.image.color.Color.Gray);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        var _gray:stdgo.GoUInt16 = (_p.grayAt(_x, _y).y : stdgo.GoUInt16);
        _gray = (_gray | ((_gray << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) : stdgo.GoUInt16);
        return (new stdgo._internal.image.color.Color.RGBA64(_gray, _gray, _gray, (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return stdgo.Go.asInterface(_p.grayAt(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Gray>):Rectangle {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Gray>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return stdgo._internal.image.color.Color.grayModel;
    }
}
class Gray16_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setGray16(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Gray16):Void __self__.value.setGray16(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function gray16At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Gray16 return __self__.value.gray16At(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gray16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.Gray16_asInterface) class Gray16_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<Gray16>):Bool {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<Gray16>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.Gray16() : stdgo._internal.image.Image.Gray16)) : stdgo.Ref<stdgo._internal.image.Image.Gray16>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.Gray16)) : stdgo.Ref<stdgo._internal.image.Image.Gray16>));
    }
    @:keep
    static public function setGray16( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Gray16):Void {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.y : stdgo.GoUInt8);
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _gray:stdgo.GoUInt32 = (((((((19595u32 : stdgo.GoUInt32) * (_c.r : stdgo.GoUInt32) : stdgo.GoUInt32) + ((38470u32 : stdgo.GoUInt32) * (_c.g : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + ((7471u32 : stdgo.GoUInt32) * (_c.b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_gray >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_gray : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo._internal.image.color.Color.Gray16 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.gray16Model.convert(_c)) : stdgo._internal.image.color.Color.Gray16)) : stdgo._internal.image.color.Color.Gray16)?.__copy__();
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c1.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.y : stdgo.GoUInt8);
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function gray16At( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Gray16 {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.Gray16() : stdgo._internal.image.color.Color.Gray16);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return (new stdgo._internal.image.color.Color.Gray16((((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.Gray16);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        var _gray:stdgo.GoUInt16 = _p.gray16At(_x, _y).y;
        return (new stdgo._internal.image.color.Color.RGBA64(_gray, _gray, _gray, (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return stdgo.Go.asInterface(_p.gray16At(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Gray16>):Rectangle {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Gray16>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return stdgo._internal.image.color.Color.gray16Model;
    }
}
class CMYK_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setCMYK(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.CMYK):Void __self__.value.setCMYK(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function cmykat(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.CMYK return __self__.value.cmykat(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CMYK>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.CMYK_asInterface) class CMYK_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<CMYK>):Bool {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<CMYK>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image.CMYK() : stdgo._internal.image.Image.CMYK)) : stdgo.Ref<stdgo._internal.image.Image.CMYK>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image.CMYK)) : stdgo.Ref<stdgo._internal.image.Image.CMYK>));
    }
    @:keep
    static public function setCMYK( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.CMYK):Void {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c.c;
        _s[(1 : stdgo.GoInt)] = _c.m;
        _s[(2 : stdgo.GoInt)] = _c.y;
        _s[(3 : stdgo.GoInt)] = _c.k;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var __tmp__ = stdgo._internal.image.color.Color.rgbtoCMYK(((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), ((_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), ((_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8)), _cc:stdgo.GoUInt8 = __tmp__._0, _mm:stdgo.GoUInt8 = __tmp__._1, _yy:stdgo.GoUInt8 = __tmp__._2, _kk:stdgo.GoUInt8 = __tmp__._3;
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _cc;
        _s[(1 : stdgo.GoInt)] = _mm;
        _s[(2 : stdgo.GoInt)] = _yy;
        _s[(3 : stdgo.GoInt)] = _kk;
    }
    @:keep
    static public function set( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo._internal.image.color.Color.CMYK = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color.cmykmodel.convert(_c)) : stdgo._internal.image.color.Color.CMYK)) : stdgo._internal.image.color.Color.CMYK)?.__copy__();
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.c;
        _s[(1 : stdgo.GoInt)] = _c1.m;
        _s[(2 : stdgo.GoInt)] = _c1.y;
        _s[(3 : stdgo.GoInt)] = _c1.k;
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function cmykat( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.CMYK {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.CMYK() : stdgo._internal.image.color.Color.CMYK);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo._internal.image.color.Color.CMYK(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]) : stdgo._internal.image.color.Color.CMYK);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        var __tmp__ = _p.cmykat(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return stdgo.Go.asInterface(_p.cmykat(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<CMYK>):Rectangle {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<CMYK>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return stdgo._internal.image.color.Color.cmykmodel;
    }
}
class Paletted_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setColorIndex(_x:stdgo.GoInt, _y:stdgo.GoInt, _index:stdgo.GoUInt8):Void __self__.value.setColorIndex(_x, _y, _index);
    @:keep
    public dynamic function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8 return __self__.value.colorIndexAt(_x, _y);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Paletted>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.Paletted_asInterface) class Paletted_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<Paletted>):Bool {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        var _present:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(256, 256, ...[for (i in 0 ... 256) false]);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx(), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor((_y < _p.rect.max.y : Bool), _y++, {
                for (__0 => _c in (_p.pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>)) {
                    _present[(_c : stdgo.GoInt)] = true;
                };
                _i0 = (_i0 + (_p.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.stride) : stdgo.GoInt);
            });
        };
        for (_i => _c in _p.palette) {
            if (!_present[(_i : stdgo.GoInt)]) {
                continue;
            };
            var __tmp__ = _c.rgba(), __1:stdgo.GoUInt32 = __tmp__._0, __2:stdgo.GoUInt32 = __tmp__._1, __3:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
            if (_a != ((65535u32 : stdgo.GoUInt32))) {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<Paletted>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ palette : _p.palette } : stdgo._internal.image.Image.Paletted)) : stdgo.Ref<stdgo._internal.image.Image.Paletted>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _p.rect.intersect(_r?.__copy__())?.__copy__(), palette : _p.palette } : stdgo._internal.image.Image.Paletted)) : stdgo.Ref<stdgo._internal.image.Image.Paletted>));
    }
    @:keep
    static public function setColorIndex( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _index:stdgo.GoUInt8):Void {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = _index;
    }
    @:keep
    static public function colorIndexAt( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (0 : stdgo.GoUInt8);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return _p.pix[(_i : stdgo.GoInt)];
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (_p.palette.index(stdgo.Go.asInterface(_c)) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (_p.palette.index(_c) : stdgo.GoUInt8);
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if ((_p.palette.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo._internal.image.color.Color.RGBA64() : stdgo._internal.image.color.Color.RGBA64);
        };
        var _c:stdgo._internal.image.color.Color.Color = (null : stdgo._internal.image.color.Color.Color);
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            _c = _p.palette[(0 : stdgo.GoInt)];
        } else {
            var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
            _c = _p.palette[(_p.pix[(_i : stdgo.GoInt)] : stdgo.GoInt)];
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if ((_p.palette.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo._internal.image.color.Color.Color);
        };
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return _p.palette[(0 : stdgo.GoInt)];
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return _p.palette[(_p.pix[(_i : stdgo.GoInt)] : stdgo.GoInt)];
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Paletted>):Rectangle {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Paletted>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        return stdgo.Go.asInterface(_p.palette);
    }
}
class Uniform_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function convert(_0:stdgo._internal.image.color.Color.Color):stdgo._internal.image.color.Color.Color return __self__.value.convert(_0);
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Uniform>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.Uniform_asInterface) class Uniform_static_extension {
    @:keep
    static public function opaque( _c:stdgo.Ref<Uniform>):Bool {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        var __tmp__ = _c.c.rgba(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return _a == ((65535u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function rgba64at( _c:stdgo.Ref<Uniform>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        var __tmp__ = _c.c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _c:stdgo.Ref<Uniform>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        return _c.c;
    }
    @:keep
    static public function bounds( _c:stdgo.Ref<Uniform>):Rectangle {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        return (new stdgo._internal.image.Image.Rectangle((new stdgo._internal.image.Image.Point((-1000000000 : stdgo.GoInt), (-1000000000 : stdgo.GoInt)) : stdgo._internal.image.Image.Point), (new stdgo._internal.image.Image.Point((1000000000 : stdgo.GoInt), (1000000000 : stdgo.GoInt)) : stdgo._internal.image.Image.Point)) : stdgo._internal.image.Image.Rectangle);
    }
    @:keep
    static public function convert( _c:stdgo.Ref<Uniform>, _0:stdgo._internal.image.color.Color.Color):stdgo._internal.image.color.Color.Color {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        return _c.c;
    }
    @:keep
    static public function colorModel( _c:stdgo.Ref<Uniform>):stdgo._internal.image.color.Color.Model {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        return stdgo.Go.asInterface(_c);
    }
    @:keep
    static public function rgba( _c:stdgo.Ref<Uniform>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        var _r:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _g:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _b:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _a:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        return _c.c.rgba();
    }
}
class YCbCr_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function coffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.coffset(_x, _y);
    @:keep
    public dynamic function yoffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.yoffset(_x, _y);
    @:keep
    public dynamic function ycbCrAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.YCbCr return __self__.value.ycbCrAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<YCbCr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.YCbCr_asInterface) class YCbCr_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<YCbCr>):Bool {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<YCbCr>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ subsampleRatio : _p.subsampleRatio } : stdgo._internal.image.Image.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image.YCbCr>));
        };
        var _yi:stdgo.GoInt = _p.yoffset(_r.min.x, _r.min.y);
        var _ci:stdgo.GoInt = _p.coffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ y : (_p.y.__slice__(_yi) : stdgo.Slice<stdgo.GoUInt8>), cb : (_p.cb.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), cr : (_p.cr.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : _p.subsampleRatio, ystride : _p.ystride, cstride : _p.cstride, rect : _r?.__copy__() } : stdgo._internal.image.Image.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image.YCbCr>));
    }
    @:keep
    static public function coffset( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        {
            final __value__ = _p.subsampleRatio;
            if (__value__ == ((1 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + (((_x / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + (((_x / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + ((_x - _p.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + (((_x / (4 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((5 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + (((_x / (4 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + ((_x - _p.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function yoffset( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.ystride : stdgo.GoInt) + ((_x - _p.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function ycbCrAt( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.YCbCr {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        if (!((new stdgo._internal.image.Image.Point(_x, _y) : stdgo._internal.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.YCbCr() : stdgo._internal.image.color.Color.YCbCr);
        };
        var _yi:stdgo.GoInt = _p.yoffset(_x, _y);
        var _ci:stdgo.GoInt = _p.coffset(_x, _y);
        return (new stdgo._internal.image.color.Color.YCbCr(_p.y[(_yi : stdgo.GoInt)], _p.cb[(_ci : stdgo.GoInt)], _p.cr[(_ci : stdgo.GoInt)]) : stdgo._internal.image.color.Color.YCbCr);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        var __tmp__ = _p.ycbCrAt(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return stdgo.Go.asInterface(_p.ycbCrAt(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<YCbCr>):Rectangle {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<YCbCr>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return stdgo._internal.image.color.Color.ycbCrModel;
    }
}
class NYCbCrA_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function aoffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.aoffset(_x, _y);
    @:keep
    public dynamic function nycbCrAAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.NYCbCrA return __self__.value.nycbCrAAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color.Model return __self__.value.colorModel();
    @:embedded
    public dynamic function yoffset(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return __self__.value.yoffset(_x_, _y_);
    @:embedded
    public dynamic function ycbCrAt(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo._internal.image.color.Color.YCbCr return __self__.value.ycbCrAt(_x_, _y_);
    @:embedded
    public dynamic function coffset(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return __self__.value.coffset(_x_, _y_);
    @:embedded
    public dynamic function bounds():stdgo._internal.image.Image.Rectangle return __self__.value.bounds();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NYCbCrA>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.NYCbCrA_asInterface) class NYCbCrA_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<NYCbCrA>):Bool {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        if (_p.ycbCr.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _p.ycbCr.rect.dx(), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.ycbCr.rect.min.y;
            stdgo.Go.cfor((_y < _p.ycbCr.rect.max.y : Bool), _y++, {
                for (__0 => _a in (_p.a.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>)) {
                    if (_a != ((255 : stdgo.GoUInt8))) {
                        return false;
                    };
                };
                _i0 = (_i0 + (_p.astride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.astride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<NYCbCrA>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        _r = _r.intersect(_p.ycbCr.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ ycbCr : ({ subsampleRatio : _p.ycbCr.subsampleRatio } : stdgo._internal.image.Image.YCbCr) } : stdgo._internal.image.Image.NYCbCrA)) : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>));
        };
        var _yi:stdgo.GoInt = _p.yoffset(_r.min.x, _r.min.y);
        var _ci:stdgo.GoInt = _p.coffset(_r.min.x, _r.min.y);
        var _ai:stdgo.GoInt = _p.aoffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ ycbCr : ({ y : (_p.ycbCr.y.__slice__(_yi) : stdgo.Slice<stdgo.GoUInt8>), cb : (_p.ycbCr.cb.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), cr : (_p.ycbCr.cr.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : _p.ycbCr.subsampleRatio, ystride : _p.ycbCr.ystride, cstride : _p.ycbCr.cstride, rect : _r?.__copy__() } : stdgo._internal.image.Image.YCbCr), a : (_p.a.__slice__(_ai) : stdgo.Slice<stdgo.GoUInt8>), astride : _p.astride } : stdgo._internal.image.Image.NYCbCrA)) : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>));
    }
    @:keep
    static public function aoffset( _p:stdgo.Ref<NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        return ((((_y - _p.ycbCr.rect.min.y : stdgo.GoInt)) * _p.astride : stdgo.GoInt) + ((_x - _p.ycbCr.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function nycbCrAAt( _p:stdgo.Ref<NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.NYCbCrA {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        if (!(({ x : _x, y : _y } : stdgo._internal.image.Image.Point).in_(_p.ycbCr.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color.NYCbCrA() : stdgo._internal.image.color.Color.NYCbCrA);
        };
        var _yi:stdgo.GoInt = _p.yoffset(_x, _y);
        var _ci:stdgo.GoInt = _p.coffset(_x, _y);
        var _ai:stdgo.GoInt = _p.aoffset(_x, _y);
        return (new stdgo._internal.image.color.Color.NYCbCrA(({ y : _p.ycbCr.y[(_yi : stdgo.GoInt)], cb : _p.ycbCr.cb[(_ci : stdgo.GoInt)], cr : _p.ycbCr.cr[(_ci : stdgo.GoInt)] } : stdgo._internal.image.color.Color.YCbCr), _p.a[(_ai : stdgo.GoInt)]) : stdgo._internal.image.color.Color.NYCbCrA);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        var __tmp__ = _p.nycbCrAAt(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        return stdgo.Go.asInterface(_p.nycbCrAAt(_x, _y));
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<NYCbCrA>):stdgo._internal.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        return stdgo._internal.image.color.Color.nycbCrAModel;
    }
    @:embedded
    public static function yoffset( __self__:NYCbCrA, _x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return __self__.yoffset(_x_, _y_);
    @:embedded
    public static function ycbCrAt( __self__:NYCbCrA, _x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo._internal.image.color.Color.YCbCr return __self__.ycbCrAt(_x_, _y_);
    @:embedded
    public static function coffset( __self__:NYCbCrA, _x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return __self__.coffset(_x_, _y_);
    @:embedded
    public static function bounds( __self__:NYCbCrA):stdgo._internal.image.Image.Rectangle return __self__.bounds();
}
class YCbCrSubsampleRatio_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<YCbCrSubsampleRatio>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.image.Image.YCbCrSubsampleRatio_asInterface) class YCbCrSubsampleRatio_static_extension {
    @:keep
    static public function string( _s:YCbCrSubsampleRatio):stdgo.GoString {
        @:recv var _s:YCbCrSubsampleRatio = _s;
        {
            final __value__ = _s;
            if (__value__ == ((0 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio444" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio422" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio420" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio440" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio411" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio410" : stdgo.GoString);
            };
        };
        return ("YCbCrSubsampleRatioUnknown" : stdgo.GoString);
    }
}
