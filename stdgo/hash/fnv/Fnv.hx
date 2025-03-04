package stdgo.hash.fnv;
@:structInit @:using(stdgo.hash.fnv.Fnv.T_golden_static_extension) @:dox(hide) abstract T_golden(stdgo._internal.hash.fnv.Fnv_t_golden.T_golden) from stdgo._internal.hash.fnv.Fnv_t_golden.T_golden to stdgo._internal.hash.fnv.Fnv_t_golden.T_golden {
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
    public function new(?_out:Array<std.UInt>, ?_in:String, ?_halfState:String) this = new stdgo._internal.hash.fnv.Fnv_t_golden.T_golden(([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_in : stdgo.GoString), (_halfState : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.hash.fnv.Fnv_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0;
@:dox(hide) typedef T_sum32 = stdgo._internal.hash.fnv.Fnv_t_sum32.T_sum32;
@:dox(hide) typedef T_sum32a = stdgo._internal.hash.fnv.Fnv_t_sum32a.T_sum32a;
@:dox(hide) typedef T_sum64 = stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64;
@:dox(hide) typedef T_sum64a = stdgo._internal.hash.fnv.Fnv_t_sum64a.T_sum64a;
@:dox(hide) typedef T_sum128 = stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128;
@:dox(hide) typedef T_sum128a = stdgo._internal.hash.fnv.Fnv_t_sum128a.T_sum128a;
@:dox(hide) typedef T_goldenPointer = stdgo._internal.hash.fnv.Fnv_t_goldenpointer.T_goldenPointer;
@:dox(hide) class T_golden_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.hash.fnv.Fnv_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T_sum32Pointer = stdgo._internal.hash.fnv.Fnv_t_sum32pointer.T_sum32Pointer;
@:dox(hide) class T_sum32_static_extension {
    static public function unmarshalBinary(_s:stdgo.Pointer<T_sum32>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_t_sum32_static_extension.T_sum32_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:stdgo.Pointer<T_sum32>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum32_static_extension.T_sum32_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:stdgo.Pointer<T_sum32>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_t_sum32_static_extension.T_sum32_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:stdgo.Pointer<T_sum32>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_t_sum32_static_extension.T_sum32_static_extension.blockSize(_s);
    }
    static public function size(_s:stdgo.Pointer<T_sum32>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_t_sum32_static_extension.T_sum32_static_extension.size(_s);
    }
    static public function write(_s:stdgo.Pointer<T_sum32>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum32_static_extension.T_sum32_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum32(_s:stdgo.Pointer<T_sum32>):std.UInt {
        return stdgo._internal.hash.fnv.Fnv_t_sum32_static_extension.T_sum32_static_extension.sum32(_s);
    }
    static public function reset(_s:stdgo.Pointer<T_sum32>):Void {
        stdgo._internal.hash.fnv.Fnv_t_sum32_static_extension.T_sum32_static_extension.reset(_s);
    }
}
@:dox(hide) typedef T_sum32aPointer = stdgo._internal.hash.fnv.Fnv_t_sum32apointer.T_sum32aPointer;
@:dox(hide) class T_sum32a_static_extension {
    static public function unmarshalBinary(_s:stdgo.Pointer<T_sum32a>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_t_sum32a_static_extension.T_sum32a_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:stdgo.Pointer<T_sum32a>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum32a_static_extension.T_sum32a_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:stdgo.Pointer<T_sum32a>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_t_sum32a_static_extension.T_sum32a_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:stdgo.Pointer<T_sum32a>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_t_sum32a_static_extension.T_sum32a_static_extension.blockSize(_s);
    }
    static public function size(_s:stdgo.Pointer<T_sum32a>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_t_sum32a_static_extension.T_sum32a_static_extension.size(_s);
    }
    static public function write(_s:stdgo.Pointer<T_sum32a>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum32a_static_extension.T_sum32a_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum32(_s:stdgo.Pointer<T_sum32a>):std.UInt {
        return stdgo._internal.hash.fnv.Fnv_t_sum32a_static_extension.T_sum32a_static_extension.sum32(_s);
    }
    static public function reset(_s:stdgo.Pointer<T_sum32a>):Void {
        stdgo._internal.hash.fnv.Fnv_t_sum32a_static_extension.T_sum32a_static_extension.reset(_s);
    }
}
@:dox(hide) typedef T_sum64Pointer = stdgo._internal.hash.fnv.Fnv_t_sum64pointer.T_sum64Pointer;
@:dox(hide) class T_sum64_static_extension {
    static public function unmarshalBinary(_s:stdgo.Pointer<T_sum64>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_t_sum64_static_extension.T_sum64_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:stdgo.Pointer<T_sum64>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum64_static_extension.T_sum64_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:stdgo.Pointer<T_sum64>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_t_sum64_static_extension.T_sum64_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:stdgo.Pointer<T_sum64>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_t_sum64_static_extension.T_sum64_static_extension.blockSize(_s);
    }
    static public function size(_s:stdgo.Pointer<T_sum64>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_t_sum64_static_extension.T_sum64_static_extension.size(_s);
    }
    static public function write(_s:stdgo.Pointer<T_sum64>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum64_static_extension.T_sum64_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum64(_s:stdgo.Pointer<T_sum64>):haxe.UInt64 {
        return stdgo._internal.hash.fnv.Fnv_t_sum64_static_extension.T_sum64_static_extension.sum64(_s);
    }
    static public function reset(_s:stdgo.Pointer<T_sum64>):Void {
        stdgo._internal.hash.fnv.Fnv_t_sum64_static_extension.T_sum64_static_extension.reset(_s);
    }
}
@:dox(hide) typedef T_sum64aPointer = stdgo._internal.hash.fnv.Fnv_t_sum64apointer.T_sum64aPointer;
@:dox(hide) class T_sum64a_static_extension {
    static public function unmarshalBinary(_s:stdgo.Pointer<T_sum64a>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_t_sum64a_static_extension.T_sum64a_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:stdgo.Pointer<T_sum64a>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum64a_static_extension.T_sum64a_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:stdgo.Pointer<T_sum64a>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_t_sum64a_static_extension.T_sum64a_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:stdgo.Pointer<T_sum64a>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_t_sum64a_static_extension.T_sum64a_static_extension.blockSize(_s);
    }
    static public function size(_s:stdgo.Pointer<T_sum64a>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_t_sum64a_static_extension.T_sum64a_static_extension.size(_s);
    }
    static public function write(_s:stdgo.Pointer<T_sum64a>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum64a_static_extension.T_sum64a_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum64(_s:stdgo.Pointer<T_sum64a>):haxe.UInt64 {
        return stdgo._internal.hash.fnv.Fnv_t_sum64a_static_extension.T_sum64a_static_extension.sum64(_s);
    }
    static public function reset(_s:stdgo.Pointer<T_sum64a>):Void {
        stdgo._internal.hash.fnv.Fnv_t_sum64a_static_extension.T_sum64a_static_extension.reset(_s);
    }
}
@:dox(hide) typedef T_sum128Pointer = stdgo._internal.hash.fnv.Fnv_t_sum128pointer.T_sum128Pointer;
@:dox(hide) class T_sum128_static_extension {
    static public function unmarshalBinary(_s:T_sum128, _b:Array<std.UInt>):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_t_sum128_static_extension.T_sum128_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:T_sum128):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum128_static_extension.T_sum128_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:T_sum128, _in:Array<std.UInt>):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_t_sum128_static_extension.T_sum128_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:T_sum128):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>);
        return stdgo._internal.hash.fnv.Fnv_t_sum128_static_extension.T_sum128_static_extension.blockSize(_s);
    }
    static public function size(_s:T_sum128):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>);
        return stdgo._internal.hash.fnv.Fnv_t_sum128_static_extension.T_sum128_static_extension.size(_s);
    }
    static public function write(_s:T_sum128, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum128_static_extension.T_sum128_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_s:T_sum128):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>);
        stdgo._internal.hash.fnv.Fnv_t_sum128_static_extension.T_sum128_static_extension.reset(_s);
    }
}
@:dox(hide) typedef T_sum128aPointer = stdgo._internal.hash.fnv.Fnv_t_sum128apointer.T_sum128aPointer;
@:dox(hide) class T_sum128a_static_extension {
    static public function unmarshalBinary(_s:T_sum128a, _b:Array<std.UInt>):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128a.T_sum128a>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_t_sum128a_static_extension.T_sum128a_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:T_sum128a):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128a.T_sum128a>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum128a_static_extension.T_sum128a_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:T_sum128a, _in:Array<std.UInt>):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128a.T_sum128a>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_t_sum128a_static_extension.T_sum128a_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:T_sum128a):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128a.T_sum128a>);
        return stdgo._internal.hash.fnv.Fnv_t_sum128a_static_extension.T_sum128a_static_extension.blockSize(_s);
    }
    static public function size(_s:T_sum128a):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128a.T_sum128a>);
        return stdgo._internal.hash.fnv.Fnv_t_sum128a_static_extension.T_sum128a_static_extension.size(_s);
    }
    static public function write(_s:T_sum128a, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128a.T_sum128a>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_t_sum128a_static_extension.T_sum128a_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_s:T_sum128a):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128a.T_sum128a>);
        stdgo._internal.hash.fnv.Fnv_t_sum128a_static_extension.T_sum128a_static_extension.reset(_s);
    }
}
/**
    * Package fnv implements FNV-1 and FNV-1a, non-cryptographic hash functions
    * created by Glenn Fowler, Landon Curt Noll, and Phong Vo.
    * See
    * https://en.wikipedia.org/wiki/Fowler-Noll-Vo_hash_function.
    * 
    * All the hash.Hash implementations returned by this package also
    * implement encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    * marshal and unmarshal the internal state of the hash.
**/
class Fnv {
    /**
        * New32 returns a new 32-bit FNV-1 hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new32():stdgo._internal.hash.Hash_hash32.Hash32 {
        return stdgo._internal.hash.fnv.Fnv_new32.new32();
    }
    /**
        * New32a returns a new 32-bit FNV-1a hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new32a():stdgo._internal.hash.Hash_hash32.Hash32 {
        return stdgo._internal.hash.fnv.Fnv_new32a.new32a();
    }
    /**
        * New64 returns a new 64-bit FNV-1 hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new64():stdgo._internal.hash.Hash_hash64.Hash64 {
        return stdgo._internal.hash.fnv.Fnv_new64.new64();
    }
    /**
        * New64a returns a new 64-bit FNV-1a hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new64a():stdgo._internal.hash.Hash_hash64.Hash64 {
        return stdgo._internal.hash.fnv.Fnv_new64a.new64a();
    }
    /**
        * New128 returns a new 128-bit FNV-1 hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new128():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.hash.fnv.Fnv_new128.new128();
    }
    /**
        * New128a returns a new 128-bit FNV-1a hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new128a():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.hash.fnv.Fnv_new128a.new128a();
    }
    static public inline function testGolden32(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testgolden32.testGolden32(_t);
    }
    static public inline function testGolden32a(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testgolden32a.testGolden32a(_t);
    }
    static public inline function testGolden64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testgolden64.testGolden64(_t);
    }
    static public inline function testGolden64a(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testgolden64a.testGolden64a(_t);
    }
    static public inline function testGolden128(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testgolden128.testGolden128(_t);
    }
    static public inline function testGolden128a(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testgolden128a.testGolden128a(_t);
    }
    static public inline function testGoldenMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testgoldenmarshal.testGoldenMarshal(_t);
    }
    static public inline function testIntegrity32(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testintegrity32.testIntegrity32(_t);
    }
    static public inline function testIntegrity32a(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testintegrity32a.testIntegrity32a(_t);
    }
    static public inline function testIntegrity64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testintegrity64.testIntegrity64(_t);
    }
    static public inline function testIntegrity64a(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testintegrity64a.testIntegrity64a(_t);
    }
    static public inline function testIntegrity128(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testintegrity128.testIntegrity128(_t);
    }
    static public inline function testIntegrity128a(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.fnv.Fnv_testintegrity128a.testIntegrity128a(_t);
    }
    static public inline function benchmarkFnv32KB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.fnv.Fnv_benchmarkfnv32kb.benchmarkFnv32KB(_b);
    }
    static public inline function benchmarkFnv32aKB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.fnv.Fnv_benchmarkfnv32akb.benchmarkFnv32aKB(_b);
    }
    static public inline function benchmarkFnv64KB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.fnv.Fnv_benchmarkfnv64kb.benchmarkFnv64KB(_b);
    }
    static public inline function benchmarkFnv64aKB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.fnv.Fnv_benchmarkfnv64akb.benchmarkFnv64aKB(_b);
    }
    static public inline function benchmarkFnv128KB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.fnv.Fnv_benchmarkfnv128kb.benchmarkFnv128KB(_b);
    }
    static public inline function benchmarkFnv128aKB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.fnv.Fnv_benchmarkfnv128akb.benchmarkFnv128aKB(_b);
    }
}
