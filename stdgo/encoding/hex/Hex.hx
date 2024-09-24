package stdgo.encoding.hex;
var errLength(get, set) : stdgo.Error;
private function get_errLength():stdgo.Error return stdgo._internal.encoding.hex.Hex_errLength.errLength;
private function set_errLength(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.hex.Hex_errLength.errLength = v;
        return v;
    }
@:structInit @:using(stdgo.encoding.hex.Hex.T_encoder_static_extension) abstract T_encoder(stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder) from stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder to stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_err:stdgo.Error, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder(_w, _err, ([for (i in _out) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.hex.Hex.T_decoder_static_extension) abstract T_decoder(stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder) from stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder to stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _in(get, set) : Array<std.UInt>;
    function get__in():Array<std.UInt> return [for (i in this._in) i];
    function set__in(v:Array<std.UInt>):Array<std.UInt> {
        this._in = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _arr(get, set) : haxe.ds.Vector<std.UInt>;
    function get__arr():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._arr) i]);
    function set__arr(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._arr = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_err:stdgo.Error, ?_in:Array<std.UInt>, ?_arr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder(_r, _err, ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _arr) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.hex.Hex.T_dumper_static_extension) abstract T_dumper(stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper) from stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper to stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _rightChars(get, set) : haxe.ds.Vector<std.UInt>;
    function get__rightChars():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._rightChars) i]);
    function set__rightChars(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._rightChars = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _used(get, set) : StdTypes.Int;
    function get__used():StdTypes.Int return this._used;
    function set__used(v:StdTypes.Int):StdTypes.Int {
        this._used = v;
        return v;
    }
    public var _n(get, set) : std.UInt;
    function get__n():std.UInt return this._n;
    function set__n(v:std.UInt):std.UInt {
        this._n = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_rightChars:haxe.ds.Vector<std.UInt>, ?_buf:haxe.ds.Vector<std.UInt>, ?_used:StdTypes.Int, ?_n:std.UInt, ?_closed:Bool) this = new stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper(_w, ([for (i in _rightChars) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _used, _n, _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_encDecTest(stdgo._internal.encoding.hex.Hex_T_encDecTest.T_encDecTest) from stdgo._internal.encoding.hex.Hex_T_encDecTest.T_encDecTest to stdgo._internal.encoding.hex.Hex_T_encDecTest.T_encDecTest {
    public var _enc(get, set) : String;
    function get__enc():String return this._enc;
    function set__enc(v:String):String {
        this._enc = v;
        return v;
    }
    public var _dec(get, set) : Array<std.UInt>;
    function get__dec():Array<std.UInt> return [for (i in this._dec) i];
    function set__dec(v:Array<std.UInt>):Array<std.UInt> {
        this._dec = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_enc:String, ?_dec:Array<std.UInt>) this = new stdgo._internal.encoding.hex.Hex_T_encDecTest.T_encDecTest(_enc, ([for (i in _dec) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.hex.Hex_T__struct_0.T__struct_0;
class T__struct_1_static_extension {
    public static function read(__self__:stdgo._internal.encoding.hex.Hex_T__struct_1.T__struct_1, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T__struct_1_static_extension.T__struct_1_static_extension.read(__self__, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T__struct_1 = stdgo._internal.encoding.hex.Hex_T__struct_1.T__struct_1;
class T__struct_2_static_extension {
    public static function write(__self__:stdgo._internal.encoding.hex.Hex_T__struct_2.T__struct_2, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T__struct_2_static_extension.T__struct_2_static_extension.write(__self__, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T__struct_2 = stdgo._internal.encoding.hex.Hex_T__struct_2.T__struct_2;
typedef InvalidByteError = stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError;
class T_encoder_static_extension {
    static public function write(_e:T_encoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T_encoder_static_extension.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_dumper_static_extension {
    static public function close(_h:T_dumper):stdgo.Error {
        return stdgo._internal.encoding.hex.Hex_T_dumper_static_extension.T_dumper_static_extension.close(_h);
    }
    static public function write(_h:T_dumper, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T_dumper_static_extension.T_dumper_static_extension.write(_h, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class InvalidByteError_static_extension {
    static public function error(_e:InvalidByteError):String {
        return stdgo._internal.encoding.hex.Hex_InvalidByteError_static_extension.InvalidByteError_static_extension.error(_e);
    }
}
/**
    Package hex implements hexadecimal encoding and decoding.
**/
class Hex {
    /**
        EncodedLen returns the length of an encoding of n source bytes.
        Specifically, it returns n * 2.
    **/
    static public function encodedLen(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.hex.Hex_encodedLen.encodedLen(_n);
    }
    /**
        Encode encodes src into EncodedLen(len(src))
        bytes of dst. As a convenience, it returns the number
        of bytes written to dst, but this value is always EncodedLen(len(src)).
        Encode implements hexadecimal encoding.
    **/
    static public function encode(_dst:Array<std.UInt>, _src:Array<std.UInt>):StdTypes.Int {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.hex.Hex_encode.encode(_dst, _src);
    }
    /**
        DecodedLen returns the length of a decoding of x source bytes.
        Specifically, it returns x / 2.
    **/
    static public function decodedLen(_x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.hex.Hex_decodedLen.decodedLen(_x);
    }
    /**
        Decode decodes src into DecodedLen(len(src)) bytes,
        returning the actual number of bytes written to dst.
        
        Decode expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, Decode returns the number
        of bytes decoded before the error.
    **/
    static public function decode(_dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_decode.decode(_dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        EncodeToString returns the hexadecimal encoding of src.
    **/
    static public function encodeToString(_src:Array<std.UInt>):String {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.hex.Hex_encodeToString.encodeToString(_src);
    }
    /**
        DecodeString returns the bytes represented by the hexadecimal string s.
        
        DecodeString expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, DecodeString returns
        the bytes decoded before the error.
    **/
    static public function decodeString(_s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.hex.Hex_decodeString.decodeString(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Dump returns a string that contains a hex dump of the given data. The format
        of the hex dump matches the output of `hexdump -C` on the command line.
    **/
    static public function dump(_data:Array<std.UInt>):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.hex.Hex_dump.dump(_data);
    }
    /**
        NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
    **/
    static public function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        return stdgo._internal.encoding.hex.Hex_newEncoder.newEncoder(_w);
    }
    /**
        NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
        NewDecoder expects that r contain only an even number of hexadecimal characters.
    **/
    static public function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.encoding.hex.Hex_newDecoder.newDecoder(_r);
    }
    /**
        Dumper returns a WriteCloser that writes a hex dump of all written data to
        w. The format of the dump matches the output of `hexdump -C` on the command
        line.
    **/
    static public function dumper(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.encoding.hex.Hex_dumper.dumper(_w);
    }
    static public function testEncode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testEncode.testEncode(_t);
    }
    static public function testDecode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDecode.testDecode(_t);
    }
    static public function testEncodeToString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testEncodeToString.testEncodeToString(_t);
    }
    static public function testDecodeString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDecodeString.testDecodeString(_t);
    }
    static public function testDecodeErr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDecodeErr.testDecodeErr(_t);
    }
    static public function testDecodeStringErr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDecodeStringErr.testDecodeStringErr(_t);
    }
    static public function testEncoderDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testEncoderDecoder.testEncoderDecoder(_t);
    }
    static public function testDecoderErr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDecoderErr.testDecoderErr(_t);
    }
    static public function testDumper(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDumper.testDumper(_t);
    }
    static public function testDumper_doubleclose(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDumper_doubleclose.testDumper_doubleclose(_t);
    }
    static public function testDumper_earlyclose(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDumper_earlyclose.testDumper_earlyclose(_t);
    }
    static public function testDump(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.hex.Hex_testDump.testDump(_t);
    }
    static public function benchmarkEncode(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.hex.Hex_benchmarkEncode.benchmarkEncode(_b);
    }
    static public function benchmarkDecode(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.hex.Hex_benchmarkDecode.benchmarkDecode(_b);
    }
    static public function benchmarkDump(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.hex.Hex_benchmarkDump.benchmarkDump(_b);
    }
}
