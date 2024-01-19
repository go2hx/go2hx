package stdgo.image;
/**
    // Package image implements a basic 2-D image library.
    //
    // The fundamental interface is called Image. An Image contains colors, which
    // are described in the image/color package.
    //
    // Values of the Image interface are created either by calling functions such
    // as NewRGBA and NewPaletted, or by calling Decode on an io.Reader containing
    // image data in a format such as GIF, JPEG or PNG. Decoding any particular
    // image format requires the prior registration of a decoder function.
    // Registration is typically automatic as a side effect of initializing that
    // format's package so that, to decode a PNG image, it suffices to have
    //
    //	import _ "image/png"
    //
    // in a program's main package. The _ means to import a package purely for its
    // initialization side effects.
    //
    // See "The Go image package" for more details:
    // https://golang.org/doc/articles/image_package.html
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrFormat indicates that decoding encountered an unknown format.
    
    
**/
var errFormat : stdgo.Error = stdgo.errors.Errors.new_(("image: unknown format" : stdgo.GoString));
/**
    // Black is an opaque black uniform image.
    
    
**/
var black : stdgo.Ref<stdgo.image.Image.Uniform> = newUniform(stdgo.Go.asInterface(stdgo.image.color.Color.black));
/**
    // White is an opaque white uniform image.
    
    
**/
var white : stdgo.Ref<stdgo.image.Image.Uniform> = newUniform(stdgo.Go.asInterface(stdgo.image.color.Color.white));
/**
    // Transparent is a fully transparent uniform image.
    
    
**/
var transparent : stdgo.Ref<stdgo.image.Image.Uniform> = newUniform(stdgo.Go.asInterface(stdgo.image.color.Color.transparent));
/**
    // Opaque is a fully opaque uniform image.
    
    
**/
var opaque : stdgo.Ref<stdgo.image.Image.Uniform> = newUniform(stdgo.Go.asInterface(stdgo.image.color.Color.opaque));
/**
    
    
    
**/
var _testImages : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(
9,
9,
({ _name : ("rgba" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0),
({ _name : ("rgba64" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0),
({ _name : ("nrgba" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newNRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0),
({ _name : ("nrgba64" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newNRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0),
({ _name : ("alpha" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newAlpha(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0),
({ _name : ("alpha16" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newAlpha16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0),
({ _name : ("gray" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newGray(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0),
({ _name : ("gray16" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newGray16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : T__struct_0),
({ _name : ("paletted" : stdgo.GoString), _image : function():T_image {
        return stdgo.Go.asInterface(newPaletted(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(), (new stdgo.Slice<stdgo.image.color.Color.Color>(2, 2, stdgo.Go.asInterface(transparent), stdgo.Go.asInterface(opaque)) : stdgo.image.color.Color.Palette)));
    } } : T__struct_0)) : stdgo.Slice<T__struct_0>);
/**
    // Formats is the list of registered formats.
    
    
**/
var _formatsMu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
/**
    // Formats is the list of registered formats.
    
    
**/
var _atomicFormats : stdgo.sync.atomic_.Atomic_.Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
/**
    // ZP is the zero Point.
    //
    // Deprecated: Use a literal image.Point{} instead.
    
    
**/
var zp : Point = ({} : stdgo.image.Image.Point);
/**
    // ZR is the zero Rectangle.
    //
    // Deprecated: Use a literal image.Rectangle{} instead.
    
    
**/
var zr : Rectangle = ({} : stdgo.image.Image.Rectangle);
/**
    
    
    
**/
final ycbCrSubsampleRatio444 : stdgo.image.Image.YCbCrSubsampleRatio = (5 : stdgo.image.Image.YCbCrSubsampleRatio);
/**
    
    
    
**/
final ycbCrSubsampleRatio422 = (5 : stdgo.image.Image.YCbCrSubsampleRatio);
/**
    
    
    
**/
final ycbCrSubsampleRatio420 = (5 : stdgo.image.Image.YCbCrSubsampleRatio);
/**
    
    
    
**/
final ycbCrSubsampleRatio440 = (5 : stdgo.image.Image.YCbCrSubsampleRatio);
/**
    
    
    
**/
final ycbCrSubsampleRatio411 = (5 : stdgo.image.Image.YCbCrSubsampleRatio);
/**
    
    
    
**/
final ycbCrSubsampleRatio410 = (5 : stdgo.image.Image.YCbCrSubsampleRatio);
/**
    // A reader is an io.Reader that can also peek ahead.
    
    
**/
typedef T_reader = stdgo.StructType & {
    > stdgo.io.Io.Reader,
    /**
        
        
        
    **/
    public dynamic function peek(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
/**
    // Image is a finite rectangular grid of color.Color values taken from a color
    // model.
    
    
**/
typedef Image = stdgo.StructType & {
    /**
        // ColorModel returns the Image's color model.
        
        
    **/
    public dynamic function colorModel():stdgo.image.color.Color.Model;
    /**
        // Bounds returns the domain for which At can return non-zero color.
        // The bounds do not necessarily contain the point (0, 0).
        
        
    **/
    public dynamic function bounds():Rectangle;
    /**
        // At returns the color of the pixel at (x, y).
        // At(Bounds().Min.X, Bounds().Min.Y) returns the upper-left pixel of the grid.
        // At(Bounds().Max.X-1, Bounds().Max.Y-1) returns the lower-right one.
        
        
    **/
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color;
};
/**
    // RGBA64Image is an Image whose pixels can be converted directly to a
    // color.RGBA64.
    
    
**/
typedef RGBA64Image = stdgo.StructType & {
    > Image,
    /**
        // RGBA64At returns the RGBA64 color of the pixel at (x, y). It is
        // equivalent to calling At(x, y).RGBA() and converting the resulting
        // 32-bit return values to a color.RGBA64, but it can avoid allocations
        // from converting concrete color types to the color.Color interface type.
        
        
    **/
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64;
};
/**
    // PalettedImage is an image whose colors may come from a limited palette.
    // If m is a PalettedImage and m.ColorModel() returns a color.Palette p,
    // then m.At(x, y) should be equivalent to p[m.ColorIndexAt(x, y)]. If m's
    // color model is not a color.Palette, then ColorIndexAt's behavior is
    // undefined.
    
    
**/
typedef PalettedImage = stdgo.StructType & {
    > Image,
    /**
        // ColorIndexAt returns the palette index of the pixel at (x, y).
        
        
    **/
    public dynamic function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8;
};
/**
    
    
    
**/
typedef T_image = stdgo.StructType & {
    > Image,
    /**
        
        
        
    **/
    public dynamic function opaque():Bool;
    /**
        
        
        
    **/
    public dynamic function set(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo.image.color.Color.Color):Void;
    /**
        
        
        
    **/
    public dynamic function subImage(_0:Rectangle):Image;
};
/**
    
    
    
**/
typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void;
};
/**
    // A format holds an image format's name, magic header and how to decode it.
    
    
**/
@:structInit @:private class T_format {
    public var _name : stdgo.GoString = "";
    public var _magic : stdgo.GoString = "";
    public var _decode : stdgo.io.Io.Reader -> { var _0 : stdgo.image.Image.Image; var _1 : stdgo.Error; } = null;
    public var _decodeConfig : stdgo.io.Io.Reader -> { var _0 : stdgo.image.Image.Config; var _1 : stdgo.Error; } = null;
    public function new(?_name:stdgo.GoString, ?_magic:stdgo.GoString, ?_decode:stdgo.io.Io.Reader -> { var _0 : stdgo.image.Image.Image; var _1 : stdgo.Error; }, ?_decodeConfig:stdgo.io.Io.Reader -> { var _0 : stdgo.image.Image.Config; var _1 : stdgo.Error; }) {
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
/**
    // A Point is an X, Y coordinate pair. The axes increase right and down.
    
    
**/
@:structInit @:using(stdgo.image.Image.Point_static_extension) class Point {
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
/**
    // A Rectangle contains the points with Min.X <= X < Max.X, Min.Y <= Y < Max.Y.
    // It is well-formed if Min.X <= Max.X and likewise for Y. Points are always
    // well-formed. A rectangle's methods always return well-formed outputs for
    // well-formed inputs.
    //
    // A Rectangle is also an Image whose bounds are the rectangle itself. At
    // returns color.Opaque for points in the rectangle and color.Transparent
    // otherwise.
    
    
**/
@:structInit @:using(stdgo.image.Image.Rectangle_static_extension) class Rectangle {
    public var min : stdgo.image.Image.Point = ({} : stdgo.image.Image.Point);
    public var max : stdgo.image.Image.Point = ({} : stdgo.image.Image.Point);
    public function new(?min:stdgo.image.Image.Point, ?max:stdgo.image.Image.Point) {
        if (min != null) this.min = min;
        if (max != null) this.max = max;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rectangle(min, max);
    }
}
/**
    // Config holds an image's color model and dimensions.
    
    
**/
@:structInit class Config {
    public var colorModel : stdgo.image.color.Color.Model = (null : stdgo.image.color.Color.Model);
    public var width : stdgo.GoInt = 0;
    public var height : stdgo.GoInt = 0;
    public function new(?colorModel:stdgo.image.color.Color.Model, ?width:stdgo.GoInt, ?height:stdgo.GoInt) {
        if (colorModel != null) this.colorModel = colorModel;
        if (width != null) this.width = width;
        if (height != null) this.height = height;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(colorModel, width, height);
    }
}
/**
    // RGBA is an in-memory image whose At method returns color.RGBA values.
    
    
**/
@:structInit @:using(stdgo.image.Image.RGBA_static_extension) class RGBA {
    /**
        // Pix holds the image's pixels, in R, G, B, A order. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*4].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RGBA(pix, stride, rect);
    }
}
/**
    // RGBA64 is an in-memory image whose At method returns color.RGBA64 values.
    
    
**/
@:structInit @:using(stdgo.image.Image.RGBA64_static_extension) class RGBA64 {
    /**
        // Pix holds the image's pixels, in R, G, B, A order and big-endian format. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*8].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RGBA64(pix, stride, rect);
    }
}
/**
    // NRGBA is an in-memory image whose At method returns color.NRGBA values.
    
    
**/
@:structInit @:using(stdgo.image.Image.NRGBA_static_extension) class NRGBA {
    /**
        // Pix holds the image's pixels, in R, G, B, A order. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*4].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NRGBA(pix, stride, rect);
    }
}
/**
    // NRGBA64 is an in-memory image whose At method returns color.NRGBA64 values.
    
    
**/
@:structInit @:using(stdgo.image.Image.NRGBA64_static_extension) class NRGBA64 {
    /**
        // Pix holds the image's pixels, in R, G, B, A order and big-endian format. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*8].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NRGBA64(pix, stride, rect);
    }
}
/**
    // Alpha is an in-memory image whose At method returns color.Alpha values.
    
    
**/
@:structInit @:using(stdgo.image.Image.Alpha_static_extension) class Alpha {
    /**
        // Pix holds the image's pixels, as alpha values. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*1].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha(pix, stride, rect);
    }
}
/**
    // Alpha16 is an in-memory image whose At method returns color.Alpha16 values.
    
    
**/
@:structInit @:using(stdgo.image.Image.Alpha16_static_extension) class Alpha16 {
    /**
        // Pix holds the image's pixels, as alpha values in big-endian format. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*2].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha16(pix, stride, rect);
    }
}
/**
    // Gray is an in-memory image whose At method returns color.Gray values.
    
    
**/
@:structInit @:using(stdgo.image.Image.Gray_static_extension) class Gray {
    /**
        // Pix holds the image's pixels, as gray values. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*1].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray(pix, stride, rect);
    }
}
/**
    // Gray16 is an in-memory image whose At method returns color.Gray16 values.
    
    
**/
@:structInit @:using(stdgo.image.Image.Gray16_static_extension) class Gray16 {
    /**
        // Pix holds the image's pixels, as gray values in big-endian format. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*2].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray16(pix, stride, rect);
    }
}
/**
    // CMYK is an in-memory image whose At method returns color.CMYK values.
    
    
**/
@:structInit @:using(stdgo.image.Image.CMYK_static_extension) class CMYK {
    /**
        // Pix holds the image's pixels, in C, M, Y, K order. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*4].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CMYK(pix, stride, rect);
    }
}
/**
    // Paletted is an in-memory image of uint8 indices into a given palette.
    
    
**/
@:structInit @:using(stdgo.image.Image.Paletted_static_extension) class Paletted {
    /**
        // Pix holds the image's pixels, as palette indices. The pixel at
        // (x, y) starts at Pix[(y-Rect.Min.Y)*Stride + (x-Rect.Min.X)*1].
    **/
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // Stride is the Pix stride (in bytes) between vertically adjacent pixels.
    **/
    public var stride : stdgo.GoInt = 0;
    /**
        // Rect is the image's bounds.
    **/
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    /**
        // Palette is the image's palette.
    **/
    public var palette : stdgo.image.color.Color.Palette = new stdgo.image.color.Color.Palette(0, 0);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo.image.Image.Rectangle, ?palette:stdgo.image.color.Color.Palette) {
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
/**
    // Uniform is an infinite-sized Image of uniform color.
    // It implements the color.Color, color.Model, and Image interfaces.
    
    
**/
@:structInit @:using(stdgo.image.Image.Uniform_static_extension) class Uniform {
    public var c : stdgo.image.color.Color.Color = (null : stdgo.image.color.Color.Color);
    public function new(?c:stdgo.image.color.Color.Color) {
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uniform(c);
    }
}
/**
    // YCbCr is an in-memory image of Y'CbCr colors. There is one Y sample per
    // pixel, but each Cb and Cr sample can span one or more pixels.
    // YStride is the Y slice index delta between vertically adjacent pixels.
    // CStride is the Cb and Cr slice index delta between vertically adjacent pixels
    // that map to separate chroma samples.
    // It is not an absolute requirement, but YStride and len(Y) are typically
    // multiples of 8, and:
    //
    //	For 4:4:4, CStride == YStride/1 && len(Cb) == len(Cr) == len(Y)/1.
    //	For 4:2:2, CStride == YStride/2 && len(Cb) == len(Cr) == len(Y)/2.
    //	For 4:2:0, CStride == YStride/2 && len(Cb) == len(Cr) == len(Y)/4.
    //	For 4:4:0, CStride == YStride/1 && len(Cb) == len(Cr) == len(Y)/2.
    //	For 4:1:1, CStride == YStride/4 && len(Cb) == len(Cr) == len(Y)/4.
    //	For 4:1:0, CStride == YStride/4 && len(Cb) == len(Cr) == len(Y)/8.
    
    
**/
@:structInit @:using(stdgo.image.Image.YCbCr_static_extension) class YCbCr {
    public var y : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cb : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var ystride : stdgo.GoInt = 0;
    public var cstride : stdgo.GoInt = 0;
    public var subsampleRatio : stdgo.image.Image.YCbCrSubsampleRatio = ((0 : stdgo.GoInt) : stdgo.image.Image.YCbCrSubsampleRatio);
    public var rect : stdgo.image.Image.Rectangle = ({} : stdgo.image.Image.Rectangle);
    public function new(?y:stdgo.Slice<stdgo.GoUInt8>, ?cb:stdgo.Slice<stdgo.GoUInt8>, ?cr:stdgo.Slice<stdgo.GoUInt8>, ?ystride:stdgo.GoInt, ?cstride:stdgo.GoInt, ?subsampleRatio:stdgo.image.Image.YCbCrSubsampleRatio, ?rect:stdgo.image.Image.Rectangle) {
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
/**
    // NYCbCrA is an in-memory image of non-alpha-premultiplied Y'CbCr-with-alpha
    // colors. A and AStride are analogous to the Y and YStride fields of the
    // embedded YCbCr.
    
    
**/
@:structInit @:using(stdgo.image.Image.NYCbCrA_static_extension) class NYCbCrA {
    @:embedded
    public var ycbCr : stdgo.image.Image.YCbCr = ({} : stdgo.image.Image.YCbCr);
    public var a : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var astride : stdgo.GoInt = 0;
    public function new(?ycbCr:stdgo.image.Image.YCbCr, ?a:stdgo.Slice<stdgo.GoUInt8>, ?astride:stdgo.GoInt) {
        if (ycbCr != null) this.ycbCr = ycbCr;
        if (a != null) this.a = a;
        if (astride != null) this.astride = astride;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function bounds():stdgo.image.Image.Rectangle return ycbCr.bounds();
    @:embedded
    public function coffset(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return ycbCr.coffset(_x_, _y_);
    @:embedded
    public function ycbCrAt(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.image.color.Color.YCbCr return ycbCr.ycbCrAt(_x_, _y_);
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.image.Image.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _name : stdgo.GoString;
    public var _image : () -> stdgo.image.Image.T_image;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.image.Image.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _name : stdgo.GoString;
    public var _f : stdgo.image.Image.Rectangle -> Void;
};
/**
    // YCbCrSubsampleRatio is the chroma subsample ratio used in a YCbCr image.
**/
@:named @:using(stdgo.image.Image.YCbCrSubsampleRatio_static_extension) typedef YCbCrSubsampleRatio = stdgo.GoInt;
/**
    // RegisterFormat registers an image format for use by Decode.
    // Name is the name of the format, like "jpeg" or "png".
    // Magic is the magic prefix that identifies the format's encoding. The magic
    // string can contain "?" wildcards that each match any one byte.
    // Decode is the function that decodes the encoded image.
    // DecodeConfig is the function that decodes just its configuration.
**/
function registerFormat(_name:stdgo.GoString, _magic:stdgo.GoString, _decode:stdgo.io.Io.Reader -> { var _0 : Image; var _1 : stdgo.Error; }, _decodeConfig:stdgo.io.Io.Reader -> { var _0 : Config; var _1 : stdgo.Error; }):Void {
        _formatsMu.lock();
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_atomicFormats.load() : stdgo.Slice<T_format>)) : stdgo.Slice<T_format>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.image.Image.T_format>), _1 : false };
        }, _formats = __tmp__._0, __0 = __tmp__._1;
        _atomicFormats.store(stdgo.Go.toInterface((_formats.__append__((new stdgo.image.Image.T_format(_name?.__copy__(), _magic?.__copy__(), _decode, _decodeConfig) : stdgo.image.Image.T_format)))));
        _formatsMu.unlock();
    }
/**
    // asReader converts an io.Reader to a reader.
**/
function _asReader(_r:stdgo.io.Io.Reader):T_reader {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : T_reader)) : T_reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.image.Image.T_reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _rr;
            };
        };
        return stdgo.Go.asInterface(stdgo.bufio.Bufio.newReader(_r));
    }
/**
    // match reports whether magic matches b. Magic may contain "?" wildcards.
**/
function _match(_magic:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):Bool {
        if ((_magic.length) != ((_b.length))) {
            return false;
        };
        for (_i => _c in _b) {
            if ((_magic[(_i : stdgo.GoInt)] != _c) && (_magic[(_i : stdgo.GoInt)] != (63 : stdgo.GoUInt8))) {
                return false;
            };
        };
        return true;
    }
/**
    // sniff determines the format of r's data.
**/
function _sniff(_r:T_reader):T_format {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_atomicFormats.load() : stdgo.Slice<T_format>)) : stdgo.Slice<T_format>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.image.Image.T_format>), _1 : false };
        }, _formats = __tmp__._0, __0 = __tmp__._1;
        for (__1 => _f in _formats) {
            var __tmp__ = _r.peek((_f._magic.length)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && _match(_f._magic?.__copy__(), _b)) {
                return _f?.__copy__();
            };
        };
        return (new stdgo.image.Image.T_format() : stdgo.image.Image.T_format);
    }
/**
    // Decode decodes an image that has been encoded in a registered format.
    // The string returned is the format name used during format registration.
    // Format registration is typically done by an init function in the codec-
    // specific package.
**/
function decode(_r:stdgo.io.Io.Reader):{ var _0 : Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _rr:stdgo.image.Image.T_reader = _asReader(_r);
        var _f:stdgo.image.Image.T_format = _sniff(_rr)?.__copy__();
        if (_f._decode == null) {
            return { _0 : (null : stdgo.image.Image.Image), _1 : stdgo.Go.str()?.__copy__(), _2 : errFormat };
        };
        var __tmp__ = _f._decode(_rr), _m:stdgo.image.Image.Image = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _m, _1 : _f._name?.__copy__(), _2 : _err };
    }
/**
    // DecodeConfig decodes the color model and dimensions of an image that has
    // been encoded in a registered format. The string returned is the format name
    // used during format registration. Format registration is typically done by
    // an init function in the codec-specific package.
**/
function decodeConfig(_r:stdgo.io.Io.Reader):{ var _0 : Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _rr:stdgo.image.Image.T_reader = _asReader(_r);
        var _f:stdgo.image.Image.T_format = _sniff(_rr)?.__copy__();
        if (_f._decodeConfig == null) {
            return { _0 : (new stdgo.image.Image.Config() : stdgo.image.Image.Config), _1 : stdgo.Go.str()?.__copy__(), _2 : errFormat };
        };
        var __tmp__ = _f._decodeConfig(_rr), _c:stdgo.image.Image.Config = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _c?.__copy__(), _1 : _f._name?.__copy__(), _2 : _err };
    }
/**
    // Pt is shorthand for Point{X, Y}.
**/
function pt(x:stdgo.GoInt, y:stdgo.GoInt):Point {
        return (new stdgo.image.Image.Point(x, y) : stdgo.image.Image.Point);
    }
/**
    // Rect is shorthand for Rectangle{Pt(x0, y0), Pt(x1, y1)}. The returned
    // rectangle has minimum and maximum coordinates swapped if necessary so that
    // it is well-formed.
**/
function rect(_x0:stdgo.GoInt, _y0:stdgo.GoInt, _x1:stdgo.GoInt, _y1:stdgo.GoInt):Rectangle {
        if (_x0 > _x1) {
            {
                final __tmp__0 = _x1;
                final __tmp__1 = _x0;
                _x0 = __tmp__0;
                _x1 = __tmp__1;
            };
        };
        if (_y0 > _y1) {
            {
                final __tmp__0 = _y1;
                final __tmp__1 = _y0;
                _y0 = __tmp__0;
                _y1 = __tmp__1;
            };
        };
        return (new stdgo.image.Image.Rectangle((new stdgo.image.Image.Point(_x0, _y0) : stdgo.image.Image.Point), (new stdgo.image.Image.Point(_x1, _y1) : stdgo.image.Image.Point)) : stdgo.image.Image.Rectangle);
    }
/**
    // mul3NonNeg returns (x * y * z), unless at least one argument is negative or
    // if the computation overflows the int type, in which case it returns -1.
**/
function _mul3NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt, _z:stdgo.GoInt):stdgo.GoInt {
        if (((_x < (0 : stdgo.GoInt)) || (_y < (0 : stdgo.GoInt))) || (_z < (0 : stdgo.GoInt))) {
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo.math.bits.Bits.mul64((_x : stdgo.GoUInt64), (_y : stdgo.GoUInt64)), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        if (_hi != ((0i64 : stdgo.GoUInt64))) {
            return (-1 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_lo, (_z : stdgo.GoUInt64));
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        if (_hi != ((0i64 : stdgo.GoUInt64))) {
            return (-1 : stdgo.GoInt);
        };
        var _a:stdgo.GoInt = (_lo : stdgo.GoInt);
        if ((_a < (0 : stdgo.GoInt)) || ((_a : stdgo.GoUInt64) != _lo)) {
            return (-1 : stdgo.GoInt);
        };
        return _a;
    }
/**
    // add2NonNeg returns (x + y), unless at least one argument is negative or if
    // the computation overflows the int type, in which case it returns -1.
**/
function _add2NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        if ((_x < (0 : stdgo.GoInt)) || (_y < (0 : stdgo.GoInt))) {
            return (-1 : stdgo.GoInt);
        };
        var _a:stdgo.GoInt = _x + _y;
        if (_a < (0 : stdgo.GoInt)) {
            return (-1 : stdgo.GoInt);
        };
        return _a;
    }
function testRectangle(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _in:(stdgo.image.Image.Rectangle, stdgo.image.Image.Rectangle) -> stdgo.Error = function(_f:Rectangle, _g:Rectangle):stdgo.Error {
            if (!_f.in_(_g?.__copy__())) {
                return stdgo.fmt.Fmt.errorf(("f=%s, f.In(%s): got false, want true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)));
            };
            {
                var _y:stdgo.GoInt = _f.min.y;
                stdgo.Go.cfor(_y < _f.max.y, _y++, {
                    {
                        var _x:stdgo.GoInt = _f.min.x;
                        stdgo.Go.cfor(_x < _f.max.x, _x++, {
                            var _p:stdgo.image.Image.Point = (new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point);
                            if (!_p.in_(_g?.__copy__())) {
                                return stdgo.fmt.Fmt.errorf(("p=%s, p.In(%s): got false, want true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)));
                            };
                        });
                    };
                });
            };
            return (null : stdgo.Error);
        };
        var _rects = (new stdgo.Slice<stdgo.image.Image.Rectangle>(
11,
11,
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
rect((6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt))?.__copy__()) : stdgo.Slice<stdgo.image.Image.Rectangle>);
        for (__0 => _r in _rects) {
            for (__1 => _s in _rects) {
                var _got:Bool = _r.eq(_s?.__copy__());
                var _want:Bool = (_in(_r?.__copy__(), _s?.__copy__()) == null) && (_in(_s?.__copy__(), _r?.__copy__()) == null);
                if (_got != (_want)) {
                    _t.errorf(("Eq: r=%s, s=%s: got %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        for (__10 => _r in _rects) {
            for (__11 => _s in _rects) {
                var _a:stdgo.image.Image.Rectangle = _r.intersect(_s?.__copy__())?.__copy__();
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
                    var __0:Bool = stdgo.Go.toInterface(_a) == stdgo.Go.toInterface(((new stdgo.image.Image.Rectangle() : stdgo.image.Image.Rectangle))), __1:Bool = _r.overlaps(_s?.__copy__()), _overlaps:Bool = __1, _isZero:Bool = __0;
                    if (_isZero == (_overlaps)) {
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s: isZero=%t same as overlaps=%t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_isZero), stdgo.Go.toInterface(_overlaps));
                    };
                };
                var _largerThanA = (new stdgo.GoArray<stdgo.image.Image.Rectangle>(_a?.__copy__(), _a?.__copy__(), _a?.__copy__(), _a?.__copy__()) : stdgo.GoArray<stdgo.image.Image.Rectangle>);
                _largerThanA[(0 : stdgo.GoInt)].min.x--;
                _largerThanA[(1 : stdgo.GoInt)].min.y--;
                _largerThanA[(2 : stdgo.GoInt)].max.x++;
                _largerThanA[(3 : stdgo.GoInt)].max.y++;
                for (_i => _b in _largerThanA) {
                    if (_b.empty()) {
                        continue;
                    };
                    if ((_in(_b?.__copy__(), _r?.__copy__()) == null) && (_in(_b?.__copy__(), _s?.__copy__()) == null)) {
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s, b=%s, i=%d: intersection could be larger" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(_i));
                    };
                };
            };
        };
        for (__44 => _r in _rects) {
            for (__45 => _s in _rects) {
                var _a:stdgo.image.Image.Rectangle = _r.union(_s?.__copy__())?.__copy__();
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
                var _smallerThanA = (new stdgo.GoArray<stdgo.image.Image.Rectangle>(_a?.__copy__(), _a?.__copy__(), _a?.__copy__(), _a?.__copy__()) : stdgo.GoArray<stdgo.image.Image.Rectangle>);
                _smallerThanA[(0 : stdgo.GoInt)].min.x++;
                _smallerThanA[(1 : stdgo.GoInt)].min.y++;
                _smallerThanA[(2 : stdgo.GoInt)].max.x--;
                _smallerThanA[(3 : stdgo.GoInt)].max.y--;
                for (_i => _b in _smallerThanA) {
                    if ((_in(_r?.__copy__(), _b?.__copy__()) == null) && (_in(_s?.__copy__(), _b?.__copy__()) == null)) {
                        _t.errorf(("Union: r=%s, s=%s, a=%s, b=%s, i=%d: union could be smaller" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(_i));
                    };
                };
            };
        };
    }
/**
    // pixelBufferLength returns the length of the []uint8 typed Pix slice field
    // for the NewXxx functions. Conceptually, this is just (bpp * width * height),
    // but this function panics if at least one of those is negative or if the
    // computation would overflow the int type.
    //
    // This panics instead of returning an error because of backwards
    // compatibility. The NewXxx functions do not return an error.
**/
function _pixelBufferLength(_bytesPerPixel:stdgo.GoInt, _r:Rectangle, _imageTypeName:stdgo.GoString):stdgo.GoInt {
        var _totalLength:stdgo.GoInt = _mul3NonNeg(_bytesPerPixel, _r.dx(), _r.dy());
        if (_totalLength < (0 : stdgo.GoInt)) {
            throw stdgo.Go.toInterface(("image: New" : stdgo.GoString) + _imageTypeName?.__copy__() + (" Rectangle has huge or negative dimensions" : stdgo.GoString)?.__copy__());
        };
        return _totalLength;
    }
/**
    // NewRGBA returns a new RGBA image with the given bounds.
**/
function newRGBA(_r:Rectangle):stdgo.Ref<RGBA> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((4 : stdgo.GoInt), _r?.__copy__(), ("RGBA" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (4 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.RGBA)) : stdgo.Ref<stdgo.image.Image.RGBA>);
    }
/**
    // NewRGBA64 returns a new RGBA64 image with the given bounds.
**/
function newRGBA64(_r:Rectangle):stdgo.Ref<RGBA64> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((8 : stdgo.GoInt), _r?.__copy__(), ("RGBA64" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (8 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.RGBA64)) : stdgo.Ref<stdgo.image.Image.RGBA64>);
    }
/**
    // NewNRGBA returns a new NRGBA image with the given bounds.
**/
function newNRGBA(_r:Rectangle):stdgo.Ref<NRGBA> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((4 : stdgo.GoInt), _r?.__copy__(), ("NRGBA" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (4 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.NRGBA)) : stdgo.Ref<stdgo.image.Image.NRGBA>);
    }
/**
    // NewNRGBA64 returns a new NRGBA64 image with the given bounds.
**/
function newNRGBA64(_r:Rectangle):stdgo.Ref<NRGBA64> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((8 : stdgo.GoInt), _r?.__copy__(), ("NRGBA64" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (8 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.NRGBA64)) : stdgo.Ref<stdgo.image.Image.NRGBA64>);
    }
/**
    // NewAlpha returns a new Alpha image with the given bounds.
**/
function newAlpha(_r:Rectangle):stdgo.Ref<Alpha> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((1 : stdgo.GoInt), _r?.__copy__(), ("Alpha" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (1 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.Alpha)) : stdgo.Ref<stdgo.image.Image.Alpha>);
    }
/**
    // NewAlpha16 returns a new Alpha16 image with the given bounds.
**/
function newAlpha16(_r:Rectangle):stdgo.Ref<Alpha16> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((2 : stdgo.GoInt), _r?.__copy__(), ("Alpha16" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (2 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.Alpha16)) : stdgo.Ref<stdgo.image.Image.Alpha16>);
    }
/**
    // NewGray returns a new Gray image with the given bounds.
**/
function newGray(_r:Rectangle):stdgo.Ref<Gray> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((1 : stdgo.GoInt), _r?.__copy__(), ("Gray" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (1 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.Gray)) : stdgo.Ref<stdgo.image.Image.Gray>);
    }
/**
    // NewGray16 returns a new Gray16 image with the given bounds.
**/
function newGray16(_r:Rectangle):stdgo.Ref<Gray16> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((2 : stdgo.GoInt), _r?.__copy__(), ("Gray16" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (2 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.Gray16)) : stdgo.Ref<stdgo.image.Image.Gray16>);
    }
/**
    // NewCMYK returns a new CMYK image with the given bounds.
**/
function newCMYK(_r:Rectangle):stdgo.Ref<CMYK> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((4 : stdgo.GoInt), _r?.__copy__(), ("CMYK" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (4 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__() } : stdgo.image.Image.CMYK)) : stdgo.Ref<stdgo.image.Image.CMYK>);
    }
/**
    // NewPaletted returns a new Paletted image with the given width, height and
    // palette.
**/
function newPaletted(_r:Rectangle, _p:stdgo.image.color.Color.Palette):stdgo.Ref<Paletted> {
        return (stdgo.Go.setRef(({ pix : new stdgo.Slice<stdgo.GoUInt8>((_pixelBufferLength((1 : stdgo.GoInt), _r?.__copy__(), ("Paletted" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__(), stride : (1 : stdgo.GoInt) * _r.dx(), rect : _r?.__copy__(), palette : _p } : stdgo.image.Image.Paletted)) : stdgo.Ref<stdgo.image.Image.Paletted>);
    }
function _cmp(_cm:stdgo.image.color.Color.Model, _c0:stdgo.image.color.Color.Color, _c1:stdgo.image.color.Color.Color):Bool {
        var __tmp__ = _cm.convert(_c0).rgba(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, _a0:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = _cm.convert(_c1).rgba(), _r1:stdgo.GoUInt32 = __tmp__._0, _g1:stdgo.GoUInt32 = __tmp__._1, _b1:stdgo.GoUInt32 = __tmp__._2, _a1:stdgo.GoUInt32 = __tmp__._3;
        return (((_r0 == _r1) && (_g0 == _g1)) && (_b0 == _b1)) && (_a0 == _a1);
    }
function testImage(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _tc in _testImages) {
            var _m:stdgo.image.Image.T_image = _tc._image();
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
function testNewXxxBadRectangle(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _call:(stdgo.image.Image.Rectangle -> Void, stdgo.image.Image.Rectangle) -> Bool = function(_f:Rectangle -> Void, _r:Rectangle):Bool {
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
        var _testCases = (new stdgo.Slice<T__struct_1>(
12,
12,
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
            newPaletted(_r?.__copy__(), (new stdgo.Slice<stdgo.image.color.Color.Color>(2, 2, stdgo.Go.asInterface(stdgo.image.color.Color.black), stdgo.Go.asInterface(stdgo.image.color.Color.white)) : stdgo.image.color.Color.Palette));
        } } : T__struct_1),
({ _name : ("YCbCr" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newYCbCr(_r?.__copy__(), (1 : stdgo.image.Image.YCbCrSubsampleRatio));
        } } : T__struct_1),
({ _name : ("NYCbCrA" : stdgo.GoString), _f : function(_r:Rectangle):Void {
            newNYCbCrA(_r?.__copy__(), (0 : stdgo.image.Image.YCbCrSubsampleRatio));
        } } : T__struct_1)) : stdgo.Slice<T__struct_1>);
        for (__0 => _tc in _testCases) {
            for (__1 => _negDx in (new stdgo.Slice<Bool>(2, 2, false, true) : stdgo.Slice<Bool>)) {
                for (__2 => _negDy in (new stdgo.Slice<Bool>(2, 2, false, true) : stdgo.Slice<Bool>)) {
                    var _r:stdgo.image.Image.Rectangle = ({ min : (new stdgo.image.Image.Point((15 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.image.Image.Point), max : (new stdgo.image.Image.Point((16 : stdgo.GoInt), (29 : stdgo.GoInt)) : stdgo.image.Image.Point) } : stdgo.image.Image.Rectangle);
                    if (_negDx) {
                        _r.max.x = (14 : stdgo.GoInt);
                    };
                    if (_negDy) {
                        _r.max.y = (27 : stdgo.GoInt);
                    };
                    var _got:Bool = _call(_tc._f, _r?.__copy__());
                    var _want:Bool = !_negDx && !_negDy;
                    if (_got != (_want)) {
                        _t.errorf(("New%s: negDx=%t, negDy=%t: got %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), stdgo.Go.toInterface(_negDx), stdgo.Go.toInterface(_negDy), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
            {
                var _zeroAsUint:stdgo.GoUInt = (0u32 : stdgo.GoUInt);
                var _maxUint:stdgo.GoUInt = _zeroAsUint - (1u32 : stdgo.GoUInt);
                var _maxInt:stdgo.GoInt = (_maxUint / (2u32 : stdgo.GoUInt) : stdgo.GoInt);
                var _got:Bool = _call(_tc._f, ({ min : (new stdgo.image.Image.Point((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.image.Image.Point), max : (new stdgo.image.Image.Point(_maxInt, _maxInt) : stdgo.image.Image.Point) } : stdgo.image.Image.Rectangle));
                if (_got) {
                    _t.errorf(("New%s: overflow: got ok, want !ok" : stdgo.GoString), stdgo.Go.toInterface(_tc._name));
                };
            };
        };
    }
function test16BitsPerColorChannel(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _testColorModel = (new stdgo.Slice<stdgo.image.color.Color.Model>(4, 4, stdgo.image.color.Color.rgba64model, stdgo.image.color.Color.nrgba64model, stdgo.image.color.Color.alpha16Model, stdgo.image.color.Color.gray16Model) : stdgo.Slice<stdgo.image.color.Color.Model>);
        for (__0 => _cm in _testColorModel) {
            var _c:stdgo.image.color.Color.Color = _cm.convert(stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA64((4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64)));
            var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, __3:stdgo.GoUInt32 = __tmp__._3;
            if (_r != ((4660u32 : stdgo.GoUInt32))) {
                _t.errorf(("%T: want red value 0x%04x got 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((4660 : stdgo.GoInt)), stdgo.Go.toInterface(_r));
                continue;
            };
        };
        var _testImage = (new stdgo.Slice<stdgo.image.Image.T_image>(4, 4, stdgo.Go.asInterface(newRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(newNRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(newAlpha16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(newGray16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()))) : stdgo.Slice<stdgo.image.Image.T_image>);
        for (__12 => _m in _testImage) {
            _m.set((1 : stdgo.GoInt), (2 : stdgo.GoInt), stdgo.Go.asInterface((new stdgo.image.color.Color.NRGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (4951 : stdgo.GoUInt16)) : stdgo.image.color.Color.NRGBA64)));
            var __tmp__ = _m.at((1 : stdgo.GoInt), (2 : stdgo.GoInt)).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, __13:stdgo.GoUInt32 = __tmp__._1, __14:stdgo.GoUInt32 = __tmp__._2, __15:stdgo.GoUInt32 = __tmp__._3;
            if (_r != ((4951u32 : stdgo.GoUInt32))) {
                _t.errorf(("%T: want red value 0x%04x got 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((4951 : stdgo.GoInt)), stdgo.Go.toInterface(_r));
                continue;
            };
        };
    }
function testRGBA64Image(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _memset = function(_s:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoByte):Void {
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = _v;
            };
        };
        var _r:stdgo.image.Image.Rectangle = rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt))?.__copy__();
        var _testCases = (new stdgo.Slice<stdgo.image.Image.Image>(
14,
14,
stdgo.Go.asInterface(newAlpha(_r?.__copy__())),
stdgo.Go.asInterface(newAlpha16(_r?.__copy__())),
stdgo.Go.asInterface(newCMYK(_r?.__copy__())),
stdgo.Go.asInterface(newGray(_r?.__copy__())),
stdgo.Go.asInterface(newGray16(_r?.__copy__())),
stdgo.Go.asInterface(newNRGBA(_r?.__copy__())),
stdgo.Go.asInterface(newNRGBA64(_r?.__copy__())),
stdgo.Go.asInterface(newNYCbCrA(_r?.__copy__(), (0 : stdgo.image.Image.YCbCrSubsampleRatio))),
stdgo.Go.asInterface(newPaletted(_r?.__copy__(), stdgo.image.color.palette.Palette.plan9)),
stdgo.Go.asInterface(newRGBA(_r?.__copy__())),
stdgo.Go.asInterface(newRGBA64(_r?.__copy__())),
stdgo.Go.asInterface(newUniform(stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA64() : stdgo.image.color.Color.RGBA64)))),
stdgo.Go.asInterface(newYCbCr(_r?.__copy__(), (0 : stdgo.image.Image.YCbCrSubsampleRatio))),
stdgo.Go.asInterface(_r)) : stdgo.Slice<stdgo.image.Image.Image>);
        for (__0 => _tc in _testCases) {
            {
                final __type__ = _tc;
                if (stdgo.Go.typeEquals((__type__ : T__interface_0))) {
                    var _tc:stdgo.image.Image.T__interface_0 = __type__ == null ? (null : stdgo.image.Image.T__interface_0) : cast __type__;
                    _tc.setRGBA64((1 : stdgo.GoInt), (1 : stdgo.GoInt), (new stdgo.image.color.Color.RGBA64((32767 : stdgo.GoUInt16), (16383 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<NYCbCrA>))) {
                    var _tc:stdgo.Ref<stdgo.image.Image.NYCbCrA> = __type__ == null ? (null : stdgo.Ref<stdgo.image.Image.NYCbCrA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.image.Image.NYCbCrA>) : __type__ == null ? (null : stdgo.Ref<stdgo.image.Image.NYCbCrA>) : __type__.__underlying__().value;
                    _memset(_tc.ycbCr.y, (119 : stdgo.GoUInt8));
                    _memset(_tc.ycbCr.cb, (136 : stdgo.GoUInt8));
                    _memset(_tc.ycbCr.cr, (153 : stdgo.GoUInt8));
                    _memset(_tc.a, (170 : stdgo.GoUInt8));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Uniform>))) {
                    var _tc:stdgo.Ref<stdgo.image.Image.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo.image.Image.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.image.Image.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo.image.Image.Uniform>) : __type__.__underlying__().value;
                    _tc.c = stdgo.Go.asInterface((new stdgo.image.color.Color.RGBA64((32767 : stdgo.GoUInt16), (16383 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<YCbCr>))) {
                    var _tc:stdgo.Ref<stdgo.image.Image.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo.image.Image.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.image.Image.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo.image.Image.YCbCr>) : __type__.__underlying__().value;
                    _memset(_tc.y, (119 : stdgo.GoUInt8));
                    _memset(_tc.cb, (136 : stdgo.GoUInt8));
                    _memset(_tc.cr, (153 : stdgo.GoUInt8));
                } else if (stdgo.Go.typeEquals((__type__ : Rectangle))) {
                    var _tc:stdgo.image.Image.Rectangle = __type__ == null ? ({} : stdgo.image.Image.Rectangle) : __type__.__underlying__() == null ? ({} : stdgo.image.Image.Rectangle) : __type__ == null ? ({} : stdgo.image.Image.Rectangle) : __type__.__underlying__().value;
                } else {
                    var _tc:stdgo.image.Image.Image = __type__ == null ? (null : stdgo.image.Image.Image) : cast __type__;
                    _t.errorf(("could not initialize pixels for %T" : stdgo.GoString), stdgo.Go.toInterface(_tc));
                    continue;
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tc) : RGBA64Image)) : RGBA64Image), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.image.Image.RGBA64Image), _1 : false };
            }, _rgba64Image = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("%T is not an RGBA64Image" : stdgo.GoString), stdgo.Go.toInterface(_tc));
                continue;
            };
            var _got:stdgo.image.color.Color.RGBA64 = _rgba64Image.rgba64at((1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__();
            var __tmp__ = _tc.at((1 : stdgo.GoInt), (1 : stdgo.GoInt)).rgba(), _wantR:stdgo.GoUInt32 = __tmp__._0, _wantG:stdgo.GoUInt32 = __tmp__._1, _wantB:stdgo.GoUInt32 = __tmp__._2, _wantA:stdgo.GoUInt32 = __tmp__._3;
            if (((((_got.r : stdgo.GoUInt32) != _wantR) || ((_got.g : stdgo.GoUInt32) != _wantG)) || ((_got.b : stdgo.GoUInt32) != _wantB)) || ((_got.a : stdgo.GoUInt32) != _wantA)) {
                _t.errorf(("%T:\ngot  (0x%04X, 0x%04X, 0x%04X, 0x%04X)\nwant (0x%04X, 0x%04X, 0x%04X, 0x%04X)" : stdgo.GoString), stdgo.Go.toInterface(_tc), stdgo.Go.toInterface(_got.r), stdgo.Go.toInterface(_got.g), stdgo.Go.toInterface(_got.b), stdgo.Go.toInterface(_got.a), stdgo.Go.toInterface(_wantR), stdgo.Go.toInterface(_wantG), stdgo.Go.toInterface(_wantB), stdgo.Go.toInterface(_wantA));
                continue;
            };
        };
    }
function benchmarkAt(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _tc in _testImages) {
            _b.run(_tc._name?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                var _m:stdgo.image.Image.T_image = _tc._image();
                _b.reportAllocs();
                _b.resetTimer();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        _m.at((4 : stdgo.GoInt), (5 : stdgo.GoInt));
                    });
                };
            });
        };
    }
function benchmarkSet(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _c:stdgo.image.color.Color.Gray = (new stdgo.image.color.Color.Gray((255 : stdgo.GoUInt8)) : stdgo.image.color.Color.Gray);
        for (__0 => _tc in _testImages) {
            _b.run(_tc._name?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                var _m:stdgo.image.Image.T_image = _tc._image();
                _b.reportAllocs();
                _b.resetTimer();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        _m.set((4 : stdgo.GoInt), (5 : stdgo.GoInt), stdgo.Go.asInterface(_c));
                    });
                };
            });
        };
    }
function benchmarkRGBAAt(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.rgbaat((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkRGBASetRGBA(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo.image.color.Color.RGBA = (new stdgo.image.color.Color.RGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (19 : stdgo.GoUInt8)) : stdgo.image.color.Color.RGBA);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.setRGBA((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkRGBA64At(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.rgba64at((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkRGBA64SetRGBA64(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo.image.color.Color.RGBA64 = (new stdgo.image.color.Color.RGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (4951 : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.setRGBA64((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkNRGBAAt(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newNRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.nrgbaat((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkNRGBASetNRGBA(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newNRGBA(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo.image.color.Color.NRGBA = (new stdgo.image.color.Color.NRGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (19 : stdgo.GoUInt8)) : stdgo.image.color.Color.NRGBA);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.setNRGBA((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkNRGBA64At(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newNRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.nrgba64at((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkNRGBA64SetNRGBA64(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newNRGBA64(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo.image.color.Color.NRGBA64 = (new stdgo.image.color.Color.NRGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (4951 : stdgo.GoUInt16)) : stdgo.image.color.Color.NRGBA64);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.setNRGBA64((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkAlphaAt(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newAlpha(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.alphaAt((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkAlphaSetAlpha(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newAlpha(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo.image.color.Color.Alpha = (new stdgo.image.color.Color.Alpha((19 : stdgo.GoUInt8)) : stdgo.image.color.Color.Alpha);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.setAlpha((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkAlpha16At(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newAlpha16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.alpha16At((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkAlphaSetAlpha16(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newAlpha16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo.image.color.Color.Alpha16 = (new stdgo.image.color.Color.Alpha16((19 : stdgo.GoUInt16)) : stdgo.image.color.Color.Alpha16);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.setAlpha16((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkGrayAt(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newGray(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.grayAt((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkGraySetGray(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newGray(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo.image.color.Color.Gray = (new stdgo.image.color.Color.Gray((19 : stdgo.GoUInt8)) : stdgo.image.color.Color.Gray);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.setGray((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
function benchmarkGray16At(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newGray16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.gray16At((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
function benchmarkGraySetGray16(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _m = newGray16(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c:stdgo.image.color.Color.Gray16 = (new stdgo.image.color.Color.Gray16((19 : stdgo.GoUInt16)) : stdgo.image.color.Color.Gray16);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _m.setGray16((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }
/**
    // NewUniform returns a new Uniform image of the given color.
**/
function newUniform(_c:stdgo.image.color.Color.Color):stdgo.Ref<Uniform> {
        return (stdgo.Go.setRef((new stdgo.image.Image.Uniform(_c) : stdgo.image.Image.Uniform)) : stdgo.Ref<stdgo.image.Image.Uniform>);
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
            if (__value__ == ((1 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                _cw = ((_r.max.x + (1 : stdgo.GoInt)) / (2 : stdgo.GoInt)) - (_r.min.x / (2 : stdgo.GoInt));
                _ch = _h;
            } else if (__value__ == ((2 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                _cw = ((_r.max.x + (1 : stdgo.GoInt)) / (2 : stdgo.GoInt)) - (_r.min.x / (2 : stdgo.GoInt));
                _ch = ((_r.max.y + (1 : stdgo.GoInt)) / (2 : stdgo.GoInt)) - (_r.min.y / (2 : stdgo.GoInt));
            } else if (__value__ == ((3 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                _cw = _w;
                _ch = ((_r.max.y + (1 : stdgo.GoInt)) / (2 : stdgo.GoInt)) - (_r.min.y / (2 : stdgo.GoInt));
            } else if (__value__ == ((4 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                _cw = ((_r.max.x + (3 : stdgo.GoInt)) / (4 : stdgo.GoInt)) - (_r.min.x / (4 : stdgo.GoInt));
                _ch = _h;
            } else if (__value__ == ((5 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                _cw = ((_r.max.x + (3 : stdgo.GoInt)) / (4 : stdgo.GoInt)) - (_r.min.x / (4 : stdgo.GoInt));
                _ch = ((_r.max.y + (1 : stdgo.GoInt)) / (2 : stdgo.GoInt)) - (_r.min.y / (2 : stdgo.GoInt));
            } else {
                _cw = _w;
                _ch = _h;
            };
        };
        return { _0 : _w, _1 : _h, _2 : _cw, _3 : _ch };
    }
/**
    // NewYCbCr returns a new YCbCr image with the given bounds and subsample
    // ratio.
**/
function newYCbCr(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):stdgo.Ref<YCbCr> {
        var __tmp__ = _yCbCrSize(_r?.__copy__(), _subsampleRatio), _w:stdgo.GoInt = __tmp__._0, _h:stdgo.GoInt = __tmp__._1, _cw:stdgo.GoInt = __tmp__._2, _ch:stdgo.GoInt = __tmp__._3;
        var _totalLength:stdgo.GoInt = _add2NonNeg(_mul3NonNeg((1 : stdgo.GoInt), _w, _h), _mul3NonNeg((2 : stdgo.GoInt), _cw, _ch));
        if (_totalLength < (0 : stdgo.GoInt)) {
            throw stdgo.Go.toInterface(("image: NewYCbCr Rectangle has huge or negative dimensions" : stdgo.GoString));
        };
        var _i0:stdgo.GoInt = (_w * _h) + (((0 : stdgo.GoInt) * _cw) * _ch);
        var _i1:stdgo.GoInt = (_w * _h) + (((1 : stdgo.GoInt) * _cw) * _ch);
        var _i2:stdgo.GoInt = (_w * _h) + (((2 : stdgo.GoInt) * _cw) * _ch);
        var _b = new stdgo.Slice<stdgo.GoUInt8>((_i2 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        return (stdgo.Go.setRef(({ y : (_b.__slice__(0, _i0, _i0) : stdgo.Slice<stdgo.GoUInt8>), cb : (_b.__slice__(_i0, _i1, _i1) : stdgo.Slice<stdgo.GoUInt8>), cr : (_b.__slice__(_i1, _i2, _i2) : stdgo.Slice<stdgo.GoUInt8>), ystride : _w, cstride : _cw, subsampleRatio : _subsampleRatio, rect : _r?.__copy__() } : stdgo.image.Image.YCbCr)) : stdgo.Ref<stdgo.image.Image.YCbCr>);
    }
/**
    // NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
    // ratio.
**/
function newNYCbCrA(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):stdgo.Ref<NYCbCrA> {
        var __tmp__ = _yCbCrSize(_r?.__copy__(), _subsampleRatio), _w:stdgo.GoInt = __tmp__._0, _h:stdgo.GoInt = __tmp__._1, _cw:stdgo.GoInt = __tmp__._2, _ch:stdgo.GoInt = __tmp__._3;
        var _totalLength:stdgo.GoInt = _add2NonNeg(_mul3NonNeg((2 : stdgo.GoInt), _w, _h), _mul3NonNeg((2 : stdgo.GoInt), _cw, _ch));
        if (_totalLength < (0 : stdgo.GoInt)) {
            throw stdgo.Go.toInterface(("image: NewNYCbCrA Rectangle has huge or negative dimension" : stdgo.GoString));
        };
        var _i0:stdgo.GoInt = (((1 : stdgo.GoInt) * _w) * _h) + (((0 : stdgo.GoInt) * _cw) * _ch);
        var _i1:stdgo.GoInt = (((1 : stdgo.GoInt) * _w) * _h) + (((1 : stdgo.GoInt) * _cw) * _ch);
        var _i2:stdgo.GoInt = (((1 : stdgo.GoInt) * _w) * _h) + (((2 : stdgo.GoInt) * _cw) * _ch);
        var _i3:stdgo.GoInt = (((2 : stdgo.GoInt) * _w) * _h) + (((2 : stdgo.GoInt) * _cw) * _ch);
        var _b = new stdgo.Slice<stdgo.GoUInt8>((_i3 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        return (stdgo.Go.setRef(({ ycbCr : ({ y : (_b.__slice__(0, _i0, _i0) : stdgo.Slice<stdgo.GoUInt8>), cb : (_b.__slice__(_i0, _i1, _i1) : stdgo.Slice<stdgo.GoUInt8>), cr : (_b.__slice__(_i1, _i2, _i2) : stdgo.Slice<stdgo.GoUInt8>), ystride : _w, cstride : _cw, subsampleRatio : _subsampleRatio, rect : _r?.__copy__() } : stdgo.image.Image.YCbCr), a : (_b.__slice__(_i2) : stdgo.Slice<stdgo.GoUInt8>), astride : _w } : stdgo.image.Image.NYCbCrA)) : stdgo.Ref<stdgo.image.Image.NYCbCrA>);
    }
function testYCbCr(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _rects = (new stdgo.Slice<stdgo.image.Image.Rectangle>(
20,
20,
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
rect((10 : stdgo.GoInt), (10 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__()) : stdgo.Slice<stdgo.image.Image.Rectangle>);
        var _subsampleRatios = (new stdgo.Slice<stdgo.image.Image.YCbCrSubsampleRatio>(6, 6, (0 : stdgo.image.Image.YCbCrSubsampleRatio), (1 : stdgo.image.Image.YCbCrSubsampleRatio), (2 : stdgo.image.Image.YCbCrSubsampleRatio), (3 : stdgo.image.Image.YCbCrSubsampleRatio), (4 : stdgo.image.Image.YCbCrSubsampleRatio), (5 : stdgo.image.Image.YCbCrSubsampleRatio)) : stdgo.Slice<stdgo.image.Image.YCbCrSubsampleRatio>);
        var _deltas = (new stdgo.Slice<stdgo.image.Image.Point>(4, 4, pt((0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(), pt((1000 : stdgo.GoInt), (1001 : stdgo.GoInt))?.__copy__(), pt((5001 : stdgo.GoInt), (-400 : stdgo.GoInt))?.__copy__(), pt((-701 : stdgo.GoInt), (-801 : stdgo.GoInt))?.__copy__()) : stdgo.Slice<stdgo.image.Image.Point>);
        for (__0 => _r in _rects) {
            for (__1 => _subsampleRatio in _subsampleRatios) {
                for (__2 => _delta in _deltas) {
                    _testYCbCr(_t, _r?.__copy__(), _subsampleRatio, _delta?.__copy__());
                };
            };
            if (stdgo.testing.Testing.short()) {
                break;
            };
        };
    }
function _testYCbCr(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio, _delta:Point):Void {
        var _r1:stdgo.image.Image.Rectangle = _r.add(_delta?.__copy__())?.__copy__();
        var _m = newYCbCr(_r1?.__copy__(), _subsampleRatio);
        if ((_m.y.length) > (10000 : stdgo.GoInt)) {
            _t.errorf(("r=%v, subsampleRatio=%v, delta=%v: image buffer is too large" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_subsampleRatio)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)));
            return;
        };
        {
            var _y:stdgo.GoInt = _r1.min.y;
            stdgo.Go.cfor(_y < _r1.max.y, _y++, {
                {
                    var _x:stdgo.GoInt = _r1.min.x;
                    stdgo.Go.cfor(_x < _r1.max.x, _x++, {
                        var _yi:stdgo.GoInt = _m.yoffset(_x, _y);
                        var _ci:stdgo.GoInt = _m.coffset(_x, _y);
                        _m.y[(_yi : stdgo.GoInt)] = (((16 : stdgo.GoInt) * _y) + _x : stdgo.GoUInt8);
                        _m.cb[(_ci : stdgo.GoInt)] = (_y + ((16 : stdgo.GoInt) * _x) : stdgo.GoUInt8);
                        _m.cr[(_ci : stdgo.GoInt)] = (_y + ((16 : stdgo.GoInt) * _x) : stdgo.GoUInt8);
                    });
                };
            });
        };
        {
            var _y0:stdgo.GoInt = _delta.y + (3 : stdgo.GoInt);
            stdgo.Go.cfor(_y0 < (_delta.y + (7 : stdgo.GoInt)), _y0++, {
                {
                    var _y1:stdgo.GoInt = _delta.y + (8 : stdgo.GoInt);
                    stdgo.Go.cfor(_y1 < (_delta.y + (13 : stdgo.GoInt)), _y1++, {
                        {
                            var _x0:stdgo.GoInt = _delta.x + (3 : stdgo.GoInt);
                            stdgo.Go.cfor(_x0 < (_delta.x + (7 : stdgo.GoInt)), _x0++, {
                                {
                                    var _x1:stdgo.GoInt = _delta.x + (8 : stdgo.GoInt);
                                    stdgo.Go.cfor(_x1 < (_delta.x + (13 : stdgo.GoInt)), _x1++, {
                                        var _subRect:stdgo.image.Image.Rectangle = rect(_x0, _y0, _x1, _y1)?.__copy__();
                                        var _sub = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(_subRect?.__copy__())) : stdgo.Ref<YCbCr>)) : stdgo.Ref<YCbCr>);
                                        {
                                            var _y:stdgo.GoInt = _sub.rect.min.y;
                                            stdgo.Go.cfor(_y < _sub.rect.max.y, _y++, {
                                                {
                                                    var _x:stdgo.GoInt = _sub.rect.min.x;
                                                    stdgo.Go.cfor(_x < _sub.rect.max.x, _x++, {
                                                        var _color0:stdgo.image.color.Color.YCbCr = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.at(_x, _y)) : stdgo.image.color.Color.YCbCr)) : stdgo.image.color.Color.YCbCr)?.__copy__();
                                                        var _color1:stdgo.image.color.Color.YCbCr = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_sub.at(_x, _y)) : stdgo.image.color.Color.YCbCr)) : stdgo.image.color.Color.YCbCr)?.__copy__();
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
function testYCbCrSlicesDontOverlap(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _m = newYCbCr(rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(), (2 : stdgo.image.Image.YCbCrSubsampleRatio));
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ("Y" : stdgo.GoString), ("Cb" : stdgo.GoString), ("Cr" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _slices = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, (_m.y.__slice__(0, _m.y.capacity) : stdgo.Slice<stdgo.GoUInt8>), (_m.cb.__slice__(0, _m.cb.capacity) : stdgo.Slice<stdgo.GoUInt8>), (_m.cr.__slice__(0, _m.cr.capacity) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _slice in _slices) {
            var _want:stdgo.GoUInt8 = ((10 : stdgo.GoInt) + _i : stdgo.GoUInt8);
            for (_j => _ in _slice) {
                _slice[(_j : stdgo.GoInt)] = _want;
            };
        };
        for (_i => _slice in _slices) {
            var _want:stdgo.GoUInt8 = ((10 : stdgo.GoInt) + _i : stdgo.GoUInt8);
            for (_j => _got in _slice) {
                if (_got != (_want)) {
                    _t.fatalf(("m.%s[%d]: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
class Point_asInterface {
    /**
        // Eq reports whether p and q are equal.
    **/
    @:keep
    public dynamic function eq(_q:Point):Bool return __self__.value.eq(_q);
    /**
        // Mod returns the point q in r such that p.X-q.X is a multiple of r's width
        // and p.Y-q.Y is a multiple of r's height.
    **/
    @:keep
    public dynamic function mod(_r:Rectangle):Point return __self__.value.mod(_r);
    /**
        // In reports whether p is in r.
    **/
    @:keep
    public dynamic function in_(_r:Rectangle):Bool return __self__.value.in_(_r);
    /**
        // Div returns the vector p/k.
    **/
    @:keep
    public dynamic function div(_k:stdgo.GoInt):Point return __self__.value.div(_k);
    /**
        // Mul returns the vector p*k.
    **/
    @:keep
    public dynamic function mul(_k:stdgo.GoInt):Point return __self__.value.mul(_k);
    /**
        // Sub returns the vector p-q.
    **/
    @:keep
    public dynamic function sub(_q:Point):Point return __self__.value.sub(_q);
    /**
        // Add returns the vector p+q.
    **/
    @:keep
    public dynamic function add(_q:Point):Point return __self__.value.add(_q);
    /**
        // String returns a string representation of p like "(3,4)".
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Point>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.Point_asInterface) class Point_static_extension {
    /**
        // Eq reports whether p and q are equal.
    **/
    @:keep
    static public function eq( _p:Point, _q:Point):Bool {
        @:recv var _p:Point = _p?.__copy__();
        return stdgo.Go.toInterface(_p) == stdgo.Go.toInterface(_q);
    }
    /**
        // Mod returns the point q in r such that p.X-q.X is a multiple of r's width
        // and p.Y-q.Y is a multiple of r's height.
    **/
    @:keep
    static public function mod( _p:Point, _r:Rectangle):Point {
        @:recv var _p:Point = _p?.__copy__();
        var __0:stdgo.GoInt = _r.dx(), __1:stdgo.GoInt = _r.dy(), _h:stdgo.GoInt = __1, _w:stdgo.GoInt = __0;
        _p = _p.sub(_r.min?.__copy__())?.__copy__();
        _p.x = _p.x % _w;
        if (_p.x < (0 : stdgo.GoInt)) {
            _p.x = _p.x + (_w);
        };
        _p.y = _p.y % _h;
        if (_p.y < (0 : stdgo.GoInt)) {
            _p.y = _p.y + (_h);
        };
        return _p.add(_r.min?.__copy__())?.__copy__();
    }
    /**
        // In reports whether p is in r.
    **/
    @:keep
    static public function in_( _p:Point, _r:Rectangle):Bool {
        @:recv var _p:Point = _p?.__copy__();
        return (((_r.min.x <= _p.x) && (_p.x < _r.max.x)) && (_r.min.y <= _p.y)) && (_p.y < _r.max.y);
    }
    /**
        // Div returns the vector p/k.
    **/
    @:keep
    static public function div( _p:Point, _k:stdgo.GoInt):Point {
        @:recv var _p:Point = _p?.__copy__();
        return (new stdgo.image.Image.Point(_p.x / _k, _p.y / _k) : stdgo.image.Image.Point);
    }
    /**
        // Mul returns the vector p*k.
    **/
    @:keep
    static public function mul( _p:Point, _k:stdgo.GoInt):Point {
        @:recv var _p:Point = _p?.__copy__();
        return (new stdgo.image.Image.Point(_p.x * _k, _p.y * _k) : stdgo.image.Image.Point);
    }
    /**
        // Sub returns the vector p-q.
    **/
    @:keep
    static public function sub( _p:Point, _q:Point):Point {
        @:recv var _p:Point = _p?.__copy__();
        return (new stdgo.image.Image.Point(_p.x - _q.x, _p.y - _q.y) : stdgo.image.Image.Point);
    }
    /**
        // Add returns the vector p+q.
    **/
    @:keep
    static public function add( _p:Point, _q:Point):Point {
        @:recv var _p:Point = _p?.__copy__();
        return (new stdgo.image.Image.Point(_p.x + _q.x, _p.y + _q.y) : stdgo.image.Image.Point);
    }
    /**
        // String returns a string representation of p like "(3,4)".
    **/
    @:keep
    static public function string( _p:Point):stdgo.GoString {
        @:recv var _p:Point = _p?.__copy__();
        return ("(" : stdgo.GoString) + stdgo.strconv.Strconv.itoa(_p.x)?.__copy__() + ("," : stdgo.GoString)?.__copy__() + stdgo.strconv.Strconv.itoa(_p.y)?.__copy__() + (")" : stdgo.GoString)?.__copy__()?.__copy__();
    }
}
class Rectangle_asInterface {
    /**
        // ColorModel implements the Image interface.
    **/
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    /**
        // Bounds implements the Image interface.
    **/
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    /**
        // RGBA64At implements the RGBA64Image interface.
    **/
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    /**
        // At implements the Image interface.
    **/
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    /**
        // Canon returns the canonical version of r. The returned rectangle has minimum
        // and maximum coordinates swapped if necessary so that it is well-formed.
    **/
    @:keep
    public dynamic function canon():Rectangle return __self__.value.canon();
    /**
        // In reports whether every point in r is in s.
    **/
    @:keep
    public dynamic function in_(_s:Rectangle):Bool return __self__.value.in_(_s);
    /**
        // Overlaps reports whether r and s have a non-empty intersection.
    **/
    @:keep
    public dynamic function overlaps(_s:Rectangle):Bool return __self__.value.overlaps(_s);
    /**
        // Eq reports whether r and s contain the same set of points. All empty
        // rectangles are considered equal.
    **/
    @:keep
    public dynamic function eq(_s:Rectangle):Bool return __self__.value.eq(_s);
    /**
        // Empty reports whether the rectangle contains no points.
    **/
    @:keep
    public dynamic function empty():Bool return __self__.value.empty();
    /**
        // Union returns the smallest rectangle that contains both r and s.
    **/
    @:keep
    public dynamic function union(_s:Rectangle):Rectangle return __self__.value.union(_s);
    /**
        // Intersect returns the largest rectangle contained by both r and s. If the
        // two rectangles do not overlap then the zero rectangle will be returned.
    **/
    @:keep
    public dynamic function intersect(_s:Rectangle):Rectangle return __self__.value.intersect(_s);
    /**
        // Inset returns the rectangle r inset by n, which may be negative. If either
        // of r's dimensions is less than 2*n then an empty rectangle near the center
        // of r will be returned.
    **/
    @:keep
    public dynamic function inset(_n:stdgo.GoInt):Rectangle return __self__.value.inset(_n);
    /**
        // Sub returns the rectangle r translated by -p.
    **/
    @:keep
    public dynamic function sub(_p:Point):Rectangle return __self__.value.sub(_p);
    /**
        // Add returns the rectangle r translated by p.
    **/
    @:keep
    public dynamic function add(_p:Point):Rectangle return __self__.value.add(_p);
    /**
        // Size returns r's width and height.
    **/
    @:keep
    public dynamic function size():Point return __self__.value.size();
    /**
        // Dy returns r's height.
    **/
    @:keep
    public dynamic function dy():stdgo.GoInt return __self__.value.dy();
    /**
        // Dx returns r's width.
    **/
    @:keep
    public dynamic function dx():stdgo.GoInt return __self__.value.dx();
    /**
        // String returns a string representation of r like "(3,4)-(6,5)".
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Rectangle>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.Rectangle_asInterface) class Rectangle_static_extension {
    /**
        // ColorModel implements the Image interface.
    **/
    @:keep
    static public function colorModel( _r:Rectangle):stdgo.image.color.Color.Model {
        @:recv var _r:Rectangle = _r?.__copy__();
        return stdgo.image.color.Color.alpha16Model;
    }
    /**
        // Bounds implements the Image interface.
    **/
    @:keep
    static public function bounds( _r:Rectangle):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        return _r?.__copy__();
    }
    /**
        // RGBA64At implements the RGBA64Image interface.
    **/
    @:keep
    static public function rgba64at( _r:Rectangle, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _r:Rectangle = _r?.__copy__();
        if ((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_r?.__copy__())) {
            return (new stdgo.image.color.Color.RGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
        };
        return (new stdgo.image.color.Color.RGBA64() : stdgo.image.color.Color.RGBA64);
    }
    /**
        // At implements the Image interface.
    **/
    @:keep
    static public function at( _r:Rectangle, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _r:Rectangle = _r?.__copy__();
        if ((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_r?.__copy__())) {
            return stdgo.Go.asInterface(stdgo.image.color.Color.opaque);
        };
        return stdgo.Go.asInterface(stdgo.image.color.Color.transparent);
    }
    /**
        // Canon returns the canonical version of r. The returned rectangle has minimum
        // and maximum coordinates swapped if necessary so that it is well-formed.
    **/
    @:keep
    static public function canon( _r:Rectangle):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        if (_r.max.x < _r.min.x) {
            {
                final __tmp__0 = _r.max.x;
                final __tmp__1 = _r.min.x;
                _r.min.x = __tmp__0;
                _r.max.x = __tmp__1;
            };
        };
        if (_r.max.y < _r.min.y) {
            {
                final __tmp__0 = _r.max.y;
                final __tmp__1 = _r.min.y;
                _r.min.y = __tmp__0;
                _r.max.y = __tmp__1;
            };
        };
        return _r?.__copy__();
    }
    /**
        // In reports whether every point in r is in s.
    **/
    @:keep
    static public function in_( _r:Rectangle, _s:Rectangle):Bool {
        @:recv var _r:Rectangle = _r?.__copy__();
        if (_r.empty()) {
            return true;
        };
        return (((_s.min.x <= _r.min.x) && (_r.max.x <= _s.max.x)) && (_s.min.y <= _r.min.y)) && (_r.max.y <= _s.max.y);
    }
    /**
        // Overlaps reports whether r and s have a non-empty intersection.
    **/
    @:keep
    static public function overlaps( _r:Rectangle, _s:Rectangle):Bool {
        @:recv var _r:Rectangle = _r?.__copy__();
        return ((((!_r.empty() && !_s.empty()) && (_r.min.x < _s.max.x)) && (_s.min.x < _r.max.x)) && (_r.min.y < _s.max.y)) && (_s.min.y < _r.max.y);
    }
    /**
        // Eq reports whether r and s contain the same set of points. All empty
        // rectangles are considered equal.
    **/
    @:keep
    static public function eq( _r:Rectangle, _s:Rectangle):Bool {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (stdgo.Go.toInterface(_r) == stdgo.Go.toInterface(_s)) || (_r.empty() && _s.empty());
    }
    /**
        // Empty reports whether the rectangle contains no points.
    **/
    @:keep
    static public function empty( _r:Rectangle):Bool {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (_r.min.x >= _r.max.x) || (_r.min.y >= _r.max.y);
    }
    /**
        // Union returns the smallest rectangle that contains both r and s.
    **/
    @:keep
    static public function union( _r:Rectangle, _s:Rectangle):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        if (_r.empty()) {
            return _s?.__copy__();
        };
        if (_s.empty()) {
            return _r?.__copy__();
        };
        if (_r.min.x > _s.min.x) {
            _r.min.x = _s.min.x;
        };
        if (_r.min.y > _s.min.y) {
            _r.min.y = _s.min.y;
        };
        if (_r.max.x < _s.max.x) {
            _r.max.x = _s.max.x;
        };
        if (_r.max.y < _s.max.y) {
            _r.max.y = _s.max.y;
        };
        return _r?.__copy__();
    }
    /**
        // Intersect returns the largest rectangle contained by both r and s. If the
        // two rectangles do not overlap then the zero rectangle will be returned.
    **/
    @:keep
    static public function intersect( _r:Rectangle, _s:Rectangle):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        if (_r.min.x < _s.min.x) {
            _r.min.x = _s.min.x;
        };
        if (_r.min.y < _s.min.y) {
            _r.min.y = _s.min.y;
        };
        if (_r.max.x > _s.max.x) {
            _r.max.x = _s.max.x;
        };
        if (_r.max.y > _s.max.y) {
            _r.max.y = _s.max.y;
        };
        if (_r.empty()) {
            return zr?.__copy__();
        };
        return _r?.__copy__();
    }
    /**
        // Inset returns the rectangle r inset by n, which may be negative. If either
        // of r's dimensions is less than 2*n then an empty rectangle near the center
        // of r will be returned.
    **/
    @:keep
    static public function inset( _r:Rectangle, _n:stdgo.GoInt):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        if (_r.dx() < ((2 : stdgo.GoInt) * _n)) {
            _r.min.x = (_r.min.x + _r.max.x) / (2 : stdgo.GoInt);
            _r.max.x = _r.min.x;
        } else {
            _r.min.x = _r.min.x + (_n);
            _r.max.x = _r.max.x - (_n);
        };
        if (_r.dy() < ((2 : stdgo.GoInt) * _n)) {
            _r.min.y = (_r.min.y + _r.max.y) / (2 : stdgo.GoInt);
            _r.max.y = _r.min.y;
        } else {
            _r.min.y = _r.min.y + (_n);
            _r.max.y = _r.max.y - (_n);
        };
        return _r?.__copy__();
    }
    /**
        // Sub returns the rectangle r translated by -p.
    **/
    @:keep
    static public function sub( _r:Rectangle, _p:Point):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (new stdgo.image.Image.Rectangle((new stdgo.image.Image.Point(_r.min.x - _p.x, _r.min.y - _p.y) : stdgo.image.Image.Point), (new stdgo.image.Image.Point(_r.max.x - _p.x, _r.max.y - _p.y) : stdgo.image.Image.Point)) : stdgo.image.Image.Rectangle);
    }
    /**
        // Add returns the rectangle r translated by p.
    **/
    @:keep
    static public function add( _r:Rectangle, _p:Point):Rectangle {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (new stdgo.image.Image.Rectangle((new stdgo.image.Image.Point(_r.min.x + _p.x, _r.min.y + _p.y) : stdgo.image.Image.Point), (new stdgo.image.Image.Point(_r.max.x + _p.x, _r.max.y + _p.y) : stdgo.image.Image.Point)) : stdgo.image.Image.Rectangle);
    }
    /**
        // Size returns r's width and height.
    **/
    @:keep
    static public function size( _r:Rectangle):Point {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (new stdgo.image.Image.Point(_r.max.x - _r.min.x, _r.max.y - _r.min.y) : stdgo.image.Image.Point);
    }
    /**
        // Dy returns r's height.
    **/
    @:keep
    static public function dy( _r:Rectangle):stdgo.GoInt {
        @:recv var _r:Rectangle = _r?.__copy__();
        return _r.max.y - _r.min.y;
    }
    /**
        // Dx returns r's width.
    **/
    @:keep
    static public function dx( _r:Rectangle):stdgo.GoInt {
        @:recv var _r:Rectangle = _r?.__copy__();
        return _r.max.x - _r.min.x;
    }
    /**
        // String returns a string representation of r like "(3,4)-(6,5)".
    **/
    @:keep
    static public function string( _r:Rectangle):stdgo.GoString {
        @:recv var _r:Rectangle = _r?.__copy__();
        return (_r.min.string() : stdgo.GoString) + ("-" : stdgo.GoString)?.__copy__() + (_r.max.string() : stdgo.GoString)?.__copy__()?.__copy__();
    }
}
class RGBA_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setRGBA(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA):Void __self__.value.setRGBA(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function rgbaat(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA return __self__.value.rgbaat(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RGBA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.RGBA_asInterface) class RGBA_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<RGBA>):Bool {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (3 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx() * (4 : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor(_y < _p.rect.max.y, _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor(_i < _i1, _i = _i + ((4 : stdgo.GoInt)), {
                        if (_p.pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = _i0 + (_p.stride);
                _i1 = _i1 + (_p.stride);
            });
        };
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<RGBA>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.RGBA() : stdgo.image.Image.RGBA)) : stdgo.Ref<stdgo.image.Image.RGBA>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.RGBA)) : stdgo.Ref<stdgo.image.Image.RGBA>));
    }
    @:keep
    static public function setRGBA( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA):Void {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c.r;
        _s[(1 : stdgo.GoInt)] = _c.g;
        _s[(2 : stdgo.GoInt)] = _c.b;
        _s[(3 : stdgo.GoInt)] = _c.a;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = (_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = (_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo.image.color.Color.RGBA = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.rgbamodel.convert(_c)) : stdgo.image.color.Color.RGBA)) : stdgo.image.color.Color.RGBA)?.__copy__();
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.r;
        _s[(1 : stdgo.GoInt)] = _c1.g;
        _s[(2 : stdgo.GoInt)] = _c1.b;
        _s[(3 : stdgo.GoInt)] = _c1.a;
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (4 : stdgo.GoInt));
    }
    @:keep
    static public function rgbaat( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.RGBA() : stdgo.image.color.Color.RGBA);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo.image.color.Color.RGBA(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]) : stdgo.image.color.Color.RGBA);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.RGBA64() : stdgo.image.color.Color.RGBA64);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _r:stdgo.GoUInt16 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _g:stdgo.GoUInt16 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _b:stdgo.GoUInt16 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _a:stdgo.GoUInt16 = (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16);
        return (new stdgo.image.color.Color.RGBA64((_r << (8i64 : stdgo.GoUInt64)) | _r, (_g << (8i64 : stdgo.GoUInt64)) | _g, (_b << (8i64 : stdgo.GoUInt64)) | _b, (_a << (8i64 : stdgo.GoUInt64)) | _a) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        return stdgo.Go.asInterface(_p.rgbaat(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<RGBA>):Rectangle {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<RGBA>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<RGBA> = _p;
        return stdgo.image.color.Color.rgbamodel;
    }
}
class RGBA64_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RGBA64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.RGBA64_asInterface) class RGBA64_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<RGBA64>):Bool {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (6 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx() * (8 : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor(_y < _p.rect.max.y, _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor(_i < _i1, _i = _i + ((8 : stdgo.GoInt)), {
                        if ((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = _i0 + (_p.stride);
                _i1 = _i1 + (_p.stride);
            });
        };
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<RGBA64>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.RGBA64() : stdgo.image.Image.RGBA64)) : stdgo.Ref<stdgo.image.Image.RGBA64>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.RGBA64)) : stdgo.Ref<stdgo.image.Image.RGBA64>));
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (8 : stdgo.GoInt), _i + (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = (_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = (_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = (_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = (_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo.image.color.Color.RGBA64 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.rgba64model.convert(_c)) : stdgo.image.color.Color.RGBA64)) : stdgo.image.color.Color.RGBA64)?.__copy__();
        var _s = (_p.pix.__slice__(_i, _i + (8 : stdgo.GoInt), _i + (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = (_c1.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c1.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = (_c1.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c1.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = (_c1.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c1.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = (_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (8 : stdgo.GoInt));
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.RGBA64() : stdgo.image.color.Color.RGBA64);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (8 : stdgo.GoInt), _i + (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo.image.color.Color.RGBA64(((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16), ((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16), ((_s[(4 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_s[(5 : stdgo.GoInt)] : stdgo.GoUInt16), ((_s[(6 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_s[(7 : stdgo.GoInt)] : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        return stdgo.Go.asInterface(_p.rgba64at(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<RGBA64>):Rectangle {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<RGBA64>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<RGBA64> = _p;
        return stdgo.image.color.Color.rgba64model;
    }
}
class NRGBA_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setNRGBA(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.NRGBA):Void __self__.value.setNRGBA(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function nrgbaat(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.NRGBA return __self__.value.nrgbaat(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NRGBA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.NRGBA_asInterface) class NRGBA_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<NRGBA>):Bool {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (3 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx() * (4 : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor(_y < _p.rect.max.y, _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor(_i < _i1, _i = _i + ((4 : stdgo.GoInt)), {
                        if (_p.pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = _i0 + (_p.stride);
                _i1 = _i1 + (_p.stride);
            });
        };
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<NRGBA>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.NRGBA() : stdgo.image.Image.NRGBA)) : stdgo.Ref<stdgo.image.Image.NRGBA>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.NRGBA)) : stdgo.Ref<stdgo.image.Image.NRGBA>));
    }
    @:keep
    static public function setNRGBA( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.NRGBA):Void {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c.r;
        _s[(1 : stdgo.GoInt)] = _c.g;
        _s[(2 : stdgo.GoInt)] = _c.b;
        _s[(3 : stdgo.GoInt)] = _c.a;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var __0:stdgo.GoUInt32 = (_c.r : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (_c.g : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (_c.b : stdgo.GoUInt32), __3:stdgo.GoUInt32 = (_c.a : stdgo.GoUInt32), _a:stdgo.GoUInt32 = __3, _b:stdgo.GoUInt32 = __2, _g:stdgo.GoUInt32 = __1, _r:stdgo.GoUInt32 = __0;
        if ((_a != (0u32 : stdgo.GoUInt32)) && (_a != (65535u32 : stdgo.GoUInt32))) {
            _r = (_r * (65535u32 : stdgo.GoUInt32)) / _a;
            _g = (_g * (65535u32 : stdgo.GoUInt32)) / _a;
            _b = (_b * (65535u32 : stdgo.GoUInt32)) / _a;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = (_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = (_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo.image.color.Color.NRGBA = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.nrgbamodel.convert(_c)) : stdgo.image.color.Color.NRGBA)) : stdgo.image.color.Color.NRGBA)?.__copy__();
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.r;
        _s[(1 : stdgo.GoInt)] = _c1.g;
        _s[(2 : stdgo.GoInt)] = _c1.b;
        _s[(3 : stdgo.GoInt)] = _c1.a;
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (4 : stdgo.GoInt));
    }
    @:keep
    static public function nrgbaat( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.NRGBA {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.NRGBA() : stdgo.image.color.Color.NRGBA);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo.image.color.Color.NRGBA(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]) : stdgo.image.color.Color.NRGBA);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        var __tmp__ = _p.nrgbaat(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<NRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        return stdgo.Go.asInterface(_p.nrgbaat(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<NRGBA>):Rectangle {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<NRGBA>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<NRGBA> = _p;
        return stdgo.image.color.Color.nrgbamodel;
    }
}
class NRGBA64_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setNRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.NRGBA64):Void __self__.value.setNRGBA64(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function nrgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.NRGBA64 return __self__.value.nrgba64at(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NRGBA64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.NRGBA64_asInterface) class NRGBA64_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<NRGBA64>):Bool {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (6 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx() * (8 : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor(_y < _p.rect.max.y, _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor(_i < _i1, _i = _i + ((8 : stdgo.GoInt)), {
                        if ((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = _i0 + (_p.stride);
                _i1 = _i1 + (_p.stride);
            });
        };
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<NRGBA64>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.NRGBA64() : stdgo.image.Image.NRGBA64)) : stdgo.Ref<stdgo.image.Image.NRGBA64>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.NRGBA64)) : stdgo.Ref<stdgo.image.Image.NRGBA64>));
    }
    @:keep
    static public function setNRGBA64( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.NRGBA64):Void {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (8 : stdgo.GoInt), _i + (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = (_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = (_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = (_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = (_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var __0:stdgo.GoUInt32 = (_c.r : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (_c.g : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (_c.b : stdgo.GoUInt32), __3:stdgo.GoUInt32 = (_c.a : stdgo.GoUInt32), _a:stdgo.GoUInt32 = __3, _b:stdgo.GoUInt32 = __2, _g:stdgo.GoUInt32 = __1, _r:stdgo.GoUInt32 = __0;
        if ((_a != (0u32 : stdgo.GoUInt32)) && (_a != (65535u32 : stdgo.GoUInt32))) {
            _r = (_r * (65535u32 : stdgo.GoUInt32)) / _a;
            _g = (_g * (65535u32 : stdgo.GoUInt32)) / _a;
            _b = (_b * (65535u32 : stdgo.GoUInt32)) / _a;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (8 : stdgo.GoInt), _i + (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = (_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = (_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = (_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = (_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_a : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo.image.color.Color.NRGBA64 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.nrgba64model.convert(_c)) : stdgo.image.color.Color.NRGBA64)) : stdgo.image.color.Color.NRGBA64)?.__copy__();
        var _s = (_p.pix.__slice__(_i, _i + (8 : stdgo.GoInt), _i + (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = (_c1.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c1.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = (_c1.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c1.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = (_c1.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c1.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = (_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (8 : stdgo.GoInt));
    }
    @:keep
    static public function nrgba64at( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.NRGBA64 {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.NRGBA64() : stdgo.image.color.Color.NRGBA64);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (8 : stdgo.GoInt), _i + (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo.image.color.Color.NRGBA64(((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16), ((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16), ((_s[(4 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_s[(5 : stdgo.GoInt)] : stdgo.GoUInt16), ((_s[(6 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_s[(7 : stdgo.GoInt)] : stdgo.GoUInt16)) : stdgo.image.color.Color.NRGBA64);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        var __tmp__ = _p.nrgba64at(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<NRGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        return stdgo.Go.asInterface(_p.nrgba64at(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<NRGBA64>):Rectangle {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<NRGBA64>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<NRGBA64> = _p;
        return stdgo.image.color.Color.nrgba64model;
    }
}
class Alpha_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setAlpha(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Alpha):Void __self__.value.setAlpha(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function alphaAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Alpha return __self__.value.alphaAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Alpha>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.Alpha_asInterface) class Alpha_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<Alpha>):Bool {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx(), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor(_y < _p.rect.max.y, _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor(_i < _i1, _i++, {
                        if (_p.pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = _i0 + (_p.stride);
                _i1 = _i1 + (_p.stride);
            });
        };
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<Alpha>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.Alpha() : stdgo.image.Image.Alpha)) : stdgo.Ref<stdgo.image.Image.Alpha>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.Alpha)) : stdgo.Ref<stdgo.image.Image.Alpha>));
    }
    @:keep
    static public function setAlpha( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Alpha):Void {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = _c.a;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.alphaModel.convert(_c)) : stdgo.image.color.Color.Alpha)) : stdgo.image.color.Color.Alpha).a;
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (1 : stdgo.GoInt));
    }
    @:keep
    static public function alphaAt( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Alpha {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.Alpha() : stdgo.image.color.Color.Alpha);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return (new stdgo.image.color.Color.Alpha(_p.pix[(_i : stdgo.GoInt)]) : stdgo.image.color.Color.Alpha);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        var _a:stdgo.GoUInt16 = (_p.alphaAt(_x, _y).a : stdgo.GoUInt16);
        _a = _a | (_a << (8i64 : stdgo.GoUInt64));
        return (new stdgo.image.color.Color.RGBA64(_a, _a, _a, _a) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        return stdgo.Go.asInterface(_p.alphaAt(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Alpha>):Rectangle {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Alpha>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Alpha> = _p;
        return stdgo.image.color.Color.alphaModel;
    }
}
class Alpha16_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setAlpha16(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Alpha16):Void __self__.value.setAlpha16(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function alpha16At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Alpha16 return __self__.value.alpha16At(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Alpha16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.Alpha16_asInterface) class Alpha16_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<Alpha16>):Bool {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx() * (2 : stdgo.GoInt), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor(_y < _p.rect.max.y, _y++, {
                {
                    var _i:stdgo.GoInt = _i0;
                    stdgo.Go.cfor(_i < _i1, _i = _i + ((2 : stdgo.GoInt)), {
                        if ((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = _i0 + (_p.stride);
                _i1 = _i1 + (_p.stride);
            });
        };
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<Alpha16>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.Alpha16() : stdgo.image.Image.Alpha16)) : stdgo.Ref<stdgo.image.Image.Alpha16>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.Alpha16)) : stdgo.Ref<stdgo.image.Image.Alpha16>));
    }
    @:keep
    static public function setAlpha16( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Alpha16):Void {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo.image.color.Color.Alpha16 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.alpha16Model.convert(_c)) : stdgo.image.color.Color.Alpha16)) : stdgo.image.color.Color.Alpha16)?.__copy__();
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (2 : stdgo.GoInt));
    }
    @:keep
    static public function alpha16At( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Alpha16 {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.Alpha16() : stdgo.image.color.Color.Alpha16);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return (new stdgo.image.color.Color.Alpha16(((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16)) : stdgo.image.color.Color.Alpha16);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        var _a:stdgo.GoUInt16 = _p.alpha16At(_x, _y).a;
        return (new stdgo.image.color.Color.RGBA64(_a, _a, _a, _a) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        return stdgo.Go.asInterface(_p.alpha16At(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Alpha16>):Rectangle {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Alpha16>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Alpha16> = _p;
        return stdgo.image.color.Color.alpha16Model;
    }
}
class Gray_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setGray(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Gray):Void __self__.value.setGray(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function grayAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Gray return __self__.value.grayAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gray>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.Gray_asInterface) class Gray_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<Gray>):Bool {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<Gray>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.Gray() : stdgo.image.Image.Gray)) : stdgo.Ref<stdgo.image.Image.Gray>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.Gray)) : stdgo.Ref<stdgo.image.Image.Gray>));
    }
    @:keep
    static public function setGray( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Gray):Void {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = _c.y;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _gray:stdgo.GoUInt32 = (((((19595u32 : stdgo.GoUInt32) * (_c.r : stdgo.GoUInt32)) + ((38470u32 : stdgo.GoUInt32) * (_c.g : stdgo.GoUInt32))) + ((7471u32 : stdgo.GoUInt32) * (_c.b : stdgo.GoUInt32))) + (32768u32 : stdgo.GoUInt32)) >> (24i64 : stdgo.GoUInt64);
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (_gray : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.grayModel.convert(_c)) : stdgo.image.color.Color.Gray)) : stdgo.image.color.Color.Gray).y;
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (1 : stdgo.GoInt));
    }
    @:keep
    static public function grayAt( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Gray {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.Gray() : stdgo.image.color.Color.Gray);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return (new stdgo.image.color.Color.Gray(_p.pix[(_i : stdgo.GoInt)]) : stdgo.image.color.Color.Gray);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        var _gray:stdgo.GoUInt16 = (_p.grayAt(_x, _y).y : stdgo.GoUInt16);
        _gray = _gray | (_gray << (8i64 : stdgo.GoUInt64));
        return (new stdgo.image.color.Color.RGBA64(_gray, _gray, _gray, (65535 : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return stdgo.Go.asInterface(_p.grayAt(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Gray>):Rectangle {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Gray>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Gray> = _p;
        return stdgo.image.color.Color.grayModel;
    }
}
class Gray16_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setGray16(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Gray16):Void __self__.value.setGray16(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function gray16At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Gray16 return __self__.value.gray16At(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gray16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.Gray16_asInterface) class Gray16_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<Gray16>):Bool {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<Gray16>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.Gray16() : stdgo.image.Image.Gray16)) : stdgo.Ref<stdgo.image.Image.Gray16>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.Gray16)) : stdgo.Ref<stdgo.image.Image.Gray16>));
    }
    @:keep
    static public function setGray16( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Gray16):Void {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = (_c.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.y : stdgo.GoUInt8);
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _gray:stdgo.GoUInt32 = (((((19595u32 : stdgo.GoUInt32) * (_c.r : stdgo.GoUInt32)) + ((38470u32 : stdgo.GoUInt32) * (_c.g : stdgo.GoUInt32))) + ((7471u32 : stdgo.GoUInt32) * (_c.b : stdgo.GoUInt32))) + (32768u32 : stdgo.GoUInt32)) >> (16i64 : stdgo.GoUInt64);
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = (_gray >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_gray : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo.image.color.Color.Gray16 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.gray16Model.convert(_c)) : stdgo.image.color.Color.Gray16)) : stdgo.image.color.Color.Gray16)?.__copy__();
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.y : stdgo.GoUInt8);
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (2 : stdgo.GoInt));
    }
    @:keep
    static public function gray16At( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Gray16 {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.Gray16() : stdgo.image.color.Color.Gray16);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return (new stdgo.image.color.Color.Gray16(((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64)) | (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16)) : stdgo.image.color.Color.Gray16);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        var _gray:stdgo.GoUInt16 = _p.gray16At(_x, _y).y;
        return (new stdgo.image.color.Color.RGBA64(_gray, _gray, _gray, (65535 : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return stdgo.Go.asInterface(_p.gray16At(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<Gray16>):Rectangle {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<Gray16>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Gray16> = _p;
        return stdgo.image.color.Color.gray16Model;
    }
}
class CMYK_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setCMYK(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.CMYK):Void __self__.value.setCMYK(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function cmykat(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.CMYK return __self__.value.cmykat(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CMYK>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.CMYK_asInterface) class CMYK_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<CMYK>):Bool {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<CMYK>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.image.Image.CMYK() : stdgo.image.Image.CMYK)) : stdgo.Ref<stdgo.image.Image.CMYK>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo.image.Image.CMYK)) : stdgo.Ref<stdgo.image.Image.CMYK>));
    }
    @:keep
    static public function setCMYK( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.CMYK):Void {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c.c;
        _s[(1 : stdgo.GoInt)] = _c.m;
        _s[(2 : stdgo.GoInt)] = _c.y;
        _s[(3 : stdgo.GoInt)] = _c.k;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var __tmp__ = stdgo.image.color.Color.rgbtoCMYK((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8), (_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8), (_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt8)), _cc:stdgo.GoUInt8 = __tmp__._0, _mm:stdgo.GoUInt8 = __tmp__._1, _yy:stdgo.GoUInt8 = __tmp__._2, _kk:stdgo.GoUInt8 = __tmp__._3;
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _cc;
        _s[(1 : stdgo.GoInt)] = _mm;
        _s[(2 : stdgo.GoInt)] = _yy;
        _s[(3 : stdgo.GoInt)] = _kk;
    }
    @:keep
    static public function set( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _c1:stdgo.image.color.Color.CMYK = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.image.color.Color.cmykmodel.convert(_c)) : stdgo.image.color.Color.CMYK)) : stdgo.image.color.Color.CMYK)?.__copy__();
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.c;
        _s[(1 : stdgo.GoInt)] = _c1.m;
        _s[(2 : stdgo.GoInt)] = _c1.y;
        _s[(3 : stdgo.GoInt)] = _c1.k;
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (4 : stdgo.GoInt));
    }
    @:keep
    static public function cmykat( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.CMYK {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.CMYK() : stdgo.image.color.Color.CMYK);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        var _s = (_p.pix.__slice__(_i, _i + (4 : stdgo.GoInt), _i + (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo.image.color.Color.CMYK(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]) : stdgo.image.color.Color.CMYK);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        var __tmp__ = _p.cmykat(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return stdgo.Go.asInterface(_p.cmykat(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<CMYK>):Rectangle {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<CMYK>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<CMYK> = _p;
        return stdgo.image.color.Color.cmykmodel;
    }
}
class Paletted_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setColorIndex(_x:stdgo.GoInt, _y:stdgo.GoInt, _index:stdgo.GoUInt8):Void __self__.value.setColorIndex(_x, _y, _index);
    @:keep
    public dynamic function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8 return __self__.value.colorIndexAt(_x, _y);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void __self__.value.set(_x, _y, _c);
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Paletted>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.Paletted_asInterface) class Paletted_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<Paletted>):Bool {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        var _present:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(...[for (i in 0 ... 256) false]);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _p.rect.dx(), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.rect.min.y;
            stdgo.Go.cfor(_y < _p.rect.max.y, _y++, {
                for (__0 => _c in (_p.pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>)) {
                    _present[(_c : stdgo.GoInt)] = true;
                };
                _i0 = _i0 + (_p.stride);
                _i1 = _i1 + (_p.stride);
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
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<Paletted>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ palette : _p.palette } : stdgo.image.Image.Paletted)) : stdgo.Ref<stdgo.image.Image.Paletted>));
        };
        var _i:stdgo.GoInt = _p.pixOffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _p.rect.intersect(_r?.__copy__())?.__copy__(), palette : _p.palette } : stdgo.image.Image.Paletted)) : stdgo.Ref<stdgo.image.Image.Paletted>));
    }
    @:keep
    static public function setColorIndex( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _index:stdgo.GoUInt8):Void {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = _index;
    }
    @:keep
    static public function colorIndexAt( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (0 : stdgo.GoUInt8);
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        return _p.pix[(_i : stdgo.GoInt)];
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (_p.palette.index(stdgo.Go.asInterface(_c)) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo.image.color.Color.Color):Void {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
        _p.pix[(_i : stdgo.GoInt)] = (_p.palette.index(_c) : stdgo.GoUInt8);
    }
    /**
        // PixOffset returns the index of the first element of Pix that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function pixOffset( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        return ((_y - _p.rect.min.y) * _p.stride) + ((_x - _p.rect.min.x) * (1 : stdgo.GoInt));
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if ((_p.palette.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo.image.color.Color.RGBA64() : stdgo.image.color.Color.RGBA64);
        };
        var _c:stdgo.image.color.Color.Color = (null : stdgo.image.color.Color.Color);
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            _c = _p.palette[(0 : stdgo.GoInt)];
        } else {
            var _i:stdgo.GoInt = _p.pixOffset(_x, _y);
            _c = _p.palette[(_p.pix[(_i : stdgo.GoInt)] : stdgo.GoInt)];
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        if ((_p.palette.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.image.color.Color.Color);
        };
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
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
    static public function colorModel( _p:stdgo.Ref<Paletted>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<Paletted> = _p;
        return stdgo.Go.asInterface(_p.palette);
    }
}
class Uniform_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function convert(_0:stdgo.image.color.Color.Color):stdgo.image.color.Color.Color return __self__.value.convert(_0);
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Uniform>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.Uniform_asInterface) class Uniform_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _c:stdgo.Ref<Uniform>):Bool {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        var __tmp__ = _c.c.rgba(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return _a == ((65535u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function rgba64at( _c:stdgo.Ref<Uniform>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        var __tmp__ = _c.c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _c:stdgo.Ref<Uniform>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        return _c.c;
    }
    @:keep
    static public function bounds( _c:stdgo.Ref<Uniform>):Rectangle {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        return (new stdgo.image.Image.Rectangle((new stdgo.image.Image.Point((-1000000000 : stdgo.GoInt), (-1000000000 : stdgo.GoInt)) : stdgo.image.Image.Point), (new stdgo.image.Image.Point((1000000000 : stdgo.GoInt), (1000000000 : stdgo.GoInt)) : stdgo.image.Image.Point)) : stdgo.image.Image.Rectangle);
    }
    @:keep
    static public function convert( _c:stdgo.Ref<Uniform>, _0:stdgo.image.color.Color.Color):stdgo.image.color.Color.Color {
        @:recv var _c:stdgo.Ref<Uniform> = _c;
        return _c.c;
    }
    @:keep
    static public function colorModel( _c:stdgo.Ref<Uniform>):stdgo.image.color.Color.Model {
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
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    /**
        // COffset returns the index of the first element of Cb or Cr that corresponds
        // to the pixel at (x, y).
    **/
    @:keep
    public dynamic function coffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.coffset(_x, _y);
    /**
        // YOffset returns the index of the first element of Y that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    public dynamic function yoffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.yoffset(_x, _y);
    @:keep
    public dynamic function ycbCrAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.YCbCr return __self__.value.ycbCrAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<YCbCr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.YCbCr_asInterface) class YCbCr_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<YCbCr>):Bool {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<YCbCr>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ subsampleRatio : _p.subsampleRatio } : stdgo.image.Image.YCbCr)) : stdgo.Ref<stdgo.image.Image.YCbCr>));
        };
        var _yi:stdgo.GoInt = _p.yoffset(_r.min.x, _r.min.y);
        var _ci:stdgo.GoInt = _p.coffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ y : (_p.y.__slice__(_yi) : stdgo.Slice<stdgo.GoUInt8>), cb : (_p.cb.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), cr : (_p.cr.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), ystride : _p.ystride, cstride : _p.cstride, subsampleRatio : _p.subsampleRatio, rect : _r?.__copy__() } : stdgo.image.Image.YCbCr)) : stdgo.Ref<stdgo.image.Image.YCbCr>));
    }
    /**
        // COffset returns the index of the first element of Cb or Cr that corresponds
        // to the pixel at (x, y).
    **/
    @:keep
    static public function coffset( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        {
            final __value__ = _p.subsampleRatio;
            if (__value__ == ((1 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return ((_y - _p.rect.min.y) * _p.cstride) + ((_x / (2 : stdgo.GoInt)) - (_p.rect.min.x / (2 : stdgo.GoInt)));
            } else if (__value__ == ((2 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return (((_y / (2 : stdgo.GoInt)) - (_p.rect.min.y / (2 : stdgo.GoInt))) * _p.cstride) + ((_x / (2 : stdgo.GoInt)) - (_p.rect.min.x / (2 : stdgo.GoInt)));
            } else if (__value__ == ((3 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return (((_y / (2 : stdgo.GoInt)) - (_p.rect.min.y / (2 : stdgo.GoInt))) * _p.cstride) + (_x - _p.rect.min.x);
            } else if (__value__ == ((4 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return ((_y - _p.rect.min.y) * _p.cstride) + ((_x / (4 : stdgo.GoInt)) - (_p.rect.min.x / (4 : stdgo.GoInt)));
            } else if (__value__ == ((5 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return (((_y / (2 : stdgo.GoInt)) - (_p.rect.min.y / (2 : stdgo.GoInt))) * _p.cstride) + ((_x / (4 : stdgo.GoInt)) - (_p.rect.min.x / (4 : stdgo.GoInt)));
            };
        };
        return ((_y - _p.rect.min.y) * _p.cstride) + (_x - _p.rect.min.x);
    }
    /**
        // YOffset returns the index of the first element of Y that corresponds to
        // the pixel at (x, y).
    **/
    @:keep
    static public function yoffset( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return ((_y - _p.rect.min.y) * _p.ystride) + (_x - _p.rect.min.x);
    }
    @:keep
    static public function ycbCrAt( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.YCbCr {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        if (!((new stdgo.image.Image.Point(_x, _y) : stdgo.image.Image.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.YCbCr() : stdgo.image.color.Color.YCbCr);
        };
        var _yi:stdgo.GoInt = _p.yoffset(_x, _y);
        var _ci:stdgo.GoInt = _p.coffset(_x, _y);
        return (new stdgo.image.color.Color.YCbCr(_p.y[(_yi : stdgo.GoInt)], _p.cb[(_ci : stdgo.GoInt)], _p.cr[(_ci : stdgo.GoInt)]) : stdgo.image.color.Color.YCbCr);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        var __tmp__ = _p.ycbCrAt(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return stdgo.Go.asInterface(_p.ycbCrAt(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<YCbCr>):Rectangle {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<YCbCr>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<YCbCr> = _p;
        return stdgo.image.color.Color.ycbCrModel;
    }
}
class NYCbCrA_asInterface {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    public dynamic function subImage(_r:Rectangle):Image return __self__.value.subImage(_r);
    /**
        // AOffset returns the index of the first element of A that corresponds to the
        // pixel at (x, y).
    **/
    @:keep
    public dynamic function aoffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.aoffset(_x, _y);
    @:keep
    public dynamic function nycbCrAAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.NYCbCrA return __self__.value.nycbCrAAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function colorModel():stdgo.image.color.Color.Model return __self__.value.colorModel();
    @:embedded
    public dynamic function yoffset(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return __self__.value.yoffset(_x_, _y_);
    @:embedded
    public dynamic function ycbCrAt(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.image.color.Color.YCbCr return __self__.value.ycbCrAt(_x_, _y_);
    @:embedded
    public dynamic function coffset(_x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return __self__.value.coffset(_x_, _y_);
    @:embedded
    public dynamic function bounds():stdgo.image.Image.Rectangle return __self__.value.bounds();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NYCbCrA>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.NYCbCrA_asInterface) class NYCbCrA_static_extension {
    /**
        // Opaque scans the entire image and reports whether it is fully opaque.
    **/
    @:keep
    static public function opaque( _p:stdgo.Ref<NYCbCrA>):Bool {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        if (_p.ycbCr.rect.empty()) {
            return true;
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _p.ycbCr.rect.dx(), _i1:stdgo.GoInt = __1, _i0:stdgo.GoInt = __0;
        {
            var _y:stdgo.GoInt = _p.ycbCr.rect.min.y;
            stdgo.Go.cfor(_y < _p.ycbCr.rect.max.y, _y++, {
                for (__0 => _a in (_p.a.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>)) {
                    if (_a != ((255 : stdgo.GoUInt8))) {
                        return false;
                    };
                };
                _i0 = _i0 + (_p.astride);
                _i1 = _i1 + (_p.astride);
            });
        };
        return true;
    }
    /**
        // SubImage returns an image representing the portion of the image p visible
        // through r. The returned value shares pixels with the original image.
    **/
    @:keep
    static public function subImage( _p:stdgo.Ref<NYCbCrA>, _r:Rectangle):Image {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        _r = _r.intersect(_p.ycbCr.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ ycbCr : ({ subsampleRatio : _p.ycbCr.subsampleRatio } : stdgo.image.Image.YCbCr) } : stdgo.image.Image.NYCbCrA)) : stdgo.Ref<stdgo.image.Image.NYCbCrA>));
        };
        var _yi:stdgo.GoInt = _p.yoffset(_r.min.x, _r.min.y);
        var _ci:stdgo.GoInt = _p.coffset(_r.min.x, _r.min.y);
        var _ai:stdgo.GoInt = _p.aoffset(_r.min.x, _r.min.y);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ ycbCr : ({ y : (_p.ycbCr.y.__slice__(_yi) : stdgo.Slice<stdgo.GoUInt8>), cb : (_p.ycbCr.cb.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), cr : (_p.ycbCr.cr.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), ystride : _p.ycbCr.ystride, cstride : _p.ycbCr.cstride, subsampleRatio : _p.ycbCr.subsampleRatio, rect : _r?.__copy__() } : stdgo.image.Image.YCbCr), a : (_p.a.__slice__(_ai) : stdgo.Slice<stdgo.GoUInt8>), astride : _p.astride } : stdgo.image.Image.NYCbCrA)) : stdgo.Ref<stdgo.image.Image.NYCbCrA>));
    }
    /**
        // AOffset returns the index of the first element of A that corresponds to the
        // pixel at (x, y).
    **/
    @:keep
    static public function aoffset( _p:stdgo.Ref<NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        return ((_y - _p.ycbCr.rect.min.y) * _p.astride) + (_x - _p.ycbCr.rect.min.x);
    }
    @:keep
    static public function nycbCrAAt( _p:stdgo.Ref<NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.NYCbCrA {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        if (!(({ x : _x, y : _y } : stdgo.image.Image.Point).in_(_p.ycbCr.rect?.__copy__()))) {
            return (new stdgo.image.color.Color.NYCbCrA() : stdgo.image.color.Color.NYCbCrA);
        };
        var _yi:stdgo.GoInt = _p.yoffset(_x, _y);
        var _ci:stdgo.GoInt = _p.coffset(_x, _y);
        var _ai:stdgo.GoInt = _p.aoffset(_x, _y);
        return (new stdgo.image.color.Color.NYCbCrA(({ y : _p.ycbCr.y[(_yi : stdgo.GoInt)], cb : _p.ycbCr.cb[(_ci : stdgo.GoInt)], cr : _p.ycbCr.cr[(_ci : stdgo.GoInt)] } : stdgo.image.color.Color.YCbCr), _p.a[(_ai : stdgo.GoInt)]) : stdgo.image.color.Color.NYCbCrA);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.RGBA64 {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        var __tmp__ = _p.nycbCrAAt(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo.image.color.Color.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo.image.color.Color.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.image.color.Color.Color {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        return stdgo.Go.asInterface(_p.nycbCrAAt(_x, _y));
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<NYCbCrA>):stdgo.image.color.Color.Model {
        @:recv var _p:stdgo.Ref<NYCbCrA> = _p;
        return stdgo.image.color.Color.nycbCrAModel;
    }
    @:embedded
    public static function yoffset( __self__:NYCbCrA, _x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return __self__.yoffset(_x_, _y_);
    @:embedded
    public static function ycbCrAt( __self__:NYCbCrA, _x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.image.color.Color.YCbCr return __self__.ycbCrAt(_x_, _y_);
    @:embedded
    public static function coffset( __self__:NYCbCrA, _x_:stdgo.GoInt, _y_:stdgo.GoInt):stdgo.GoInt return __self__.coffset(_x_, _y_);
    @:embedded
    public static function bounds( __self__:NYCbCrA):stdgo.image.Image.Rectangle return __self__.bounds();
}
class YCbCrSubsampleRatio_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<YCbCrSubsampleRatio>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.image.Image.YCbCrSubsampleRatio_asInterface) class YCbCrSubsampleRatio_static_extension {
    @:keep
    static public function string( _s:YCbCrSubsampleRatio):stdgo.GoString {
        @:recv var _s:YCbCrSubsampleRatio = _s;
        {
            final __value__ = _s;
            if (__value__ == ((0 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio444" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio422" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio420" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio440" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio411" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo.image.Image.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio410" : stdgo.GoString);
            };
        };
        return ("YCbCrSubsampleRatioUnknown" : stdgo.GoString);
    }
}
