package stdgo.crypto.sha1;
/**
    Package sha1 implements the SHA-1 hash algorithm as defined in RFC 3174.
    
    SHA-1 is cryptographically broken and should not be used for secure
    applications.
**/
private var __go2hxdoc__package : Bool;
final size : haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1.size;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1.blockSize;
@:invalid typedef T_digest = Dynamic;
@:invalid typedef T_sha1Test = Dynamic;
@:invalid typedef T_unmarshalTest = Dynamic;
/**
    New returns a new hash.Hash computing the SHA1 checksum. The Hash also
    implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    marshal and unmarshal the internal state of the hash.
**/
inline function new_():stdgo._internal.hash.Hash.Hash throw "not implemented";
/**
    Sum returns the SHA-1 checksum of the data.
**/
inline function sum(data:Array<Int>):haxe.ds.Vector<Int> throw "not implemented";
inline function testGolden(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGoldenMarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSize(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBlockSize(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
**/
inline function testBlockGeneric(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLargeHashes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAllocations(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkHash8Bytes(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkHash320Bytes(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkHash1K(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkHash8K(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_digest_asInterface = Dynamic;
@:invalid typedef T_digest_static_extension = Dynamic;
