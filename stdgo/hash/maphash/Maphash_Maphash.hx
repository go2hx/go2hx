package stdgo.hash.maphash;
/**
    Package maphash provides hash functions on byte sequences.
    These hash functions are intended to be used to implement hash tables or
    other data structures that need to map arbitrary strings or byte
    sequences to a uniform distribution on unsigned 64-bit integers.
    Each different instance of a hash table or data structure should use its own Seed.
    
    The hash functions are not cryptographically secure.
    (See crypto/sha256 and crypto/sha512 for cryptographic use.)
**/
class Maphash {
    /**
        Bytes returns the hash of b with the given seed.
        
        Bytes is equivalent to, but more convenient and efficient than:
        
        	var h Hash
        	h.SetSeed(seed)
        	h.Write(b)
        	return h.Sum64()
    **/
    static public inline function bytes(_seed:Seed, _b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.maphash.Maphash_bytes.bytes(_seed, _b);
    }
    /**
        String returns the hash of s with the given seed.
        
        String is equivalent to, but more convenient and efficient than:
        
        	var h Hash
        	h.SetSeed(seed)
        	h.WriteString(s)
        	return h.Sum64()
    **/
    static public inline function string(_seed:Seed, _s:String):haxe.UInt64 {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.hash.maphash.Maphash_string.string(_seed, _s);
    }
    /**
        MakeSeed returns a new random seed.
    **/
    static public inline function makeSeed():Seed {
        return stdgo._internal.hash.maphash.Maphash_makeSeed.makeSeed();
    }
}
