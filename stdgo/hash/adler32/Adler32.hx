package stdgo.hash.adler32;
final size : haxe.UInt64 = stdgo._internal.hash.adler32.Adler32_size.size;
typedef T__struct_0Pointer = stdgo._internal.hash.adler32.Adler32_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.hash.adler32.Adler32_T__struct_0.T__struct_0;
typedef T_digest = stdgo._internal.hash.adler32.Adler32_T_digest.T_digest;
typedef T_digestPointer = stdgo._internal.hash.adler32.Adler32_T_digestPointer.T_digestPointer;
class T_digest_static_extension {
    static public function sum(_d:stdgo.Pointer<T_digest>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.adler32.Adler32_T_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function sum32(_d:stdgo.Pointer<T_digest>):std.UInt {
        return stdgo._internal.hash.adler32.Adler32_T_digest_static_extension.T_digest_static_extension.sum32(_d);
    }
    static public function write(_d:stdgo.Pointer<T_digest>, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.adler32.Adler32_T_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_d:stdgo.Pointer<T_digest>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.adler32.Adler32_T_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:stdgo.Pointer<T_digest>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.adler32.Adler32_T_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function blockSize(_d:stdgo.Pointer<T_digest>):StdTypes.Int {
        return stdgo._internal.hash.adler32.Adler32_T_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:stdgo.Pointer<T_digest>):StdTypes.Int {
        return stdgo._internal.hash.adler32.Adler32_T_digest_static_extension.T_digest_static_extension.size(_d);
    }
    static public function reset(_d:stdgo.Pointer<T_digest>):Void {
        stdgo._internal.hash.adler32.Adler32_T_digest_static_extension.T_digest_static_extension.reset(_d);
    }
}
/**
    Package adler32 implements the Adler-32 checksum.
    
    It is defined in RFC 1950:
    
    	Adler-32 is composed of two sums accumulated per byte: s1 is
    	the sum of all bytes, s2 is the sum of all s1 values. Both sums
    	are done modulo 65521. s1 is initialized to 1, s2 to zero.  The
    	Adler-32 checksum is stored as s2*65536 + s1 in most-
    	significant-byte first (network) order.
**/
class Adler32 {
    /**
        New returns a new hash.Hash32 computing the Adler-32 checksum. Its
        Sum method will lay the value out in big-endian byte order. The
        returned Hash32 also implements encoding.BinaryMarshaler and
        encoding.BinaryUnmarshaler to marshal and unmarshal the internal
        state of the hash.
    **/
    static public function new_():stdgo._internal.hash.Hash_Hash32.Hash32 {
        return stdgo._internal.hash.adler32.Adler32_new_.new_();
    }
    /**
        Checksum returns the Adler-32 checksum of data.
    **/
    static public function checksum(_data:Array<std.UInt>):std.UInt {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.adler32.Adler32_checksum.checksum(_data);
    }
    static public function testGolden(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.hash.adler32.Adler32_testGolden.testGolden(_t);
    }
    static public function testGoldenMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.hash.adler32.Adler32_testGoldenMarshal.testGoldenMarshal(_t);
    }
    static public function benchmarkAdler32KB(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.hash.adler32.Adler32_benchmarkAdler32KB.benchmarkAdler32KB(_b);
    }
}
