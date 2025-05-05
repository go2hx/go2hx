package stdgo.hash.adler32;
var size : stdgo.GoUInt64 = 4i64;
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
    static public inline function new_():stdgo._internal.hash.Hash_hash32.Hash32 return stdgo._internal.hash.adler32.Adler32_new_.new_();
    /**
        * Checksum returns the Adler-32 checksum of data.
    **/
    static public inline function checksum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return stdgo._internal.hash.adler32.Adler32_checksum.checksum(_data);
    static public inline function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.adler32.Adler32_testgolden.testGolden(_t);
    static public inline function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.adler32.Adler32_testgoldenmarshal.testGoldenMarshal(_t);
    static public inline function benchmarkAdler32KB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.hash.adler32.Adler32_benchmarkadler32kb.benchmarkAdler32KB(_b);
}
