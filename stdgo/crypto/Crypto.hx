package stdgo.crypto;
/**
    // Package crypto collects common cryptographic constants.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
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
/**
    
    
    
**/
var _hashes : stdgo.Slice<() -> stdgo.hash.Hash.Hash> = new stdgo.Slice<() -> stdgo.hash.Hash.Hash>(((20u32 : stdgo.crypto.Crypto.Hash) : stdgo.GoInt).toBasic(), 0);
/**
    
    
    // import golang.org/x/crypto/md4
**/
final md4 : stdgo.crypto.Crypto.Hash = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import crypto/md5
**/
final md5 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import crypto/sha1
**/
final sha1 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import crypto/sha256
**/
final sha224 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import crypto/sha256
**/
final sha256 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import crypto/sha512
**/
final sha384 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import crypto/sha512
**/
final sha512 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // no implementation; MD5+SHA1 used for TLS RSA
**/
final md5sha1 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/ripemd160
**/
final ripemd160 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/sha3
**/
final sha3_224 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/sha3
**/
final sha3_256 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/sha3
**/
final sha3_384 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/sha3
**/
final sha3_512 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import crypto/sha512
**/
final sha512_224 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import crypto/sha512
**/
final sha512_256 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/blake2s
**/
final blake2s_256 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/blake2b
**/
final blake2b_256 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/blake2b
**/
final blake2b_384 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    // import golang.org/x/crypto/blake2b
**/
final blake2b_512 = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    
    
    
**/
final _maxHash = (20u32 : stdgo.crypto.Crypto.Hash);
/**
    // Signer is an interface for an opaque private key that can be used for
    // signing operations. For example, an RSA key kept in a hardware module.
    
    
**/
typedef Signer = stdgo.StructType & {
    /**
        // Public returns the public key corresponding to the opaque,
        // private key.
        
        
    **/
    public dynamic function public_():PublicKey;
    /**
        // Sign signs digest with the private key, possibly using entropy from
        // rand. For an RSA key, the resulting signature should be either a
        // PKCS #1 v1.5 or PSS signature (as indicated by opts). For an (EC)DSA
        // key, it should be a DER-serialised, ASN.1 signature structure.
        //
        // Hash implements the SignerOpts interface and, in most cases, one can
        // simply pass in the hash function used as opts. Sign may also attempt
        // to type assert opts to other types in order to obtain algorithm
        // specific values. See the documentation in each package for details.
        //
        // Note that when a signature of a hash of a larger message is needed,
        // the caller is responsible for hashing the larger message and passing
        // the hash (as digest) and the hash function (as opts) to Sign.
        
        
    **/
    public dynamic function sign(_rand:stdgo.io.Io.Reader, _digest:stdgo.Slice<stdgo.GoByte>, _opts:SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
/**
    // SignerOpts contains options for signing with a Signer.
    
    
**/
typedef SignerOpts = stdgo.StructType & {
    /**
        // HashFunc returns an identifier for the hash function used to produce
        // the message passed to Signer.Sign, or else zero to indicate that no
        // hashing was done.
        
        
    **/
    public dynamic function hashFunc():Hash;
};
/**
    // Decrypter is an interface for an opaque private key that can be used for
    // asymmetric decryption operations. An example would be an RSA key
    // kept in a hardware module.
    
    
**/
typedef Decrypter = stdgo.StructType & {
    /**
        // Public returns the public key corresponding to the opaque,
        // private key.
        
        
    **/
    public dynamic function public_():PublicKey;
    /**
        // Decrypt decrypts msg. The opts argument should be appropriate for
        // the primitive used. See the documentation in each implementation for
        // details.
        
        
    **/
    public dynamic function decrypt(_rand:stdgo.io.Io.Reader, _msg:stdgo.Slice<stdgo.GoByte>, _opts:DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
/**
    // Hash identifies a cryptographic hash function that is implemented in another
    // package.
**/
@:named @:using(stdgo.crypto.Crypto.Hash_static_extension) typedef Hash = stdgo.GoUInt;
/**
    // PublicKey represents a public key using an unspecified algorithm.
    //
    // Although this type is an empty interface for backwards compatibility reasons,
    // all public key types in the standard library implement the following interface
    //
    //	interface{
    //	    Equal(x crypto.PublicKey) bool
    //	}
    //
    // which can be used for increased type safety within applications.
**/
@:follow typedef PublicKey = stdgo.AnyInterface;
/**
    // PrivateKey represents a private key using an unspecified algorithm.
    //
    // Although this type is an empty interface for backwards compatibility reasons,
    // all private key types in the standard library implement the following interface
    //
    //	interface{
    //	    Public() crypto.PublicKey
    //	    Equal(x crypto.PrivateKey) bool
    //	}
    //
    // as well as purpose-specific interfaces such as Signer and Decrypter, which
    // can be used for increased type safety within applications.
**/
@:follow typedef PrivateKey = stdgo.AnyInterface;
@:follow typedef DecrypterOpts = stdgo.AnyInterface;
/**
    // RegisterHash registers a function that returns a new instance of the given
    // hash function. This is intended to be called from the init function in
    // packages that implement hash functions.
**/
function registerHash(_h:Hash, _f:() -> stdgo.hash.Hash.Hash):Void {
        if (_h >= (20u32 : stdgo.crypto.Crypto.Hash)) {
            throw stdgo.Go.toInterface(("crypto: RegisterHash of unknown hash function" : stdgo.GoString));
        };
        _hashes[(_h : stdgo.GoInt)] = _f;
    }
class Hash_asInterface {
    /**
        // Available reports whether the given hash function is linked into the binary.
    **/
    @:keep
    public dynamic function available():Bool return __self__.value.available();
    /**
        // New returns a new hash.Hash calculating the given hash function. New panics
        // if the hash function is not linked into the binary.
    **/
    @:keep
    public dynamic function new_():stdgo.hash.Hash.Hash return __self__.value.new_();
    /**
        // Size returns the length, in bytes, of a digest resulting from the given hash
        // function. It doesn't require that the hash function in question be linked
        // into the program.
    **/
    @:keep
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    /**
        // HashFunc simply returns the value of h so that Hash implements SignerOpts.
    **/
    @:keep
    public dynamic function hashFunc():Hash return __self__.value.hashFunc();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Hash>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.crypto.Crypto.Hash_asInterface) class Hash_static_extension {
    /**
        // Available reports whether the given hash function is linked into the binary.
    **/
    @:keep
    static public function available( _h:Hash):Bool {
        @:recv var _h:Hash = _h;
        return (_h < (20u32 : stdgo.crypto.Crypto.Hash)) && (_hashes[(_h : stdgo.GoInt)] != null);
    }
    /**
        // New returns a new hash.Hash calculating the given hash function. New panics
        // if the hash function is not linked into the binary.
    **/
    @:keep
    static public function new_( _h:Hash):stdgo.hash.Hash.Hash {
        @:recv var _h:Hash = _h;
        if ((_h > (0u32 : stdgo.crypto.Crypto.Hash)) && (_h < (20u32 : stdgo.crypto.Crypto.Hash))) {
            var _f:() -> stdgo.hash.Hash.Hash = _hashes[(_h : stdgo.GoInt)];
            if (_f != null) {
                return _f();
            };
        };
        throw stdgo.Go.toInterface(("crypto: requested hash function #" : stdgo.GoString) + stdgo.strconv.Strconv.itoa((_h : stdgo.GoInt))?.__copy__() + (" is unavailable" : stdgo.GoString)?.__copy__());
    }
    /**
        // Size returns the length, in bytes, of a digest resulting from the given hash
        // function. It doesn't require that the hash function in question be linked
        // into the program.
    **/
    @:keep
    static public function size( _h:Hash):stdgo.GoInt {
        @:recv var _h:Hash = _h;
        if ((_h > (0u32 : stdgo.crypto.Crypto.Hash)) && (_h < (20u32 : stdgo.crypto.Crypto.Hash))) {
            return (_digestSizes[(_h : stdgo.GoInt)] : stdgo.GoInt);
        };
        throw stdgo.Go.toInterface(("crypto: Size of unknown hash function" : stdgo.GoString));
    }
    @:keep
    static public function string( _h:Hash):stdgo.GoString {
        @:recv var _h:Hash = _h;
        {
            final __value__ = _h;
            if (__value__ == ((1u32 : stdgo.crypto.Crypto.Hash))) {
                return ("MD4" : stdgo.GoString);
            } else if (__value__ == ((2u32 : stdgo.crypto.Crypto.Hash))) {
                return ("MD5" : stdgo.GoString);
            } else if (__value__ == ((3u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA-1" : stdgo.GoString);
            } else if (__value__ == ((4u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA-224" : stdgo.GoString);
            } else if (__value__ == ((5u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA-256" : stdgo.GoString);
            } else if (__value__ == ((6u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA-384" : stdgo.GoString);
            } else if (__value__ == ((7u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA-512" : stdgo.GoString);
            } else if (__value__ == ((8u32 : stdgo.crypto.Crypto.Hash))) {
                return ("MD5+SHA1" : stdgo.GoString);
            } else if (__value__ == ((9u32 : stdgo.crypto.Crypto.Hash))) {
                return ("RIPEMD-160" : stdgo.GoString);
            } else if (__value__ == ((10u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA3-224" : stdgo.GoString);
            } else if (__value__ == ((11u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA3-256" : stdgo.GoString);
            } else if (__value__ == ((12u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA3-384" : stdgo.GoString);
            } else if (__value__ == ((13u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA3-512" : stdgo.GoString);
            } else if (__value__ == ((14u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA-512/224" : stdgo.GoString);
            } else if (__value__ == ((15u32 : stdgo.crypto.Crypto.Hash))) {
                return ("SHA-512/256" : stdgo.GoString);
            } else if (__value__ == ((16u32 : stdgo.crypto.Crypto.Hash))) {
                return ("BLAKE2s-256" : stdgo.GoString);
            } else if (__value__ == ((17u32 : stdgo.crypto.Crypto.Hash))) {
                return ("BLAKE2b-256" : stdgo.GoString);
            } else if (__value__ == ((18u32 : stdgo.crypto.Crypto.Hash))) {
                return ("BLAKE2b-384" : stdgo.GoString);
            } else if (__value__ == ((19u32 : stdgo.crypto.Crypto.Hash))) {
                return ("BLAKE2b-512" : stdgo.GoString);
            } else {
                return ("unknown hash value " : stdgo.GoString) + stdgo.strconv.Strconv.itoa((_h : stdgo.GoInt))?.__copy__()?.__copy__();
            };
        };
    }
    /**
        // HashFunc simply returns the value of h so that Hash implements SignerOpts.
    **/
    @:keep
    static public function hashFunc( _h:Hash):Hash {
        @:recv var _h:Hash = _h;
        return _h;
    }
}
