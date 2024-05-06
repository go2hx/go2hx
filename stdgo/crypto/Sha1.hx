package stdgo.crypto;
/**
    Package sha1 implements the SHA-1 hash algorithm as defined in RFC 3174.
    
    SHA-1 is cryptographically broken and should not be used for secure
    applications.
**/
private var __go2hxdoc__package : Bool;
final size : haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1.size;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1.blockSize;
@:forward @:forward.new abstract T_digest(stdgo._internal.crypto.sha1.Sha1.T_digest) from stdgo._internal.crypto.sha1.Sha1.T_digest to stdgo._internal.crypto.sha1.Sha1.T_digest {

}
@:forward @:forward.new abstract T_sha1Test(stdgo._internal.crypto.sha1.Sha1.T_sha1Test) from stdgo._internal.crypto.sha1.Sha1.T_sha1Test to stdgo._internal.crypto.sha1.Sha1.T_sha1Test {

}
@:forward @:forward.new abstract T_unmarshalTest(stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest) from stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest to stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest {

}
/**
    New returns a new hash.Hash computing the SHA1 checksum. The Hash also
    implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    marshal and unmarshal the internal state of the hash.
**/
function new_():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.crypto.sha1.Sha1.new_();
    }
/**
    Sum returns the SHA-1 checksum of the data.
**/
function sum(data:Array<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.crypto.sha1.Sha1.sum(data);
    }
function testGolden(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testGolden(t);
    }
function testGoldenMarshal(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testGoldenMarshal(t);
    }
function testSize(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testSize(t);
    }
function testBlockSize(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testBlockSize(t);
    }
/**
    Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
**/
function testBlockGeneric(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testBlockGeneric(t);
    }
function testLargeHashes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testLargeHashes(t);
    }
function testAllocations(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.sha1.Sha1.testAllocations(t);
    }
function benchmarkHash8Bytes(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.crypto.sha1.Sha1.benchmarkHash8Bytes(b);
    }
function benchmarkHash320Bytes(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.crypto.sha1.Sha1.benchmarkHash320Bytes(b);
    }
function benchmarkHash1K(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.crypto.sha1.Sha1.benchmarkHash1K(b);
    }
function benchmarkHash8K(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.crypto.sha1.Sha1.benchmarkHash8K(b);
    }
@:forward @:forward.new abstract T_digest_asInterface(stdgo._internal.crypto.sha1.Sha1.T_digest_asInterface) from stdgo._internal.crypto.sha1.Sha1.T_digest_asInterface to stdgo._internal.crypto.sha1.Sha1.T_digest_asInterface {

}
@:forward @:forward.new abstract T_digest_static_extension(stdgo._internal.crypto.sha1.Sha1.T_digest_static_extension) from stdgo._internal.crypto.sha1.Sha1.T_digest_static_extension to stdgo._internal.crypto.sha1.Sha1.T_digest_static_extension {

}
