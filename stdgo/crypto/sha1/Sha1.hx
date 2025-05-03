package stdgo.crypto.sha1;
var size : stdgo.GoUInt64 = 20i64;
var blockSize : stdgo.GoUInt64 = 64i64;
/**
    * Package sha1 implements the SHA-1 hash algorithm as defined in RFC 3174.
    * 
    * SHA-1 is cryptographically broken and should not be used for secure
    * applications.
**/
class Sha1 {
    /**
        * New returns a new hash.Hash computing the SHA1 checksum. The Hash also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.sha1.Sha1_new_.new_();
    /**
        * Sum returns the SHA-1 checksum of the data.
    **/
    static public inline function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.sha1.Sha1_sum.sum(_data);
    static public inline function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha1.Sha1_testgolden.testGolden(_t);
    static public inline function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha1.Sha1_testgoldenmarshal.testGoldenMarshal(_t);
    static public inline function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha1.Sha1_testsize.testSize(_t);
    static public inline function testBlockSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha1.Sha1_testblocksize.testBlockSize(_t);
    /**
        * Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
    **/
    static public inline function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha1.Sha1_testblockgeneric.testBlockGeneric(_t);
    static public inline function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha1.Sha1_testlargehashes.testLargeHashes(_t);
    static public inline function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha1.Sha1_testallocations.testAllocations(_t);
    static public inline function benchmarkHash8Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.sha1.Sha1_benchmarkhash8bytes.benchmarkHash8Bytes(_b);
    static public inline function benchmarkHash320Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.sha1.Sha1_benchmarkhash320bytes.benchmarkHash320Bytes(_b);
    static public inline function benchmarkHash1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.sha1.Sha1_benchmarkhash1k.benchmarkHash1K(_b);
    static public inline function benchmarkHash8K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.sha1.Sha1_benchmarkhash8k.benchmarkHash8K(_b);
}
