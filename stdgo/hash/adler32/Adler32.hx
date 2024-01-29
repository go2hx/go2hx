package stdgo.hash.adler32;
/**
    // Package adler32 implements the Adler-32 checksum.
    //
    // It is defined in RFC 1950:
    //
    //	Adler-32 is composed of two sums accumulated per byte: s1 is
    //	the sum of all bytes, s2 is the sum of all s1 values. Both sums
    //	are done modulo 65521. s1 is initialized to 1, s2 to zero.  The
    //	Adler-32 checksum is stored as s2*65536 + s1 in most-
    //	significant-byte first (network) order.
**/
private var __go2hxdoc__package : Bool;
final size : haxe.UInt64 = stdgo._internal.hash.adler32.Adler32.size;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.hash.adler32.Adler32.T__struct_0;
typedef T_digest = stdgo._internal.hash.adler32.Adler32.T_digest;
/**
    // New returns a new hash.Hash32 computing the Adler-32 checksum. Its
    // Sum method will lay the value out in big-endian byte order. The
    // returned Hash32 also implements encoding.BinaryMarshaler and
    // encoding.BinaryUnmarshaler to marshal and unmarshal the internal
    // state of the hash.
**/
inline function new_():stdgo._internal.hash.Hash.Hash32 throw "not implemented";
/**
    // Checksum returns the Adler-32 checksum of data.
**/
inline function checksum(data:Array<Int>):UInt throw "not implemented";
inline function testGolden(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGoldenMarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkAdler32KB(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_digest_asInterface = Dynamic;
@:invalid typedef T_digest_static_extension = Dynamic;
