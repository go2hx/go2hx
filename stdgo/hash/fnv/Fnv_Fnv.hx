package stdgo.hash.fnv;
/**
    Package fnv implements FNV-1 and FNV-1a, non-cryptographic hash functions
    created by Glenn Fowler, Landon Curt Noll, and Phong Vo.
    See
    https://en.wikipedia.org/wiki/Fowler-Noll-Vo_hash_function.
    
    All the hash.Hash implementations returned by this package also
    implement encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    marshal and unmarshal the internal state of the hash.
**/
class Fnv {
    /**
        New32 returns a new 32-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new32():stdgo._internal.hash.Hash_Hash32.Hash32 {
        return stdgo._internal.hash.fnv.Fnv_new32.new32();
    }
    /**
        New32a returns a new 32-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new32a():stdgo._internal.hash.Hash_Hash32.Hash32 {
        return stdgo._internal.hash.fnv.Fnv_new32a.new32a();
    }
    /**
        New64 returns a new 64-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new64():stdgo._internal.hash.Hash_Hash64.Hash64 {
        return stdgo._internal.hash.fnv.Fnv_new64.new64();
    }
    /**
        New64a returns a new 64-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new64a():stdgo._internal.hash.Hash_Hash64.Hash64 {
        return stdgo._internal.hash.fnv.Fnv_new64a.new64a();
    }
    /**
        New128 returns a new 128-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new128():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv_new128.new128();
    }
    /**
        New128a returns a new 128-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
    **/
    static public inline function new128a():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv_new128a.new128a();
    }
}
