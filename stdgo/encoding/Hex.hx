package stdgo.encoding;
/**
    Package hex implements hexadecimal encoding and decoding.
**/
private var __go2hxdoc__package : Bool;
var errLength(get, set) : stdgo.Error;
private function get_errLength():stdgo.Error return stdgo._internal.encoding.hex.Hex.errLength;
private function set_errLength(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.hex.Hex.errLength = v;
        return v;
    }
abstract T_encoder(stdgo._internal.encoding.hex.Hex.T_encoder) from stdgo._internal.encoding.hex.Hex.T_encoder to stdgo._internal.encoding.hex.Hex.T_encoder {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
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
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_err:stdgo.Error, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.hex.Hex.T_encoder(_w, _err, ([for (i in _out) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_decoder(stdgo._internal.encoding.hex.Hex.T_decoder) from stdgo._internal.encoding.hex.Hex.T_decoder to stdgo._internal.encoding.hex.Hex.T_decoder {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
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
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_err:stdgo.Error, ?_in:Array<std.UInt>, ?_arr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.hex.Hex.T_decoder(_r, _err, ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _arr) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_dumper(stdgo._internal.encoding.hex.Hex.T_dumper) from stdgo._internal.encoding.hex.Hex.T_dumper to stdgo._internal.encoding.hex.Hex.T_dumper {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
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
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_rightChars:haxe.ds.Vector<std.UInt>, ?_buf:haxe.ds.Vector<std.UInt>, ?_used:StdTypes.Int, ?_n:std.UInt, ?_closed:Bool) this = new stdgo._internal.encoding.hex.Hex.T_dumper(_w, ([for (i in _rightChars) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _used, _n, _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_encDecTest(stdgo._internal.encoding.hex.Hex.T_encDecTest) from stdgo._internal.encoding.hex.Hex.T_encDecTest to stdgo._internal.encoding.hex.Hex.T_encDecTest {
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
    public function new(?_enc:String, ?_dec:Array<std.UInt>) this = new stdgo._internal.encoding.hex.Hex.T_encDecTest(_enc, ([for (i in _dec) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.encoding.hex.Hex.T__struct_0;
typedef T__struct_1 = stdgo._internal.encoding.hex.Hex.T__struct_1;
typedef T__struct_2 = stdgo._internal.encoding.hex.Hex.T__struct_2;
typedef InvalidByteError = stdgo._internal.encoding.hex.Hex.InvalidByteError;
class Hex {
    /**
        EncodedLen returns the length of an encoding of n source bytes.
        Specifically, it returns n * 2.
    **/
    static public function encodedLen(n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.hex.Hex.encodedLen(n);
    }
    /**
        Encode encodes src into EncodedLen(len(src))
        bytes of dst. As a convenience, it returns the number
        of bytes written to dst, but this value is always EncodedLen(len(src)).
        Encode implements hexadecimal encoding.
    **/
    static public function encode(dst:Array<StdTypes.Int>, src:Array<StdTypes.Int>):StdTypes.Int {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        final src = ([for (i in src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.encode(dst, src);
    }
    /**
        DecodedLen returns the length of a decoding of x source bytes.
        Specifically, it returns x / 2.
    **/
    static public function decodedLen(x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.hex.Hex.decodedLen(x);
    }
    /**
        Decode decodes src into DecodedLen(len(src)) bytes,
        returning the actual number of bytes written to dst.
        
        Decode expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, Decode returns the number
        of bytes decoded before the error.
    **/
    static public function decode(dst:Array<StdTypes.Int>, src:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        final src = ([for (i in src) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex.decode(dst, src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        EncodeToString returns the hexadecimal encoding of src.
    **/
    static public function encodeToString(src:Array<StdTypes.Int>):String {
        final src = ([for (i in src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.encodeToString(src);
    }
    /**
        DecodeString returns the bytes represented by the hexadecimal string s.
        
        DecodeString expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, DecodeString returns
        the bytes decoded before the error.
    **/
    static public function decodeString(s:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.hex.Hex.decodeString(s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Dump returns a string that contains a hex dump of the given data. The format
        of the hex dump matches the output of `hexdump -C` on the command line.
    **/
    static public function dump(data:Array<StdTypes.Int>):String {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.dump(data);
    }
    /**
        NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
    **/
    static public function newEncoder(w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        return stdgo._internal.encoding.hex.Hex.newEncoder(w);
    }
    /**
        NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
        NewDecoder expects that r contain only an even number of hexadecimal characters.
    **/
    static public function newDecoder(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.encoding.hex.Hex.newDecoder(r);
    }
    /**
        Dumper returns a WriteCloser that writes a hex dump of all written data to
        w. The format of the dump matches the output of `hexdump -C` on the command
        line.
    **/
    static public function dumper(w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo._internal.encoding.hex.Hex.dumper(w);
    }
    static public function testEncode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testEncode(t);
    }
    static public function testDecode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecode(t);
    }
    static public function testEncodeToString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testEncodeToString(t);
    }
    static public function testDecodeString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecodeString(t);
    }
    static public function testDecodeErr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecodeErr(t);
    }
    static public function testDecodeStringErr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecodeStringErr(t);
    }
    static public function testEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testEncoderDecoder(t);
    }
    static public function testDecoderErr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecoderErr(t);
    }
    static public function testDumper(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDumper(t);
    }
    static public function testDumper_doubleclose(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDumper_doubleclose(t);
    }
    static public function testDumper_earlyclose(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDumper_earlyclose(t);
    }
    static public function testDump(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDump(t);
    }
    static public function benchmarkEncode(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.hex.Hex.benchmarkEncode(b);
    }
    static public function benchmarkDecode(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.hex.Hex.benchmarkDecode(b);
    }
    static public function benchmarkDump(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.hex.Hex.benchmarkDump(b);
    }
}
