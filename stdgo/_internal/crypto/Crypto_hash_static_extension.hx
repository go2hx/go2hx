package stdgo._internal.crypto;
@:keep @:allow(stdgo._internal.crypto.Crypto.Hash_asInterface) class Hash_static_extension {
    @:keep
    @:tdfield
    static public function available( _h:stdgo._internal.crypto.Crypto_hash.Hash):Bool {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        return ((_h < (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) && (stdgo._internal.crypto.Crypto__hashes._hashes[(_h : stdgo.GoInt)] != null) : Bool);
    }
    @:keep
    @:tdfield
    static public function new_( _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.hash.Hash_hash.Hash {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        if (((_h > (0u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) && (_h < (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) : Bool)) {
            var _f = (stdgo._internal.crypto.Crypto__hashes._hashes[(_h : stdgo.GoInt)] : () -> stdgo._internal.hash.Hash_hash.Hash);
            if (_f != null) {
                return _f();
            };
        };
        throw stdgo.Go.toInterface(((("crypto: requested hash function #" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_h : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (" is unavailable" : stdgo.GoString)?.__copy__() : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function size( _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo.GoInt {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        if (((_h > (0u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) && (_h < (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) : Bool)) {
            return (stdgo._internal.crypto.Crypto__digestsizes._digestSizes[(_h : stdgo.GoInt)] : stdgo.GoInt);
        };
        throw stdgo.Go.toInterface(("crypto: Size of unknown hash function" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo.GoString {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        {
            final __value__ = _h;
            if (__value__ == ((1u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("MD4" : stdgo.GoString);
            } else if (__value__ == ((2u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("MD5" : stdgo.GoString);
            } else if (__value__ == ((3u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA-1" : stdgo.GoString);
            } else if (__value__ == ((4u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA-224" : stdgo.GoString);
            } else if (__value__ == ((5u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA-256" : stdgo.GoString);
            } else if (__value__ == ((6u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA-384" : stdgo.GoString);
            } else if (__value__ == ((7u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA-512" : stdgo.GoString);
            } else if (__value__ == ((8u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("MD5+SHA1" : stdgo.GoString);
            } else if (__value__ == ((9u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("RIPEMD-160" : stdgo.GoString);
            } else if (__value__ == ((10u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA3-224" : stdgo.GoString);
            } else if (__value__ == ((11u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA3-256" : stdgo.GoString);
            } else if (__value__ == ((12u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA3-384" : stdgo.GoString);
            } else if (__value__ == ((13u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA3-512" : stdgo.GoString);
            } else if (__value__ == ((14u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA-512/224" : stdgo.GoString);
            } else if (__value__ == ((15u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("SHA-512/256" : stdgo.GoString);
            } else if (__value__ == ((16u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("BLAKE2s-256" : stdgo.GoString);
            } else if (__value__ == ((17u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("BLAKE2b-256" : stdgo.GoString);
            } else if (__value__ == ((18u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("BLAKE2b-384" : stdgo.GoString);
            } else if (__value__ == ((19u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                return ("BLAKE2b-512" : stdgo.GoString);
            } else {
                return (("unknown hash value " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_h : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function hashFunc( _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.crypto.Crypto_hash.Hash {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        return _h;
    }
}
