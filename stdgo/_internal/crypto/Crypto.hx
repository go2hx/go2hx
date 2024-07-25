package stdgo._internal.crypto;
private var __go2hxdoc__package : Bool;
final md4 : stdgo._internal.crypto.Crypto.Hash = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final md5 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha1 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha224 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha256 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha384 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha512 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final md5sha1 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final ripemd160 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha3_224 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha3_256 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha3_384 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha3_512 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha512_224 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final sha512_256 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final blake2s_256 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final blake2b_256 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final blake2b_384 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final blake2b_512 = (20u32 : stdgo._internal.crypto.Crypto.Hash);
final _maxHash = (20u32 : stdgo._internal.crypto.Crypto.Hash);
var _digestSizes : stdgo.Slice<stdgo.GoUInt8> = {
        var s = new stdgo.Slice<stdgo.GoUInt8>(20, 0).__setNumber32__();
        s[1] = (16 : stdgo.GoUInt8);
        s[2] = (16 : stdgo.GoUInt8);
        s[3] = (20 : stdgo.GoUInt8);
        s[4] = (28 : stdgo.GoUInt8);
        s[5] = (32 : stdgo.GoUInt8);
        s[6] = (48 : stdgo.GoUInt8);
        s[7] = (64 : stdgo.GoUInt8);
        s[14] = (28 : stdgo.GoUInt8);
        s[15] = (32 : stdgo.GoUInt8);
        s[10] = (28 : stdgo.GoUInt8);
        s[11] = (32 : stdgo.GoUInt8);
        s[12] = (48 : stdgo.GoUInt8);
        s[13] = (64 : stdgo.GoUInt8);
        s[8] = (36 : stdgo.GoUInt8);
        s[9] = (20 : stdgo.GoUInt8);
        s[16] = (32 : stdgo.GoUInt8);
        s[17] = (32 : stdgo.GoUInt8);
        s[18] = (48 : stdgo.GoUInt8);
        s[19] = (64 : stdgo.GoUInt8);
        s;
    };
