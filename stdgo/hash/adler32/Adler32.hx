package stdgo.hash.adler32;
final size : haxe.UInt64 = stdgo._internal.hash.adler32.Adler32.size;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.hash.adler32.Adler32.T__struct_0;
typedef T_digest = stdgo._internal.hash.adler32.Adler32.T_digest;
class T_digest_static_extension {
    static public function sum(___:T_digest, d:stdgo.Pointer<T_digest>, _in:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.hash.adler32.Adler32.T_digest_static_extension.sum(___, d, _in)) i];
    }
    static public function sum32(___:T_digest, d:stdgo.Pointer<T_digest>):std.UInt {
        return stdgo._internal.hash.adler32.Adler32.T_digest_static_extension.sum32(___, d);
    }
    static public function write(___:T_digest, d:stdgo.Pointer<T_digest>, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.hash.adler32.Adler32.T_digest_static_extension.write(___, d, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(___:T_digest, d:stdgo.Pointer<T_digest>, b:Array<StdTypes.Int>):stdgo.Error {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.hash.adler32.Adler32.T_digest_static_extension.unmarshalBinary(___, d, b);
    }
    static public function marshalBinary(___:T_digest, d:stdgo.Pointer<T_digest>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.adler32.Adler32.T_digest_static_extension.marshalBinary(___, d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function blockSize(___:T_digest, d:stdgo.Pointer<T_digest>):StdTypes.Int {
        return stdgo._internal.hash.adler32.Adler32.T_digest_static_extension.blockSize(___, d);
    }
    static public function size(___:T_digest, d:stdgo.Pointer<T_digest>):StdTypes.Int {
        return stdgo._internal.hash.adler32.Adler32.T_digest_static_extension.size(___, d);
    }
    static public function reset(___:T_digest, d:stdgo.Pointer<T_digest>):Void {
        stdgo._internal.hash.adler32.Adler32.T_digest_static_extension.reset(___, d);
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
    static public function new_():stdgo._internal.hash.Hash.Hash32 {
        return stdgo._internal.hash.adler32.Adler32.new_();
    }
    /**
        Checksum returns the Adler-32 checksum of data.
    **/
    static public function checksum(data:Array<StdTypes.Int>):std.UInt {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.hash.adler32.Adler32.checksum(data);
    }
    static public function testGolden(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.hash.adler32.Adler32.testGolden(t);
    }
    static public function testGoldenMarshal(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.hash.adler32.Adler32.testGoldenMarshal(t);
    }
    static public function benchmarkAdler32KB(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.hash.adler32.Adler32.benchmarkAdler32KB(b);
    }
}
