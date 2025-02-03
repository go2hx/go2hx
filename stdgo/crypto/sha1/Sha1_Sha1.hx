package stdgo.crypto.sha1;
/**
    Package sha1 implements the SHA-1 hash algorithm as defined in RFC 3174.
    
    SHA-1 is cryptographically broken and should not be used for secure
    applications.
**/
class Sha1 {
    /**
        New returns a new hash.Hash computing the SHA1 checksum. The Hash also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.sha1.Sha1_new_.new_();
    }
    /**
        Sum returns the SHA-1 checksum of the data.
    **/
    static public inline function sum(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha1.Sha1_sum.sum(_data)) i]);
    }
    static public inline function testGolden(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testGolden.testGolden(_t);
    }
    static public inline function testGoldenMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testGoldenMarshal.testGoldenMarshal(_t);
    }
    static public inline function testSize(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testSize.testSize(_t);
    }
    static public inline function testBlockSize(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testBlockSize.testBlockSize(_t);
    }
    /**
        Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
    **/
    static public inline function testBlockGeneric(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testBlockGeneric.testBlockGeneric(_t);
    }
    static public inline function testLargeHashes(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testLargeHashes.testLargeHashes(_t);
    }
    static public inline function testAllocations(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.sha1.Sha1_testAllocations.testAllocations(_t);
    }
    static public inline function benchmarkHash8Bytes(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.crypto.sha1.Sha1_benchmarkHash8Bytes.benchmarkHash8Bytes(_b);
    }
    static public inline function benchmarkHash320Bytes(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.crypto.sha1.Sha1_benchmarkHash320Bytes.benchmarkHash320Bytes(_b);
    }
    static public inline function benchmarkHash1K(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.crypto.sha1.Sha1_benchmarkHash1K.benchmarkHash1K(_b);
    }
    static public inline function benchmarkHash8K(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.crypto.sha1.Sha1_benchmarkHash8K.benchmarkHash8K(_b);
    }
}
