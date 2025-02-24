package stdgo;
final disposalNone : haxe.UInt64 = stdgo._internal.image.gif.Gif_disposalnone.disposalNone;
final disposalBackground : haxe.UInt64 = stdgo._internal.image.gif.Gif_disposalbackground.disposalBackground;
final disposalPrevious : haxe.UInt64 = stdgo._internal.image.gif.Gif_disposalprevious.disposalPrevious;
@:dox(hide) class T_reader_static_extension {

}
@:dox(hide) @:forward abstract T_reader(stdgo._internal.image.gif.Gif_t_reader.T_reader) from stdgo._internal.image.gif.Gif_t_reader.T_reader to stdgo._internal.image.gif.Gif_t_reader.T_reader {
    @:from
    static function fromHaxeInterface(x:{ }):T_reader {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_reader = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_writer_static_extension {
    static public function flush(t:stdgo._internal.image.gif.Gif_t_writer.T_writer):stdgo.Error {
        return stdgo._internal.image.gif.Gif_t_writer_static_extension.T_writer_static_extension.flush(t);
    }
}
@:dox(hide) @:forward abstract T_writer(stdgo._internal.image.gif.Gif_t_writer.T_writer) from stdgo._internal.image.gif.Gif_t_writer.T_writer to stdgo._internal.image.gif.Gif_t_writer.T_writer {
    @:from
    static function fromHaxeInterface(x:{ function flush():stdgo.Error; }):T_writer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_writer = { flush : () -> x.flush(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.image.gif.Gif.T_decoder_static_extension) @:dox(hide) abstract T_decoder(stdgo._internal.image.gif.Gif_t_decoder.T_decoder) from stdgo._internal.image.gif.Gif_t_decoder.T_decoder to stdgo._internal.image.gif.Gif_t_decoder.T_decoder {
    public var _r(get, set) : T_reader;
    function get__r():T_reader return this._r;
    function set__r(v:T_reader):T_reader {
        this._r = v;
        return v;
    }
    public var _vers(get, set) : String;
    function get__vers():String return this._vers;
    function set__vers(v:String):String {
        this._vers = (v : stdgo.GoString);
        return v;
    }
    public var _width(get, set) : StdTypes.Int;
    function get__width():StdTypes.Int return this._width;
    function set__width(v:StdTypes.Int):StdTypes.Int {
        this._width = (v : stdgo.GoInt);
        return v;
    }
    public var _height(get, set) : StdTypes.Int;
    function get__height():StdTypes.Int return this._height;
    function set__height(v:StdTypes.Int):StdTypes.Int {
        this._height = (v : stdgo.GoInt);
        return v;
    }
    public var _loopCount(get, set) : StdTypes.Int;
    function get__loopCount():StdTypes.Int return this._loopCount;
    function set__loopCount(v:StdTypes.Int):StdTypes.Int {
        this._loopCount = (v : stdgo.GoInt);
        return v;
    }
    public var _delayTime(get, set) : StdTypes.Int;
    function get__delayTime():StdTypes.Int return this._delayTime;
    function set__delayTime(v:StdTypes.Int):StdTypes.Int {
        this._delayTime = (v : stdgo.GoInt);
        return v;
    }
    public var _backgroundIndex(get, set) : std.UInt;
    function get__backgroundIndex():std.UInt return this._backgroundIndex;
    function set__backgroundIndex(v:std.UInt):std.UInt {
        this._backgroundIndex = (v : stdgo.GoUInt8);
        return v;
    }
    public var _disposalMethod(get, set) : std.UInt;
    function get__disposalMethod():std.UInt return this._disposalMethod;
    function set__disposalMethod(v:std.UInt):std.UInt {
        this._disposalMethod = (v : stdgo.GoUInt8);
        return v;
    }
    public var _imageFields(get, set) : std.UInt;
    function get__imageFields():std.UInt return this._imageFields;
    function set__imageFields(v:std.UInt):std.UInt {
        this._imageFields = (v : stdgo.GoUInt8);
        return v;
    }
    public var _transparentIndex(get, set) : std.UInt;
    function get__transparentIndex():std.UInt return this._transparentIndex;
    function set__transparentIndex(v:std.UInt):std.UInt {
        this._transparentIndex = (v : stdgo.GoUInt8);
        return v;
    }
    public var _hasTransparentIndex(get, set) : Bool;
    function get__hasTransparentIndex():Bool return this._hasTransparentIndex;
    function set__hasTransparentIndex(v:Bool):Bool {
        this._hasTransparentIndex = v;
        return v;
    }
    public var _globalColorTable(get, set) : stdgo._internal.image.color.Color_palette.Palette;
    function get__globalColorTable():stdgo._internal.image.color.Color_palette.Palette return this._globalColorTable;
    function set__globalColorTable(v:stdgo._internal.image.color.Color_palette.Palette):stdgo._internal.image.color.Color_palette.Palette {
        this._globalColorTable = v;
        return v;
    }
    public var _delay(get, set) : Array<StdTypes.Int>;
    function get__delay():Array<StdTypes.Int> return [for (i in this._delay) i];
    function set__delay(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._delay = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _disposal(get, set) : Array<std.UInt>;
    function get__disposal():Array<std.UInt> return [for (i in this._disposal) i];
    function set__disposal(v:Array<std.UInt>):Array<std.UInt> {
        this._disposal = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _image(get, set) : Array<stdgo._internal.image.Image_paletted.Paletted>;
    function get__image():Array<stdgo._internal.image.Image_paletted.Paletted> return [for (i in this._image) i];
    function set__image(v:Array<stdgo._internal.image.Image_paletted.Paletted>):Array<stdgo._internal.image.Image_paletted.Paletted> {
        this._image = ([for (i in v) (i : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:T_reader, ?_vers:String, ?_width:StdTypes.Int, ?_height:StdTypes.Int, ?_loopCount:StdTypes.Int, ?_delayTime:StdTypes.Int, ?_backgroundIndex:std.UInt, ?_disposalMethod:std.UInt, ?_imageFields:std.UInt, ?_transparentIndex:std.UInt, ?_hasTransparentIndex:Bool, ?_globalColorTable:stdgo._internal.image.color.Color_palette.Palette, ?_delay:Array<StdTypes.Int>, ?_disposal:Array<std.UInt>, ?_image:Array<stdgo._internal.image.Image_paletted.Paletted>, ?_tmp:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.image.gif.Gif_t_decoder.T_decoder(
_r,
(_vers : stdgo.GoString),
(_width : stdgo.GoInt),
(_height : stdgo.GoInt),
(_loopCount : stdgo.GoInt),
(_delayTime : stdgo.GoInt),
(_backgroundIndex : stdgo.GoUInt8),
(_disposalMethod : stdgo.GoUInt8),
(_imageFields : stdgo.GoUInt8),
(_transparentIndex : stdgo.GoUInt8),
_hasTransparentIndex,
_globalColorTable,
([for (i in _delay) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in _disposal) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _image) (i : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>),
([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.gif.Gif.T_blockReader_static_extension) @:dox(hide) abstract T_blockReader(stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader) from stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader to stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader {
    public var _d(get, set) : T_decoder;
    function get__d():T_decoder return this._d;
    function set__d(v:T_decoder):T_decoder {
        this._d = (v : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        return v;
    }
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt8);
        return v;
    }
    public var _j(get, set) : std.UInt;
    function get__j():std.UInt return this._j;
    function set__j(v:std.UInt):std.UInt {
        this._j = (v : stdgo.GoUInt8);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_d:T_decoder, ?_i:std.UInt, ?_j:std.UInt, ?_err:stdgo.Error) this = new stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader((_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>), (_i : stdgo.GoUInt8), (_j : stdgo.GoUInt8), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.gif.Gif.T_interlaceScan_static_extension) @:dox(hide) abstract T_interlaceScan(stdgo._internal.image.gif.Gif_t_interlacescan.T_interlaceScan) from stdgo._internal.image.gif.Gif_t_interlacescan.T_interlaceScan to stdgo._internal.image.gif.Gif_t_interlacescan.T_interlaceScan {
    public var _skip(get, set) : StdTypes.Int;
    function get__skip():StdTypes.Int return this._skip;
    function set__skip(v:StdTypes.Int):StdTypes.Int {
        this._skip = (v : stdgo.GoInt);
        return v;
    }
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_skip:StdTypes.Int, ?_start:StdTypes.Int) this = new stdgo._internal.image.gif.Gif_t_interlacescan.T_interlaceScan((_skip : stdgo.GoInt), (_start : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.gif.Gif.GIF_static_extension) abstract GIF(stdgo._internal.image.gif.Gif_gif.GIF) from stdgo._internal.image.gif.Gif_gif.GIF to stdgo._internal.image.gif.Gif_gif.GIF {
    public var image(get, set) : Array<stdgo._internal.image.Image_paletted.Paletted>;
    function get_image():Array<stdgo._internal.image.Image_paletted.Paletted> return [for (i in this.image) i];
    function set_image(v:Array<stdgo._internal.image.Image_paletted.Paletted>):Array<stdgo._internal.image.Image_paletted.Paletted> {
        this.image = ([for (i in v) (i : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>);
        return v;
    }
    public var delay(get, set) : Array<StdTypes.Int>;
    function get_delay():Array<StdTypes.Int> return [for (i in this.delay) i];
    function set_delay(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.delay = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var loopCount(get, set) : StdTypes.Int;
    function get_loopCount():StdTypes.Int return this.loopCount;
    function set_loopCount(v:StdTypes.Int):StdTypes.Int {
        this.loopCount = (v : stdgo.GoInt);
        return v;
    }
    public var disposal(get, set) : Array<std.UInt>;
    function get_disposal():Array<std.UInt> return [for (i in this.disposal) i];
    function set_disposal(v:Array<std.UInt>):Array<std.UInt> {
        this.disposal = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var config(get, set) : stdgo._internal.image.Image_config.Config;
    function get_config():stdgo._internal.image.Image_config.Config return this.config;
    function set_config(v:stdgo._internal.image.Image_config.Config):stdgo._internal.image.Image_config.Config {
        this.config = v;
        return v;
    }
    public var backgroundIndex(get, set) : std.UInt;
    function get_backgroundIndex():std.UInt return this.backgroundIndex;
    function set_backgroundIndex(v:std.UInt):std.UInt {
        this.backgroundIndex = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?image:Array<stdgo._internal.image.Image_paletted.Paletted>, ?delay:Array<StdTypes.Int>, ?loopCount:StdTypes.Int, ?disposal:Array<std.UInt>, ?config:stdgo._internal.image.Image_config.Config, ?backgroundIndex:std.UInt) this = new stdgo._internal.image.gif.Gif_gif.GIF(([for (i in image) (i : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>), ([for (i in delay) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (loopCount : stdgo.GoInt), ([for (i in disposal) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), config, (backgroundIndex : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.gif.Gif.T_encoder_static_extension) @:dox(hide) abstract T_encoder(stdgo._internal.image.gif.Gif_t_encoder.T_encoder) from stdgo._internal.image.gif.Gif_t_encoder.T_encoder to stdgo._internal.image.gif.Gif_t_encoder.T_encoder {
    public var _w(get, set) : T_writer;
    function get__w():T_writer return this._w;
    function set__w(v:T_writer):T_writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _g(get, set) : GIF;
    function get__g():GIF return this._g;
    function set__g(v:GIF):GIF {
        this._g = v;
        return v;
    }
    public var _globalCT(get, set) : StdTypes.Int;
    function get__globalCT():StdTypes.Int return this._globalCT;
    function set__globalCT(v:StdTypes.Int):StdTypes.Int {
        this._globalCT = (v : stdgo.GoInt);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _globalColorTable(get, set) : haxe.ds.Vector<std.UInt>;
    function get__globalColorTable():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._globalColorTable) i]);
    function set__globalColorTable(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._globalColorTable = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _localColorTable(get, set) : haxe.ds.Vector<std.UInt>;
    function get__localColorTable():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._localColorTable) i]);
    function set__localColorTable(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._localColorTable = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_w:T_writer, ?_err:stdgo.Error, ?_g:GIF, ?_globalCT:StdTypes.Int, ?_buf:haxe.ds.Vector<std.UInt>, ?_globalColorTable:haxe.ds.Vector<std.UInt>, ?_localColorTable:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.image.gif.Gif_t_encoder.T_encoder(_w, (_err : stdgo.Error), _g, (_globalCT : stdgo.GoInt), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _globalColorTable) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _localColorTable) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.gif.Gif.T_blockWriter_static_extension) @:dox(hide) abstract T_blockWriter(stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter) from stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter to stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter {
    public var _e(get, set) : T_encoder;
    function get__e():T_encoder return this._e;
    function set__e(v:T_encoder):T_encoder {
        this._e = (v : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>);
        return v;
    }
    public function new(?_e:T_encoder) this = new stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter((_e : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.gif.Gif.Options_static_extension) abstract Options(stdgo._internal.image.gif.Gif_options.Options) from stdgo._internal.image.gif.Gif_options.Options to stdgo._internal.image.gif.Gif_options.Options {
    public var numColors(get, set) : StdTypes.Int;
    function get_numColors():StdTypes.Int return this.numColors;
    function set_numColors(v:StdTypes.Int):StdTypes.Int {
        this.numColors = (v : stdgo.GoInt);
        return v;
    }
    public var quantizer(get, set) : stdgo._internal.image.draw.Draw_quantizer.Quantizer;
    function get_quantizer():stdgo._internal.image.draw.Draw_quantizer.Quantizer return this.quantizer;
    function set_quantizer(v:stdgo._internal.image.draw.Draw_quantizer.Quantizer):stdgo._internal.image.draw.Draw_quantizer.Quantizer {
        this.quantizer = v;
        return v;
    }
    public var drawer(get, set) : stdgo._internal.image.draw.Draw_drawer.Drawer;
    function get_drawer():stdgo._internal.image.draw.Draw_drawer.Drawer return this.drawer;
    function set_drawer(v:stdgo._internal.image.draw.Draw_drawer.Drawer):stdgo._internal.image.draw.Draw_drawer.Drawer {
        this.drawer = v;
        return v;
    }
    public function new(?numColors:StdTypes.Int, ?quantizer:stdgo._internal.image.draw.Draw_quantizer.Quantizer, ?drawer:stdgo._internal.image.draw.Draw_drawer.Drawer) this = new stdgo._internal.image.gif.Gif_options.Options((numColors : stdgo.GoInt), quantizer, drawer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_decoderPointer = stdgo._internal.image.gif.Gif_t_decoderpointer.T_decoderPointer;
@:dox(hide) class T_decoder_static_extension {
    static public function _readBlock(_d:T_decoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension._readBlock(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _newImageFromDescriptor(_d:T_decoder):stdgo.Tuple<stdgo._internal.image.Image_paletted.Paletted, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension._newImageFromDescriptor(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readImageDescriptor(_d:T_decoder, _keepAllFrames:Bool):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension._readImageDescriptor(_d, _keepAllFrames);
    }
    static public function _readGraphicControl(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension._readGraphicControl(_d);
    }
    static public function _readExtension(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension._readExtension(_d);
    }
    static public function _readColorTable(_d:T_decoder, _fields:std.UInt):stdgo.Tuple<stdgo._internal.image.color.Color_palette.Palette, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        final _fields = (_fields : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension._readColorTable(_d, _fields);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readHeaderAndScreenDescriptor(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension._readHeaderAndScreenDescriptor(_d);
    }
    static public function _decode(_d:T_decoder, _r:stdgo._internal.io.Io_reader.Reader, _configOnly:Bool, _keepAllFrames:Bool):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension._decode(_d, _r, _configOnly, _keepAllFrames);
    }
}
@:dox(hide) typedef T_blockReaderPointer = stdgo._internal.image.gif.Gif_t_blockreaderpointer.T_blockReaderPointer;
@:dox(hide) class T_blockReader_static_extension {
    static public function _close(_b:T_blockReader):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>);
        return stdgo._internal.image.gif.Gif_t_blockreader_static_extension.T_blockReader_static_extension._close(_b);
    }
    static public function read(_b:T_blockReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.image.gif.Gif_t_blockreader_static_extension.T_blockReader_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readByte(_b:T_blockReader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>);
        return {
            final obj = stdgo._internal.image.gif.Gif_t_blockreader_static_extension.T_blockReader_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fill(_b:T_blockReader):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>);
        stdgo._internal.image.gif.Gif_t_blockreader_static_extension.T_blockReader_static_extension._fill(_b);
    }
}
@:dox(hide) typedef T_interlaceScanPointer = stdgo._internal.image.gif.Gif_t_interlacescanpointer.T_interlaceScanPointer;
@:dox(hide) class T_interlaceScan_static_extension {

}
typedef GIFPointer = stdgo._internal.image.gif.Gif_gifpointer.GIFPointer;
class GIF_static_extension {

}
@:dox(hide) typedef T_encoderPointer = stdgo._internal.image.gif.Gif_t_encoderpointer.T_encoderPointer;
@:dox(hide) class T_encoder_static_extension {
    static public function _writeImageBlock(_e:T_encoder, _pm:stdgo._internal.image.Image_paletted.Paletted, _delay:StdTypes.Int, _disposal:std.UInt):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>);
        final _pm = (_pm : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        final _delay = (_delay : stdgo.GoInt);
        final _disposal = (_disposal : stdgo.GoUInt8);
        stdgo._internal.image.gif.Gif_t_encoder_static_extension.T_encoder_static_extension._writeImageBlock(_e, _pm, _delay, _disposal);
    }
    static public function _colorTablesMatch(_e:T_encoder, _localLen:StdTypes.Int, _transparentIndex:StdTypes.Int):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>);
        final _localLen = (_localLen : stdgo.GoInt);
        final _transparentIndex = (_transparentIndex : stdgo.GoInt);
        return stdgo._internal.image.gif.Gif_t_encoder_static_extension.T_encoder_static_extension._colorTablesMatch(_e, _localLen, _transparentIndex);
    }
    static public function _writeHeader(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>);
        stdgo._internal.image.gif.Gif_t_encoder_static_extension.T_encoder_static_extension._writeHeader(_e);
    }
    static public function _writeByte(_e:T_encoder, _b:std.UInt):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>);
        final _b = (_b : stdgo.GoUInt8);
        stdgo._internal.image.gif.Gif_t_encoder_static_extension.T_encoder_static_extension._writeByte(_e, _b);
    }
    static public function _write(_e:T_encoder, _p:Array<std.UInt>):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.image.gif.Gif_t_encoder_static_extension.T_encoder_static_extension._write(_e, _p);
    }
    static public function _flush(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>);
        stdgo._internal.image.gif.Gif_t_encoder_static_extension.T_encoder_static_extension._flush(_e);
    }
}
@:dox(hide) typedef T_blockWriterPointer = stdgo._internal.image.gif.Gif_t_blockwriterpointer.T_blockWriterPointer;
@:dox(hide) class T_blockWriter_static_extension {
    static public function _close(_b:T_blockWriter):Void {
        stdgo._internal.image.gif.Gif_t_blockwriter_static_extension.T_blockWriter_static_extension._close(_b);
    }
    static public function write(_b:T_blockWriter, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.image.gif.Gif_t_blockwriter_static_extension.T_blockWriter_static_extension.write(_b, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:T_blockWriter, _c:std.UInt):stdgo.Error {
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.image.gif.Gif_t_blockwriter_static_extension.T_blockWriter_static_extension.writeByte(_b, _c);
    }
    static public function flush(_b:T_blockWriter):stdgo.Error {
        return stdgo._internal.image.gif.Gif_t_blockwriter_static_extension.T_blockWriter_static_extension.flush(_b);
    }
    static public function _setup(_b:T_blockWriter):Void {
        stdgo._internal.image.gif.Gif_t_blockwriter_static_extension.T_blockWriter_static_extension._setup(_b);
    }
}
typedef OptionsPointer = stdgo._internal.image.gif.Gif_optionspointer.OptionsPointer;
class Options_static_extension {

}
/**
    * Package gif implements a GIF image decoder and encoder.
    * 
    * The GIF specification is at https://www.w3.org/Graphics/GIF/spec-gif89a.txt.
**/
class Gif {
    /**
        * Decode reads a GIF image from r and returns the first embedded
        * image as an image.Image.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.gif.Gif_decode.decode(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * DecodeAll reads a GIF image from r and returns the sequential frames
        * and timing information.
    **/
    static public inline function decodeAll(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<GIF, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.gif.Gif_decodeall.decodeAll(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * DecodeConfig returns the global color model and dimensions of a GIF image
        * without decoding the entire image.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_config.Config, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.gif.Gif_decodeconfig.decodeConfig(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * EncodeAll writes the images in g to w in GIF format with the
        * given loop count and delay between frames.
    **/
    static public inline function encodeAll(_w:stdgo._internal.io.Io_writer.Writer, _g:GIF):stdgo.Error {
        final _g = (_g : stdgo.Ref<stdgo._internal.image.gif.Gif_gif.GIF>);
        return stdgo._internal.image.gif.Gif_encodeall.encodeAll(_w, _g);
    }
    /**
        * Encode writes the Image m to w in GIF format.
    **/
    static public inline function encode(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image, _o:Options):stdgo.Error {
        final _o = (_o : stdgo.Ref<stdgo._internal.image.gif.Gif_options.Options>);
        return stdgo._internal.image.gif.Gif_encode.encode(_w, _m, _o);
    }
}
