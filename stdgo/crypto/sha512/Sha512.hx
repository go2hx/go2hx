package stdgo.crypto.sha512;
final size : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_size.size;
final size224 : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_size224.size224;
final size256 : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_size256.size256;
final size384 : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_size384.size384;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_blocksize.blockSize;
@:structInit @:using(stdgo.crypto.sha512.Sha512.T_digest_static_extension) @:dox(hide) abstract T_digest(stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest) from stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest to stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest {
    public var _h(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get__h():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this._h) i]);
    function set__h(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this._h = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
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
    public var _function(get, set) : stdgo._internal.crypto.Crypto_hash.Hash;
    function get__function():stdgo._internal.crypto.Crypto_hash.Hash return this._function;
    function set__function(v:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.crypto.Crypto_hash.Hash {
        this._function = v;
        return v;
    }
    public function new(?_h:haxe.ds.Vector<haxe.UInt64>, ?_x:haxe.ds.Vector<std.UInt>, ?_nx:StdTypes.Int, ?_len:haxe.UInt64, ?_function:stdgo._internal.crypto.Crypto_hash.Hash) this = new stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest(([for (i in _h) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nx : stdgo.GoInt), (_len : stdgo.GoUInt64), _function);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.sha512.Sha512.T_sha512Test_static_extension) @:dox(hide) abstract T_sha512Test(stdgo._internal.crypto.sha512.Sha512_t_sha512test.T_sha512Test) from stdgo._internal.crypto.sha512.Sha512_t_sha512test.T_sha512Test to stdgo._internal.crypto.sha512.Sha512_t_sha512test.T_sha512Test {
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
    public function new(?_out:String, ?_in:String, ?_halfState:String) this = new stdgo._internal.crypto.sha512.Sha512_t_sha512test.T_sha512Test((_out : stdgo.GoString), (_in : stdgo.GoString), (_halfState : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.sha512.Sha512.T_unmarshalTest_static_extension) @:dox(hide) abstract T_unmarshalTest(stdgo._internal.crypto.sha512.Sha512_t_unmarshaltest.T_unmarshalTest) from stdgo._internal.crypto.sha512.Sha512_t_unmarshaltest.T_unmarshalTest to stdgo._internal.crypto.sha512.Sha512_t_unmarshaltest.T_unmarshalTest {
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
    public function new(?_state:String, ?_sum:String) this = new stdgo._internal.crypto.sha512.Sha512_t_unmarshaltest.T_unmarshalTest((_state : stdgo.GoString), (_sum : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.crypto.sha512.Sha512_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.crypto.sha512.Sha512_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.crypto.sha512.Sha512_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.crypto.sha512.Sha512_t__struct_1.T__struct_1;
@:dox(hide) typedef T_digestPointer = stdgo._internal.crypto.sha512.Sha512_t_digestpointer.T_digestPointer;
@:dox(hide) class T_digest_static_extension {
    static public function _checkSum(_d:T_digest):haxe.ds.Vector<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension._checkSum(_d)) i]);
    }
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        return stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        return stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.size(_d);
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        return {
            final obj = stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function reset(_d:T_digest):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.reset(_d);
    }
}
@:dox(hide) typedef T_sha512TestPointer = stdgo._internal.crypto.sha512.Sha512_t_sha512testpointer.T_sha512TestPointer;
@:dox(hide) class T_sha512Test_static_extension {

}
@:dox(hide) typedef T_unmarshalTestPointer = stdgo._internal.crypto.sha512.Sha512_t_unmarshaltestpointer.T_unmarshalTestPointer;
@:dox(hide) class T_unmarshalTest_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.crypto.sha512.Sha512_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.crypto.sha512.Sha512_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
/**
    * Package sha512 implements the SHA-384, SHA-512, SHA-512/224, and SHA-512/256
    * hash algorithms as defined in FIPS 180-4.
    * 
    * All the hash.Hash implementations returned by this package also
    * implement encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    * marshal and unmarshal the internal state of the hash.
**/
class Sha512 {
    /**
        * New returns a new hash.Hash computing the SHA-512 checksum.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new_.new_();
    }
    /**
        * New512_224 returns a new hash.Hash computing the SHA-512/224 checksum.
    **/
    static public inline function new512_224():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224();
    }
    /**
        * New512_256 returns a new hash.Hash computing the SHA-512/256 checksum.
    **/
    static public inline function new512_256():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256();
    }
    /**
        * New384 returns a new hash.Hash computing the SHA-384 checksum.
    **/
    static public inline function new384():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new384.new384();
    }
    /**
        * Sum512 returns the SHA512 checksum of the data.
    **/
    static public inline function sum512(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_data)) i]);
    }
    /**
        * Sum384 returns the SHA384 checksum of the data.
    **/
    static public inline function sum384(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum384.sum384(_data)) i]);
    }
    /**
        * Sum512_224 returns the Sum512/224 checksum of the data.
    **/
    static public inline function sum512_224(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512_224.sum512_224(_data)) i]);
    }
    /**
        * Sum512_256 returns the Sum512/256 checksum of the data.
    **/
    static public inline function sum512_256(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512_256.sum512_256(_data)) i]);
    }
    static public inline function testGolden(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha512.Sha512_testgolden.testGolden(_t);
    }
    static public inline function testGoldenMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha512.Sha512_testgoldenmarshal.testGoldenMarshal(_t);
    }
    static public inline function testMarshalMismatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha512.Sha512_testmarshalmismatch.testMarshalMismatch(_t);
    }
    static public inline function testSize(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha512.Sha512_testsize.testSize(_t);
    }
    static public inline function testBlockSize(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha512.Sha512_testblocksize.testBlockSize(_t);
    }
    /**
        * Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
    **/
    static public inline function testBlockGeneric(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha512.Sha512_testblockgeneric.testBlockGeneric(_t);
    }
    static public inline function testLargeHashes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha512.Sha512_testlargehashes.testLargeHashes(_t);
    }
    static public inline function testAllocations(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha512.Sha512_testallocations.testAllocations(_t);
    }
    static public inline function benchmarkHash8Bytes(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha512.Sha512_benchmarkhash8bytes.benchmarkHash8Bytes(_b);
    }
    static public inline function benchmarkHash1K(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha512.Sha512_benchmarkhash1k.benchmarkHash1K(_b);
    }
    static public inline function benchmarkHash8K(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha512.Sha512_benchmarkhash8k.benchmarkHash8K(_b);
    }
}
