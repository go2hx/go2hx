package stdgo.crypto.sha256;
var size : stdgo.GoUInt64 = 32i32;
var size224 : stdgo.GoUInt64 = 28i32;
var blockSize : stdgo.GoUInt64 = 64i32;
/**
    * Package sha256 implements the SHA224 and SHA256 hash algorithms as defined
    * in FIPS 180-4.
**/
class Sha256 {
    /**
        * New returns a new hash.Hash computing the SHA256 checksum. The Hash
        * also implements encoding.BinaryMarshaler and
        * encoding.BinaryUnmarshaler to marshal and unmarshal the internal
        * state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.sha256.Sha256_new_.new_();
    /**
        * New224 returns a new hash.Hash computing the SHA224 checksum.
    **/
    static public inline function new224():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.sha256.Sha256_new224.new224();
    /**
        * Sum256 returns the SHA256 checksum of the data.
    **/
    static public inline function sum256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data);
    /**
        * Sum224 returns the SHA224 checksum of the data.
    **/
    static public inline function sum224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.sha256.Sha256_sum224.sum224(_data);
    static public inline function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testgolden.testGolden(_t);
    static public inline function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testgoldenmarshal.testGoldenMarshal(_t);
    static public inline function testMarshalTypeMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testmarshaltypemismatch.testMarshalTypeMismatch(_t);
    static public inline function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testsize.testSize(_t);
    static public inline function testBlockSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testblocksize.testBlockSize(_t);
    /**
        * Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
    **/
    static public inline function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testblockgeneric.testBlockGeneric(_t);
    static public inline function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testlargehashes.testLargeHashes(_t);
    static public inline function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testallocations.testAllocations(_t);
    static public inline function testCgo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.sha256.Sha256_testcgo.testCgo(_t);
    static public inline function benchmarkHash8Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.sha256.Sha256_benchmarkhash8bytes.benchmarkHash8Bytes(_b);
    static public inline function benchmarkHash1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.sha256.Sha256_benchmarkhash1k.benchmarkHash1K(_b);
    static public inline function benchmarkHash8K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.sha256.Sha256_benchmarkhash8k.benchmarkHash8K(_b);
}
