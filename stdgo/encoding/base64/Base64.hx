package stdgo.encoding.base64;
final stdPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64_stdPadding.stdPadding;
final noPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64_noPadding.noPadding;
var stdEncoding(get, set) : Encoding;
private function get_stdEncoding():Encoding return stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding;
private function set_stdEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding = v;
        return v;
    }
var uRLEncoding(get, set) : Encoding;
private function get_uRLEncoding():Encoding return stdgo._internal.encoding.base64.Base64_uRLEncoding.uRLEncoding;
private function set_uRLEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base64.Base64_uRLEncoding.uRLEncoding = v;
        return v;
    }
var rawStdEncoding(get, set) : Encoding;
private function get_rawStdEncoding():Encoding return stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding;
private function set_rawStdEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding = v;
        return v;
    }
var rawURLEncoding(get, set) : Encoding;
private function get_rawURLEncoding():Encoding return stdgo._internal.encoding.base64.Base64_rawURLEncoding.rawURLEncoding;
private function set_rawURLEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base64.Base64_rawURLEncoding.rawURLEncoding = v;
        return v;
    }
@:structInit @:using(stdgo.encoding.base64.Base64.Encoding_static_extension) abstract Encoding(stdgo._internal.encoding.base64.Base64_Encoding.Encoding) from stdgo._internal.encoding.base64.Base64_Encoding.Encoding to stdgo._internal.encoding.base64.Base64_Encoding.Encoding {
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
    public var _strict(get, set) : Bool;
    function get__strict():Bool return this._strict;
    function set__strict(v:Bool):Bool {
        this._strict = v;
        return v;
    }
    public function new(?_encode:haxe.ds.Vector<std.UInt>, ?_decodeMap:haxe.ds.Vector<std.UInt>, ?_padChar:StdTypes.Int, ?_strict:Bool) this = new stdgo._internal.encoding.base64.Base64_Encoding.Encoding(([for (i in _encode) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _decodeMap) i] : stdgo.GoArray<stdgo.GoUInt8>), _padChar, _strict);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_encoder_static_extension) abstract T_encoder(stdgo._internal.encoding.base64.Base64_T_encoder.T_encoder) from stdgo._internal.encoding.base64.Base64_T_encoder.T_encoder to stdgo._internal.encoding.base64.Base64_T_encoder.T_encoder {
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
    public function new(?_err:stdgo.Error, ?_enc:Encoding, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base64.Base64_T_encoder.T_encoder(_err, _enc, _w, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_decoder_static_extension) abstract T_decoder(stdgo._internal.encoding.base64.Base64_T_decoder.T_decoder) from stdgo._internal.encoding.base64.Base64_T_decoder.T_decoder to stdgo._internal.encoding.base64.Base64_T_decoder.T_decoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = v;
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
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:Encoding, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:Array<std.UInt>, ?_outbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base64.Base64_T_decoder.T_decoder(_err, _readErr, _enc, _r, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _outbuf) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_newlineFilteringReader_static_extension) abstract T_newlineFilteringReader(stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader) from stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader to stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader {
    public var _wrapped(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__wrapped():stdgo._internal.io.Io_Reader.Reader return this._wrapped;
    function set__wrapped(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._wrapped = v;
        return v;
    }
    public function new(?_wrapped:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader(_wrapped);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testpair(stdgo._internal.encoding.base64.Base64_T_testpair.T_testpair) from stdgo._internal.encoding.base64.Base64_T_testpair.T_testpair to stdgo._internal.encoding.base64.Base64_T_testpair.T_testpair {
    public var _decoded(get, set) : String;
    function get__decoded():String return this._decoded;
    function set__decoded(v:String):String {
        this._decoded = v;
        return v;
    }
    public var _encoded(get, set) : String;
    function get__encoded():String return this._encoded;
    function set__encoded(v:String):String {
        this._encoded = v;
        return v;
    }
    public function new(?_decoded:String, ?_encoded:String) this = new stdgo._internal.encoding.base64.Base64_T_testpair.T_testpair(_decoded, _encoded);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_encodingTest(stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest) from stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest to stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest {
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = v;
        return v;
    }
    public var _conv(get, set) : stdgo.GoString -> stdgo.GoString;
    function get__conv():stdgo.GoString -> stdgo.GoString return _0 -> this._conv(_0);
    function set__conv(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        this._conv = v;
        return v;
    }
    public function new(?_enc:Encoding, ?_conv:stdgo.GoString -> stdgo.GoString) this = new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest(_enc, _conv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_nextRead(stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead) from stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead to stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_n:StdTypes.Int, ?_err:stdgo.Error) this = new stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead(_n, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_faultInjectReader_static_extension) abstract T_faultInjectReader(stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader) from stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader to stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader {
    public var _source(get, set) : String;
    function get__source():String return this._source;
    function set__source(v:String):String {
        this._source = v;
        return v;
    }
    public var _nextc(get, set) : stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>;
    function get__nextc():stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead> return this._nextc;
    function set__nextc(v:stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>):stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead> {
        this._nextc = v;
        return v;
    }
    public function new(?_source:String, ?_nextc:stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>) this = new stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader(_source, _nextc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.encoding.base64.Base64_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.base64.Base64_T__struct_0.T__struct_0;
typedef T__struct_1Pointer = stdgo._internal.encoding.base64.Base64_T__struct_1Pointer.T__struct_1Pointer;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1;
typedef CorruptInputError = stdgo._internal.encoding.base64.Base64_CorruptInputError.CorruptInputError;
typedef EncodingPointer = stdgo._internal.encoding.base64.Base64_EncodingPointer.EncodingPointer;
class Encoding_static_extension {
    static public function decodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.decodedLen(_enc, _n);
    }
    static public function decode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.decode(_enc, _dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function decodeString(_enc:Encoding, _s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.decodeString(_enc, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _decodeQuantum(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>, _si:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension._decodeQuantum(_enc, _dst, _src, _si);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function encodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.encodedLen(_enc, _n);
    }
    static public function encodeToString(_enc:Encoding, _src:Array<std.UInt>):String {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.encodeToString(_enc, _src);
    }
    static public function encode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.encode(_enc, _dst, _src);
    }
    static public function strict(_enc:Encoding):Encoding {
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.strict(_enc);
    }
    static public function withPadding(_enc:Encoding, _padding:StdTypes.Int):Encoding {
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.withPadding(_enc, _padding);
    }
}
typedef T_encoderPointer = stdgo._internal.encoding.base64.Base64_T_encoderPointer.T_encoderPointer;
class T_encoder_static_extension {
    static public function close(_e:T_encoder):stdgo.Error {
        return stdgo._internal.encoding.base64.Base64_T_encoder_static_extension.T_encoder_static_extension.close(_e);
    }
    static public function write(_e:T_encoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_T_encoder_static_extension.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_decoderPointer = stdgo._internal.encoding.base64.Base64_T_decoderPointer.T_decoderPointer;
class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_T_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_newlineFilteringReaderPointer = stdgo._internal.encoding.base64.Base64_T_newlineFilteringReaderPointer.T_newlineFilteringReaderPointer;
class T_newlineFilteringReader_static_extension {
    static public function read(_r:T_newlineFilteringReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader_static_extension.T_newlineFilteringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_faultInjectReaderPointer = stdgo._internal.encoding.base64.Base64_T_faultInjectReaderPointer.T_faultInjectReaderPointer;
class T_faultInjectReader_static_extension {
    static public function read(_r:T_faultInjectReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_T_faultInjectReader_static_extension.T_faultInjectReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef CorruptInputErrorPointer = stdgo._internal.encoding.base64.Base64_CorruptInputErrorPointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.encoding.base64.Base64_CorruptInputError_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
/**
    Package base64 implements base64 encoding as specified by RFC 4648.
**/
class Base64 {
    /**
        NewEncoding returns a new padded Encoding defined by the given alphabet,
        which must be a 64-byte string that does not contain the padding character
        or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
        without any special treatment for multi-byte UTF-8.
        The resulting Encoding uses the default padding character ('='),
        which may be changed or disabled via WithPadding.
    **/
    static public function newEncoding(_encoder:String):Encoding {
        return stdgo._internal.encoding.base64.Base64_newEncoding.newEncoding(_encoder);
    }
    /**
        NewEncoder returns a new base64 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base64 encodings operate in 4-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
    **/
    static public function newEncoder(_enc:Encoding, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.encoding.base64.Base64_newEncoder.newEncoder(_enc, _w);
    }
    /**
        NewDecoder constructs a new base64 stream decoder.
    **/
    static public function newDecoder(_enc:Encoding, _r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.encoding.base64.Base64_newDecoder.newDecoder(_enc, _r);
    }
    static public function testEncode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testEncode.testEncode(_t);
    }
    static public function testEncoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testEncoder.testEncoder(_t);
    }
    static public function testEncoderBuffering(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testEncoderBuffering.testEncoderBuffering(_t);
    }
    static public function testDecode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecode.testDecode(_t);
    }
    static public function testDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecoder.testDecoder(_t);
    }
    static public function testDecoderBuffering(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecoderBuffering.testDecoderBuffering(_t);
    }
    static public function testDecodeCorrupt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecodeCorrupt.testDecodeCorrupt(_t);
    }
    static public function testDecodeBounds(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecodeBounds.testDecodeBounds(_t);
    }
    static public function testEncodedLen(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testEncodedLen.testEncodedLen(_t);
    }
    static public function testDecodedLen(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecodedLen.testDecodedLen(_t);
    }
    static public function testBig(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testBig.testBig(_t);
    }
    static public function testNewLineCharacters(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testNewLineCharacters.testNewLineCharacters(_t);
    }
    /**
        tests that we don't ignore errors from our underlying reader
    **/
    static public function testDecoderIssue3577(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecoderIssue3577.testDecoderIssue3577(_t);
    }
    static public function testDecoderIssue4779(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecoderIssue4779.testDecoderIssue4779(_t);
    }
    static public function testDecoderIssue7733(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecoderIssue7733.testDecoderIssue7733(_t);
    }
    static public function testDecoderIssue15656(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecoderIssue15656.testDecoderIssue15656(_t);
    }
    static public function benchmarkEncodeToString(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.base64.Base64_benchmarkEncodeToString.benchmarkEncodeToString(_b);
    }
    static public function benchmarkDecodeString(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.base64.Base64_benchmarkDecodeString.benchmarkDecodeString(_b);
    }
    static public function benchmarkNewEncoding(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.base64.Base64_benchmarkNewEncoding.benchmarkNewEncoding(_b);
    }
    static public function testDecoderRaw(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.base64.Base64_testDecoderRaw.testDecoderRaw(_t);
    }
}
