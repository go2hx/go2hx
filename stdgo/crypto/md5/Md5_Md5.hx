package stdgo.crypto.md5;
/**
    Package md5 implements the MD5 hash algorithm as defined in RFC 1321.
    
    MD5 is cryptographically broken and should not be used for secure
    applications.
**/
class Md5 {
    /**
        New returns a new hash.Hash computing the MD5 checksum. The Hash also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.md5.Md5_new_.new_();
    }
    /**
        Sum returns the MD5 checksum of the data.
    **/
    static public inline function sum(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.md5.Md5_sum.sum(_data)) i]);
    }
}
