package stdgo;
/**
    Package image implements a basic 2-D image library.
    
    The fundamental interface is called Image. An Image contains colors, which
    are described in the image/color package.
    
    Values of the Image interface are created either by calling functions such
    as NewRGBA and NewPaletted, or by calling Decode on an io.Reader containing
    image data in a format such as GIF, JPEG or PNG. Decoding any particular
    image format requires the prior registration of a decoder function.
    Registration is typically automatic as a side effect of initializing that
    format's package so that, to decode a PNG image, it suffices to have
    
    	import _ "image/png"
    
    in a program's main package. The _ means to import a package purely for its
    initialization side effects.
    
    See "The Go image package" for more details:
    https://golang.org/doc/articles/image_package.html
**/
private var __go2hxdoc__package : Bool;
var zp(get, set) : Point;
private function get_zp():Point return stdgo._internal.image.Image.zp;
private function set_zp(v:Point):Point {
        stdgo._internal.image.Image.zp = v;
        return v;
    }
var zr(get, set) : Rectangle;
private function get_zr():Rectangle return stdgo._internal.image.Image.zr;
private function set_zr(v:Rectangle):Rectangle {
        stdgo._internal.image.Image.zr = v;
        return v;
    }
final ycbCrSubsampleRatio444 : stdgo._internal.image.Image.YCbCrSubsampleRatio = stdgo._internal.image.Image.ycbCrSubsampleRatio444;
final ycbCrSubsampleRatio422 = stdgo._internal.image.Image.ycbCrSubsampleRatio422;
final ycbCrSubsampleRatio420 = stdgo._internal.image.Image.ycbCrSubsampleRatio420;
final ycbCrSubsampleRatio440 = stdgo._internal.image.Image.ycbCrSubsampleRatio440;
final ycbCrSubsampleRatio411 = stdgo._internal.image.Image.ycbCrSubsampleRatio411;
final ycbCrSubsampleRatio410 = stdgo._internal.image.Image.ycbCrSubsampleRatio410;
var errFormat(get, set) : stdgo.Error;
private function get_errFormat():stdgo.Error return stdgo._internal.image.Image.errFormat;
private function set_errFormat(v:stdgo.Error):stdgo.Error {
        stdgo._internal.image.Image.errFormat = v;
        return v;
    }
