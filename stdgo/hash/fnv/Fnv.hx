package stdgo.hash.fnv;
/**
    * Package fnv implements FNV-1 and FNV-1a, non-cryptographic hash functions
    * created by Glenn Fowler, Landon Curt Noll, and Phong Vo.
    * See
    * https://en.wikipedia.org/wiki/Fowler-Noll-Vo_hash_function.
    * 
    * All the hash.Hash implementations returned by this package also
    * implement encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    * marshal and unmarshal the internal state of the hash.
**/
class Fnv {
    /**
        * New32 returns a new 32-bit FNV-1 hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new32():stdgo._internal.hash.Hash_hash32.Hash32 return stdgo._internal.hash.fnv.Fnv_new32.new32();
    /**
        * New32a returns a new 32-bit FNV-1a hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new32a():stdgo._internal.hash.Hash_hash32.Hash32 return stdgo._internal.hash.fnv.Fnv_new32a.new32a();
    /**
        * New64 returns a new 64-bit FNV-1 hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new64():stdgo._internal.hash.Hash_hash64.Hash64 return stdgo._internal.hash.fnv.Fnv_new64.new64();
    /**
        * New64a returns a new 64-bit FNV-1a hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new64a():stdgo._internal.hash.Hash_hash64.Hash64 return stdgo._internal.hash.fnv.Fnv_new64a.new64a();
    /**
        * New128 returns a new 128-bit FNV-1 hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new128():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.hash.fnv.Fnv_new128.new128();
    /**
        * New128a returns a new 128-bit FNV-1a hash.Hash.
        * Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new128a():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.hash.fnv.Fnv_new128a.new128a();
    static public inline function testGolden32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testgolden32.testGolden32(_t);
    static public inline function testGolden32a(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testgolden32a.testGolden32a(_t);
    static public inline function testGolden64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testgolden64.testGolden64(_t);
    static public inline function testGolden64a(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testgolden64a.testGolden64a(_t);
    static public inline function testGolden128(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testgolden128.testGolden128(_t);
    static public inline function testGolden128a(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testgolden128a.testGolden128a(_t);
    static public inline function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testgoldenmarshal.testGoldenMarshal(_t);
    static public inline function testIntegrity32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testintegrity32.testIntegrity32(_t);
    static public inline function testIntegrity32a(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testintegrity32a.testIntegrity32a(_t);
    static public inline function testIntegrity64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testintegrity64.testIntegrity64(_t);
    static public inline function testIntegrity64a(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testintegrity64a.testIntegrity64a(_t);
    static public inline function testIntegrity128(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testintegrity128.testIntegrity128(_t);
    static public inline function testIntegrity128a(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.fnv.Fnv_testintegrity128a.testIntegrity128a(_t);
    static public inline function benchmarkFnv32KB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.hash.fnv.Fnv_benchmarkfnv32kb.benchmarkFnv32KB(_b);
    static public inline function benchmarkFnv32aKB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.hash.fnv.Fnv_benchmarkfnv32akb.benchmarkFnv32aKB(_b);
    static public inline function benchmarkFnv64KB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.hash.fnv.Fnv_benchmarkfnv64kb.benchmarkFnv64KB(_b);
    static public inline function benchmarkFnv64aKB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.hash.fnv.Fnv_benchmarkfnv64akb.benchmarkFnv64aKB(_b);
    static public inline function benchmarkFnv128KB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.hash.fnv.Fnv_benchmarkfnv128kb.benchmarkFnv128KB(_b);
    static public inline function benchmarkFnv128aKB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.hash.fnv.Fnv_benchmarkfnv128akb.benchmarkFnv128aKB(_b);
}
