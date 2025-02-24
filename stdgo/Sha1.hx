package stdgo;
final size : haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1_size.size;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1_blocksize.blockSize;
@:structInit @:using(stdgo.crypto.sha1.Sha1.T_digest_static_extension) @:dox(hide) abstract T_digest(stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest) from stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest to stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest {
    public var _h(get, set) : haxe.ds.Vector<std.UInt>;
    function get__h():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._h) i]);
    function set__h(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._h = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _x(get, set) : haxe.ds.Vector<std.UInt>;
    function get__x():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._x) i]);
    function set__x(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._x = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nx(get, set) : StdTypes.Int;
    function get__nx():StdTypes.Int return this._nx;
    function set__nx(v:StdTypes.Int):StdTypes.Int {
        this._nx = (v : stdgo.GoInt);
        return v;
    }
    public var _len(get, set) : haxe.UInt64;
    function get__len():haxe.UInt64 return this._len;
    function set__len(v:haxe.UInt64):haxe.UInt64 {
        this._len = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_h:haxe.ds.Vector<std.UInt>, ?_x:haxe.ds.Vector<std.UInt>, ?_nx:StdTypes.Int, ?_len:haxe.UInt64) this = new stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest(([for (i in _h) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nx : stdgo.GoInt), (_len : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.sha1.Sha1.T_sha1Test_static_extension) @:dox(hide) abstract T_sha1Test(stdgo._internal.crypto.sha1.Sha1_t_sha1test.T_sha1Test) from stdgo._internal.crypto.sha1.Sha1_t_sha1test.T_sha1Test to stdgo._internal.crypto.sha1.Sha1_t_sha1test.T_sha1Test {
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = (v : stdgo.GoString);
        return v;
    }
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _halfState(get, set) : String;
    function get__halfState():String return this._halfState;
    function set__halfState(v:String):String {
        this._halfState = (v : stdgo.GoString);
        return v;
    }
    public function new(?_out:String, ?_in:String, ?_halfState:String) this = new stdgo._internal.crypto.sha1.Sha1_t_sha1test.T_sha1Test((_out : stdgo.GoString), (_in : stdgo.GoString), (_halfState : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.sha1.Sha1.T_unmarshalTest_static_extension) @:dox(hide) abstract T_unmarshalTest(stdgo._internal.crypto.sha1.Sha1_t_unmarshaltest.T_unmarshalTest) from stdgo._internal.crypto.sha1.Sha1_t_unmarshaltest.T_unmarshalTest to stdgo._internal.crypto.sha1.Sha1_t_unmarshaltest.T_unmarshalTest {
    public var _state(get, set) : String;
    function get__state():String return this._state;
    function set__state(v:String):String {
        this._state = (v : stdgo.GoString);
        return v;
    }
    public var _sum(get, set) : String;
    function get__sum():String return this._sum;
    function set__sum(v:String):String {
        this._sum = (v : stdgo.GoString);
        return v;
    }
    public function new(?_state:String, ?_sum:String) this = new stdgo._internal.crypto.sha1.Sha1_t_unmarshaltest.T_unmarshalTest((_state : stdgo.GoString), (_sum : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_digestPointer = stdgo._internal.crypto.sha1.Sha1_t_digestpointer.T_digestPointer;
@:dox(hide) class T_digest_static_extension {
    static public function _constSum(_d:T_digest):haxe.ds.Vector<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension._constSum(_d)) i]);
    }
    static public function constantTimeSum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension.constantTimeSum(_d, _in)) i];
    }
    static public function _checkSum(_d:T_digest):haxe.ds.Vector<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension._checkSum(_d)) i]);
    }
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        return stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        return stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension.size(_d);
    }
    static public function reset(_d:T_digest):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension.reset(_d);
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        return {
            final obj = stdgo._internal.crypto.sha1.Sha1_t_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_sha1TestPointer = stdgo._internal.crypto.sha1.Sha1_t_sha1testpointer.T_sha1TestPointer;
@:dox(hide) class T_sha1Test_static_extension {

}
@:dox(hide) typedef T_unmarshalTestPointer = stdgo._internal.crypto.sha1.Sha1_t_unmarshaltestpointer.T_unmarshalTestPointer;
@:dox(hide) class T_unmarshalTest_static_extension {

}
/**
    * Package sha1 implements the SHA-1 hash algorithm as defined in RFC 3174.
    * 
    * SHA-1 is cryptographically broken and should not be used for secure
    * applications.
**/
class Sha1 {
    /**
        * New returns a new hash.Hash computing the SHA1 checksum. The Hash also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha1.Sha1_new_.new_();
    }
    /**
        * Sum returns the SHA-1 checksum of the data.
    **/
    static public inline function sum(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha1.Sha1_sum.sum(_data)) i]);
    }
    static public inline function testGolden(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testgolden.testGolden(_t);
    }
    static public inline function testGoldenMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testgoldenmarshal.testGoldenMarshal(_t);
    }
    static public inline function testSize(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testsize.testSize(_t);
    }
    static public inline function testBlockSize(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testblocksize.testBlockSize(_t);
    }
    /**
        * Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
    **/
    static public inline function testBlockGeneric(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testblockgeneric.testBlockGeneric(_t);
    }
    static public inline function testLargeHashes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testlargehashes.testLargeHashes(_t);
    }
    static public inline function testAllocations(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testallocations.testAllocations(_t);
    }
    static public inline function benchmarkHash8Bytes(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha1.Sha1_benchmarkhash8bytes.benchmarkHash8Bytes(_b);
    }
    static public inline function benchmarkHash320Bytes(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha1.Sha1_benchmarkhash320bytes.benchmarkHash320Bytes(_b);
    }
    static public inline function benchmarkHash1K(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha1.Sha1_benchmarkhash1k.benchmarkHash1K(_b);
    }
    static public inline function benchmarkHash8K(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha1.Sha1_benchmarkhash8k.benchmarkHash8K(_b);
    }
}