var _hashes : stdgo.Slice<() -> stdgo._internal.hash.Hash.Hash> = (new stdgo.Slice<() -> stdgo._internal.hash.Hash.Hash>(((20u32 : stdgo._internal.crypto.Crypto.Hash) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<() -> stdgo._internal.hash.Hash.Hash>);
@:keep class Signer_static_extension {
    static public function sign(t:Signer, _rand:stdgo._internal.io.Io.Reader, _digest:stdgo.Slice<stdgo.GoByte>, _opts:SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return t.sign(_rand, _digest, _opts);
    static public function public_(t:Signer):PublicKey return t.public_();
}
typedef Signer = stdgo.StructType & {
    /**
        Public returns the public key corresponding to the opaque,
        private key.
        
        
    **/
    public dynamic function public_():PublicKey;
    /**
        Sign signs digest with the private key, possibly using entropy from
        rand. For an RSA key, the resulting signature should be either a
        PKCS #1 v1.5 or PSS signature (as indicated by opts). For an (EC)DSA
        key, it should be a DER-serialised, ASN.1 signature structure.
        
        Hash implements the SignerOpts interface and, in most cases, one can
        simply pass in the hash function used as opts. Sign may also attempt
        to type assert opts to other types in order to obtain algorithm
        specific values. See the documentation in each package for details.
        
        Note that when a signature of a hash of a larger message is needed,
        the caller is responsible for hashing the larger message and passing
        the hash (as digest) and the hash function (as opts) to Sign.
        
        
    **/
    public dynamic function sign(_rand:stdgo._internal.io.Io.Reader, _digest:stdgo.Slice<stdgo.GoByte>, _opts:SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
@:keep class SignerOpts_static_extension {
    static public function hashFunc(t:SignerOpts):Hash return t.hashFunc();
}
typedef SignerOpts = stdgo.StructType & {
    /**
        HashFunc returns an identifier for the hash function used to produce
        the message passed to Signer.Sign, or else zero to indicate that no
        hashing was done.
        
        
    **/
    public dynamic function hashFunc():Hash;
};
@:keep class Decrypter_static_extension {
    static public function decrypt(t:Decrypter, _rand:stdgo._internal.io.Io.Reader, _msg:stdgo.Slice<stdgo.GoByte>, _opts:DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return t.decrypt(_rand, _msg, _opts);
    static public function public_(t:Decrypter):PublicKey return t.public_();
}
typedef Decrypter = stdgo.StructType & {
    /**
        Public returns the public key corresponding to the opaque,
        private key.
        
        
    **/
    public dynamic function public_():PublicKey;
    /**
        Decrypt decrypts msg. The opts argument should be appropriate for
        the primitive used. See the documentation in each implementation for
        details.
        
        
    **/
    public dynamic function decrypt(_rand:stdgo._internal.io.Io.Reader, _msg:stdgo.Slice<stdgo.GoByte>, _opts:DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
@:named @:using(stdgo._internal.crypto.Crypto.Hash_static_extension) typedef Hash = stdgo.GoUInt;
@:follow typedef PublicKey = stdgo.AnyInterface;
@:follow typedef PrivateKey = stdgo.AnyInterface;
@:follow typedef DecrypterOpts = stdgo.AnyInterface;
function registerHash(_h:Hash, _f:() -> stdgo._internal.hash.Hash.Hash):Void {
        if ((_h >= (20u32 : stdgo._internal.crypto.Crypto.Hash) : Bool)) {
            throw stdgo.Go.toInterface(("crypto: RegisterHash of unknown hash function" : stdgo.GoString));
        };
        _hashes[(_h : stdgo.GoInt)] = _f;
    }
class Hash_asInterface {
    @:keep
    public dynamic function available():Bool return __self__.value.available();
    @:keep
    public dynamic function new_():stdgo._internal.hash.Hash.Hash return __self__.value.new_();
    @:keep
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function hashFunc():Hash return __self__.value.hashFunc();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Hash>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.crypto.Crypto.Hash_asInterface) class Hash_static_extension {
    @:keep
    static public function available( _h:Hash):Bool {
        @:recv var _h:Hash = _h;
        return ((_h < (20u32 : stdgo._internal.crypto.Crypto.Hash) : Bool) && (_hashes[(_h : stdgo.GoInt)] != null) : Bool);
    }
    @:keep
    static public function new_( _h:Hash):stdgo._internal.hash.Hash.Hash {
        @:recv var _h:Hash = _h;
        if (((_h > (0u32 : stdgo._internal.crypto.Crypto.Hash) : Bool) && (_h < (20u32 : stdgo._internal.crypto.Crypto.Hash) : Bool) : Bool)) {
            var _f = (_hashes[(_h : stdgo.GoInt)] : () -> stdgo._internal.hash.Hash.Hash);
            if (_f != null) {
                return _f();
            };
        };
        throw stdgo.Go.toInterface(((("crypto: requested hash function #" : stdgo.GoString) + stdgo._internal.strconv.Strconv.itoa((_h : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (" is unavailable" : stdgo.GoString)?.__copy__() : stdgo.GoString));
    }
    @:keep
    static public function size( _h:Hash):stdgo.GoInt {
        @:recv var _h:Hash = _h;
        if (((_h > (0u32 : stdgo._internal.crypto.Crypto.Hash) : Bool) && (_h < (20u32 : stdgo._internal.crypto.Crypto.Hash) : Bool) : Bool)) {
            return (_digestSizes[(_h : stdgo.GoInt)] : stdgo.GoInt);
        };
        throw stdgo.Go.toInterface(("crypto: Size of unknown hash function" : stdgo.GoString));
    }
    @:keep
    static public function string( _h:Hash):stdgo.GoString {
        @:recv var _h:Hash = _h;
        {
            final __value__ = _h;
            if (__value__ == ((1u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("MD4" : stdgo.GoString);
            } else if (__value__ == ((2u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("MD5" : stdgo.GoString);
            } else if (__value__ == ((3u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA-1" : stdgo.GoString);
            } else if (__value__ == ((4u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA-224" : stdgo.GoString);
            } else if (__value__ == ((5u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA-256" : stdgo.GoString);
            } else if (__value__ == ((6u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA-384" : stdgo.GoString);
            } else if (__value__ == ((7u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA-512" : stdgo.GoString);
            } else if (__value__ == ((8u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("MD5+SHA1" : stdgo.GoString);
            } else if (__value__ == ((9u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("RIPEMD-160" : stdgo.GoString);
            } else if (__value__ == ((10u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA3-224" : stdgo.GoString);
            } else if (__value__ == ((11u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA3-256" : stdgo.GoString);
            } else if (__value__ == ((12u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA3-384" : stdgo.GoString);
            } else if (__value__ == ((13u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA3-512" : stdgo.GoString);
            } else if (__value__ == ((14u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA-512/224" : stdgo.GoString);
            } else if (__value__ == ((15u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("SHA-512/256" : stdgo.GoString);
            } else if (__value__ == ((16u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("BLAKE2s-256" : stdgo.GoString);
            } else if (__value__ == ((17u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("BLAKE2b-256" : stdgo.GoString);
            } else if (__value__ == ((18u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("BLAKE2b-384" : stdgo.GoString);
            } else if (__value__ == ((19u32 : stdgo._internal.crypto.Crypto.Hash))) {
                return ("BLAKE2b-512" : stdgo.GoString);
            } else {
                return (("unknown hash value " : stdgo.GoString) + stdgo._internal.strconv.Strconv.itoa((_h : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
    @:keep
    static public function hashFunc( _h:Hash):Hash {
        @:recv var _h:Hash = _h;
        return _h;
    }
}
