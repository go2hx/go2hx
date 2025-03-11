package stdgo.image;
var zP(get, set) : Point;
private function get_zP():Point return stdgo._internal.image.Image_zp.zP;
private function set_zP(v:Point):Point {
        stdgo._internal.image.Image_zp.zP = v;
        return v;
    }
var zR(get, set) : Rectangle;
private function get_zR():Rectangle return stdgo._internal.image.Image_zr.zR;
private function set_zR(v:Rectangle):Rectangle {
        stdgo._internal.image.Image_zr.zR = v;
        return v;
    }
final yCbCrSubsampleRatio444 : YCbCrSubsampleRatio = stdgo._internal.image.Image_ycbcrsubsampleratio444.yCbCrSubsampleRatio444;
final yCbCrSubsampleRatio422 = stdgo._internal.image.Image_ycbcrsubsampleratio422.yCbCrSubsampleRatio422;
final yCbCrSubsampleRatio420 = stdgo._internal.image.Image_ycbcrsubsampleratio420.yCbCrSubsampleRatio420;
final yCbCrSubsampleRatio440 = stdgo._internal.image.Image_ycbcrsubsampleratio440.yCbCrSubsampleRatio440;
final yCbCrSubsampleRatio411 = stdgo._internal.image.Image_ycbcrsubsampleratio411.yCbCrSubsampleRatio411;
final yCbCrSubsampleRatio410 = stdgo._internal.image.Image_ycbcrsubsampleratio410.yCbCrSubsampleRatio410;
var errFormat(get, set) : stdgo.Error;
private function get_errFormat():stdgo.Error return stdgo._internal.image.Image_errformat.errFormat;
private function set_errFormat(v:stdgo.Error):stdgo.Error {
        stdgo._internal.image.Image_errformat.errFormat = (v : stdgo.Error);
        return v;
    }
