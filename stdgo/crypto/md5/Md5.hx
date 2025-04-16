package stdgo.crypto.md5;
var size : stdgo.GoUInt64 = 16i32;
var blockSize : stdgo.GoUInt64 = 64i32;
/**
    * Package md5 implements the MD5 hash algorithm as defined in RFC 1321.
    * 
    * MD5 is cryptographically broken and should not be used for secure
    * applications.
**/
class Md5 {
    /**
        * New returns a new hash.Hash computing the MD5 checksum. The Hash also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.md5.Md5_new_.new_();
    /**
        * Sum returns the MD5 checksum of the data.
    **/
    static public inline function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.md5.Md5_sum.sum(_data);
    static public inline function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.md5.Md5_testgolden.testGolden(_t);
    static public inline function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.md5.Md5_testgoldenmarshal.testGoldenMarshal(_t);
    static public inline function testLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.md5.Md5_testlarge.testLarge(_t);
    /**
        * Tests that blockGeneric (pure Go) and block (in assembly for amd64, 386, arm) match.
    **/
    static public inline function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.md5.Md5_testblockgeneric.testBlockGeneric(_t);
    static public inline function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.md5.Md5_testlargehashes.testLargeHashes(_t);
    static public inline function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.md5.Md5_testallocations.testAllocations(_t);
    static public inline function benchmarkHash8Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash8bytes.benchmarkHash8Bytes(_b);
    static public inline function benchmarkHash64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash64.benchmarkHash64(_b);
    static public inline function benchmarkHash128(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash128.benchmarkHash128(_b);
    static public inline function benchmarkHash256(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash256.benchmarkHash256(_b);
    static public inline function benchmarkHash512(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash512.benchmarkHash512(_b);
    static public inline function benchmarkHash1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash1k.benchmarkHash1K(_b);
    static public inline function benchmarkHash8K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash8k.benchmarkHash8K(_b);
    static public inline function benchmarkHash1M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash1m.benchmarkHash1M(_b);
    static public inline function benchmarkHash8M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash8m.benchmarkHash8M(_b);
    static public inline function benchmarkHash8BytesUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash8bytesunaligned.benchmarkHash8BytesUnaligned(_b);
    static public inline function benchmarkHash1KUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash1kunaligned.benchmarkHash1KUnaligned(_b);
    static public inline function benchmarkHash8KUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.md5.Md5_benchmarkhash8kunaligned.benchmarkHash8KUnaligned(_b);
}
