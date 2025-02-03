package stdgo.crypto.sha512;
/**
    Package sha512 implements the SHA-384, SHA-512, SHA-512/224, and SHA-512/256
    hash algorithms as defined in FIPS 180-4.
    
    All the hash.Hash implementations returned by this package also
    implement encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    marshal and unmarshal the internal state of the hash.
**/
class Sha512 {
    /**
        New returns a new hash.Hash computing the SHA-512 checksum.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new_.new_();
    }
    /**
        New512_224 returns a new hash.Hash computing the SHA-512/224 checksum.
    **/
    static public inline function new512_224():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224();
    }
    /**
        New512_256 returns a new hash.Hash computing the SHA-512/256 checksum.
    **/
    static public inline function new512_256():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256();
    }
    /**
        New384 returns a new hash.Hash computing the SHA-384 checksum.
    **/
    static public inline function new384():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new384.new384();
    }
    /**
        Sum512 returns the SHA512 checksum of the data.
    **/
    static public inline function sum512(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_data)) i]);
    }
    /**
        Sum384 returns the SHA384 checksum of the data.
    **/
    static public inline function sum384(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum384.sum384(_data)) i]);
    }
    /**
        Sum512_224 returns the Sum512/224 checksum of the data.
    **/
    static public inline function sum512_224(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512_224.sum512_224(_data)) i]);
    }
    /**
        Sum512_256 returns the Sum512/256 checksum of the data.
    **/
    static public inline function sum512_256(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512_256.sum512_256(_data)) i]);
    }
}
