package stdgo;
final size : haxe.UInt64 = stdgo._internal.hash.adler32.Adler32_size.size;
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.hash.adler32.Adler32_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.hash.adler32.Adler32_t__struct_0.T__struct_0;
@:dox(hide) typedef T_digest = stdgo._internal.hash.adler32.Adler32_t_digest.T_digest;
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.hash.adler32.Adler32_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T_digestPointer = stdgo._internal.hash.adler32.Adler32_t_digestpointer.T_digestPointer;
@:dox(hide) class T_digest_static_extension {
    static public function sum(_d:stdgo.Pointer<T_digest>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.adler32.Adler32_t_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function sum32(_d:stdgo.Pointer<T_digest>):std.UInt {
        return stdgo._internal.hash.adler32.Adler32_t_digest_static_extension.T_digest_static_extension.sum32(_d);
    }
    static public function write(_d:stdgo.Pointer<T_digest>, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.adler32.Adler32_t_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_d:stdgo.Pointer<T_digest>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.adler32.Adler32_t_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:stdgo.Pointer<T_digest>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.adler32.Adler32_t_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function blockSize(_d:stdgo.Pointer<T_digest>):StdTypes.Int {
        return stdgo._internal.hash.adler32.Adler32_t_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:stdgo.Pointer<T_digest>):StdTypes.Int {
        return stdgo._internal.hash.adler32.Adler32_t_digest_static_extension.T_digest_static_extension.size(_d);
    }
    static public function reset(_d:stdgo.Pointer<T_digest>):Void {
        stdgo._internal.hash.adler32.Adler32_t_digest_static_extension.T_digest_static_extension.reset(_d);
    }
}
/**
    * Package adler32 implements the Adler-32 checksum.
    * 
    * It is defined in RFC 1950:
    * 
    * 	Adler-32 is composed of two sums accumulated per byte: s1 is
    * 	the sum of all bytes, s2 is the sum of all s1 values. Both sums
    * 	are done modulo 65521. s1 is initialized to 1, s2 to zero.  The
    * 	Adler-32 checksum is stored as s2*65536 + s1 in most-
    * 	significant-byte first (network) order.
**/
class Adler32 {
    /**
        * New returns a new hash.Hash32 computing the Adler-32 checksum. Its
        * Sum method will lay the value out in big-endian byte order. The
        * returned Hash32 also implements encoding.BinaryMarshaler and
        * encoding.BinaryUnmarshaler to marshal and unmarshal the internal
        * state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash32.Hash32 {
        return stdgo._internal.hash.adler32.Adler32_new_.new_();
    }
    /**
        * Checksum returns the Adler-32 checksum of data.
    **/
    static public inline function checksum(_data:Array<std.UInt>):std.UInt {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.adler32.Adler32_checksum.checksum(_data);
    }
    static public inline function testGolden(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.adler32.Adler32_testgolden.testGolden(_t);
    }
    static public inline function testGoldenMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.adler32.Adler32_testgoldenmarshal.testGoldenMarshal(_t);
    }
    static public inline function benchmarkAdler32KB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.adler32.Adler32_benchmarkadler32kb.benchmarkAdler32KB(_b);
    }
}