var black(get, set) : Uniform;
private function get_black():Uniform return stdgo._internal.image.Image_black.black;
private function set_black(v:Uniform):Uniform {
        stdgo._internal.image.Image_black.black = (v : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return v;
    }
var white(get, set) : Uniform;
private function get_white():Uniform return stdgo._internal.image.Image_white.white;
private function set_white(v:Uniform):Uniform {
        stdgo._internal.image.Image_white.white = (v : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return v;
    }
var transparent(get, set) : Uniform;
private function get_transparent():Uniform return stdgo._internal.image.Image_transparent.transparent;
private function set_transparent(v:Uniform):Uniform {
        stdgo._internal.image.Image_transparent.transparent = (v : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return v;
    }
var opaque(get, set) : Uniform;
private function get_opaque():Uniform return stdgo._internal.image.Image_opaque.opaque;
private function set_opaque(v:Uniform):Uniform {
        stdgo._internal.image.Image_opaque.opaque = (v : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return v;
    }
@:dox(hide) class T_reader_static_extension {
    static public function peek(t:stdgo._internal.image.Image_t_reader.T_reader, _0:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.image.Image_t_reader_static_extension.T_reader_static_extension.peek(t, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:interface @:dox(hide) @:forward abstract T_reader(stdgo._internal.image.Image_t_reader.T_reader) from stdgo._internal.image.Image_t_reader.T_reader to stdgo._internal.image.Image_t_reader.T_reader {
    @:from
    static function fromHaxeInterface(x:{ function peek(_0:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; function read(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):T_reader {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_reader = { peek : _0 -> {
            final obj = x.peek(_0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        }, read : _0 -> {
            final obj = x.read([for (i in _0) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Image_static_extension {
    static public function at(t:stdgo._internal.image.Image_image.Image, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_image_static_extension.Image_static_extension.at(t, _x, _y);
    }
    static public function bounds(t:stdgo._internal.image.Image_image.Image):Rectangle {
        return stdgo._internal.image.Image_image_static_extension.Image_static_extension.bounds(t);
    }
    static public function colorModel(t:stdgo._internal.image.Image_image.Image):stdgo._internal.image.color.Color_model.Model {
        return stdgo._internal.image.Image_image_static_extension.Image_static_extension.colorModel(t);
    }
}
@:interface @:forward abstract Image_(stdgo._internal.image.Image_image.Image) from stdgo._internal.image.Image_image.Image to stdgo._internal.image.Image_image.Image {
    @:from
    static function fromHaxeInterface(x:{ function colorModel():stdgo._internal.image.color.Color_model.Model; function bounds():Rectangle; function at(_x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color; }):Image_ {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Image_ = { colorModel : () -> x.colorModel(), bounds : () -> x.bounds(), at : (_0, _1) -> x.at(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RGBA64Image_static_extension {
    static public function rGBA64At(t:stdgo._internal.image.Image_rgba64image.RGBA64Image, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rgba64image_static_extension.RGBA64Image_static_extension.rGBA64At(t, _x, _y);
    }
}
@:interface @:forward abstract RGBA64Image(stdgo._internal.image.Image_rgba64image.RGBA64Image) from stdgo._internal.image.Image_rgba64image.RGBA64Image to stdgo._internal.image.Image_rgba64image.RGBA64Image {
    @:from
    static function fromHaxeInterface(x:{ function rGBA64At(_x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64; function at(_0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_color.Color; function bounds():Rectangle; function colorModel():stdgo._internal.image.color.Color_model.Model; }):RGBA64Image {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RGBA64Image = { rGBA64At : (_0, _1) -> x.rGBA64At(_0, _1), at : (_0, _1) -> x.at(_0, _1), bounds : () -> x.bounds(), colorModel : () -> x.colorModel(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class PalettedImage_static_extension {
    static public function colorIndexAt(t:stdgo._internal.image.Image_palettedimage.PalettedImage, _x:StdTypes.Int, _y:StdTypes.Int):std.UInt {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_palettedimage_static_extension.PalettedImage_static_extension.colorIndexAt(t, _x, _y);
    }
}
@:interface @:forward abstract PalettedImage(stdgo._internal.image.Image_palettedimage.PalettedImage) from stdgo._internal.image.Image_palettedimage.PalettedImage to stdgo._internal.image.Image_palettedimage.PalettedImage {
    @:from
    static function fromHaxeInterface(x:{ function colorIndexAt(_x:StdTypes.Int, _y:StdTypes.Int):std.UInt; function at(_0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_color.Color; function bounds():Rectangle; function colorModel():stdgo._internal.image.color.Color_model.Model; }):PalettedImage {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:PalettedImage = { colorIndexAt : (_0, _1) -> x.colorIndexAt(_0, _1), at : (_0, _1) -> x.at(_0, _1), bounds : () -> x.bounds(), colorModel : () -> x.colorModel(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_image_static_extension {
    static public function subImage(t:stdgo._internal.image.Image_t_image.T_image, _0:Rectangle):Image_ {
        return stdgo._internal.image.Image_t_image_static_extension.T_image_static_extension.subImage(t, _0);
    }
    static public function set(t:stdgo._internal.image.Image_t_image.T_image, _0:StdTypes.Int, _1:StdTypes.Int, _2:stdgo._internal.image.color.Color_color.Color):Void {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.image.Image_t_image_static_extension.T_image_static_extension.set(t, _0, _1, _2);
    }
    static public function opaque(t:stdgo._internal.image.Image_t_image.T_image):Bool {
        return stdgo._internal.image.Image_t_image_static_extension.T_image_static_extension.opaque(t);
    }
}
@:interface @:dox(hide) @:forward abstract T_image(stdgo._internal.image.Image_t_image.T_image) from stdgo._internal.image.Image_t_image.T_image to stdgo._internal.image.Image_t_image.T_image {
    @:from
    static function fromHaxeInterface(x:{ function opaque():Bool; function set(_0:StdTypes.Int, _1:StdTypes.Int, _2:stdgo._internal.image.color.Color_color.Color):Void; function subImage(_0:Rectangle):Image_; function at(_0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_color.Color; function bounds():Rectangle; function colorModel():stdgo._internal.image.color.Color_model.Model; }):T_image {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_image = { opaque : () -> x.opaque(), set : (_0, _1, _2) -> x.set(_0, _1, _2), subImage : _0 -> x.subImage(_0), at : (_0, _1) -> x.at(_0, _1), bounds : () -> x.bounds(), colorModel : () -> x.colorModel(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_0_static_extension {
    static public function setRGBA64(t:stdgo._internal.image.Image_t__interface_0.T__interface_0, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_t__interface_0_static_extension.T__interface_0_static_extension.setRGBA64(t, _x, _y, _c);
    }
}
@:interface @:dox(hide) @:forward abstract T__interface_0(stdgo._internal.image.Image_t__interface_0.T__interface_0) from stdgo._internal.image.Image_t__interface_0.T__interface_0 to stdgo._internal.image.Image_t__interface_0.T__interface_0 {
    @:from
    static function fromHaxeInterface(x:{ function setRGBA64(_x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void; }):T__interface_0 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_0 = { setRGBA64 : (_0, _1, _2) -> x.setRGBA64(_0, _1, _2), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.image.Image.T_format_static_extension) @:dox(hide) abstract T_format(stdgo._internal.image.Image_t_format.T_format) from stdgo._internal.image.Image_t_format.T_format to stdgo._internal.image.Image_t_format.T_format {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _magic(get, set) : String;
    function get__magic():String return this._magic;
    function set__magic(v:String):String {
        this._magic = (v : stdgo.GoString);
        return v;
    }
    public var _decode(get, set) : stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Image_, stdgo.Error>;
    function get__decode():stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Image_, stdgo.Error> return _0 -> {
        final obj = this._decode(_0);
        { _0 : obj._0, _1 : obj._1 };
    };
    function set__decode(v:stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Image_, stdgo.Error>):stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Image_, stdgo.Error> {
        this._decode = _0 -> {
            final obj = v(_0);
            { _0 : obj._0, _1 : (obj._1 : stdgo.Error) };
        };
        return v;
    }
    public var _decodeConfig(get, set) : stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Config, stdgo.Error>;
    function get__decodeConfig():stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Config, stdgo.Error> return _0 -> {
        final obj = this._decodeConfig(_0);
        { _0 : obj._0, _1 : obj._1 };
    };
    function set__decodeConfig(v:stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Config, stdgo.Error>):stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Config, stdgo.Error> {
        this._decodeConfig = _0 -> {
            final obj = v(_0);
            { _0 : obj._0, _1 : (obj._1 : stdgo.Error) };
        };
        return v;
    }
    public function new(?_name:String, ?_magic:String, ?_decode:stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Image_, stdgo.Error>, ?_decodeConfig:stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Config, stdgo.Error>) this = new stdgo._internal.image.Image_t_format.T_format((_name : stdgo.GoString), (_magic : stdgo.GoString), _0 -> {
        final obj = _decode(_0);
        { _0 : obj._0, _1 : (obj._1 : stdgo.Error) };
    }, _0 -> {
        final obj = _decodeConfig(_0);
        { _0 : obj._0, _1 : (obj._1 : stdgo.Error) };
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Point_static_extension) abstract Point(stdgo._internal.image.Image_point.Point) from stdgo._internal.image.Image_point.Point to stdgo._internal.image.Image_point.Point {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.image.Image_point.Point((x : stdgo.GoInt), (y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Rectangle_static_extension) abstract Rectangle(stdgo._internal.image.Image_rectangle.Rectangle) from stdgo._internal.image.Image_rectangle.Rectangle to stdgo._internal.image.Image_rectangle.Rectangle {
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
    public function new(?min:Point, ?max:Point) this = new stdgo._internal.image.Image_rectangle.Rectangle(min, max);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Config_static_extension) abstract Config(stdgo._internal.image.Image_config.Config) from stdgo._internal.image.Image_config.Config to stdgo._internal.image.Image_config.Config {
    public var colorModel(get, set) : stdgo._internal.image.color.Color_model.Model;
    function get_colorModel():stdgo._internal.image.color.Color_model.Model return this.colorModel;
    function set_colorModel(v:stdgo._internal.image.color.Color_model.Model):stdgo._internal.image.color.Color_model.Model {
        this.colorModel = v;
        return v;
    }
    public var width(get, set) : StdTypes.Int;
    function get_width():StdTypes.Int return this.width;
    function set_width(v:StdTypes.Int):StdTypes.Int {
        this.width = (v : stdgo.GoInt);
        return v;
    }
    public var height(get, set) : StdTypes.Int;
    function get_height():StdTypes.Int return this.height;
    function set_height(v:StdTypes.Int):StdTypes.Int {
        this.height = (v : stdgo.GoInt);
        return v;
    }
    public function new(?colorModel:stdgo._internal.image.color.Color_model.Model, ?width:StdTypes.Int, ?height:StdTypes.Int) this = new stdgo._internal.image.Image_config.Config(colorModel, (width : stdgo.GoInt), (height : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.RGBA_static_extension) abstract RGBA(stdgo._internal.image.Image_rgba.RGBA) from stdgo._internal.image.Image_rgba.RGBA to stdgo._internal.image.Image_rgba.RGBA {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_rgba.RGBA(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.RGBA64_static_extension) abstract RGBA64(stdgo._internal.image.Image_rgba64.RGBA64) from stdgo._internal.image.Image_rgba64.RGBA64 to stdgo._internal.image.Image_rgba64.RGBA64 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_rgba64.RGBA64(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.NRGBA_static_extension) abstract NRGBA(stdgo._internal.image.Image_nrgba.NRGBA) from stdgo._internal.image.Image_nrgba.NRGBA to stdgo._internal.image.Image_nrgba.NRGBA {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_nrgba.NRGBA(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.NRGBA64_static_extension) abstract NRGBA64(stdgo._internal.image.Image_nrgba64.NRGBA64) from stdgo._internal.image.Image_nrgba64.NRGBA64 to stdgo._internal.image.Image_nrgba64.NRGBA64 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_nrgba64.NRGBA64(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Alpha_static_extension) abstract Alpha(stdgo._internal.image.Image_alpha.Alpha) from stdgo._internal.image.Image_alpha.Alpha to stdgo._internal.image.Image_alpha.Alpha {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_alpha.Alpha(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Alpha16_static_extension) abstract Alpha16(stdgo._internal.image.Image_alpha16.Alpha16) from stdgo._internal.image.Image_alpha16.Alpha16 to stdgo._internal.image.Image_alpha16.Alpha16 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_alpha16.Alpha16(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Gray_static_extension) abstract Gray(stdgo._internal.image.Image_gray.Gray) from stdgo._internal.image.Image_gray.Gray to stdgo._internal.image.Image_gray.Gray {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_gray.Gray(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Gray16_static_extension) abstract Gray16(stdgo._internal.image.Image_gray16.Gray16) from stdgo._internal.image.Image_gray16.Gray16 to stdgo._internal.image.Image_gray16.Gray16 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_gray16.Gray16(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.CMYK_static_extension) abstract CMYK(stdgo._internal.image.Image_cmyk.CMYK) from stdgo._internal.image.Image_cmyk.CMYK to stdgo._internal.image.Image_cmyk.CMYK {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_cmyk.CMYK(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Paletted_static_extension) abstract Paletted(stdgo._internal.image.Image_paletted.Paletted) from stdgo._internal.image.Image_paletted.Paletted to stdgo._internal.image.Image_paletted.Paletted {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public var palette(get, set) : stdgo._internal.image.color.Color_palette.Palette;
    function get_palette():stdgo._internal.image.color.Color_palette.Palette return this.palette;
    function set_palette(v:stdgo._internal.image.color.Color_palette.Palette):stdgo._internal.image.color.Color_palette.Palette {
        this.palette = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle, ?palette:stdgo._internal.image.color.Color_palette.Palette) this = new stdgo._internal.image.Image_paletted.Paletted(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect, palette);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.Uniform_static_extension) abstract Uniform(stdgo._internal.image.Image_uniform.Uniform) from stdgo._internal.image.Image_uniform.Uniform to stdgo._internal.image.Image_uniform.Uniform {
    public var c(get, set) : stdgo._internal.image.color.Color_color.Color;
    function get_c():stdgo._internal.image.color.Color_color.Color return this.c;
    function set_c(v:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        this.c = v;
        return v;
    }
    public function new(?c:stdgo._internal.image.color.Color_color.Color) this = new stdgo._internal.image.Image_uniform.Uniform(c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.YCbCr_static_extension) abstract YCbCr(stdgo._internal.image.Image_ycbcr.YCbCr) from stdgo._internal.image.Image_ycbcr.YCbCr to stdgo._internal.image.Image_ycbcr.YCbCr {
    public var y(get, set) : Array<std.UInt>;
    function get_y():Array<std.UInt> return [for (i in this.y) i];
    function set_y(v:Array<std.UInt>):Array<std.UInt> {
        this.y = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var cb(get, set) : Array<std.UInt>;
    function get_cb():Array<std.UInt> return [for (i in this.cb) i];
    function set_cb(v:Array<std.UInt>):Array<std.UInt> {
        this.cb = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var cr(get, set) : Array<std.UInt>;
    function get_cr():Array<std.UInt> return [for (i in this.cr) i];
    function set_cr(v:Array<std.UInt>):Array<std.UInt> {
        this.cr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var yStride(get, set) : StdTypes.Int;
    function get_yStride():StdTypes.Int return this.yStride;
    function set_yStride(v:StdTypes.Int):StdTypes.Int {
        this.yStride = (v : stdgo.GoInt);
        return v;
    }
    public var cStride(get, set) : StdTypes.Int;
    function get_cStride():StdTypes.Int return this.cStride;
    function set_cStride(v:StdTypes.Int):StdTypes.Int {
        this.cStride = (v : stdgo.GoInt);
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
    public function new(?y:Array<std.UInt>, ?cb:Array<std.UInt>, ?cr:Array<std.UInt>, ?yStride:StdTypes.Int, ?cStride:StdTypes.Int, ?subsampleRatio:YCbCrSubsampleRatio, ?rect:Rectangle) this = new stdgo._internal.image.Image_ycbcr.YCbCr(([for (i in y) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in cb) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in cr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (yStride : stdgo.GoInt), (cStride : stdgo.GoInt), subsampleRatio, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.Image.NYCbCrA_static_extension) abstract NYCbCrA(stdgo._internal.image.Image_nycbcra.NYCbCrA) from stdgo._internal.image.Image_nycbcra.NYCbCrA to stdgo._internal.image.Image_nycbcra.NYCbCrA {
    public var yCbCr(get, set) : YCbCr;
    function get_yCbCr():YCbCr return this.yCbCr;
    function set_yCbCr(v:YCbCr):YCbCr {
        this.yCbCr = v;
        return v;
    }
    public var a(get, set) : Array<std.UInt>;
    function get_a():Array<std.UInt> return [for (i in this.a) i];
    function set_a(v:Array<std.UInt>):Array<std.UInt> {
        this.a = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var aStride(get, set) : StdTypes.Int;
    function get_aStride():StdTypes.Int return this.aStride;
    function set_aStride(v:StdTypes.Int):StdTypes.Int {
        this.aStride = (v : stdgo.GoInt);
        return v;
    }
    public function new(?yCbCr:YCbCr, ?a:Array<std.UInt>, ?aStride:StdTypes.Int) this = new stdgo._internal.image.Image_nycbcra.NYCbCrA(yCbCr, ([for (i in a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (aStride : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.image.Image_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.image.Image_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.image.Image_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.image.Image_t__struct_1.T__struct_1;
typedef YCbCrSubsampleRatio = stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio;
@:dox(hide) typedef T_formatPointer = stdgo._internal.image.Image_t_formatpointer.T_formatPointer;
@:dox(hide) class T_format_static_extension {

}
typedef PointPointer = stdgo._internal.image.Image_pointpointer.PointPointer;
class Point_static_extension {
    static public function eq(_p:Point, _q:Point):Bool {
        return stdgo._internal.image.Image_point_static_extension.Point_static_extension.eq(_p, _q);
    }
    static public function mod(_p:Point, _r:Rectangle):Point {
        return stdgo._internal.image.Image_point_static_extension.Point_static_extension.mod(_p, _r);
    }
    static public function in_(_p:Point, _r:Rectangle):Bool {
        return stdgo._internal.image.Image_point_static_extension.Point_static_extension.in_(_p, _r);
    }
    static public function div(_p:Point, _k:StdTypes.Int):Point {
        final _k = (_k : stdgo.GoInt);
        return stdgo._internal.image.Image_point_static_extension.Point_static_extension.div(_p, _k);
    }
    static public function mul(_p:Point, _k:StdTypes.Int):Point {
        final _k = (_k : stdgo.GoInt);
        return stdgo._internal.image.Image_point_static_extension.Point_static_extension.mul(_p, _k);
    }
    static public function sub(_p:Point, _q:Point):Point {
        return stdgo._internal.image.Image_point_static_extension.Point_static_extension.sub(_p, _q);
    }
    static public function add(_p:Point, _q:Point):Point {
        return stdgo._internal.image.Image_point_static_extension.Point_static_extension.add(_p, _q);
    }
    static public function string(_p:Point):String {
        return stdgo._internal.image.Image_point_static_extension.Point_static_extension.string(_p);
    }
}
typedef RectanglePointer = stdgo._internal.image.Image_rectanglepointer.RectanglePointer;
class Rectangle_static_extension {
    static public function colorModel(_r:Rectangle):stdgo._internal.image.color.Color_model.Model {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.colorModel(_r);
    }
    static public function bounds(_r:Rectangle):Rectangle {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.bounds(_r);
    }
    static public function rGBA64At(_r:Rectangle, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.rGBA64At(_r, _x, _y);
    }
    static public function at(_r:Rectangle, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.at(_r, _x, _y);
    }
    static public function canon(_r:Rectangle):Rectangle {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.canon(_r);
    }
    static public function in_(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.in_(_r, _s);
    }
    static public function overlaps(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.overlaps(_r, _s);
    }
    static public function eq(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.eq(_r, _s);
    }
    static public function empty(_r:Rectangle):Bool {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.empty(_r);
    }
    static public function union(_r:Rectangle, _s:Rectangle):Rectangle {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.union(_r, _s);
    }
    static public function intersect(_r:Rectangle, _s:Rectangle):Rectangle {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.intersect(_r, _s);
    }
    static public function inset(_r:Rectangle, _n:StdTypes.Int):Rectangle {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.inset(_r, _n);
    }
    static public function sub(_r:Rectangle, _p:Point):Rectangle {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.sub(_r, _p);
    }
    static public function add(_r:Rectangle, _p:Point):Rectangle {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.add(_r, _p);
    }
    static public function size(_r:Rectangle):Point {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.size(_r);
    }
    static public function dy(_r:Rectangle):StdTypes.Int {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.dy(_r);
    }
    static public function dx(_r:Rectangle):StdTypes.Int {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.dx(_r);
    }
    static public function string(_r:Rectangle):String {
        return stdgo._internal.image.Image_rectangle_static_extension.Rectangle_static_extension.string(_r);
    }
}
typedef ConfigPointer = stdgo._internal.image.Image_configpointer.ConfigPointer;
class Config_static_extension {

}
typedef RGBAPointer = stdgo._internal.image.Image_rgbapointer.RGBAPointer;
class RGBA_static_extension {
    static public function opaque(_p:RGBA):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        return stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.opaque(_p);
    }
    static public function subImage(_p:RGBA, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        return stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.subImage(_p, _r);
    }
    static public function setRGBA(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba.RGBA):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.setRGBA(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.pixOffset(_p, _x, _y);
    }
    static public function rGBAAt(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba.RGBA {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.rGBAAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:RGBA):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        return stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.bounds(_p);
    }
    static public function colorModel(_p:RGBA):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        return stdgo._internal.image.Image_rgba_static_extension.RGBA_static_extension.colorModel(_p);
    }
}
typedef RGBA64Pointer = stdgo._internal.image.Image_rgba64pointer.RGBA64Pointer;
class RGBA64_static_extension {
    static public function opaque(_p:RGBA64):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        return stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.opaque(_p);
    }
    static public function subImage(_p:RGBA64, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        return stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.subImage(_p, _r);
    }
    static public function setRGBA64(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.pixOffset(_p, _x, _y);
    }
    static public function rGBA64At(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:RGBA64, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:RGBA64):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        return stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.bounds(_p);
    }
    static public function colorModel(_p:RGBA64):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>);
        return stdgo._internal.image.Image_rgba64_static_extension.RGBA64_static_extension.colorModel(_p);
    }
}
typedef NRGBAPointer = stdgo._internal.image.Image_nrgbapointer.NRGBAPointer;
class NRGBA_static_extension {
    static public function opaque(_p:NRGBA):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        return stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.opaque(_p);
    }
    static public function subImage(_p:NRGBA, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        return stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.subImage(_p, _r);
    }
    static public function setNRGBA(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_nrgba.NRGBA):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.setNRGBA(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.pixOffset(_p, _x, _y);
    }
    static public function nRGBAAt(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_nrgba.NRGBA {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.nRGBAAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:NRGBA):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        return stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.bounds(_p);
    }
    static public function colorModel(_p:NRGBA):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>);
        return stdgo._internal.image.Image_nrgba_static_extension.NRGBA_static_extension.colorModel(_p);
    }
}
typedef NRGBA64Pointer = stdgo._internal.image.Image_nrgba64pointer.NRGBA64Pointer;
class NRGBA64_static_extension {
    static public function opaque(_p:NRGBA64):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        return stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.opaque(_p);
    }
    static public function subImage(_p:NRGBA64, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        return stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.subImage(_p, _r);
    }
    static public function setNRGBA64(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_nrgba64.NRGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.setNRGBA64(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.pixOffset(_p, _x, _y);
    }
    static public function nRGBA64At(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_nrgba64.NRGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.nRGBA64At(_p, _x, _y);
    }
    static public function rGBA64At(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:NRGBA64, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:NRGBA64):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        return stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.bounds(_p);
    }
    static public function colorModel(_p:NRGBA64):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
        return stdgo._internal.image.Image_nrgba64_static_extension.NRGBA64_static_extension.colorModel(_p);
    }
}
typedef AlphaPointer = stdgo._internal.image.Image_alphapointer.AlphaPointer;
class Alpha_static_extension {
    static public function opaque(_p:Alpha):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        return stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.opaque(_p);
    }
    static public function subImage(_p:Alpha, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        return stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.subImage(_p, _r);
    }
    static public function setAlpha(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_alpha.Alpha):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.setAlpha(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.pixOffset(_p, _x, _y);
    }
    static public function alphaAt(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_alpha.Alpha {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.alphaAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:Alpha, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Alpha):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        return stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Alpha):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>);
        return stdgo._internal.image.Image_alpha_static_extension.Alpha_static_extension.colorModel(_p);
    }
}
typedef Alpha16Pointer = stdgo._internal.image.Image_alpha16pointer.Alpha16Pointer;
class Alpha16_static_extension {
    static public function opaque(_p:Alpha16):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        return stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.opaque(_p);
    }
    static public function subImage(_p:Alpha16, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        return stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.subImage(_p, _r);
    }
    static public function setAlpha16(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_alpha16.Alpha16):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.setAlpha16(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.pixOffset(_p, _x, _y);
    }
    static public function alpha16At(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_alpha16.Alpha16 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.alpha16At(_p, _x, _y);
    }
    static public function rGBA64At(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:Alpha16, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Alpha16):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        return stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Alpha16):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
        return stdgo._internal.image.Image_alpha16_static_extension.Alpha16_static_extension.colorModel(_p);
    }
}
typedef GrayPointer = stdgo._internal.image.Image_graypointer.GrayPointer;
class Gray_static_extension {
    static public function opaque(_p:Gray):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        return stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.opaque(_p);
    }
    static public function subImage(_p:Gray, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        return stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.subImage(_p, _r);
    }
    static public function setGray(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_gray.Gray):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.setGray(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.pixOffset(_p, _x, _y);
    }
    static public function grayAt(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_gray.Gray {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.grayAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Gray):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        return stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Gray):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
        return stdgo._internal.image.Image_gray_static_extension.Gray_static_extension.colorModel(_p);
    }
}
typedef Gray16Pointer = stdgo._internal.image.Image_gray16pointer.Gray16Pointer;
class Gray16_static_extension {
    static public function opaque(_p:Gray16):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        return stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.opaque(_p);
    }
    static public function subImage(_p:Gray16, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        return stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.subImage(_p, _r);
    }
    static public function setGray16(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_gray16.Gray16):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.setGray16(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.pixOffset(_p, _x, _y);
    }
    static public function gray16At(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_gray16.Gray16 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.gray16At(_p, _x, _y);
    }
    static public function rGBA64At(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:Gray16, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Gray16):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        return stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Gray16):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>);
        return stdgo._internal.image.Image_gray16_static_extension.Gray16_static_extension.colorModel(_p);
    }
}
typedef CMYKPointer = stdgo._internal.image.Image_cmykpointer.CMYKPointer;
class CMYK_static_extension {
    static public function opaque(_p:CMYK):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        return stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.opaque(_p);
    }
    static public function subImage(_p:CMYK, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        return stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.subImage(_p, _r);
    }
    static public function setCMYK(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_cmyk.CMYK):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.setCMYK(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.pixOffset(_p, _x, _y);
    }
    static public function cMYKAt(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_cmyk.CMYK {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.cMYKAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:CMYK):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        return stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.bounds(_p);
    }
    static public function colorModel(_p:CMYK):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
        return stdgo._internal.image.Image_cmyk_static_extension.CMYK_static_extension.colorModel(_p);
    }
}
typedef PalettedPointer = stdgo._internal.image.Image_palettedpointer.PalettedPointer;
class Paletted_static_extension {
    static public function opaque(_p:Paletted):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        return stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.opaque(_p);
    }
    static public function subImage(_p:Paletted, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        return stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.subImage(_p, _r);
    }
    static public function setColorIndex(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _index:std.UInt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        final _index = (_index : stdgo.GoUInt8);
        stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.setColorIndex(_p, _x, _y, _index);
    }
    static public function colorIndexAt(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):std.UInt {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.colorIndexAt(_p, _x, _y);
    }
    static public function setRGBA64(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.pixOffset(_p, _x, _y);
    }
    static public function rGBA64At(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Paletted):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        return stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Paletted):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        return stdgo._internal.image.Image_paletted_static_extension.Paletted_static_extension.colorModel(_p);
    }
}
typedef UniformPointer = stdgo._internal.image.Image_uniformpointer.UniformPointer;
class Uniform_static_extension {
    static public function opaque(_c:Uniform):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return stdgo._internal.image.Image_uniform_static_extension.Uniform_static_extension.opaque(_c);
    }
    static public function rGBA64At(_c:Uniform, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_uniform_static_extension.Uniform_static_extension.rGBA64At(_c, _x, _y);
    }
    static public function at(_c:Uniform, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_uniform_static_extension.Uniform_static_extension.at(_c, _x, _y);
    }
    static public function bounds(_c:Uniform):Rectangle {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return stdgo._internal.image.Image_uniform_static_extension.Uniform_static_extension.bounds(_c);
    }
    static public function convert(_c:Uniform, _0:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return stdgo._internal.image.Image_uniform_static_extension.Uniform_static_extension.convert(_c, _0);
    }
    static public function colorModel(_c:Uniform):stdgo._internal.image.color.Color_model.Model {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return stdgo._internal.image.Image_uniform_static_extension.Uniform_static_extension.colorModel(_c);
    }
    static public function rGBA(_c:Uniform):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        return {
            final obj = stdgo._internal.image.Image_uniform_static_extension.Uniform_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
typedef YCbCrPointer = stdgo._internal.image.Image_ycbcrpointer.YCbCrPointer;
class YCbCr_static_extension {
    static public function opaque(_p:YCbCr):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.opaque(_p);
    }
    static public function subImage(_p:YCbCr, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.subImage(_p, _r);
    }
    static public function cOffset(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.cOffset(_p, _x, _y);
    }
    static public function yOffset(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.yOffset(_p, _x, _y);
    }
    static public function yCbCrAt(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_ycbcr.YCbCr {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.yCbCrAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:YCbCr, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:YCbCr):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.bounds(_p);
    }
    static public function colorModel(_p:YCbCr):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        return stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension.colorModel(_p);
    }
}
typedef NYCbCrAPointer = stdgo._internal.image.Image_nycbcrapointer.NYCbCrAPointer;
class NYCbCrA_static_extension {
    static public function opaque(_p:NYCbCrA):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.opaque(_p);
    }
    static public function subImage(_p:NYCbCrA, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.subImage(_p, _r);
    }
    static public function aOffset(_p:NYCbCrA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.aOffset(_p, _x, _y);
    }
    static public function nYCbCrAAt(_p:NYCbCrA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_nycbcra.NYCbCrA {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.nYCbCrAAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:NYCbCrA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:NYCbCrA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.at(_p, _x, _y);
    }
    static public function colorModel(_p:NYCbCrA):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.colorModel(_p);
    }
    public static function yOffset(__self__:stdgo._internal.image.Image_nycbcra.NYCbCrA, _0:StdTypes.Int, _1:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.yOffset(__self__, _0, _1);
    }
    public static function yCbCrAt(__self__:stdgo._internal.image.Image_nycbcra.NYCbCrA, _0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_ycbcr.YCbCr {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.yCbCrAt(__self__, _0, _1);
    }
    public static function cOffset(__self__:stdgo._internal.image.Image_nycbcra.NYCbCrA, _0:StdTypes.Int, _1:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.cOffset(__self__, _0, _1);
    }
    public static function bounds(__self__:stdgo._internal.image.Image_nycbcra.NYCbCrA):Rectangle {
        return stdgo._internal.image.Image_nycbcra_static_extension.NYCbCrA_static_extension.bounds(__self__);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.image.Image_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.image.Image_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
typedef YCbCrSubsampleRatioPointer = stdgo._internal.image.Image_ycbcrsubsampleratiopointer.YCbCrSubsampleRatioPointer;
class YCbCrSubsampleRatio_static_extension {
    static public function string(_s:YCbCrSubsampleRatio):String {
        return stdgo._internal.image.Image_ycbcrsubsampleratio_static_extension.YCbCrSubsampleRatio_static_extension.string(_s);
    }
}
/**
    * Package image implements a basic 2-D image library.
    * 
    * The fundamental interface is called Image. An Image contains colors, which
    * are described in the image/color package.
    * 
    * Values of the Image interface are created either by calling functions such
    * as NewRGBA and NewPaletted, or by calling Decode on an io.Reader containing
    * image data in a format such as GIF, JPEG or PNG. Decoding any particular
    * image format requires the prior registration of a decoder function.
    * Registration is typically automatic as a side effect of initializing that
    * format's package so that, to decode a PNG image, it suffices to have
    * 
    * 	import _ "image/png"
    * 
    * in a program's main package. The _ means to import a package purely for its
    * initialization side effects.
    * 
    * See "The Go image package" for more details:
    * https://golang.org/doc/articles/image_package.html
**/
class Image {
    /**
        * RegisterFormat registers an image format for use by Decode.
        * Name is the name of the format, like "jpeg" or "png".
        * Magic is the magic prefix that identifies the format's encoding. The magic
        * string can contain "?" wildcards that each match any one byte.
        * Decode is the function that decodes the encoded image.
        * DecodeConfig is the function that decodes just its configuration.
    **/
    static public inline function registerFormat(_name:String, _magic:String, _decode:stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Image_, stdgo.Error>, _decodeConfig:stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Config, stdgo.Error>):Void {
        final _name = (_name : stdgo.GoString);
        final _magic = (_magic : stdgo.GoString);
        final _decode = _0 -> {
            final obj = _decode(_0);
            { _0 : obj._0, _1 : (obj._1 : stdgo.Error) };
        };
        final _decodeConfig = _0 -> {
            final obj = _decodeConfig(_0);
            { _0 : obj._0, _1 : (obj._1 : stdgo.Error) };
        };
        stdgo._internal.image.Image_registerformat.registerFormat(_name, _magic, _decode, _decodeConfig);
    }
    /**
        * Decode decodes an image that has been encoded in a registered format.
        * The string returned is the format name used during format registration.
        * Format registration is typically done by an init function in the codec-
        * specific package.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple.Tuple3<Image_, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image_decode.decode(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * DecodeConfig decodes the color model and dimensions of an image that has
        * been encoded in a registered format. The string returned is the format name
        * used during format registration. Format registration is typically done by
        * an init function in the codec-specific package.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple.Tuple3<Config, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image_decodeconfig.decodeConfig(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * Pt is shorthand for Point{X, Y}.
    **/
    static public inline function pt(x:StdTypes.Int, y:StdTypes.Int):Point {
        final x = (x : stdgo.GoInt);
        final y = (y : stdgo.GoInt);
        return stdgo._internal.image.Image_pt.pt(x, y);
    }
    /**
        * Rect is shorthand for Rectangle{Pt(x0, y0), Pt(x1, y1)}. The returned
        * rectangle has minimum and maximum coordinates swapped if necessary so that
        * it is well-formed.
    **/
    static public inline function rect(_x0:StdTypes.Int, _y0:StdTypes.Int, _x1:StdTypes.Int, _y1:StdTypes.Int):Rectangle {
        final _x0 = (_x0 : stdgo.GoInt);
        final _y0 = (_y0 : stdgo.GoInt);
        final _x1 = (_x1 : stdgo.GoInt);
        final _y1 = (_y1 : stdgo.GoInt);
        return stdgo._internal.image.Image_rect.rect(_x0, _y0, _x1, _y1);
    }
    static public inline function testRectangle(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.Image_testrectangle.testRectangle(_t);
    }
    /**
        * NewRGBA returns a new RGBA image with the given bounds.
    **/
    static public inline function newRGBA(_r:Rectangle):RGBA {
        return stdgo._internal.image.Image_newrgba.newRGBA(_r);
    }
    /**
        * NewRGBA64 returns a new RGBA64 image with the given bounds.
    **/
    static public inline function newRGBA64(_r:Rectangle):RGBA64 {
        return stdgo._internal.image.Image_newrgba64.newRGBA64(_r);
    }
    /**
        * NewNRGBA returns a new NRGBA image with the given bounds.
    **/
    static public inline function newNRGBA(_r:Rectangle):NRGBA {
        return stdgo._internal.image.Image_newnrgba.newNRGBA(_r);
    }
    /**
        * NewNRGBA64 returns a new NRGBA64 image with the given bounds.
    **/
    static public inline function newNRGBA64(_r:Rectangle):NRGBA64 {
        return stdgo._internal.image.Image_newnrgba64.newNRGBA64(_r);
    }
    /**
        * NewAlpha returns a new Alpha image with the given bounds.
    **/
    static public inline function newAlpha(_r:Rectangle):Alpha {
        return stdgo._internal.image.Image_newalpha.newAlpha(_r);
    }
    /**
        * NewAlpha16 returns a new Alpha16 image with the given bounds.
    **/
    static public inline function newAlpha16(_r:Rectangle):Alpha16 {
        return stdgo._internal.image.Image_newalpha16.newAlpha16(_r);
    }
    /**
        * NewGray returns a new Gray image with the given bounds.
    **/
    static public inline function newGray(_r:Rectangle):Gray {
        return stdgo._internal.image.Image_newgray.newGray(_r);
    }
    /**
        * NewGray16 returns a new Gray16 image with the given bounds.
    **/
    static public inline function newGray16(_r:Rectangle):Gray16 {
        return stdgo._internal.image.Image_newgray16.newGray16(_r);
    }
    /**
        * NewCMYK returns a new CMYK image with the given bounds.
    **/
    static public inline function newCMYK(_r:Rectangle):CMYK {
        return stdgo._internal.image.Image_newcmyk.newCMYK(_r);
    }
    /**
        * NewPaletted returns a new Paletted image with the given width, height and
        * palette.
    **/
    static public inline function newPaletted(_r:Rectangle, _p:stdgo._internal.image.color.Color_palette.Palette):Paletted {
        return stdgo._internal.image.Image_newpaletted.newPaletted(_r, _p);
    }
    static public inline function testImage(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.Image_testimage.testImage(_t);
    }
    static public inline function testNewXxxBadRectangle(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.Image_testnewxxxbadrectangle.testNewXxxBadRectangle(_t);
    }
    static public inline function test16BitsPerColorChannel(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.Image_test16bitspercolorchannel.test16BitsPerColorChannel(_t);
    }
    static public inline function testRGBA64Image(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.Image_testrgba64image.testRGBA64Image(_t);
    }
    static public inline function benchmarkAt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkat.benchmarkAt(_b);
    }
    static public inline function benchmarkSet(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkset.benchmarkSet(_b);
    }
    static public inline function benchmarkRGBAAt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkrgbaat.benchmarkRGBAAt(_b);
    }
    static public inline function benchmarkRGBASetRGBA(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkrgbasetrgba.benchmarkRGBASetRGBA(_b);
    }
    static public inline function benchmarkRGBA64At(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkrgba64at.benchmarkRGBA64At(_b);
    }
    static public inline function benchmarkRGBA64SetRGBA64(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkrgba64setrgba64.benchmarkRGBA64SetRGBA64(_b);
    }
    static public inline function benchmarkNRGBAAt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarknrgbaat.benchmarkNRGBAAt(_b);
    }
    static public inline function benchmarkNRGBASetNRGBA(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarknrgbasetnrgba.benchmarkNRGBASetNRGBA(_b);
    }
    static public inline function benchmarkNRGBA64At(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarknrgba64at.benchmarkNRGBA64At(_b);
    }
    static public inline function benchmarkNRGBA64SetNRGBA64(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarknrgba64setnrgba64.benchmarkNRGBA64SetNRGBA64(_b);
    }
    static public inline function benchmarkAlphaAt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkalphaat.benchmarkAlphaAt(_b);
    }
    static public inline function benchmarkAlphaSetAlpha(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkalphasetalpha.benchmarkAlphaSetAlpha(_b);
    }
    static public inline function benchmarkAlpha16At(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkalpha16at.benchmarkAlpha16At(_b);
    }
    static public inline function benchmarkAlphaSetAlpha16(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkalphasetalpha16.benchmarkAlphaSetAlpha16(_b);
    }
    static public inline function benchmarkGrayAt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkgrayat.benchmarkGrayAt(_b);
    }
    static public inline function benchmarkGraySetGray(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkgraysetgray.benchmarkGraySetGray(_b);
    }
    static public inline function benchmarkGray16At(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkgray16at.benchmarkGray16At(_b);
    }
    static public inline function benchmarkGraySetGray16(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.Image_benchmarkgraysetgray16.benchmarkGraySetGray16(_b);
    }
    /**
        * NewUniform returns a new Uniform image of the given color.
    **/
    static public inline function newUniform(_c:stdgo._internal.image.color.Color_color.Color):Uniform {
        return stdgo._internal.image.Image_newuniform.newUniform(_c);
    }
    /**
        * NewYCbCr returns a new YCbCr image with the given bounds and subsample
        * ratio.
    **/
    static public inline function newYCbCr(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):YCbCr {
        return stdgo._internal.image.Image_newycbcr.newYCbCr(_r, _subsampleRatio);
    }
    /**
        * NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
        * ratio.
    **/
    static public inline function newNYCbCrA(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):NYCbCrA {
        return stdgo._internal.image.Image_newnycbcra.newNYCbCrA(_r, _subsampleRatio);
    }
    static public inline function testYCbCr(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.Image_testycbcr.testYCbCr(_t);
    }
    static public inline function testYCbCrSlicesDontOverlap(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.Image_testycbcrslicesdontoverlap.testYCbCrSlicesDontOverlap(_t);
    }
}
