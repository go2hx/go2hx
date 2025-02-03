package stdgo.hash;
class Hash_static_extension {
    static public function blockSize(t:stdgo._internal.hash.Hash_Hash.Hash):StdTypes.Int {
        return stdgo._internal.hash.Hash_Hash_static_extension.Hash_static_extension.blockSize(t);
    }
    static public function size(t:stdgo._internal.hash.Hash_Hash.Hash):StdTypes.Int {
        return stdgo._internal.hash.Hash_Hash_static_extension.Hash_static_extension.size(t);
    }
    static public function reset(t:stdgo._internal.hash.Hash_Hash.Hash):Void {
        stdgo._internal.hash.Hash_Hash_static_extension.Hash_static_extension.reset(t);
    }
    static public function sum(t:stdgo._internal.hash.Hash_Hash.Hash, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.Hash_Hash_static_extension.Hash_static_extension.sum(t, _b)) i];
    }
}
typedef Hash_ = stdgo._internal.hash.Hash_Hash.Hash;
class Hash32_static_extension {
    static public function sum32(t:stdgo._internal.hash.Hash_Hash32.Hash32):std.UInt {
        return stdgo._internal.hash.Hash_Hash32_static_extension.Hash32_static_extension.sum32(t);
    }
}
typedef Hash32 = stdgo._internal.hash.Hash_Hash32.Hash32;
class Hash64_static_extension {
    static public function sum64(t:stdgo._internal.hash.Hash_Hash64.Hash64):haxe.UInt64 {
        return stdgo._internal.hash.Hash_Hash64_static_extension.Hash64_static_extension.sum64(t);
    }
}
typedef Hash64 = stdgo._internal.hash.Hash_Hash64.Hash64;
/**
    Package hash provides interfaces for hash functions.
**/
class Hash {

}
