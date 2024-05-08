package stdgo.crypto;
/**
    Package sha1 implements the SHA-1 hash algorithm as defined in RFC 3174.
    
    SHA-1 is cryptographically broken and should not be used for secure
    applications.
**/
private var __go2hxdoc__package : Bool;
final size : haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1.size;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1.blockSize;
abstract T_digest(stdgo._internal.crypto.sha1.Sha1.T_digest) from stdgo._internal.crypto.sha1.Sha1.T_digest to stdgo._internal.crypto.sha1.Sha1.T_digest {
    public var _h(get, set) : haxe.ds.Vector<std.UInt>;
    function get__h():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._h) i]);
    function set__h(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._h = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _x(get, set) : haxe.ds.Vector<std.UInt>;
    function get__x():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._x) i]);
    function set__x(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._x = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nx(get, set) : StdTypes.Int;
    function get__nx():StdTypes.Int return this._nx;
    function set__nx(v:StdTypes.Int):StdTypes.Int {
        this._nx = v;
        return v;
    }
    public var _len(get, set) : haxe.UInt64;
    function get__len():haxe.UInt64 return this._len;
    function set__len(v:haxe.UInt64):haxe.UInt64 {
        this._len = v;
        return v;
    }
    public function new(?_h:haxe.ds.Vector<std.UInt>, ?_x:haxe.ds.Vector<std.UInt>, ?_nx:StdTypes.Int, ?_len:haxe.UInt64) this = new stdgo._internal.crypto.sha1.Sha1.T_digest(([for (i in _h) i] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _x) i] : stdgo.GoArray<stdgo.GoUInt8>), _nx, _len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_sha1Test(stdgo._internal.crypto.sha1.Sha1.T_sha1Test) from stdgo._internal.crypto.sha1.Sha1.T_sha1Test to stdgo._internal.crypto.sha1.Sha1.T_sha1Test {
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = v;
        return v;
    }
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _halfState(get, set) : String;
    function get__halfState():String return this._halfState;
    function set__halfState(v:String):String {
        this._halfState = v;
        return v;
    }
    public function new(?_out:String, ?_in:String, ?_halfState:String) this = new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(_out, _in, _halfState);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_unmarshalTest(stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest) from stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest to stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest {
    public var _state(get, set) : String;
    function get__state():String return this._state;
    function set__state(v:String):String {
        this._state = v;
        return v;
    }
    public var _sum(get, set) : String;
    function get__sum():String return this._sum;
    function set__sum(v:String):String {
        this._sum = v;
        return v;
    }
    public function new(?_state:String, ?_sum:String) this = new stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest(_state, _sum);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Sha1 {
    /**
        New returns a new hash.Hash computing the SHA1 checksum. The Hash also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
    **/
    static public function new_():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.crypto.sha1.Sha1.new_();
    }
    /**
        Sum returns the SHA-1 checksum of the data.
    **/
    static public function sum(data:Array<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.crypto.sha1.Sha1.sum(data);
    }
    static public function testGolden(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testGolden(t);
    }
    static public function testGoldenMarshal(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testGoldenMarshal(t);
    }
    static public function testSize(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testSize(t);
    }
    static public function testBlockSize(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testBlockSize(t);
    }
    /**
        Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
    **/
    static public function testBlockGeneric(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testBlockGeneric(t);
    }
    static public function testLargeHashes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testLargeHashes(t);
    }
    static public function testAllocations(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testAllocations(t);
    }
    static public function benchmarkHash8Bytes(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.crypto.sha1.Sha1.benchmarkHash8Bytes(b);
    }
    static public function benchmarkHash320Bytes(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.crypto.sha1.Sha1.benchmarkHash320Bytes(b);
    }
    static public function benchmarkHash1K(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.crypto.sha1.Sha1.benchmarkHash1K(b);
    }
    static public function benchmarkHash8K(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.crypto.sha1.Sha1.benchmarkHash8K(b);
    }
}
