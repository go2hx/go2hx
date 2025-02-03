package stdgo.crypto.sha256;
/**
    Package sha256 implements the SHA224 and SHA256 hash algorithms as defined
    in FIPS 180-4.
**/
class Sha256 {
    /**
        New returns a new hash.Hash computing the SHA256 checksum. The Hash
        also implements encoding.BinaryMarshaler and
        encoding.BinaryUnmarshaler to marshal and unmarshal the internal
        state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.sha256.Sha256_new_.new_();
    }
    /**
        New224 returns a new hash.Hash computing the SHA224 checksum.
    **/
    static public inline function new224():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.sha256.Sha256_new224.new224();
    }
    /**
        Sum256 returns the SHA256 checksum of the data.
    **/
    static public inline function sum256(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data)) i]);
    }
    /**
        Sum224 returns the SHA224 checksum of the data.
    **/
    static public inline function sum224(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha256.Sha256_sum224.sum224(_data)) i]);
    }
}
