package stdgo;
final stdPadding : StdTypes.Int = stdgo._internal.encoding.base32.Base32_stdpadding.stdPadding;
final noPadding : StdTypes.Int = stdgo._internal.encoding.base32.Base32_nopadding.noPadding;
var stdEncoding(get, set) : Encoding;
private function get_stdEncoding():Encoding return stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding;
private function set_stdEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding = (v : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        return v;
    }
var hexEncoding(get, set) : Encoding;
private function get_hexEncoding():Encoding return stdgo._internal.encoding.base32.Base32_hexencoding.hexEncoding;
private function set_hexEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base32.Base32_hexencoding.hexEncoding = (v : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        return v;
    }
@:structInit @:using(stdgo.encoding.base32.Base32.Encoding_static_extension) abstract Encoding(stdgo._internal.encoding.base32.Base32_encoding.Encoding) from stdgo._internal.encoding.base32.Base32_encoding.Encoding to stdgo._internal.encoding.base32.Base32_encoding.Encoding {
    public var _encode(get, set) : haxe.ds.Vector<std.UInt>;
    function get__encode():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._encode) i]);
    function set__encode(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._encode = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _decodeMap(get, set) : haxe.ds.Vector<std.UInt>;
    function get__decodeMap():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._decodeMap) i]);
    function set__decodeMap(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._decodeMap = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _padChar(get, set) : StdTypes.Int;
    function get__padChar():StdTypes.Int return this._padChar;
    function set__padChar(v:StdTypes.Int):StdTypes.Int {
        this._padChar = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_encode:haxe.ds.Vector<std.UInt>, ?_decodeMap:haxe.ds.Vector<std.UInt>, ?_padChar:StdTypes.Int) this = new stdgo._internal.encoding.base32.Base32_encoding.Encoding(([for (i in _encode) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _decodeMap) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_padChar : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base32.Base32.T_encoder_static_extension) @:dox(hide) abstract T_encoder(stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder) from stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder to stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = (v : stdgo.GoInt);
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_enc:Encoding, ?_w:stdgo._internal.io.Io_writer.Writer, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder((_err : stdgo.Error), (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>), _w, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nbuf : stdgo.GoInt), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base32.Base32.T_decoder_static_extension) @:dox(hide) abstract T_decoder(stdgo._internal.encoding.base32.Base32_t_decoder.T_decoder) from stdgo._internal.encoding.base32.Base32_t_decoder.T_decoder to stdgo._internal.encoding.base32.Base32_t_decoder.T_decoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _end(get, set) : Bool;
    function get__end():Bool return this._end;
    function set__end(v:Bool):Bool {
        this._end = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = (v : stdgo.GoInt);
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__outbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._outbuf) i]);
    function set__outbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._outbuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_enc:Encoding, ?_r:stdgo._internal.io.Io_reader.Reader, ?_end:Bool, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:Array<std.UInt>, ?_outbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base32.Base32_t_decoder.T_decoder((_err : stdgo.Error), (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>), _r, _end, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nbuf : stdgo.GoInt), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base32.Base32.T_newlineFilteringReader_static_extension) @:dox(hide) abstract T_newlineFilteringReader(stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader.T_newlineFilteringReader) from stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader.T_newlineFilteringReader to stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader.T_newlineFilteringReader {
    public var _wrapped(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__wrapped():stdgo._internal.io.Io_reader.Reader return this._wrapped;
    function set__wrapped(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._wrapped = v;
        return v;
    }
    public function new(?_wrapped:stdgo._internal.io.Io_reader.Reader) this = new stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader.T_newlineFilteringReader(_wrapped);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CorruptInputError = stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError;
typedef EncodingPointer = stdgo._internal.encoding.base32.Base32_encodingpointer.EncodingPointer;
class Encoding_static_extension {
    static public function decodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.base32.Base32_encoding_static_extension.Encoding_static_extension.decodedLen(_enc, _n);
    }
    static public function decodeString(_enc:Encoding, _s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_encoding_static_extension.Encoding_static_extension.decodeString(_enc, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function decode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_encoding_static_extension.Encoding_static_extension.decode(_enc, _dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Bool, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_encoding_static_extension.Encoding_static_extension._decode(_enc, _dst, _src);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function encodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.base32.Base32_encoding_static_extension.Encoding_static_extension.encodedLen(_enc, _n);
    }
    static public function encodeToString(_enc:Encoding, _src:Array<std.UInt>):String {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.base32.Base32_encoding_static_extension.Encoding_static_extension.encodeToString(_enc, _src);
    }
    static public function encode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.base32.Base32_encoding_static_extension.Encoding_static_extension.encode(_enc, _dst, _src);
    }
    static public function withPadding(_enc:Encoding, _padding:StdTypes.Int):Encoding {
        final _padding = (_padding : stdgo.GoInt32);
        return stdgo._internal.encoding.base32.Base32_encoding_static_extension.Encoding_static_extension.withPadding(_enc, _padding);
    }
}
@:dox(hide) typedef T_encoderPointer = stdgo._internal.encoding.base32.Base32_t_encoderpointer.T_encoderPointer;
@:dox(hide) class T_encoder_static_extension {
    static public function close(_e:T_encoder):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder>);
        return stdgo._internal.encoding.base32.Base32_t_encoder_static_extension.T_encoder_static_extension.close(_e);
    }
    static public function write(_e:T_encoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_t_encoder_static_extension.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_decoderPointer = stdgo._internal.encoding.base32.Base32_t_decoderpointer.T_decoderPointer;
@:dox(hide) class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_decoder.T_decoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_t_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_newlineFilteringReaderPointer = stdgo._internal.encoding.base32.Base32_t_newlinefilteringreaderpointer.T_newlineFilteringReaderPointer;
@:dox(hide) class T_newlineFilteringReader_static_extension {
    static public function read(_r:T_newlineFilteringReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader.T_newlineFilteringReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader_static_extension.T_newlineFilteringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef CorruptInputErrorPointer = stdgo._internal.encoding.base32.Base32_corruptinputerrorpointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.encoding.base32.Base32_corruptinputerror_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
/**
    * Package base32 implements base32 encoding as specified by RFC 4648.
**/
class Base32 {
    /**
        * NewEncoding returns a new Encoding defined by the given alphabet,
        * which must be a 32-byte string. The alphabet is treated as sequence
        * of byte values without any special treatment for multi-byte UTF-8.
    **/
    static public inline function newEncoding(_encoder:String):Encoding {
        final _encoder = (_encoder : stdgo.GoString);
        return stdgo._internal.encoding.base32.Base32_newencoding.newEncoding(_encoder);
    }
    /**
        * NewEncoder returns a new base32 stream encoder. Data written to
        * the returned writer will be encoded using enc and then written to w.
        * Base32 encodings operate in 5-byte blocks; when finished
        * writing, the caller must Close the returned encoder to flush any
        * partially written blocks.
    **/
    static public inline function newEncoder(_enc:Encoding, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        return stdgo._internal.encoding.base32.Base32_newencoder.newEncoder(_enc, _w);
    }
    /**
        * NewDecoder constructs a new base32 stream decoder.
    **/
    static public inline function newDecoder(_enc:Encoding, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
        return stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(_enc, _r);
    }
}
