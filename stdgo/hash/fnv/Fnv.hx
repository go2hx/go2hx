package stdgo.hash.fnv;
typedef T_sum32 = stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32;
typedef T_sum32a = stdgo._internal.hash.fnv.Fnv_T_sum32a.T_sum32a;
typedef T_sum64 = stdgo._internal.hash.fnv.Fnv_T_sum64.T_sum64;
typedef T_sum64a = stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a;
typedef T_sum128 = stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128;
typedef T_sum128a = stdgo._internal.hash.fnv.Fnv_T_sum128a.T_sum128a;
class T_sum32_static_extension {
    static public function unmarshalBinary(____:T_sum32, _s:stdgo.Pointer<T_sum32>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_T_sum32_static_extension.T_sum32_static_extension.unmarshalBinary(____, _s, _b);
    }
    static public function marshalBinary(____:T_sum32, _s:stdgo.Pointer<T_sum32>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum32_static_extension.T_sum32_static_extension.marshalBinary(____, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(____:T_sum32, _s:stdgo.Pointer<T_sum32>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_T_sum32_static_extension.T_sum32_static_extension.sum(____, _s, _in)) i];
    }
    static public function blockSize(____:T_sum32, _s:stdgo.Pointer<T_sum32>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum32_static_extension.T_sum32_static_extension.blockSize(____, _s);
    }
    static public function size(____:T_sum32, _s:stdgo.Pointer<T_sum32>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum32_static_extension.T_sum32_static_extension.size(____, _s);
    }
    static public function write(____:T_sum32, _s:stdgo.Pointer<T_sum32>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum32_static_extension.T_sum32_static_extension.write(____, _s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum32(____:T_sum32, _s:stdgo.Pointer<T_sum32>):std.UInt {
        return stdgo._internal.hash.fnv.Fnv_T_sum32_static_extension.T_sum32_static_extension.sum32(____, _s);
    }
    static public function reset(____:T_sum32, _s:stdgo.Pointer<T_sum32>):Void {
        stdgo._internal.hash.fnv.Fnv_T_sum32_static_extension.T_sum32_static_extension.reset(____, _s);
    }
}
class T_sum32a_static_extension {
    static public function unmarshalBinary(____:T_sum32a, _s:stdgo.Pointer<T_sum32a>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_T_sum32a_static_extension.T_sum32a_static_extension.unmarshalBinary(____, _s, _b);
    }
    static public function marshalBinary(____:T_sum32a, _s:stdgo.Pointer<T_sum32a>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum32a_static_extension.T_sum32a_static_extension.marshalBinary(____, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(____:T_sum32a, _s:stdgo.Pointer<T_sum32a>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_T_sum32a_static_extension.T_sum32a_static_extension.sum(____, _s, _in)) i];
    }
    static public function blockSize(____:T_sum32a, _s:stdgo.Pointer<T_sum32a>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum32a_static_extension.T_sum32a_static_extension.blockSize(____, _s);
    }
    static public function size(____:T_sum32a, _s:stdgo.Pointer<T_sum32a>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum32a_static_extension.T_sum32a_static_extension.size(____, _s);
    }
    static public function write(____:T_sum32a, _s:stdgo.Pointer<T_sum32a>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum32a_static_extension.T_sum32a_static_extension.write(____, _s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum32(____:T_sum32a, _s:stdgo.Pointer<T_sum32a>):std.UInt {
        return stdgo._internal.hash.fnv.Fnv_T_sum32a_static_extension.T_sum32a_static_extension.sum32(____, _s);
    }
    static public function reset(____:T_sum32a, _s:stdgo.Pointer<T_sum32a>):Void {
        stdgo._internal.hash.fnv.Fnv_T_sum32a_static_extension.T_sum32a_static_extension.reset(____, _s);
    }
}
class T_sum64_static_extension {
    static public function unmarshalBinary(____:T_sum64, _s:stdgo.Pointer<T_sum64>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.unmarshalBinary(____, _s, _b);
    }
    static public function marshalBinary(____:T_sum64, _s:stdgo.Pointer<T_sum64>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.marshalBinary(____, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(____:T_sum64, _s:stdgo.Pointer<T_sum64>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.sum(____, _s, _in)) i];
    }
    static public function blockSize(____:T_sum64, _s:stdgo.Pointer<T_sum64>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.blockSize(____, _s);
    }
    static public function size(____:T_sum64, _s:stdgo.Pointer<T_sum64>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.size(____, _s);
    }
    static public function write(____:T_sum64, _s:stdgo.Pointer<T_sum64>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.write(____, _s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum64(____:T_sum64, _s:stdgo.Pointer<T_sum64>):haxe.UInt64 {
        return stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.sum64(____, _s);
    }
    static public function reset(____:T_sum64, _s:stdgo.Pointer<T_sum64>):Void {
        stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.reset(____, _s);
    }
}
class T_sum64a_static_extension {
    static public function unmarshalBinary(____:T_sum64a, _s:stdgo.Pointer<T_sum64a>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_T_sum64a_static_extension.T_sum64a_static_extension.unmarshalBinary(____, _s, _b);
    }
    static public function marshalBinary(____:T_sum64a, _s:stdgo.Pointer<T_sum64a>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum64a_static_extension.T_sum64a_static_extension.marshalBinary(____, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(____:T_sum64a, _s:stdgo.Pointer<T_sum64a>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_T_sum64a_static_extension.T_sum64a_static_extension.sum(____, _s, _in)) i];
    }
    static public function blockSize(____:T_sum64a, _s:stdgo.Pointer<T_sum64a>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum64a_static_extension.T_sum64a_static_extension.blockSize(____, _s);
    }
    static public function size(____:T_sum64a, _s:stdgo.Pointer<T_sum64a>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum64a_static_extension.T_sum64a_static_extension.size(____, _s);
    }
    static public function write(____:T_sum64a, _s:stdgo.Pointer<T_sum64a>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum64a_static_extension.T_sum64a_static_extension.write(____, _s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum64(____:T_sum64a, _s:stdgo.Pointer<T_sum64a>):haxe.UInt64 {
        return stdgo._internal.hash.fnv.Fnv_T_sum64a_static_extension.T_sum64a_static_extension.sum64(____, _s);
    }
    static public function reset(____:T_sum64a, _s:stdgo.Pointer<T_sum64a>):Void {
        stdgo._internal.hash.fnv.Fnv_T_sum64a_static_extension.T_sum64a_static_extension.reset(____, _s);
    }
}
class T_sum128_static_extension {
    static public function unmarshalBinary(_s:T_sum128, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:T_sum128):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:T_sum128, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:T_sum128):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.blockSize(_s);
    }
    static public function size(_s:T_sum128):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.size(_s);
    }
    static public function write(_s:T_sum128, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_s:T_sum128):Void {
        stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.reset(_s);
    }
}
class T_sum128a_static_extension {
    static public function unmarshalBinary(_s:T_sum128a, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_T_sum128a_static_extension.T_sum128a_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:T_sum128a):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum128a_static_extension.T_sum128a_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:T_sum128a, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_T_sum128a_static_extension.T_sum128a_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:T_sum128a):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum128a_static_extension.T_sum128a_static_extension.blockSize(_s);
    }
    static public function size(_s:T_sum128a):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum128a_static_extension.T_sum128a_static_extension.size(_s);
    }
    static public function write(_s:T_sum128a, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum128a_static_extension.T_sum128a_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_s:T_sum128a):Void {
        stdgo._internal.hash.fnv.Fnv_T_sum128a_static_extension.T_sum128a_static_extension.reset(_s);
    }
}
/**
    Package fnv implements FNV-1 and FNV-1a, non-cryptographic hash functions
    created by Glenn Fowler, Landon Curt Noll, and Phong Vo.
    See
    https://en.wikipedia.org/wiki/Fowler-Noll-Vo_hash_function.
    
    All the hash.Hash implementations returned by this package also
    implement encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    marshal and unmarshal the internal state of the hash.
**/
class Fnv {
    /**
        New32 returns a new 32-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public function new32():stdgo._internal.hash.Hash_Hash32.Hash32 {
        return stdgo._internal.hash.fnv.Fnv_new32.new32();
    }
    /**
        New32a returns a new 32-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public function new32a():stdgo._internal.hash.Hash_Hash32.Hash32 {
        return stdgo._internal.hash.fnv.Fnv_new32a.new32a();
    }
    /**
        New64 returns a new 64-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public function new64():stdgo._internal.hash.Hash_Hash64.Hash64 {
        return stdgo._internal.hash.fnv.Fnv_new64.new64();
    }
    /**
        New64a returns a new 64-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public function new64a():stdgo._internal.hash.Hash_Hash64.Hash64 {
        return stdgo._internal.hash.fnv.Fnv_new64a.new64a();
    }
    /**
        New128 returns a new 128-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public function new128():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv_new128.new128();
    }
    /**
        New128a returns a new 128-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public function new128a():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv_new128a.new128a();
    }
}