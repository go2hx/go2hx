package stdgo;
final stdPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64_stdpadding.stdPadding;
final noPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64_nopadding.noPadding;
var stdEncoding(get, set) : Encoding;
private function get_stdEncoding():Encoding return stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding;
private function set_stdEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding = (v : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        return v;
    }
var uRLEncoding(get, set) : Encoding;
private function get_uRLEncoding():Encoding return stdgo._internal.encoding.base64.Base64_urlencoding.uRLEncoding;
private function set_uRLEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base64.Base64_urlencoding.uRLEncoding = (v : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        return v;
    }
var rawStdEncoding(get, set) : Encoding;
private function get_rawStdEncoding():Encoding return stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding;
private function set_rawStdEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding = (v : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        return v;
    }
var rawURLEncoding(get, set) : Encoding;
private function get_rawURLEncoding():Encoding return stdgo._internal.encoding.base64.Base64_rawurlencoding.rawURLEncoding;
private function set_rawURLEncoding(v:Encoding):Encoding {
        stdgo._internal.encoding.base64.Base64_rawurlencoding.rawURLEncoding = (v : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        return v;
    }
@:structInit @:using(stdgo.encoding.base64.Base64.Encoding_static_extension) abstract Encoding(stdgo._internal.encoding.base64.Base64_encoding.Encoding) from stdgo._internal.encoding.base64.Base64_encoding.Encoding to stdgo._internal.encoding.base64.Base64_encoding.Encoding {
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
    public var _strict(get, set) : Bool;
    function get__strict():Bool return this._strict;
    function set__strict(v:Bool):Bool {
        this._strict = v;
        return v;
    }
    public function new(?_encode:haxe.ds.Vector<std.UInt>, ?_decodeMap:haxe.ds.Vector<std.UInt>, ?_padChar:StdTypes.Int, ?_strict:Bool) this = new stdgo._internal.encoding.base64.Base64_encoding.Encoding(([for (i in _encode) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _decodeMap) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_padChar : stdgo.GoInt32), _strict);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_encoder_static_extension) @:dox(hide) abstract T_encoder(stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder) from stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder to stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
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
    public function new(?_err:stdgo.Error, ?_enc:Encoding, ?_w:stdgo._internal.io.Io_writer.Writer, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder((_err : stdgo.Error), (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>), _w, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nbuf : stdgo.GoInt), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_decoder_static_extension) @:dox(hide) abstract T_decoder(stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder) from stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder to stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = (v : stdgo.Error);
        return v;
    }
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
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
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:Encoding, ?_r:stdgo._internal.io.Io_reader.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:Array<std.UInt>, ?_outbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder((_err : stdgo.Error), (_readErr : stdgo.Error), (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>), _r, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nbuf : stdgo.GoInt), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_newlineFilteringReader_static_extension) @:dox(hide) abstract T_newlineFilteringReader(stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader) from stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader to stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader {
    public var _wrapped(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__wrapped():stdgo._internal.io.Io_reader.Reader return this._wrapped;
    function set__wrapped(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._wrapped = v;
        return v;
    }
    public function new(?_wrapped:stdgo._internal.io.Io_reader.Reader) this = new stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader(_wrapped);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_testpair_static_extension) @:dox(hide) abstract T_testpair(stdgo._internal.encoding.base64.Base64_t_testpair.T_testpair) from stdgo._internal.encoding.base64.Base64_t_testpair.T_testpair to stdgo._internal.encoding.base64.Base64_t_testpair.T_testpair {
    public var _decoded(get, set) : String;
    function get__decoded():String return this._decoded;
    function set__decoded(v:String):String {
        this._decoded = (v : stdgo.GoString);
        return v;
    }
    public var _encoded(get, set) : String;
    function get__encoded():String return this._encoded;
    function set__encoded(v:String):String {
        this._encoded = (v : stdgo.GoString);
        return v;
    }
    public function new(?_decoded:String, ?_encoded:String) this = new stdgo._internal.encoding.base64.Base64_t_testpair.T_testpair((_decoded : stdgo.GoString), (_encoded : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_encodingTest_static_extension) @:dox(hide) abstract T_encodingTest(stdgo._internal.encoding.base64.Base64_t_encodingtest.T_encodingTest) from stdgo._internal.encoding.base64.Base64_t_encodingtest.T_encodingTest to stdgo._internal.encoding.base64.Base64_t_encodingtest.T_encodingTest {
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        return v;
    }
    public var _conv(get, set) : String -> String;
    function get__conv():String -> String return _0 -> this._conv(_0);
    function set__conv(v:String -> String):String -> String {
        this._conv = v;
        return v;
    }
    public function new(?_enc:Encoding, ?_conv:String -> String) this = new stdgo._internal.encoding.base64.Base64_t_encodingtest.T_encodingTest((_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>), _conv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_nextRead_static_extension) @:dox(hide) abstract T_nextRead(stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead) from stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead to stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_n:StdTypes.Int, ?_err:stdgo.Error) this = new stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead((_n : stdgo.GoInt), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_faultInjectReader_static_extension) @:dox(hide) abstract T_faultInjectReader(stdgo._internal.encoding.base64.Base64_t_faultinjectreader.T_faultInjectReader) from stdgo._internal.encoding.base64.Base64_t_faultinjectreader.T_faultInjectReader to stdgo._internal.encoding.base64.Base64_t_faultinjectreader.T_faultInjectReader {
    public var _source(get, set) : String;
    function get__source():String return this._source;
    function set__source(v:String):String {
        this._source = (v : stdgo.GoString);
        return v;
    }
    public var _nextc(get, set) : stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>;
    function get__nextc():stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead> return this._nextc;
    function set__nextc(v:stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>):stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead> {
        this._nextc = (v : stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>);
        return v;
    }
    public function new(?_source:String, ?_nextc:stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>) this = new stdgo._internal.encoding.base64.Base64_t_faultinjectreader.T_faultInjectReader((_source : stdgo.GoString), (_nextc : stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.encoding.base64.Base64_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.encoding.base64.Base64_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1;
typedef CorruptInputError = stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError;
typedef EncodingPointer = stdgo._internal.encoding.base64.Base64_encodingpointer.EncodingPointer;
class Encoding_static_extension {
    static public function decodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension.decodedLen(_enc, _n);
    }
    static public function decode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension.decode(_enc, _dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function decodeString(_enc:Encoding, _s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension.decodeString(_enc, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _decodeQuantum(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>, _si:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _si = (_si : stdgo.GoInt);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension._decodeQuantum(_enc, _dst, _src, _si);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function encodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension.encodedLen(_enc, _n);
    }
    static public function encodeToString(_enc:Encoding, _src:Array<std.UInt>):String {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension.encodeToString(_enc, _src);
    }
    static public function encode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension.encode(_enc, _dst, _src);
    }
    static public function strict(_enc:Encoding):Encoding {
        return stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension.strict(_enc);
    }
    static public function withPadding(_enc:Encoding, _padding:StdTypes.Int):Encoding {
        final _padding = (_padding : stdgo.GoInt32);
        return stdgo._internal.encoding.base64.Base64_encoding_static_extension.Encoding_static_extension.withPadding(_enc, _padding);
    }
}
@:dox(hide) typedef T_encoderPointer = stdgo._internal.encoding.base64.Base64_t_encoderpointer.T_encoderPointer;
@:dox(hide) class T_encoder_static_extension {
    static public function close(_e:T_encoder):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder>);
        return stdgo._internal.encoding.base64.Base64_t_encoder_static_extension.T_encoder_static_extension.close(_e);
    }
    static public function write(_e:T_encoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_t_encoder_static_extension.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_decoderPointer = stdgo._internal.encoding.base64.Base64_t_decoderpointer.T_decoderPointer;
@:dox(hide) class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_t_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_newlineFilteringReaderPointer = stdgo._internal.encoding.base64.Base64_t_newlinefilteringreaderpointer.T_newlineFilteringReaderPointer;
@:dox(hide) class T_newlineFilteringReader_static_extension {
    static public function read(_r:T_newlineFilteringReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader_static_extension.T_newlineFilteringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_testpairPointer = stdgo._internal.encoding.base64.Base64_t_testpairpointer.T_testpairPointer;
@:dox(hide) class T_testpair_static_extension {

}
@:dox(hide) typedef T_encodingTestPointer = stdgo._internal.encoding.base64.Base64_t_encodingtestpointer.T_encodingTestPointer;
@:dox(hide) class T_encodingTest_static_extension {

}
@:dox(hide) typedef T_nextReadPointer = stdgo._internal.encoding.base64.Base64_t_nextreadpointer.T_nextReadPointer;
@:dox(hide) class T_nextRead_static_extension {

}
@:dox(hide) typedef T_faultInjectReaderPointer = stdgo._internal.encoding.base64.Base64_t_faultinjectreaderpointer.T_faultInjectReaderPointer;
@:dox(hide) class T_faultInjectReader_static_extension {
    static public function read(_r:T_faultInjectReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_faultinjectreader.T_faultInjectReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_t_faultinjectreader_static_extension.T_faultInjectReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.encoding.base64.Base64_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.encoding.base64.Base64_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
typedef CorruptInputErrorPointer = stdgo._internal.encoding.base64.Base64_corruptinputerrorpointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.encoding.base64.Base64_corruptinputerror_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
/**
    * Package base64 implements base64 encoding as specified by RFC 4648.
**/
class Base64 {
    /**
        * NewEncoding returns a new padded Encoding defined by the given alphabet,
        * which must be a 64-byte string that does not contain the padding character
        * or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
        * without any special treatment for multi-byte UTF-8.
        * The resulting Encoding uses the default padding character ('='),
        * which may be changed or disabled via WithPadding.
    **/
    static public inline function newEncoding(_encoder:String):Encoding {
        final _encoder = (_encoder : stdgo.GoString);
        return stdgo._internal.encoding.base64.Base64_newencoding.newEncoding(_encoder);
    }
    /**
        * NewEncoder returns a new base64 stream encoder. Data written to
        * the returned writer will be encoded using enc and then written to w.
        * Base64 encodings operate in 4-byte blocks; when finished
        * writing, the caller must Close the returned encoder to flush any
        * partially written blocks.
    **/
    static public inline function newEncoder(_enc:Encoding, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        return stdgo._internal.encoding.base64.Base64_newencoder.newEncoder(_enc, _w);
    }
    /**
        * NewDecoder constructs a new base64 stream decoder.
    **/
    static public inline function newDecoder(_enc:Encoding, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
        return stdgo._internal.encoding.base64.Base64_newdecoder.newDecoder(_enc, _r);
    }
    static public inline function testEncode(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testencode.testEncode(_t);
    }
    static public inline function testEncoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testencoder.testEncoder(_t);
    }
    static public inline function testEncoderBuffering(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testencoderbuffering.testEncoderBuffering(_t);
    }
    static public inline function testDecode(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecode.testDecode(_t);
    }
    static public inline function testDecoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecoder.testDecoder(_t);
    }
    static public inline function testDecoderBuffering(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecoderbuffering.testDecoderBuffering(_t);
    }
    static public inline function testDecodeCorrupt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecodecorrupt.testDecodeCorrupt(_t);
    }
    static public inline function testDecodeBounds(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecodebounds.testDecodeBounds(_t);
    }
    static public inline function testEncodedLen(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testencodedlen.testEncodedLen(_t);
    }
    static public inline function testDecodedLen(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecodedlen.testDecodedLen(_t);
    }
    static public inline function testBig(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testbig.testBig(_t);
    }
    static public inline function testNewLineCharacters(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testnewlinecharacters.testNewLineCharacters(_t);
    }
    /**
        * tests that we don't ignore errors from our underlying reader
    **/
    static public inline function testDecoderIssue3577(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecoderissue3577.testDecoderIssue3577(_t);
    }
    static public inline function testDecoderIssue4779(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecoderissue4779.testDecoderIssue4779(_t);
    }
    static public inline function testDecoderIssue7733(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecoderissue7733.testDecoderIssue7733(_t);
    }
    static public inline function testDecoderIssue15656(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecoderissue15656.testDecoderIssue15656(_t);
    }
    static public inline function benchmarkEncodeToString(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.base64.Base64_benchmarkencodetostring.benchmarkEncodeToString(_b);
    }
    static public inline function benchmarkDecodeString(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.base64.Base64_benchmarkdecodestring.benchmarkDecodeString(_b);
    }
    static public inline function benchmarkNewEncoding(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.base64.Base64_benchmarknewencoding.benchmarkNewEncoding(_b);
    }
    static public inline function testDecoderRaw(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base64.Base64_testdecoderraw.testDecoderRaw(_t);
    }
}
