package stdgo._internal.crypto;
@:keep @:allow(stdgo._internal.crypto.Crypto.Hash_asInterface) class Hash_static_extension {
    @:keep
    @:tdfield
    static public function available( _h:stdgo._internal.crypto.Crypto_hash.Hash):Bool {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L139"
        return ((_h < (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) && (stdgo._internal.crypto.Crypto__hashes._hashes[(_h : stdgo.GoInt)] != null) : Bool);
    }
    @:keep
    @:tdfield
    static public function new_( _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.hash.Hash_hash.Hash {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L128"
        if (((_h > (0u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) && (_h < (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) : Bool)) {
            var _f = (stdgo._internal.crypto.Crypto__hashes._hashes[(_h : stdgo.GoInt)] : () -> stdgo._internal.hash.Hash_hash.Hash);
            //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L130"
            if (_f != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L131"
                return _f();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L134"
        throw stdgo.Go.toInterface(((("crypto: requested hash function #" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_h : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (" is unavailable" : stdgo.GoString)?.__copy__() : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function size( _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo.GoInt {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L117"
        if (((_h > (0u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) && (_h < (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L118"
            return (stdgo._internal.crypto.Crypto__digestsizes._digestSizes[(_h : stdgo.GoInt)] : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L120"
        throw stdgo.Go.toInterface(("crypto: Size of unknown hash function" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo.GoString {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L24"
        {
            final __value__ = _h;
            if (__value__ == ((1u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L26"
                return ("MD4" : stdgo.GoString);
            } else if (__value__ == ((2u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L28"
                return ("MD5" : stdgo.GoString);
            } else if (__value__ == ((3u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L30"
                return ("SHA-1" : stdgo.GoString);
            } else if (__value__ == ((4u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L32"
                return ("SHA-224" : stdgo.GoString);
            } else if (__value__ == ((5u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L34"
                return ("SHA-256" : stdgo.GoString);
            } else if (__value__ == ((6u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L36"
                return ("SHA-384" : stdgo.GoString);
            } else if (__value__ == ((7u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L38"
                return ("SHA-512" : stdgo.GoString);
            } else if (__value__ == ((8u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L40"
                return ("MD5+SHA1" : stdgo.GoString);
            } else if (__value__ == ((9u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L42"
                return ("RIPEMD-160" : stdgo.GoString);
            } else if (__value__ == ((10u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L44"
                return ("SHA3-224" : stdgo.GoString);
            } else if (__value__ == ((11u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L46"
                return ("SHA3-256" : stdgo.GoString);
            } else if (__value__ == ((12u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L48"
                return ("SHA3-384" : stdgo.GoString);
            } else if (__value__ == ((13u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L50"
                return ("SHA3-512" : stdgo.GoString);
            } else if (__value__ == ((14u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L52"
                return ("SHA-512/224" : stdgo.GoString);
            } else if (__value__ == ((15u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L54"
                return ("SHA-512/256" : stdgo.GoString);
            } else if (__value__ == ((16u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L56"
                return ("BLAKE2s-256" : stdgo.GoString);
            } else if (__value__ == ((17u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L58"
                return ("BLAKE2b-256" : stdgo.GoString);
            } else if (__value__ == ((18u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L60"
                return ("BLAKE2b-384" : stdgo.GoString);
            } else if (__value__ == ((19u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L62"
                return ("BLAKE2b-512" : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L64"
                return (("unknown hash value " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_h : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function hashFunc( _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.crypto.Crypto_hash.Hash {
        @:recv var _h:stdgo._internal.crypto.Crypto_hash.Hash = _h;
        //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L20"
        return _h;
    }
}
