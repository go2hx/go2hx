package stdgo;
final defaultCompression : CompressionLevel = stdgo._internal.image.png.Png_defaultcompression.defaultCompression;
final noCompression : CompressionLevel = stdgo._internal.image.png.Png_nocompression.noCompression;
final bestSpeed : CompressionLevel = stdgo._internal.image.png.Png_bestspeed.bestSpeed;
final bestCompression : CompressionLevel = stdgo._internal.image.png.Png_bestcompression.bestCompression;
class EncoderBufferPool_static_extension {
    static public function put(t:stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool, _0:EncoderBuffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.image.png.Png_encoderbuffer.EncoderBuffer>);
        stdgo._internal.image.png.Png_encoderbufferpool_static_extension.EncoderBufferPool_static_extension.put(t, _0);
    }
    static public function get(t:stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool):EncoderBuffer {
        return stdgo._internal.image.png.Png_encoderbufferpool_static_extension.EncoderBufferPool_static_extension.get(t);
    }
}
@:forward abstract EncoderBufferPool(stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool) from stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool to stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool {
    @:from
    static function fromHaxeInterface(x:{ function get():EncoderBuffer; function put(_0:EncoderBuffer):Void; }):EncoderBufferPool {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:EncoderBufferPool = { get : () -> x.get(), put : _0 -> x.put(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_opaquer_static_extension {
    static public function opaque(t:stdgo._internal.image.png.Png_t_opaquer.T_opaquer):Bool {
        return stdgo._internal.image.png.Png_t_opaquer_static_extension.T_opaquer_static_extension.opaque(t);
    }
}
@:dox(hide) @:forward abstract T_opaquer(stdgo._internal.image.png.Png_t_opaquer.T_opaquer) from stdgo._internal.image.png.Png_t_opaquer.T_opaquer to stdgo._internal.image.png.Png_t_opaquer.T_opaquer {
    @:from
    static function fromHaxeInterface(x:{ function opaque():Bool; }):T_opaquer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_opaquer = { opaque : () -> x.opaque(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.image.png.Png.T_interlaceScan_static_extension) @:dox(hide) abstract T_interlaceScan(stdgo._internal.image.png.Png_t_interlacescan.T_interlaceScan) from stdgo._internal.image.png.Png_t_interlacescan.T_interlaceScan to stdgo._internal.image.png.Png_t_interlacescan.T_interlaceScan {
    public var _xFactor(get, set) : StdTypes.Int;
    function get__xFactor():StdTypes.Int return this._xFactor;
    function set__xFactor(v:StdTypes.Int):StdTypes.Int {
        this._xFactor = (v : stdgo.GoInt);
        return v;
    }
    public var _yFactor(get, set) : StdTypes.Int;
    function get__yFactor():StdTypes.Int return this._yFactor;
    function set__yFactor(v:StdTypes.Int):StdTypes.Int {
        this._yFactor = (v : stdgo.GoInt);
        return v;
    }
    public var _xOffset(get, set) : StdTypes.Int;
    function get__xOffset():StdTypes.Int return this._xOffset;
    function set__xOffset(v:StdTypes.Int):StdTypes.Int {
        this._xOffset = (v : stdgo.GoInt);
        return v;
    }
    public var _yOffset(get, set) : StdTypes.Int;
    function get__yOffset():StdTypes.Int return this._yOffset;
    function set__yOffset(v:StdTypes.Int):StdTypes.Int {
        this._yOffset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_xFactor:StdTypes.Int, ?_yFactor:StdTypes.Int, ?_xOffset:StdTypes.Int, ?_yOffset:StdTypes.Int) this = new stdgo._internal.image.png.Png_t_interlacescan.T_interlaceScan((_xFactor : stdgo.GoInt), (_yFactor : stdgo.GoInt), (_xOffset : stdgo.GoInt), (_yOffset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.png.Png.T_decoder_static_extension) @:dox(hide) abstract T_decoder(stdgo._internal.image.png.Png_t_decoder.T_decoder) from stdgo._internal.image.png.Png_t_decoder.T_decoder to stdgo._internal.image.png.Png_t_decoder.T_decoder {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _img(get, set) : stdgo._internal.image.Image_image.Image;
    function get__img():stdgo._internal.image.Image_image.Image return this._img;
    function set__img(v:stdgo._internal.image.Image_image.Image):stdgo._internal.image.Image_image.Image {
        this._img = v;
        return v;
    }
    public var _crc(get, set) : stdgo._internal.hash.Hash_hash32.Hash32;
    function get__crc():stdgo._internal.hash.Hash_hash32.Hash32 return this._crc;
    function set__crc(v:stdgo._internal.hash.Hash_hash32.Hash32):stdgo._internal.hash.Hash_hash32.Hash32 {
        this._crc = v;
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
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = (v : stdgo.GoInt);
        return v;
    }
    public var _palette(get, set) : stdgo._internal.image.color.Color_palette.Palette;
    function get__palette():stdgo._internal.image.color.Color_palette.Palette return this._palette;
    function set__palette(v:stdgo._internal.image.color.Color_palette.Palette):stdgo._internal.image.color.Color_palette.Palette {
        this._palette = v;
        return v;
    }
    public var _cb(get, set) : StdTypes.Int;
    function get__cb():StdTypes.Int return this._cb;
    function set__cb(v:StdTypes.Int):StdTypes.Int {
        this._cb = (v : stdgo.GoInt);
        return v;
    }
    public var _stage(get, set) : StdTypes.Int;
    function get__stage():StdTypes.Int return this._stage;
    function set__stage(v:StdTypes.Int):StdTypes.Int {
        this._stage = (v : stdgo.GoInt);
        return v;
    }
    public var _idatLength(get, set) : std.UInt;
    function get__idatLength():std.UInt return this._idatLength;
    function set__idatLength(v:std.UInt):std.UInt {
        this._idatLength = (v : stdgo.GoUInt32);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _interlace(get, set) : StdTypes.Int;
    function get__interlace():StdTypes.Int return this._interlace;
    function set__interlace(v:StdTypes.Int):StdTypes.Int {
        this._interlace = (v : stdgo.GoInt);
        return v;
    }
    public var _useTransparent(get, set) : Bool;
    function get__useTransparent():Bool return this._useTransparent;
    function set__useTransparent(v:Bool):Bool {
        this._useTransparent = v;
        return v;
    }
    public var _transparent(get, set) : haxe.ds.Vector<std.UInt>;
    function get__transparent():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._transparent) i]);
    function set__transparent(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._transparent = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_img:stdgo._internal.image.Image_image.Image, ?_crc:stdgo._internal.hash.Hash_hash32.Hash32, ?_width:StdTypes.Int, ?_height:StdTypes.Int, ?_depth:StdTypes.Int, ?_palette:stdgo._internal.image.color.Color_palette.Palette, ?_cb:StdTypes.Int, ?_stage:StdTypes.Int, ?_idatLength:std.UInt, ?_tmp:haxe.ds.Vector<std.UInt>, ?_interlace:StdTypes.Int, ?_useTransparent:Bool, ?_transparent:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.image.png.Png_t_decoder.T_decoder(
_r,
_img,
_crc,
(_width : stdgo.GoInt),
(_height : stdgo.GoInt),
(_depth : stdgo.GoInt),
_palette,
(_cb : stdgo.GoInt),
(_stage : stdgo.GoInt),
(_idatLength : stdgo.GoUInt32),
([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(_interlace : stdgo.GoInt),
_useTransparent,
([for (i in _transparent) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.png.Png.Encoder_static_extension) abstract Encoder(stdgo._internal.image.png.Png_encoder.Encoder) from stdgo._internal.image.png.Png_encoder.Encoder to stdgo._internal.image.png.Png_encoder.Encoder {
    public var compressionLevel(get, set) : CompressionLevel;
    function get_compressionLevel():CompressionLevel return this.compressionLevel;
    function set_compressionLevel(v:CompressionLevel):CompressionLevel {
        this.compressionLevel = v;
        return v;
    }
    public var bufferPool(get, set) : EncoderBufferPool;
    function get_bufferPool():EncoderBufferPool return this.bufferPool;
    function set_bufferPool(v:EncoderBufferPool):EncoderBufferPool {
        this.bufferPool = v;
        return v;
    }
    public function new(?compressionLevel:CompressionLevel, ?bufferPool:EncoderBufferPool) this = new stdgo._internal.image.png.Png_encoder.Encoder(compressionLevel, bufferPool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.png.Png.T_encoder_static_extension) @:dox(hide) abstract T_encoder(stdgo._internal.image.png.Png_t_encoder.T_encoder) from stdgo._internal.image.png.Png_t_encoder.T_encoder to stdgo._internal.image.png.Png_t_encoder.T_encoder {
    public var _enc(get, set) : Encoder;
    function get__enc():Encoder return this._enc;
    function set__enc(v:Encoder):Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.image.png.Png_encoder.Encoder>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _m(get, set) : stdgo._internal.image.Image_image.Image;
    function get__m():stdgo._internal.image.Image_image.Image return this._m;
    function set__m(v:stdgo._internal.image.Image_image.Image):stdgo._internal.image.Image_image.Image {
        this._m = v;
        return v;
    }
    public var _cb(get, set) : StdTypes.Int;
    function get__cb():StdTypes.Int return this._cb;
    function set__cb(v:StdTypes.Int):StdTypes.Int {
        this._cb = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _header(get, set) : haxe.ds.Vector<std.UInt>;
    function get__header():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._header) i]);
    function set__header(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._header = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _footer(get, set) : haxe.ds.Vector<std.UInt>;
    function get__footer():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._footer) i]);
    function set__footer(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._footer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _cr(get, set) : haxe.ds.Vector<Array<std.UInt>>;
    function get__cr():haxe.ds.Vector<Array<std.UInt>> return haxe.ds.Vector.fromArrayCopy([for (i in this._cr) [for (i in i) i]]);
    function set__cr(v:haxe.ds.Vector<Array<std.UInt>>):haxe.ds.Vector<Array<std.UInt>> {
        this._cr = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _pr(get, set) : Array<std.UInt>;
    function get__pr():Array<std.UInt> return [for (i in this._pr) i];
    function set__pr(v:Array<std.UInt>):Array<std.UInt> {
        this._pr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _zw(get, set) : stdgo._internal.compress.zlib.Zlib_writer.Writer;
    function get__zw():stdgo._internal.compress.zlib.Zlib_writer.Writer return this._zw;
    function set__zw(v:stdgo._internal.compress.zlib.Zlib_writer.Writer):stdgo._internal.compress.zlib.Zlib_writer.Writer {
        this._zw = (v : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>);
        return v;
    }
    public var _zwLevel(get, set) : StdTypes.Int;
    function get__zwLevel():StdTypes.Int return this._zwLevel;
    function set__zwLevel(v:StdTypes.Int):StdTypes.Int {
        this._zwLevel = (v : stdgo.GoInt);
        return v;
    }
    public var _bw(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get__bw():stdgo._internal.bufio.Bufio_writer.Writer return this._bw;
    function set__bw(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this._bw = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public function new(?_enc:Encoder, ?_w:stdgo._internal.io.Io_writer.Writer, ?_m:stdgo._internal.image.Image_image.Image, ?_cb:StdTypes.Int, ?_err:stdgo.Error, ?_header:haxe.ds.Vector<std.UInt>, ?_footer:haxe.ds.Vector<std.UInt>, ?_tmp:haxe.ds.Vector<std.UInt>, ?_cr:haxe.ds.Vector<Array<std.UInt>>, ?_pr:Array<std.UInt>, ?_zw:stdgo._internal.compress.zlib.Zlib_writer.Writer, ?_zwLevel:StdTypes.Int, ?_bw:stdgo._internal.bufio.Bufio_writer.Writer) this = new stdgo._internal.image.png.Png_t_encoder.T_encoder(
(_enc : stdgo.Ref<stdgo._internal.image.png.Png_encoder.Encoder>),
_w,
_m,
(_cb : stdgo.GoInt),
(_err : stdgo.Error),
([for (i in _header) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _footer) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _cr) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>),
([for (i in _pr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_zw : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>),
(_zwLevel : stdgo.GoInt),
(_bw : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef FormatError = stdgo._internal.image.png.Png_formaterror.FormatError;
typedef UnsupportedError = stdgo._internal.image.png.Png_unsupportederror.UnsupportedError;
typedef EncoderBuffer = stdgo._internal.image.png.Png_encoderbuffer.EncoderBuffer;
typedef CompressionLevel = stdgo._internal.image.png.Png_compressionlevel.CompressionLevel;
@:dox(hide) typedef T_interlaceScanPointer = stdgo._internal.image.png.Png_t_interlacescanpointer.T_interlaceScanPointer;
@:dox(hide) class T_interlaceScan_static_extension {

}
@:dox(hide) typedef T_decoderPointer = stdgo._internal.image.png.Png_t_decoderpointer.T_decoderPointer;
@:dox(hide) class T_decoder_static_extension {
    static public function _checkHeader(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        return stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._checkHeader(_d);
    }
    static public function _verifyChecksum(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        return stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._verifyChecksum(_d);
    }
    static public function _parseChunk(_d:T_decoder, _configOnly:Bool):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        return stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._parseChunk(_d, _configOnly);
    }
    static public function _parseIEND(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._parseIEND(_d, _length);
    }
    static public function _parseIDAT(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._parseIDAT(_d, _length);
    }
    static public function _mergePassInto(_d:T_decoder, _dst:stdgo._internal.image.Image_image.Image, _src:stdgo._internal.image.Image_image.Image, _pass:StdTypes.Int):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        final _pass = (_pass : stdgo.GoInt);
        stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._mergePassInto(_d, _dst, _src, _pass);
    }
    static public function _readImagePass(_d:T_decoder, _r:stdgo._internal.io.Io_reader.Reader, _pass:StdTypes.Int, _allocateOnly:Bool):stdgo.Tuple<stdgo._internal.image.Image_image.Image, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        final _pass = (_pass : stdgo.GoInt);
        return {
            final obj = stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._readImagePass(_d, _r, _pass, _allocateOnly);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decode(_d:T_decoder):stdgo.Tuple<stdgo._internal.image.Image_image.Image, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._decode(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parsetRNS(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._parsetRNS(_d, _length);
    }
    static public function _parsePLTE(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._parsePLTE(_d, _length);
    }
    static public function _parseIHDR(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_t_decoder_static_extension.T_decoder_static_extension._parseIHDR(_d, _length);
    }
}
typedef EncoderPointer = stdgo._internal.image.png.Png_encoderpointer.EncoderPointer;
class Encoder_static_extension {
    static public function encode(_enc:Encoder, _w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.image.png.Png_encoder.Encoder>);
        return stdgo._internal.image.png.Png_encoder_static_extension.Encoder_static_extension.encode(_enc, _w, _m);
    }
}
@:dox(hide) typedef T_encoderPointer = stdgo._internal.image.png.Png_t_encoderpointer.T_encoderPointer;
@:dox(hide) class T_encoder_static_extension {
    static public function _writeIEND(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
        stdgo._internal.image.png.Png_t_encoder_static_extension.T_encoder_static_extension._writeIEND(_e);
    }
    static public function _writeIDATs(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
        stdgo._internal.image.png.Png_t_encoder_static_extension.T_encoder_static_extension._writeIDATs(_e);
    }
    static public function _writeImage(_e:T_encoder, _w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image, _cb:StdTypes.Int, _level:StdTypes.Int):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
        final _cb = (_cb : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        return stdgo._internal.image.png.Png_t_encoder_static_extension.T_encoder_static_extension._writeImage(_e, _w, _m, _cb, _level);
    }
    static public function write(_e:T_encoder, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.image.png.Png_t_encoder_static_extension.T_encoder_static_extension.write(_e, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writePLTEAndTRNS(_e:T_encoder, _p:stdgo._internal.image.color.Color_palette.Palette):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
        stdgo._internal.image.png.Png_t_encoder_static_extension.T_encoder_static_extension._writePLTEAndTRNS(_e, _p);
    }
    static public function _writeIHDR(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
        stdgo._internal.image.png.Png_t_encoder_static_extension.T_encoder_static_extension._writeIHDR(_e);
    }
    static public function _writeChunk(_e:T_encoder, _b:Array<std.UInt>, _name:String):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.image.png.Png_t_encoder_static_extension.T_encoder_static_extension._writeChunk(_e, _b, _name);
    }
}
typedef FormatErrorPointer = stdgo._internal.image.png.Png_formaterrorpointer.FormatErrorPointer;
class FormatError_static_extension {
    static public function error(_e:FormatError):String {
        return stdgo._internal.image.png.Png_formaterror_static_extension.FormatError_static_extension.error(_e);
    }
}
typedef UnsupportedErrorPointer = stdgo._internal.image.png.Png_unsupportederrorpointer.UnsupportedErrorPointer;
class UnsupportedError_static_extension {
    static public function error(_e:UnsupportedError):String {
        return stdgo._internal.image.png.Png_unsupportederror_static_extension.UnsupportedError_static_extension.error(_e);
    }
}
typedef EncoderBufferPointer = stdgo._internal.image.png.Png_encoderbufferpointer.EncoderBufferPointer;
class EncoderBuffer_static_extension {

}
typedef CompressionLevelPointer = stdgo._internal.image.png.Png_compressionlevelpointer.CompressionLevelPointer;
class CompressionLevel_static_extension {

}
/**
    * Package png implements a PNG image decoder and encoder.
    * 
    * The PNG specification is at https://www.w3.org/TR/PNG/.
**/
class Png {
    /**
        * Decode reads a PNG image from r and returns it as an image.Image.
        * The type of Image returned depends on the PNG contents.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.png.Png_decode.decode(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * DecodeConfig returns the color model and dimensions of a PNG image without
        * decoding the entire image.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_config.Config, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.png.Png_decodeconfig.decodeConfig(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Encode writes the Image m to w in PNG format. Any Image may be
        * encoded, but images that are not image.NRGBA might be encoded lossily.
    **/
    static public inline function encode(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image):stdgo.Error {
        return stdgo._internal.image.png.Png_encode.encode(_w, _m);
    }
}
