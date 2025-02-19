package stdgo.encoding.base32;
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
@:structInit @:using(stdgo.encoding.base32.Base32.T_testpair_static_extension) @:dox(hide) abstract T_testpair(stdgo._internal.encoding.base32.Base32_t_testpair.T_testpair) from stdgo._internal.encoding.base32.Base32_t_testpair.T_testpair to stdgo._internal.encoding.base32.Base32_t_testpair.T_testpair {
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
    public function new(?_decoded:String, ?_encoded:String) this = new stdgo._internal.encoding.base32.Base32_t_testpair.T_testpair((_decoded : stdgo.GoString), (_encoded : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.base32.Base32.T_badReader_static_extension) @:dox(hide) abstract T_badReader(stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader) from stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader to stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public var _called(get, set) : StdTypes.Int;
    function get__called():StdTypes.Int return this._called;
    function set__called(v:StdTypes.Int):StdTypes.Int {
        this._called = (v : stdgo.GoInt);
        return v;
    }
    public var _limit(get, set) : StdTypes.Int;
    function get__limit():StdTypes.Int return this._limit;
    function set__limit(v:StdTypes.Int):StdTypes.Int {
        this._limit = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_errs:Array<stdgo.Error>, ?_called:StdTypes.Int, ?_limit:StdTypes.Int) this = new stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _errs) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>), (_called : stdgo.GoInt), (_limit : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.encoding.base32.Base32_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.encoding.base32.Base32_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.encoding.base32.Base32_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.encoding.base32.Base32_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.encoding.base32.Base32_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.encoding.base32.Base32_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.encoding.base32.Base32_t__struct_4.T__struct_4;
typedef CorruptInputError = stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError;
@:structInit @:using(stdgo.encoding.base32.Base32.T_testEncodedDecodedLen___localname___test_20307_static_extension) @:dox(hide) abstract T_testEncodedDecodedLen___localname___test_20307(stdgo._internal.encoding.base32.Base32_t_testencodeddecodedlen___localname___test_20307.T_testEncodedDecodedLen___localname___test_20307) from stdgo._internal.encoding.base32.Base32_t_testencodeddecodedlen___localname___test_20307.T_testEncodedDecodedLen___localname___test_20307 to stdgo._internal.encoding.base32.Base32_t_testencodeddecodedlen___localname___test_20307.T_testEncodedDecodedLen___localname___test_20307 {
    public var _in(get, set) : StdTypes.Int;
    function get__in():StdTypes.Int return this._in;
    function set__in(v:StdTypes.Int):StdTypes.Int {
        this._in = (v : stdgo.GoInt);
        return v;
    }
    public var _wantEnc(get, set) : StdTypes.Int;
    function get__wantEnc():StdTypes.Int return this._wantEnc;
    function set__wantEnc(v:StdTypes.Int):StdTypes.Int {
        this._wantEnc = (v : stdgo.GoInt);
        return v;
    }
    public var _wantDec(get, set) : StdTypes.Int;
    function get__wantDec():StdTypes.Int return this._wantDec;
    function set__wantDec(v:StdTypes.Int):StdTypes.Int {
        this._wantDec = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_in:StdTypes.Int, ?_wantEnc:StdTypes.Int, ?_wantDec:StdTypes.Int) this = new stdgo._internal.encoding.base32.Base32_t_testencodeddecodedlen___localname___test_20307.T_testEncodedDecodedLen___localname___test_20307((_in : stdgo.GoInt), (_wantEnc : stdgo.GoInt), (_wantDec : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
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
@:dox(hide) typedef T_testpairPointer = stdgo._internal.encoding.base32.Base32_t_testpairpointer.T_testpairPointer;
@:dox(hide) class T_testpair_static_extension {

}
@:dox(hide) typedef T_badReaderPointer = stdgo._internal.encoding.base32.Base32_t_badreaderpointer.T_badReaderPointer;
@:dox(hide) class T_badReader_static_extension {
    static public function read(_b:T_badReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_t_badreader_static_extension.T_badReader_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.encoding.base32.Base32_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.encoding.base32.Base32_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.encoding.base32.Base32_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.encoding.base32.Base32_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.encoding.base32.Base32_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
typedef CorruptInputErrorPointer = stdgo._internal.encoding.base32.Base32_corruptinputerrorpointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.encoding.base32.Base32_corruptinputerror_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_testEncodedDecodedLen___localname___test_20307Pointer = stdgo._internal.encoding.base32.Base32_t_testencodeddecodedlen___localname___test_20307pointer.T_testEncodedDecodedLen___localname___test_20307Pointer;
@:dox(hide) class T_testEncodedDecodedLen___localname___test_20307_static_extension {

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
    static public inline function testEncode(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testencode.testEncode(_t);
    }
    static public inline function testEncoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testencoder.testEncoder(_t);
    }
    static public inline function testEncoderBuffering(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testencoderbuffering.testEncoderBuffering(_t);
    }
    static public inline function testDecode(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecode.testDecode(_t);
    }
    static public inline function testDecoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecoder.testDecoder(_t);
    }
    /**
        * TestIssue20044 tests that decoder.Read behaves correctly when the caller
        * supplied reader returns an error.
    **/
    static public inline function testIssue20044(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testissue20044.testIssue20044(_t);
    }
    /**
        * TestDecoderError verifies decode errors are propagated when there are no read
        * errors.
    **/
    static public inline function testDecoderError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecodererror.testDecoderError(_t);
    }
    /**
        * TestReaderEOF ensures decoder.Read behaves correctly when input data is
        * exhausted.
    **/
    static public inline function testReaderEOF(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testreadereof.testReaderEOF(_t);
    }
    static public inline function testDecoderBuffering(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecoderbuffering.testDecoderBuffering(_t);
    }
    static public inline function testDecodeCorrupt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecodecorrupt.testDecodeCorrupt(_t);
    }
    static public inline function testBig(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testbig.testBig(_t);
    }
    static public inline function testNewLineCharacters(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testnewlinecharacters.testNewLineCharacters(_t);
    }
    static public inline function testDecoderIssue4779(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecoderissue4779.testDecoderIssue4779(_t);
    }
    static public inline function benchmarkEncode(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.base32.Base32_benchmarkencode.benchmarkEncode(_b);
    }
    static public inline function benchmarkEncodeToString(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.base32.Base32_benchmarkencodetostring.benchmarkEncodeToString(_b);
    }
    static public inline function benchmarkDecode(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.base32.Base32_benchmarkdecode.benchmarkDecode(_b);
    }
    static public inline function benchmarkDecodeString(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.base32.Base32_benchmarkdecodestring.benchmarkDecodeString(_b);
    }
    static public inline function testWithCustomPadding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testwithcustompadding.testWithCustomPadding(_t);
    }
    static public inline function testWithoutPadding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testwithoutpadding.testWithoutPadding(_t);
    }
    static public inline function testDecodeWithPadding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecodewithpadding.testDecodeWithPadding(_t);
    }
    static public inline function testDecodeWithWrongPadding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecodewithwrongpadding.testDecodeWithWrongPadding(_t);
    }
    static public inline function testBufferedDecodingSameError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testbuffereddecodingsameerror.testBufferedDecodingSameError(_t);
    }
    static public inline function testBufferedDecodingPadding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testbuffereddecodingpadding.testBufferedDecodingPadding(_t);
    }
    static public inline function testEncodedDecodedLen(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testencodeddecodedlen.testEncodedDecodedLen(_t);
    }
    static public inline function testWithoutPaddingClose(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testwithoutpaddingclose.testWithoutPaddingClose(_t);
    }
    static public inline function testDecodeReadAll(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecodereadall.testDecodeReadAll(_t);
    }
    static public inline function testDecodeSmallBuffer(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.base32.Base32_testdecodesmallbuffer.testDecodeSmallBuffer(_t);
    }
}