var black(get, set) : stdgo._internal.image.Image.Uniform;
private function get_black():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.black;
private function set_black(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform {
        stdgo._internal.image.Image.black = v;
        return v;
    }
var white(get, set) : stdgo._internal.image.Image.Uniform;
private function get_white():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.white;
private function set_white(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform {
        stdgo._internal.image.Image.white = v;
        return v;
    }
var transparent(get, set) : stdgo._internal.image.Image.Uniform;
private function get_transparent():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.transparent;
private function set_transparent(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform {
        stdgo._internal.image.Image.transparent = v;
        return v;
    }
var opaque(get, set) : stdgo._internal.image.Image.Uniform;
private function get_opaque():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.opaque;
private function set_opaque(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform {
        stdgo._internal.image.Image.opaque = v;
        return v;
    }
typedef T_reader = stdgo._internal.image.Image.T_reader;
typedef Image = stdgo._internal.image.Image.Image;
typedef RGBA64Image = stdgo._internal.image.Image.RGBA64Image;
typedef PalettedImage = stdgo._internal.image.Image.PalettedImage;
typedef T_image = stdgo._internal.image.Image.T_image;
typedef T__interface_0 = stdgo._internal.image.Image.T__interface_0;
abstract T_format(stdgo._internal.image.Image.T_format) from stdgo._internal.image.Image.T_format to stdgo._internal.image.Image.T_format {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _magic(get, set) : String;
    function get__magic():String return this._magic;
    function set__magic(v:String):String {
        this._magic = v;
        return v;
    }
    public var _decode(get, set) : stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.Error; };
    function get__decode():stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.Error; } return _0 -> this._decode(_0);
    function set__decode(v:stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.Error; }):stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.Error; } {
        this._decode = v;
        return v;
    }
    public var _decodeConfig(get, set) : stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.Error; };
    function get__decodeConfig():stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.Error; } return _0 -> this._decodeConfig(_0);
    function set__decodeConfig(v:stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.Error; }):stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.Error; } {
        this._decodeConfig = v;
        return v;
    }
    public function new(?_name:String, ?_magic:String, ?_decode:stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.Error; }, ?_decodeConfig:stdgo._internal.io.Io.Reader -> { var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.Error; }) this = new stdgo._internal.image.Image.T_format(_name, _magic, _decode, _decodeConfig);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Point(stdgo._internal.image.Image.Point) from stdgo._internal.image.Image.Point to stdgo._internal.image.Image.Point {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.image.Image.Point(x, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Rectangle(stdgo._internal.image.Image.Rectangle) from stdgo._internal.image.Image.Rectangle to stdgo._internal.image.Image.Rectangle {
    public var min(get, set) : stdgo._internal.image.Image.Point;
    function get_min():stdgo._internal.image.Image.Point return this.min;
    function set_min(v:stdgo._internal.image.Image.Point):stdgo._internal.image.Image.Point {
        this.min = v;
        return v;
    }
    public var max(get, set) : stdgo._internal.image.Image.Point;
    function get_max():stdgo._internal.image.Image.Point return this.max;
    function set_max(v:stdgo._internal.image.Image.Point):stdgo._internal.image.Image.Point {
        this.max = v;
        return v;
    }
    public function new(?min:stdgo._internal.image.Image.Point, ?max:stdgo._internal.image.Image.Point) this = new stdgo._internal.image.Image.Rectangle(min, max);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Config(stdgo._internal.image.Image.Config) from stdgo._internal.image.Image.Config to stdgo._internal.image.Image.Config {
    public var colorModel(get, set) : stdgo._internal.image.color.Color.Model;
    function get_colorModel():stdgo._internal.image.color.Color.Model return this.colorModel;
    function set_colorModel(v:stdgo._internal.image.color.Color.Model):stdgo._internal.image.color.Color.Model {
        this.colorModel = v;
        return v;
    }
    public var width(get, set) : StdTypes.Int;
    function get_width():StdTypes.Int return this.width;
    function set_width(v:StdTypes.Int):StdTypes.Int {
        this.width = v;
        return v;
    }
    public var height(get, set) : StdTypes.Int;
    function get_height():StdTypes.Int return this.height;
    function set_height(v:StdTypes.Int):StdTypes.Int {
        this.height = v;
        return v;
    }
    public function new(?colorModel:stdgo._internal.image.color.Color.Model, ?width:StdTypes.Int, ?height:StdTypes.Int) this = new stdgo._internal.image.Image.Config(colorModel, width, height);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract RGBA(stdgo._internal.image.Image.RGBA) from stdgo._internal.image.Image.RGBA to stdgo._internal.image.Image.RGBA {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.RGBA(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract RGBA64(stdgo._internal.image.Image.RGBA64) from stdgo._internal.image.Image.RGBA64 to stdgo._internal.image.Image.RGBA64 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.RGBA64(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract NRGBA(stdgo._internal.image.Image.NRGBA) from stdgo._internal.image.Image.NRGBA to stdgo._internal.image.Image.NRGBA {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.NRGBA(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract NRGBA64(stdgo._internal.image.Image.NRGBA64) from stdgo._internal.image.Image.NRGBA64 to stdgo._internal.image.Image.NRGBA64 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.NRGBA64(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Alpha(stdgo._internal.image.Image.Alpha) from stdgo._internal.image.Image.Alpha to stdgo._internal.image.Image.Alpha {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.Alpha(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Alpha16(stdgo._internal.image.Image.Alpha16) from stdgo._internal.image.Image.Alpha16 to stdgo._internal.image.Image.Alpha16 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.Alpha16(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Gray(stdgo._internal.image.Image.Gray) from stdgo._internal.image.Image.Gray to stdgo._internal.image.Image.Gray {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.Gray(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Gray16(stdgo._internal.image.Image.Gray16) from stdgo._internal.image.Image.Gray16 to stdgo._internal.image.Image.Gray16 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.Gray16(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract CMYK(stdgo._internal.image.Image.CMYK) from stdgo._internal.image.Image.CMYK to stdgo._internal.image.Image.CMYK {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.CMYK(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Paletted(stdgo._internal.image.Image.Paletted) from stdgo._internal.image.Image.Paletted to stdgo._internal.image.Image.Paletted {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public var palette(get, set) : stdgo._internal.image.color.Color.Palette;
    function get_palette():stdgo._internal.image.color.Color.Palette return this.palette;
    function set_palette(v:stdgo._internal.image.color.Color.Palette):stdgo._internal.image.color.Color.Palette {
        this.palette = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image.Rectangle, ?palette:stdgo._internal.image.color.Color.Palette) this = new stdgo._internal.image.Image.Paletted(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect, palette);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Uniform(stdgo._internal.image.Image.Uniform) from stdgo._internal.image.Image.Uniform to stdgo._internal.image.Image.Uniform {
    public var c(get, set) : stdgo._internal.image.color.Color.Color;
    function get_c():stdgo._internal.image.color.Color.Color return this.c;
    function set_c(v:stdgo._internal.image.color.Color.Color):stdgo._internal.image.color.Color.Color {
        this.c = v;
        return v;
    }
    public function new(?c:stdgo._internal.image.color.Color.Color) this = new stdgo._internal.image.Image.Uniform(c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract YCbCr(stdgo._internal.image.Image.YCbCr) from stdgo._internal.image.Image.YCbCr to stdgo._internal.image.Image.YCbCr {
    public var y(get, set) : Array<std.UInt>;
    function get_y():Array<std.UInt> return [for (i in this.y) i];
    function set_y(v:Array<std.UInt>):Array<std.UInt> {
        this.y = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var cb(get, set) : Array<std.UInt>;
    function get_cb():Array<std.UInt> return [for (i in this.cb) i];
    function set_cb(v:Array<std.UInt>):Array<std.UInt> {
        this.cb = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var cr(get, set) : Array<std.UInt>;
    function get_cr():Array<std.UInt> return [for (i in this.cr) i];
    function set_cr(v:Array<std.UInt>):Array<std.UInt> {
        this.cr = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var ystride(get, set) : StdTypes.Int;
    function get_ystride():StdTypes.Int return this.ystride;
    function set_ystride(v:StdTypes.Int):StdTypes.Int {
        this.ystride = v;
        return v;
    }
    public var cstride(get, set) : StdTypes.Int;
    function get_cstride():StdTypes.Int return this.cstride;
    function set_cstride(v:StdTypes.Int):StdTypes.Int {
        this.cstride = v;
        return v;
    }
    public var subsampleRatio(get, set) : stdgo._internal.image.Image.YCbCrSubsampleRatio;
    function get_subsampleRatio():stdgo._internal.image.Image.YCbCrSubsampleRatio return this.subsampleRatio;
    function set_subsampleRatio(v:stdgo._internal.image.Image.YCbCrSubsampleRatio):stdgo._internal.image.Image.YCbCrSubsampleRatio {
        this.subsampleRatio = v;
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image.Rectangle;
    function get_rect():stdgo._internal.image.Image.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?y:Array<std.UInt>, ?cb:Array<std.UInt>, ?cr:Array<std.UInt>, ?ystride:StdTypes.Int, ?cstride:StdTypes.Int, ?subsampleRatio:stdgo._internal.image.Image.YCbCrSubsampleRatio, ?rect:stdgo._internal.image.Image.Rectangle) this = new stdgo._internal.image.Image.YCbCr(([for (i in y) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in cb) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in cr) i] : stdgo.Slice<stdgo.GoUInt8>), ystride, cstride, subsampleRatio, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract NYCbCrA(stdgo._internal.image.Image.NYCbCrA) from stdgo._internal.image.Image.NYCbCrA to stdgo._internal.image.Image.NYCbCrA {
    public var ycbCr(get, set) : stdgo._internal.image.Image.YCbCr;
    function get_ycbCr():stdgo._internal.image.Image.YCbCr return this.ycbCr;
    function set_ycbCr(v:stdgo._internal.image.Image.YCbCr):stdgo._internal.image.Image.YCbCr {
        this.ycbCr = v;
        return v;
    }
    public var a(get, set) : Array<std.UInt>;
    function get_a():Array<std.UInt> return [for (i in this.a) i];
    function set_a(v:Array<std.UInt>):Array<std.UInt> {
        this.a = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var astride(get, set) : StdTypes.Int;
    function get_astride():StdTypes.Int return this.astride;
    function set_astride(v:StdTypes.Int):StdTypes.Int {
        this.astride = v;
        return v;
    }
    public function new(?ycbCr:stdgo._internal.image.Image.YCbCr, ?a:Array<std.UInt>, ?astride:StdTypes.Int) this = new stdgo._internal.image.Image.NYCbCrA(ycbCr, ([for (i in a) i] : stdgo.Slice<stdgo.GoUInt8>), astride);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.image.Image.T__struct_0;
typedef T__struct_1 = stdgo._internal.image.Image.T__struct_1;
typedef YCbCrSubsampleRatio = stdgo._internal.image.Image.YCbCrSubsampleRatio;
class Image {
    /**
        RegisterFormat registers an image format for use by Decode.
        Name is the name of the format, like "jpeg" or "png".
        Magic is the magic prefix that identifies the format's encoding. The magic
        string can contain "?" wildcards that each match any one byte.
        Decode is the function that decodes the encoded image.
        DecodeConfig is the function that decodes just its configuration.
    **/
    static public function registerFormat(name:String, magic:String, decode:stdgo._internal.io.Io.Reader -> { var _0 : Image; var _1 : stdgo.Error; }, decodeConfig:stdgo._internal.io.Io.Reader -> { var _0 : Config; var _1 : stdgo.Error; }):Void {
        final decode = decode;
        final decodeConfig = decodeConfig;
        stdgo._internal.image.Image.registerFormat(name, magic, decode, decodeConfig);
    }
    /**
        Decode decodes an image that has been encoded in a registered format.
        The string returned is the format name used during format registration.
        Format registration is typically done by an init function in the codec-
        specific package.
    **/
    static public function decode(r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<Image, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image.decode(r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        DecodeConfig decodes the color model and dimensions of an image that has
        been encoded in a registered format. The string returned is the format name
        used during format registration. Format registration is typically done by
        an init function in the codec-specific package.
    **/
    static public function decodeConfig(r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<Config, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image.decodeConfig(r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        Pt is shorthand for Point{X, Y}.
    **/
    static public function pt(x:StdTypes.Int, y:StdTypes.Int):Point {
        return stdgo._internal.image.Image.pt(x, y);
    }
    /**
        Rect is shorthand for Rectangle{Pt(x0, y0), Pt(x1, y1)}. The returned
        rectangle has minimum and maximum coordinates swapped if necessary so that
        it is well-formed.
    **/
    static public function rect(x0:StdTypes.Int, y0:StdTypes.Int, x1:StdTypes.Int, y1:StdTypes.Int):Rectangle {
        return stdgo._internal.image.Image.rect(x0, y0, x1, y1);
    }
    static public function testRectangle(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testRectangle(t);
    }
    /**
        NewRGBA returns a new RGBA image with the given bounds.
    **/
    static public function newRGBA(r:Rectangle):RGBA {
        return stdgo._internal.image.Image.newRGBA(r);
    }
    /**
        NewRGBA64 returns a new RGBA64 image with the given bounds.
    **/
    static public function newRGBA64(r:Rectangle):RGBA64 {
        return stdgo._internal.image.Image.newRGBA64(r);
    }
    /**
        NewNRGBA returns a new NRGBA image with the given bounds.
    **/
    static public function newNRGBA(r:Rectangle):NRGBA {
        return stdgo._internal.image.Image.newNRGBA(r);
    }
    /**
        NewNRGBA64 returns a new NRGBA64 image with the given bounds.
    **/
    static public function newNRGBA64(r:Rectangle):NRGBA64 {
        return stdgo._internal.image.Image.newNRGBA64(r);
    }
    /**
        NewAlpha returns a new Alpha image with the given bounds.
    **/
    static public function newAlpha(r:Rectangle):Alpha {
        return stdgo._internal.image.Image.newAlpha(r);
    }
    /**
        NewAlpha16 returns a new Alpha16 image with the given bounds.
    **/
    static public function newAlpha16(r:Rectangle):Alpha16 {
        return stdgo._internal.image.Image.newAlpha16(r);
    }
    /**
        NewGray returns a new Gray image with the given bounds.
    **/
    static public function newGray(r:Rectangle):Gray {
        return stdgo._internal.image.Image.newGray(r);
    }
    /**
        NewGray16 returns a new Gray16 image with the given bounds.
    **/
    static public function newGray16(r:Rectangle):Gray16 {
        return stdgo._internal.image.Image.newGray16(r);
    }
    /**
        NewCMYK returns a new CMYK image with the given bounds.
    **/
    static public function newCMYK(r:Rectangle):CMYK {
        return stdgo._internal.image.Image.newCMYK(r);
    }
    /**
        NewPaletted returns a new Paletted image with the given width, height and
        palette.
    **/
    static public function newPaletted(r:Rectangle, p:stdgo._internal.image.color.Color.Palette):Paletted {
        return stdgo._internal.image.Image.newPaletted(r, p);
    }
    static public function testImage(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testImage(t);
    }
    static public function testNewXxxBadRectangle(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testNewXxxBadRectangle(t);
    }
    static public function test16BitsPerColorChannel(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.test16BitsPerColorChannel(t);
    }
    static public function testRGBA64Image(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testRGBA64Image(t);
    }
    static public function benchmarkAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAt(b);
    }
    static public function benchmarkSet(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkSet(b);
    }
    static public function benchmarkRGBAAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBAAt(b);
    }
    static public function benchmarkRGBASetRGBA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBASetRGBA(b);
    }
    static public function benchmarkRGBA64At(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBA64At(b);
    }
    static public function benchmarkRGBA64SetRGBA64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBA64SetRGBA64(b);
    }
    static public function benchmarkNRGBAAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBAAt(b);
    }
    static public function benchmarkNRGBASetNRGBA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBASetNRGBA(b);
    }
    static public function benchmarkNRGBA64At(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBA64At(b);
    }
    static public function benchmarkNRGBA64SetNRGBA64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBA64SetNRGBA64(b);
    }
    static public function benchmarkAlphaAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaAt(b);
    }
    static public function benchmarkAlphaSetAlpha(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaSetAlpha(b);
    }
    static public function benchmarkAlpha16At(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlpha16At(b);
    }
    static public function benchmarkAlphaSetAlpha16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaSetAlpha16(b);
    }
    static public function benchmarkGrayAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGrayAt(b);
    }
    static public function benchmarkGraySetGray(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGraySetGray(b);
    }
    static public function benchmarkGray16At(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGray16At(b);
    }
    static public function benchmarkGraySetGray16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGraySetGray16(b);
    }
    /**
        NewUniform returns a new Uniform image of the given color.
    **/
    static public function newUniform(c:stdgo._internal.image.color.Color.Color):Uniform {
        return stdgo._internal.image.Image.newUniform(c);
    }
    /**
        NewYCbCr returns a new YCbCr image with the given bounds and subsample
        ratio.
    **/
    static public function newYCbCr(r:Rectangle, subsampleRatio:YCbCrSubsampleRatio):YCbCr {
        return stdgo._internal.image.Image.newYCbCr(r, subsampleRatio);
    }
    /**
        NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
        ratio.
    **/
    static public function newNYCbCrA(r:Rectangle, subsampleRatio:YCbCrSubsampleRatio):NYCbCrA {
        return stdgo._internal.image.Image.newNYCbCrA(r, subsampleRatio);
    }
    static public function testYCbCr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testYCbCr(t);
    }
    static public function testYCbCrSlicesDontOverlap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testYCbCrSlicesDontOverlap(t);
    }
}
