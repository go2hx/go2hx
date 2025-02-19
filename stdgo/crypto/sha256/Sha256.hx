package stdgo.crypto.sha256;
final size : haxe.UInt64 = stdgo._internal.crypto.sha256.Sha256_size.size;
final size224 : haxe.UInt64 = stdgo._internal.crypto.sha256.Sha256_size224.size224;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.sha256.Sha256_blocksize.blockSize;
@:structInit @:using(stdgo.crypto.sha256.Sha256.T_digest_static_extension) @:dox(hide) abstract T_digest(stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest) from stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest to stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest {
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
    public var _is224(get, set) : Bool;
    function get__is224():Bool return this._is224;
    function set__is224(v:Bool):Bool {
        this._is224 = v;
        return v;
    }
    public function new(?_h:haxe.ds.Vector<std.UInt>, ?_x:haxe.ds.Vector<std.UInt>, ?_nx:StdTypes.Int, ?_len:haxe.UInt64, ?_is224:Bool) this = new stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest(([for (i in _h) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nx : stdgo.GoInt), (_len : stdgo.GoUInt64), _is224);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.sha256.Sha256.T_sha256Test_static_extension) @:dox(hide) abstract T_sha256Test(stdgo._internal.crypto.sha256.Sha256_t_sha256test.T_sha256Test) from stdgo._internal.crypto.sha256.Sha256_t_sha256test.T_sha256Test to stdgo._internal.crypto.sha256.Sha256_t_sha256test.T_sha256Test {
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
    public function new(?_out:String, ?_in:String, ?_halfState:String) this = new stdgo._internal.crypto.sha256.Sha256_t_sha256test.T_sha256Test((_out : stdgo.GoString), (_in : stdgo.GoString), (_halfState : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.sha256.Sha256.T_unmarshalTest_static_extension) @:dox(hide) abstract T_unmarshalTest(stdgo._internal.crypto.sha256.Sha256_t_unmarshaltest.T_unmarshalTest) from stdgo._internal.crypto.sha256.Sha256_t_unmarshaltest.T_unmarshalTest to stdgo._internal.crypto.sha256.Sha256_t_unmarshaltest.T_unmarshalTest {
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
    public function new(?_state:String, ?_sum:String) this = new stdgo._internal.crypto.sha256.Sha256_t_unmarshaltest.T_unmarshalTest((_state : stdgo.GoString), (_sum : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.sha256.Sha256.T_cgoData_static_extension) @:dox(hide) abstract T_cgoData(stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData) from stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData to stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData {
    public var data(get, set) : haxe.ds.Vector<std.UInt>;
    function get_data():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.data) i]);
    function set_data(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var ptr(get, set) : T_cgoData;
    function get_ptr():T_cgoData return this.ptr;
    function set_ptr(v:T_cgoData):T_cgoData {
        this.ptr = (v : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData>);
        return v;
    }
    public function new(?data:haxe.ds.Vector<std.UInt>, ?ptr:T_cgoData) this = new stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData(([for (i in data) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (ptr : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.crypto.sha256.Sha256_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.crypto.sha256.Sha256_t__struct_0.T__struct_0;
@:dox(hide) typedef T_digestPointer = stdgo._internal.crypto.sha256.Sha256_t_digestpointer.T_digestPointer;
@:dox(hide) class T_digest_static_extension {
    static public function _checkSum(_d:T_digest):haxe.ds.Vector<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha256.Sha256_t_digest_static_extension.T_digest_static_extension._checkSum(_d)) i]);
    }
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.sha256.Sha256_t_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.sha256.Sha256_t_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        return stdgo._internal.crypto.sha256.Sha256_t_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        return stdgo._internal.crypto.sha256.Sha256_t_digest_static_extension.T_digest_static_extension.size(_d);
    }
    static public function reset(_d:T_digest):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        stdgo._internal.crypto.sha256.Sha256_t_digest_static_extension.T_digest_static_extension.reset(_d);
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.sha256.Sha256_t_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        return {
            final obj = stdgo._internal.crypto.sha256.Sha256_t_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_sha256TestPointer = stdgo._internal.crypto.sha256.Sha256_t_sha256testpointer.T_sha256TestPointer;
@:dox(hide) class T_sha256Test_static_extension {

}
@:dox(hide) typedef T_unmarshalTestPointer = stdgo._internal.crypto.sha256.Sha256_t_unmarshaltestpointer.T_unmarshalTestPointer;
@:dox(hide) class T_unmarshalTest_static_extension {

}
@:dox(hide) typedef T_cgoDataPointer = stdgo._internal.crypto.sha256.Sha256_t_cgodatapointer.T_cgoDataPointer;
@:dox(hide) class T_cgoData_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.crypto.sha256.Sha256_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
/**
    * Package sha256 implements the SHA224 and SHA256 hash algorithms as defined
    * in FIPS 180-4.
**/
class Sha256 {
    /**
        * New returns a new hash.Hash computing the SHA256 checksum. The Hash
        * also implements encoding.BinaryMarshaler and
        * encoding.BinaryUnmarshaler to marshal and unmarshal the internal
        * state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha256.Sha256_new_.new_();
    }
    /**
        * New224 returns a new hash.Hash computing the SHA224 checksum.
    **/
    static public inline function new224():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha256.Sha256_new224.new224();
    }
    /**
        * Sum256 returns the SHA256 checksum of the data.
    **/
    static public inline function sum256(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data)) i]);
    }
    /**
        * Sum224 returns the SHA224 checksum of the data.
    **/
    static public inline function sum224(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha256.Sha256_sum224.sum224(_data)) i]);
    }
    static public inline function testGolden(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testgolden.testGolden(_t);
    }
    static public inline function testGoldenMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testgoldenmarshal.testGoldenMarshal(_t);
    }
    static public inline function testMarshalTypeMismatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testmarshaltypemismatch.testMarshalTypeMismatch(_t);
    }
    static public inline function testSize(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testsize.testSize(_t);
    }
    static public inline function testBlockSize(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testblocksize.testBlockSize(_t);
    }
    /**
        * Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
    **/
    static public inline function testBlockGeneric(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testblockgeneric.testBlockGeneric(_t);
    }
    static public inline function testLargeHashes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testlargehashes.testLargeHashes(_t);
    }
    static public inline function testAllocations(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testallocations.testAllocations(_t);
    }
    static public inline function testCgo(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.sha256.Sha256_testcgo.testCgo(_t);
    }
    static public inline function benchmarkHash8Bytes(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha256.Sha256_benchmarkhash8bytes.benchmarkHash8Bytes(_b);
    }
    static public inline function benchmarkHash1K(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha256.Sha256_benchmarkhash1k.benchmarkHash1K(_b);
    }
    static public inline function benchmarkHash8K(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.sha256.Sha256_benchmarkhash8k.benchmarkHash8K(_b);
    }
}
