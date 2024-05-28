package stdgo.image;
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
final ycbCrSubsampleRatio444 : YCbCrSubsampleRatio = stdgo._internal.image.Image.ycbCrSubsampleRatio444;
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
var black(get, set) : Uniform;
private function get_black():Uniform return stdgo._internal.image.Image.black;
private function set_black(v:Uniform):Uniform {
        stdgo._internal.image.Image.black = v;
        return v;
    }
var white(get, set) : Uniform;
private function get_white():Uniform return stdgo._internal.image.Image.white;
private function set_white(v:Uniform):Uniform {
        stdgo._internal.image.Image.white = v;
        return v;
    }
var transparent(get, set) : Uniform;
private function get_transparent():Uniform return stdgo._internal.image.Image.transparent;
private function set_transparent(v:Uniform):Uniform {
        stdgo._internal.image.Image.transparent = v;
        return v;
    }
var opaque(get, set) : Uniform;
private function get_opaque():Uniform return stdgo._internal.image.Image.opaque;
private function set_opaque(v:Uniform):Uniform {
        stdgo._internal.image.Image.opaque = v;
        return v;
    }
class T_reader_static_extension {
    static public function peek(t:T_reader, _0:StdTypes.Int):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image.T_reader_static_extension.peek(t, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_reader = stdgo._internal.image.Image.T_reader;
class Image__static_extension {
    static public function at(t:Image_, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.Image_static_extension.at(t, _x, _y);
    }
    static public function bounds(t:Image_):Rectangle {
        return stdgo._internal.image.Image.Image_static_extension.bounds(t);
    }
    static public function colorModel(t:Image_):Model {
        return stdgo._internal.image.Image.Image_static_extension.colorModel(t);
    }
}
typedef Image = stdgo._internal.image.Image.Image;
class RGBA64Image_static_extension {
    static public function rgba64at(t:RGBA64Image, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.RGBA64Image_static_extension.rgba64at(t, _x, _y);
    }
}
typedef RGBA64Image = stdgo._internal.image.Image.RGBA64Image;
class PalettedImage_static_extension {
    static public function colorIndexAt(t:PalettedImage, _x:StdTypes.Int, _y:StdTypes.Int):std.UInt {
        return stdgo._internal.image.Image.PalettedImage_static_extension.colorIndexAt(t, _x, _y);
    }
}
typedef PalettedImage = stdgo._internal.image.Image.PalettedImage;
class T_image_static_extension {
    static public function subImage(t:T_image, _0:Rectangle):Image_ {
        return stdgo._internal.image.Image.T_image_static_extension.subImage(t, _0);
    }
    static public function set(t:T_image, _0:StdTypes.Int, _1:StdTypes.Int, _2:Color):Void {
        stdgo._internal.image.Image.T_image_static_extension.set(t, _0, _1, _2);
    }
    static public function opaque(t:T_image):Bool {
        return stdgo._internal.image.Image.T_image_static_extension.opaque(t);
    }
}
typedef T_image = stdgo._internal.image.Image.T_image;
class T__interface_0_static_extension {
    static public function setRGBA64(t:T__interface_0, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.T__interface_0_static_extension.setRGBA64(t, _x, _y, _c);
    }
}
typedef T__interface_0 = stdgo._internal.image.Image.T__interface_0;
@:structInit @:private abstract T_format(stdgo._internal.image.Image.T_format) from stdgo._internal.image.Image.T_format to stdgo._internal.image.Image.T_format {
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
@:structInit @:using(stdgo.image.Image.Point_static_extension) abstract Point(stdgo._internal.image.Image.Point) from stdgo._internal.image.Image.Point to stdgo._internal.image.Image.Point {
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
@:structInit @:using(stdgo.image.Image.Rectangle_static_extension) abstract Rectangle(stdgo._internal.image.Image.Rectangle) from stdgo._internal.image.Image.Rectangle to stdgo._internal.image.Image.Rectangle {
    public var min(get, set) : Point;
    function get_min():Point return this.min;
    function set_min(v:Point):Point {
        this.min = v;
        return v;
    }
    public var max(get, set) : Point;
    function get_max():Point return this.max;
    function set_max(v:Point):Point {
        this.max = v;
        return v;
    }
    public function new(?min:Point, ?max:Point) this = new stdgo._internal.image.Image.Rectangle(min, max);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Config(stdgo._internal.image.Image.Config) from stdgo._internal.image.Image.Config to stdgo._internal.image.Image.Config {
    public var colorModel(get, set) : Model;
    function get_colorModel():Model return this.colorModel;
    function set_colorModel(v:Model):Model {
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
    public function new(?colorModel:Model, ?width:StdTypes.Int, ?height:StdTypes.Int) this = new stdgo._internal.image.Image.Config(colorModel, width, height);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.RGBA_static_extension) abstract RGBA(stdgo._internal.image.Image.RGBA) from stdgo._internal.image.Image.RGBA to stdgo._internal.image.Image.RGBA {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.RGBA(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.RGBA64_static_extension) abstract RGBA64(stdgo._internal.image.Image.RGBA64) from stdgo._internal.image.Image.RGBA64 to stdgo._internal.image.Image.RGBA64 {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.RGBA64(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.NRGBA_static_extension) abstract NRGBA(stdgo._internal.image.Image.NRGBA) from stdgo._internal.image.Image.NRGBA to stdgo._internal.image.Image.NRGBA {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.NRGBA(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.NRGBA64_static_extension) abstract NRGBA64(stdgo._internal.image.Image.NRGBA64) from stdgo._internal.image.Image.NRGBA64 to stdgo._internal.image.Image.NRGBA64 {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.NRGBA64(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Alpha_static_extension) abstract Alpha(stdgo._internal.image.Image.Alpha) from stdgo._internal.image.Image.Alpha to stdgo._internal.image.Image.Alpha {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.Alpha(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Alpha16_static_extension) abstract Alpha16(stdgo._internal.image.Image.Alpha16) from stdgo._internal.image.Image.Alpha16 to stdgo._internal.image.Image.Alpha16 {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.Alpha16(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Gray_static_extension) abstract Gray(stdgo._internal.image.Image.Gray) from stdgo._internal.image.Image.Gray to stdgo._internal.image.Image.Gray {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.Gray(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Gray16_static_extension) abstract Gray16(stdgo._internal.image.Image.Gray16) from stdgo._internal.image.Image.Gray16 to stdgo._internal.image.Image.Gray16 {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.Gray16(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.CMYK_static_extension) abstract CMYK(stdgo._internal.image.Image.CMYK) from stdgo._internal.image.Image.CMYK to stdgo._internal.image.Image.CMYK {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image.CMYK(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Paletted_static_extension) abstract Paletted(stdgo._internal.image.Image.Paletted) from stdgo._internal.image.Image.Paletted to stdgo._internal.image.Image.Paletted {
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
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public var palette(get, set) : Palette;
    function get_palette():Palette return this.palette;
    function set_palette(v:Palette):Palette {
        this.palette = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle, ?palette:Palette) this = new stdgo._internal.image.Image.Paletted(([for (i in pix) i] : stdgo.Slice<stdgo.GoUInt8>), stride, rect, palette);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Uniform_static_extension) abstract Uniform(stdgo._internal.image.Image.Uniform) from stdgo._internal.image.Image.Uniform to stdgo._internal.image.Image.Uniform {
    public var c(get, set) : Color;
    function get_c():Color return this.c;
    function set_c(v:Color):Color {
        this.c = v;
        return v;
    }
    public function new(?c:Color) this = new stdgo._internal.image.Image.Uniform(c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.YCbCr_static_extension) abstract YCbCr(stdgo._internal.image.Image.YCbCr) from stdgo._internal.image.Image.YCbCr to stdgo._internal.image.Image.YCbCr {
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
    public var subsampleRatio(get, set) : YCbCrSubsampleRatio;
    function get_subsampleRatio():YCbCrSubsampleRatio return this.subsampleRatio;
    function set_subsampleRatio(v:YCbCrSubsampleRatio):YCbCrSubsampleRatio {
        this.subsampleRatio = v;
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?y:Array<std.UInt>, ?cb:Array<std.UInt>, ?cr:Array<std.UInt>, ?ystride:StdTypes.Int, ?cstride:StdTypes.Int, ?subsampleRatio:YCbCrSubsampleRatio, ?rect:Rectangle) this = new stdgo._internal.image.Image.YCbCr(([for (i in y) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in cb) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in cr) i] : stdgo.Slice<stdgo.GoUInt8>), ystride, cstride, subsampleRatio, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.NYCbCrA_static_extension) abstract NYCbCrA(stdgo._internal.image.Image.NYCbCrA) from stdgo._internal.image.Image.NYCbCrA to stdgo._internal.image.Image.NYCbCrA {
    public var ycbCr(get, set) : YCbCr;
    function get_ycbCr():YCbCr return this.ycbCr;
    function set_ycbCr(v:YCbCr):YCbCr {
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
    public function new(?ycbCr:YCbCr, ?a:Array<std.UInt>, ?astride:StdTypes.Int) this = new stdgo._internal.image.Image.NYCbCrA(ycbCr, ([for (i in a) i] : stdgo.Slice<stdgo.GoUInt8>), astride);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.image.Image.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.image.Image.T__struct_1;
typedef YCbCrSubsampleRatio = stdgo._internal.image.Image.YCbCrSubsampleRatio;
class Point_static_extension {
    static public function eq(_p:Point, _q:Point):Bool {
        return stdgo._internal.image.Image.Point_static_extension.eq(_p, _q);
    }
    static public function mod(_p:Point, _r:Rectangle):Point {
        return stdgo._internal.image.Image.Point_static_extension.mod(_p, _r);
    }
    static public function in_(_p:Point, _r:Rectangle):Bool {
        return stdgo._internal.image.Image.Point_static_extension.in_(_p, _r);
    }
    static public function div(_p:Point, _k:StdTypes.Int):Point {
        return stdgo._internal.image.Image.Point_static_extension.div(_p, _k);
    }
    static public function mul(_p:Point, _k:StdTypes.Int):Point {
        return stdgo._internal.image.Image.Point_static_extension.mul(_p, _k);
    }
    static public function sub(_p:Point, _q:Point):Point {
        return stdgo._internal.image.Image.Point_static_extension.sub(_p, _q);
    }
    static public function add(_p:Point, _q:Point):Point {
        return stdgo._internal.image.Image.Point_static_extension.add(_p, _q);
    }
    static public function string(_p:Point):String {
        return stdgo._internal.image.Image.Point_static_extension.string(_p);
    }
}
class Rectangle_static_extension {
    static public function colorModel(_r:Rectangle):Model {
        return stdgo._internal.image.Image.Rectangle_static_extension.colorModel(_r);
    }
    static public function bounds(_r:Rectangle):Rectangle {
        return stdgo._internal.image.Image.Rectangle_static_extension.bounds(_r);
    }
    static public function rgba64at(_r:Rectangle, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.Rectangle_static_extension.rgba64at(_r, _x, _y);
    }
    static public function at(_r:Rectangle, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.Rectangle_static_extension.at(_r, _x, _y);
    }
    static public function canon(_r:Rectangle):Rectangle {
        return stdgo._internal.image.Image.Rectangle_static_extension.canon(_r);
    }
    static public function in_(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image.Rectangle_static_extension.in_(_r, _s);
    }
    static public function overlaps(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image.Rectangle_static_extension.overlaps(_r, _s);
    }
    static public function eq(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image.Rectangle_static_extension.eq(_r, _s);
    }
    static public function empty(_r:Rectangle):Bool {
        return stdgo._internal.image.Image.Rectangle_static_extension.empty(_r);
    }
    static public function union(_r:Rectangle, _s:Rectangle):Rectangle {
        return stdgo._internal.image.Image.Rectangle_static_extension.union(_r, _s);
    }
    static public function intersect(_r:Rectangle, _s:Rectangle):Rectangle {
        return stdgo._internal.image.Image.Rectangle_static_extension.intersect(_r, _s);
    }
    static public function inset(_r:Rectangle, _n:StdTypes.Int):Rectangle {
        return stdgo._internal.image.Image.Rectangle_static_extension.inset(_r, _n);
    }
    static public function sub(_r:Rectangle, _p:Point):Rectangle {
        return stdgo._internal.image.Image.Rectangle_static_extension.sub(_r, _p);
    }
    static public function add(_r:Rectangle, _p:Point):Rectangle {
        return stdgo._internal.image.Image.Rectangle_static_extension.add(_r, _p);
    }
    static public function size(_r:Rectangle):Point {
        return stdgo._internal.image.Image.Rectangle_static_extension.size(_r);
    }
    static public function dy(_r:Rectangle):StdTypes.Int {
        return stdgo._internal.image.Image.Rectangle_static_extension.dy(_r);
    }
    static public function dx(_r:Rectangle):StdTypes.Int {
        return stdgo._internal.image.Image.Rectangle_static_extension.dx(_r);
    }
    static public function string(_r:Rectangle):String {
        return stdgo._internal.image.Image.Rectangle_static_extension.string(_r);
    }
}
class RGBA_static_extension {
    static public function opaque(_p:RGBA):Bool {
        return stdgo._internal.image.Image.RGBA_static_extension.opaque(_p);
    }
    static public function subImage(_p:RGBA, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.RGBA_static_extension.subImage(_p, _r);
    }
    static public function setRGBA(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA):Void {
        stdgo._internal.image.Image.RGBA_static_extension.setRGBA(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.RGBA_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.RGBA_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.RGBA_static_extension.pixOffset(_p, _x, _y);
    }
    static public function rgbaat(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):RGBA {
        return stdgo._internal.image.Image.RGBA_static_extension.rgbaat(_p, _x, _y);
    }
    static public function rgba64at(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.RGBA_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.RGBA_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:RGBA):Rectangle {
        return stdgo._internal.image.Image.RGBA_static_extension.bounds(_p);
    }
    static public function colorModel(_p:RGBA):Model {
        return stdgo._internal.image.Image.RGBA_static_extension.colorModel(_p);
    }
}
class RGBA64_static_extension {
    static public function opaque(_p:RGBA64):Bool {
        return stdgo._internal.image.Image.RGBA64_static_extension.opaque(_p);
    }
    static public function subImage(_p:RGBA64, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.RGBA64_static_extension.subImage(_p, _r);
    }
    static public function setRGBA64(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.RGBA64_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.RGBA64_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.RGBA64_static_extension.pixOffset(_p, _x, _y);
    }
    static public function rgba64at(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.RGBA64_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.RGBA64_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:RGBA64):Rectangle {
        return stdgo._internal.image.Image.RGBA64_static_extension.bounds(_p);
    }
    static public function colorModel(_p:RGBA64):Model {
        return stdgo._internal.image.Image.RGBA64_static_extension.colorModel(_p);
    }
}
class NRGBA_static_extension {
    static public function opaque(_p:NRGBA):Bool {
        return stdgo._internal.image.Image.NRGBA_static_extension.opaque(_p);
    }
    static public function subImage(_p:NRGBA, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.NRGBA_static_extension.subImage(_p, _r);
    }
    static public function setNRGBA(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:NRGBA):Void {
        stdgo._internal.image.Image.NRGBA_static_extension.setNRGBA(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.NRGBA_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.NRGBA_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.NRGBA_static_extension.pixOffset(_p, _x, _y);
    }
    static public function nrgbaat(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):NRGBA {
        return stdgo._internal.image.Image.NRGBA_static_extension.nrgbaat(_p, _x, _y);
    }
    static public function rgba64at(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.NRGBA_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.NRGBA_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:NRGBA):Rectangle {
        return stdgo._internal.image.Image.NRGBA_static_extension.bounds(_p);
    }
    static public function colorModel(_p:NRGBA):Model {
        return stdgo._internal.image.Image.NRGBA_static_extension.colorModel(_p);
    }
}
class NRGBA64_static_extension {
    static public function opaque(_p:NRGBA64):Bool {
        return stdgo._internal.image.Image.NRGBA64_static_extension.opaque(_p);
    }
    static public function subImage(_p:NRGBA64, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.NRGBA64_static_extension.subImage(_p, _r);
    }
    static public function setNRGBA64(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:NRGBA64):Void {
        stdgo._internal.image.Image.NRGBA64_static_extension.setNRGBA64(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.NRGBA64_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.NRGBA64_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.NRGBA64_static_extension.pixOffset(_p, _x, _y);
    }
    static public function nrgba64at(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int):NRGBA64 {
        return stdgo._internal.image.Image.NRGBA64_static_extension.nrgba64at(_p, _x, _y);
    }
    static public function rgba64at(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.NRGBA64_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.NRGBA64_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:NRGBA64):Rectangle {
        return stdgo._internal.image.Image.NRGBA64_static_extension.bounds(_p);
    }
    static public function colorModel(_p:NRGBA64):Model {
        return stdgo._internal.image.Image.NRGBA64_static_extension.colorModel(_p);
    }
}
class Alpha_static_extension {
    static public function opaque(_p:Alpha):Bool {
        return stdgo._internal.image.Image.Alpha_static_extension.opaque(_p);
    }
    static public function subImage(_p:Alpha, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.Alpha_static_extension.subImage(_p, _r);
    }
    static public function setAlpha(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int, _c:Alpha):Void {
        stdgo._internal.image.Image.Alpha_static_extension.setAlpha(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.Alpha_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.Alpha_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.Alpha_static_extension.pixOffset(_p, _x, _y);
    }
    static public function alphaAt(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int):Alpha {
        return stdgo._internal.image.Image.Alpha_static_extension.alphaAt(_p, _x, _y);
    }
    static public function rgba64at(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.Alpha_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.Alpha_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Alpha):Rectangle {
        return stdgo._internal.image.Image.Alpha_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Alpha):Model {
        return stdgo._internal.image.Image.Alpha_static_extension.colorModel(_p);
    }
}
class Alpha16_static_extension {
    static public function opaque(_p:Alpha16):Bool {
        return stdgo._internal.image.Image.Alpha16_static_extension.opaque(_p);
    }
    static public function subImage(_p:Alpha16, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.Alpha16_static_extension.subImage(_p, _r);
    }
    static public function setAlpha16(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int, _c:Alpha16):Void {
        stdgo._internal.image.Image.Alpha16_static_extension.setAlpha16(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.Alpha16_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.Alpha16_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.Alpha16_static_extension.pixOffset(_p, _x, _y);
    }
    static public function alpha16At(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int):Alpha16 {
        return stdgo._internal.image.Image.Alpha16_static_extension.alpha16At(_p, _x, _y);
    }
    static public function rgba64at(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.Alpha16_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.Alpha16_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Alpha16):Rectangle {
        return stdgo._internal.image.Image.Alpha16_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Alpha16):Model {
        return stdgo._internal.image.Image.Alpha16_static_extension.colorModel(_p);
    }
}
class Gray_static_extension {
    static public function opaque(_p:Gray):Bool {
        return stdgo._internal.image.Image.Gray_static_extension.opaque(_p);
    }
    static public function subImage(_p:Gray, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.Gray_static_extension.subImage(_p, _r);
    }
    static public function setGray(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:Gray):Void {
        stdgo._internal.image.Image.Gray_static_extension.setGray(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.Gray_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.Gray_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.Gray_static_extension.pixOffset(_p, _x, _y);
    }
    static public function grayAt(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):Gray {
        return stdgo._internal.image.Image.Gray_static_extension.grayAt(_p, _x, _y);
    }
    static public function rgba64at(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.Gray_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.Gray_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Gray):Rectangle {
        return stdgo._internal.image.Image.Gray_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Gray):Model {
        return stdgo._internal.image.Image.Gray_static_extension.colorModel(_p);
    }
}
class Gray16_static_extension {
    static public function opaque(_p:Gray16):Bool {
        return stdgo._internal.image.Image.Gray16_static_extension.opaque(_p);
    }
    static public function subImage(_p:Gray16, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.Gray16_static_extension.subImage(_p, _r);
    }
    static public function setGray16(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int, _c:Gray16):Void {
        stdgo._internal.image.Image.Gray16_static_extension.setGray16(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.Gray16_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.Gray16_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.Gray16_static_extension.pixOffset(_p, _x, _y);
    }
    static public function gray16At(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int):Gray16 {
        return stdgo._internal.image.Image.Gray16_static_extension.gray16At(_p, _x, _y);
    }
    static public function rgba64at(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.Gray16_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.Gray16_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Gray16):Rectangle {
        return stdgo._internal.image.Image.Gray16_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Gray16):Model {
        return stdgo._internal.image.Image.Gray16_static_extension.colorModel(_p);
    }
}
class CMYK_static_extension {
    static public function opaque(_p:CMYK):Bool {
        return stdgo._internal.image.Image.CMYK_static_extension.opaque(_p);
    }
    static public function subImage(_p:CMYK, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.CMYK_static_extension.subImage(_p, _r);
    }
    static public function setCMYK(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:CMYK):Void {
        stdgo._internal.image.Image.CMYK_static_extension.setCMYK(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.CMYK_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.CMYK_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.CMYK_static_extension.pixOffset(_p, _x, _y);
    }
    static public function cmykat(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):CMYK {
        return stdgo._internal.image.Image.CMYK_static_extension.cmykat(_p, _x, _y);
    }
    static public function rgba64at(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.CMYK_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.CMYK_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:CMYK):Rectangle {
        return stdgo._internal.image.Image.CMYK_static_extension.bounds(_p);
    }
    static public function colorModel(_p:CMYK):Model {
        return stdgo._internal.image.Image.CMYK_static_extension.colorModel(_p);
    }
}
class Paletted_static_extension {
    static public function opaque(_p:Paletted):Bool {
        return stdgo._internal.image.Image.Paletted_static_extension.opaque(_p);
    }
    static public function subImage(_p:Paletted, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.Paletted_static_extension.subImage(_p, _r);
    }
    static public function setColorIndex(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _index:std.UInt):Void {
        stdgo._internal.image.Image.Paletted_static_extension.setColorIndex(_p, _x, _y, _index);
    }
    static public function colorIndexAt(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):std.UInt {
        return stdgo._internal.image.Image.Paletted_static_extension.colorIndexAt(_p, _x, _y);
    }
    static public function setRGBA64(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        stdgo._internal.image.Image.Paletted_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        stdgo._internal.image.Image.Paletted_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.Paletted_static_extension.pixOffset(_p, _x, _y);
    }
    static public function rgba64at(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.Paletted_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.Paletted_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Paletted):Rectangle {
        return stdgo._internal.image.Image.Paletted_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Paletted):Model {
        return stdgo._internal.image.Image.Paletted_static_extension.colorModel(_p);
    }
}
class Uniform_static_extension {
    static public function opaque(_c:Uniform):Bool {
        return stdgo._internal.image.Image.Uniform_static_extension.opaque(_c);
    }
    static public function rgba64at(_c:Uniform, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.Uniform_static_extension.rgba64at(_c, _x, _y);
    }
    static public function at(_c:Uniform, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.Uniform_static_extension.at(_c, _x, _y);
    }
    static public function bounds(_c:Uniform):Rectangle {
        return stdgo._internal.image.Image.Uniform_static_extension.bounds(_c);
    }
    static public function convert(_c:Uniform, _0:Color):Color {
        return stdgo._internal.image.Image.Uniform_static_extension.convert(_c, _0);
    }
    static public function colorModel(_c:Uniform):Model {
        return stdgo._internal.image.Image.Uniform_static_extension.colorModel(_c);
    }
    static public function rgba(_c:Uniform):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.Image.Uniform_static_extension.rgba(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
class YCbCr_static_extension {
    static public function opaque(_p:YCbCr):Bool {
        return stdgo._internal.image.Image.YCbCr_static_extension.opaque(_p);
    }
    static public function subImage(_p:YCbCr, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.YCbCr_static_extension.subImage(_p, _r);
    }
    static public function coffset(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.YCbCr_static_extension.coffset(_p, _x, _y);
    }
    static public function yoffset(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.YCbCr_static_extension.yoffset(_p, _x, _y);
    }
    static public function ycbCrAt(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):YCbCr {
        return stdgo._internal.image.Image.YCbCr_static_extension.ycbCrAt(_p, _x, _y);
    }
    static public function rgba64at(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.YCbCr_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.YCbCr_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:YCbCr):Rectangle {
        return stdgo._internal.image.Image.YCbCr_static_extension.bounds(_p);
    }
    static public function colorModel(_p:YCbCr):Model {
        return stdgo._internal.image.Image.YCbCr_static_extension.colorModel(_p);
    }
}
class NYCbCrA_static_extension {
    static public function opaque(_p:NYCbCrA):Bool {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.opaque(_p);
    }
    static public function subImage(_p:NYCbCrA, _r:Rectangle):Image_ {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.subImage(_p, _r);
    }
    static public function aoffset(_p:NYCbCrA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.aoffset(_p, _x, _y);
    }
    static public function nycbCrAAt(_p:NYCbCrA, _x:StdTypes.Int, _y:StdTypes.Int):NYCbCrA {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.nycbCrAAt(_p, _x, _y);
    }
    static public function rgba64at(_p:NYCbCrA, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.rgba64at(_p, _x, _y);
    }
    static public function at(_p:NYCbCrA, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.at(_p, _x, _y);
    }
    static public function colorModel(_p:NYCbCrA):Model {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.colorModel(_p);
    }
    public static function yoffset(__self__:NYCbCrA, _x_:StdTypes.Int, _y_:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.yoffset(__self__, _x_, _y_);
    }
    public static function ycbCrAt(__self__:NYCbCrA, _x_:StdTypes.Int, _y_:StdTypes.Int):YCbCr {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.ycbCrAt(__self__, _x_, _y_);
    }
    public static function coffset(__self__:NYCbCrA, _x_:StdTypes.Int, _y_:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.coffset(__self__, _x_, _y_);
    }
    public static function bounds(__self__:NYCbCrA):Rectangle {
        return stdgo._internal.image.Image.NYCbCrA_static_extension.bounds(__self__);
    }
}
class YCbCrSubsampleRatio_static_extension {
    static public function string(_s:YCbCrSubsampleRatio):String {
        return stdgo._internal.image.Image.YCbCrSubsampleRatio_static_extension.string(_s);
    }
}
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
class Image {
    /**
        RegisterFormat registers an image format for use by Decode.
        Name is the name of the format, like "jpeg" or "png".
        Magic is the magic prefix that identifies the format's encoding. The magic
        string can contain "?" wildcards that each match any one byte.
        Decode is the function that decodes the encoded image.
        DecodeConfig is the function that decodes just its configuration.
    **/
    static public function registerFormat(_name:String, _magic:String, _decode:stdgo._internal.io.Io.Reader -> { var _0 : Image; var _1 : stdgo.Error; }, _decodeConfig:stdgo._internal.io.Io.Reader -> { var _0 : Config; var _1 : stdgo.Error; }):Void {
        final _decode = _decode;
        final _decodeConfig = _decodeConfig;
        stdgo._internal.image.Image.registerFormat(_name, _magic, _decode, _decodeConfig);
    }
    /**
        Decode decodes an image that has been encoded in a registered format.
        The string returned is the format name used during format registration.
        Format registration is typically done by an init function in the codec-
        specific package.
    **/
    static public function decode(_r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<Image_, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image.decode(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        DecodeConfig decodes the color model and dimensions of an image that has
        been encoded in a registered format. The string returned is the format name
        used during format registration. Format registration is typically done by
        an init function in the codec-specific package.
    **/
    static public function decodeConfig(_r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<Config, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image.decodeConfig(_r);
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
    static public function rect(_x0:StdTypes.Int, _y0:StdTypes.Int, _x1:StdTypes.Int, _y1:StdTypes.Int):Rectangle {
        return stdgo._internal.image.Image.rect(_x0, _y0, _x1, _y1);
    }
    static public function testRectangle(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testRectangle(_t);
    }
    /**
        NewRGBA returns a new RGBA image with the given bounds.
    **/
    static public function newRGBA(_r:Rectangle):RGBA {
        return stdgo._internal.image.Image.newRGBA(_r);
    }
    /**
        NewRGBA64 returns a new RGBA64 image with the given bounds.
    **/
    static public function newRGBA64(_r:Rectangle):RGBA64 {
        return stdgo._internal.image.Image.newRGBA64(_r);
    }
    /**
        NewNRGBA returns a new NRGBA image with the given bounds.
    **/
    static public function newNRGBA(_r:Rectangle):NRGBA {
        return stdgo._internal.image.Image.newNRGBA(_r);
    }
    /**
        NewNRGBA64 returns a new NRGBA64 image with the given bounds.
    **/
    static public function newNRGBA64(_r:Rectangle):NRGBA64 {
        return stdgo._internal.image.Image.newNRGBA64(_r);
    }
    /**
        NewAlpha returns a new Alpha image with the given bounds.
    **/
    static public function newAlpha(_r:Rectangle):Alpha {
        return stdgo._internal.image.Image.newAlpha(_r);
    }
    /**
        NewAlpha16 returns a new Alpha16 image with the given bounds.
    **/
    static public function newAlpha16(_r:Rectangle):Alpha16 {
        return stdgo._internal.image.Image.newAlpha16(_r);
    }
    /**
        NewGray returns a new Gray image with the given bounds.
    **/
    static public function newGray(_r:Rectangle):Gray {
        return stdgo._internal.image.Image.newGray(_r);
    }
    /**
        NewGray16 returns a new Gray16 image with the given bounds.
    **/
    static public function newGray16(_r:Rectangle):Gray16 {
        return stdgo._internal.image.Image.newGray16(_r);
    }
    /**
        NewCMYK returns a new CMYK image with the given bounds.
    **/
    static public function newCMYK(_r:Rectangle):CMYK {
        return stdgo._internal.image.Image.newCMYK(_r);
    }
    /**
        NewPaletted returns a new Paletted image with the given width, height and
        palette.
    **/
    static public function newPaletted(_r:Rectangle, _p:Palette):Paletted {
        return stdgo._internal.image.Image.newPaletted(_r, _p);
    }
    static public function testImage(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testImage(_t);
    }
    static public function testNewXxxBadRectangle(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testNewXxxBadRectangle(_t);
    }
    static public function test16BitsPerColorChannel(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.test16BitsPerColorChannel(_t);
    }
    static public function testRGBA64Image(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testRGBA64Image(_t);
    }
    static public function benchmarkAt(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAt(_b);
    }
    static public function benchmarkSet(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkSet(_b);
    }
    static public function benchmarkRGBAAt(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBAAt(_b);
    }
    static public function benchmarkRGBASetRGBA(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBASetRGBA(_b);
    }
    static public function benchmarkRGBA64At(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBA64At(_b);
    }
    static public function benchmarkRGBA64SetRGBA64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBA64SetRGBA64(_b);
    }
    static public function benchmarkNRGBAAt(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBAAt(_b);
    }
    static public function benchmarkNRGBASetNRGBA(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBASetNRGBA(_b);
    }
    static public function benchmarkNRGBA64At(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBA64At(_b);
    }
    static public function benchmarkNRGBA64SetNRGBA64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBA64SetNRGBA64(_b);
    }
    static public function benchmarkAlphaAt(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaAt(_b);
    }
    static public function benchmarkAlphaSetAlpha(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaSetAlpha(_b);
    }
    static public function benchmarkAlpha16At(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlpha16At(_b);
    }
    static public function benchmarkAlphaSetAlpha16(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaSetAlpha16(_b);
    }
    static public function benchmarkGrayAt(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGrayAt(_b);
    }
    static public function benchmarkGraySetGray(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGraySetGray(_b);
    }
    static public function benchmarkGray16At(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGray16At(_b);
    }
    static public function benchmarkGraySetGray16(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGraySetGray16(_b);
    }
    /**
        NewUniform returns a new Uniform image of the given color.
    **/
    static public function newUniform(_c:Color):Uniform {
        return stdgo._internal.image.Image.newUniform(_c);
    }
    /**
        NewYCbCr returns a new YCbCr image with the given bounds and subsample
        ratio.
    **/
    static public function newYCbCr(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):YCbCr {
        return stdgo._internal.image.Image.newYCbCr(_r, _subsampleRatio);
    }
    /**
        NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
        ratio.
    **/
    static public function newNYCbCrA(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):NYCbCrA {
        return stdgo._internal.image.Image.newNYCbCrA(_r, _subsampleRatio);
    }
    static public function testYCbCr(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testYCbCr(_t);
    }
    static public function testYCbCrSlicesDontOverlap(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testYCbCrSlicesDontOverlap(_t);
    }
}
