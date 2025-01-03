package stdgo.encoding.base32;
final stdPadding : StdTypes.Int = stdgo._internal.encoding.base32.Base32_stdPadding.stdPadding;
final noPadding : StdTypes.Int = stdgo._internal.encoding.base32.Base32_noPadding.noPadding;
var stdEncoding(get, set) : Encoding;
private function get_stdEncoding():Encoding return stdgo._internal.encoding.base32.Base32_stdEncoding.stdEncoding;
private function set_stdEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base32.Base32_stdEncoding.stdEncoding = v;
        return v;
    }
var hexEncoding(get, set) : Encoding;
private function get_hexEncoding():Encoding return stdgo._internal.encoding.base32.Base32_hexEncoding.hexEncoding;
private function set_hexEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base32.Base32_hexEncoding.hexEncoding = v;
        return v;
    }
@:structInit @:using(stdgo.encoding.base32.Base32.Encoding_static_extension) abstract Encoding(stdgo._internal.encoding.base32.Base32_Encoding.Encoding) from stdgo._internal.encoding.base32.Base32_Encoding.Encoding to stdgo._internal.encoding.base32.Base32_Encoding.Encoding {
    public var _encode(get, set) : haxe.ds.Vector<std.UInt>;
    function get__encode():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._encode) i]);
    function set__encode(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._encode = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _decodeMap(get, set) : haxe.ds.Vector<std.UInt>;
    function get__decodeMap():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._decodeMap) i]);
    function set__decodeMap(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._decodeMap = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _padChar(get, set) : StdTypes.Int;
    function get__padChar():StdTypes.Int return this._padChar;
    function set__padChar(v:StdTypes.Int):StdTypes.Int {
        this._padChar = v;
        return v;
    }
    public function new(?_encode:haxe.ds.Vector<std.UInt>, ?_decodeMap:haxe.ds.Vector<std.UInt>, ?_padChar:StdTypes.Int) this = new stdgo._internal.encoding.base32.Base32_Encoding.Encoding(([for (i in _encode) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _decodeMap) i] : stdgo.GoArray<stdgo.GoUInt8>), _padChar);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base32.Base32.T_encoder_static_extension) abstract T_encoder(stdgo._internal.encoding.base32.Base32_T_encoder.T_encoder) from stdgo._internal.encoding.base32.Base32_T_encoder.T_encoder to stdgo._internal.encoding.base32.Base32_T_encoder.T_encoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_enc:Encoding, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base32.Base32_T_encoder.T_encoder(_err, _enc, _w, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base32.Base32.T_decoder_static_extension) abstract T_decoder(stdgo._internal.encoding.base32.Base32_T_decoder.T_decoder) from stdgo._internal.encoding.base32.Base32_T_decoder.T_decoder to stdgo._internal.encoding.base32.Base32_T_decoder.T_decoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
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
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__outbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._outbuf) i]);
    function set__outbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._outbuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_enc:Encoding, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_end:Bool, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:Array<std.UInt>, ?_outbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base32.Base32_T_decoder.T_decoder(_err, _enc, _r, _end, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _outbuf) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base32.Base32.T_newlineFilteringReader_static_extension) abstract T_newlineFilteringReader(stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader.T_newlineFilteringReader) from stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader.T_newlineFilteringReader to stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader.T_newlineFilteringReader {
    public var _wrapped(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__wrapped():stdgo._internal.io.Io_Reader.Reader return this._wrapped;
    function set__wrapped(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._wrapped = v;
        return v;
    }
    public function new(?_wrapped:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader.T_newlineFilteringReader(_wrapped);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CorruptInputError = stdgo._internal.encoding.base32.Base32_CorruptInputError.CorruptInputError;
typedef EncodingPointer = stdgo._internal.encoding.base32.Base32_EncodingPointer.EncodingPointer;
class Encoding_static_extension {
    static public function decodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension.decodedLen(_enc, _n);
    }
    static public function decodeString(_enc:Encoding, _s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension.decodeString(_enc, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function decode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension.decode(_enc, _dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Bool, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension._decode(_enc, _dst, _src);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function encodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension.encodedLen(_enc, _n);
    }
    static public function encodeToString(_enc:Encoding, _src:Array<std.UInt>):String {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension.encodeToString(_enc, _src);
    }
    static public function encode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension.encode(_enc, _dst, _src);
    }
    static public function withPadding(_enc:Encoding, _padding:StdTypes.Int):Encoding {
        return stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension.withPadding(_enc, _padding);
    }
}
typedef T_encoderPointer = stdgo._internal.encoding.base32.Base32_T_encoderPointer.T_encoderPointer;
class T_encoder_static_extension {
    static public function close(_e:T_encoder):stdgo.Error {
        return stdgo._internal.encoding.base32.Base32_T_encoder_static_extension.T_encoder_static_extension.close(_e);
    }
    static public function write(_e:T_encoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_T_encoder_static_extension.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_decoderPointer = stdgo._internal.encoding.base32.Base32_T_decoderPointer.T_decoderPointer;
class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_T_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_newlineFilteringReaderPointer = stdgo._internal.encoding.base32.Base32_T_newlineFilteringReaderPointer.T_newlineFilteringReaderPointer;
class T_newlineFilteringReader_static_extension {
    static public function read(_r:T_newlineFilteringReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader_static_extension.T_newlineFilteringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef CorruptInputErrorPointer = stdgo._internal.encoding.base32.Base32_CorruptInputErrorPointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.encoding.base32.Base32_CorruptInputError_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
/**
    Package base32 implements base32 encoding as specified by RFC 4648.
**/
class Base32 {
    /**
        NewEncoding returns a new Encoding defined by the given alphabet,
        which must be a 32-byte string. The alphabet is treated as sequence
        of byte values without any special treatment for multi-byte UTF-8.
    **/
    static public function newEncoding(_encoder:String):Encoding {
        return stdgo._internal.encoding.base32.Base32_newEncoding.newEncoding(_encoder);
    }
    /**
        NewEncoder returns a new base32 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base32 encodings operate in 5-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
    **/
    static public function newEncoder(_enc:Encoding, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.encoding.base32.Base32_newEncoder.newEncoder(_enc, _w);
    }
    /**
        NewDecoder constructs a new base32 stream decoder.
    **/
    static public function newDecoder(_enc:Encoding, _r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.encoding.base32.Base32_newDecoder.newDecoder(_enc, _r);
    }
}
