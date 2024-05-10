package stdgo.hash;
class Hash__static_extension {
    static public function blockSize(t:Hash_):StdTypes.Int {
        return stdgo._internal.hash.Hash.Hash_static_extension.blockSize(t);
    }
    static public function size(t:Hash_):StdTypes.Int {
        return stdgo._internal.hash.Hash.Hash_static_extension.size(t);
    }
    static public function reset(t:Hash_):Void {
        stdgo._internal.hash.Hash.Hash_static_extension.reset(t);
    }
    static public function sum(t:Hash_, b:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.hash.Hash.Hash_static_extension.sum(t, b)) i];
    }
}
typedef Hash = stdgo._internal.hash.Hash.Hash;
class Hash_32_static_extension {
    static public function sum32(t:Hash32):std.UInt {
        return stdgo._internal.hash.Hash.Hash32_static_extension.sum32(t);
    }
}
typedef Hash32 = stdgo._internal.hash.Hash.Hash32;
class Hash_64_static_extension {
    static public function sum64(t:Hash64):haxe.UInt64 {
        return stdgo._internal.hash.Hash.Hash64_static_extension.sum64(t);
    }
}
typedef Hash64 = stdgo._internal.hash.Hash.Hash64;
/**
    Package hash provides interfaces for hash functions.
**/
class Hash {

}
