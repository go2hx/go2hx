package stdgo.crypto;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _digestSizes : Slice<GoUInt8> = {
        var s:Slice<GoUInt8> = new Slice<GoUInt8>(...([for (i in 0 ... 20) 0]));
        s[1] = ((16 : GoUInt8));
        s[2] = ((16 : GoUInt8));
        s[3] = ((20 : GoUInt8));
        s[4] = ((28 : GoUInt8));
        s[5] = ((32 : GoUInt8));
        s[6] = ((48 : GoUInt8));
        s[7] = ((64 : GoUInt8));
        s[14] = ((28 : GoUInt8));
        s[15] = ((32 : GoUInt8));
        s[10] = ((28 : GoUInt8));
        s[11] = ((32 : GoUInt8));
        s[12] = ((48 : GoUInt8));
        s[13] = ((64 : GoUInt8));
        s[8] = ((36 : GoUInt8));
        s[9] = ((20 : GoUInt8));
        s[16] = ((32 : GoUInt8));
        s[17] = ((32 : GoUInt8));
        s[18] = ((48 : GoUInt8));
        s[19] = ((64 : GoUInt8));
        s;
    };
var _hashes : Slice<() -> stdgo.hash.Hash.Hash> = new Slice<() -> stdgo.hash.Hash.Hash>(...[for (i in 0 ... ((((20 : GoUInt)) : GoInt)).toBasic()) null]);
typedef Signer = StructType & {
    public function public_():PublicKey;
    public function sign(_rand:stdgo.io.Io.Reader, _digest:Slice<GoByte>, _opts:SignerOpts):{ var _0 : Slice<GoByte>; var _1 : Error; };
};
typedef SignerOpts = StructType & {
    public function hashFunc():Hash;
};
typedef Decrypter = StructType & {
    public function public_():PublicKey;
    public function decrypt(_rand:stdgo.io.Io.Reader, _msg:Slice<GoByte>, _opts:DecrypterOpts):{ var _0 : Slice<GoByte>; var _1 : Error; };
};
@:named @:using(stdgo.crypto.Crypto.Hash_static_extension) typedef Hash = GoUInt;
@:follow typedef PublicKey = AnyInterface;
@:follow typedef PrivateKey = AnyInterface;
@:follow typedef DecrypterOpts = AnyInterface;
/**
    // RegisterHash registers a function that returns a new instance of the given
    // hash function. This is intended to be called from the init function in
    // packages that implement hash functions.
**/
function registerHash(_h:Hash, _f:() -> stdgo.hash.Hash.Hash):Void {
        if (_h >= ((20 : GoUInt))) {
            throw Go.toInterface(((("crypto: RegisterHash of unknown hash function" : GoString))));
        };
        if (_hashes != null) _hashes[_h] = _f;
    }
@:keep class Hash_static_extension {
    /**
        // Available reports whether the given hash function is linked into the binary.
    **/
    @:keep
    public static function available( _h:Hash):Bool {
        return (_h < ((20 : GoUInt))) && ((_hashes != null ? _hashes[_h] : null) != null);
    }
    /**
        // New returns a new hash.Hash calculating the given hash function. New panics
        // if the hash function is not linked into the binary.
    **/
    @:keep
    public static function new_( _h:Hash):stdgo.hash.Hash.Hash {
        if ((_h > ((0 : GoUInt))) && (_h < ((20 : GoUInt)))) {
            var _f:() -> stdgo.hash.Hash.Hash = (_hashes != null ? _hashes[_h] : null);
            if (_f != null) {
                return _f();
            };
        };
        throw Go.toInterface((((("crypto: requested hash function #" : GoString))) + stdgo.strconv.Strconv.itoa(((_h : GoInt)))) + (((" is unavailable" : GoString))));
    }
    /**
        // Size returns the length, in bytes, of a digest resulting from the given hash
        // function. It doesn't require that the hash function in question be linked
        // into the program.
    **/
    @:keep
    public static function size( _h:Hash):GoInt {
        if ((_h > ((0 : GoUInt))) && (_h < ((20 : GoUInt)))) {
            return (((_digestSizes != null ? _digestSizes[_h] : ((0 : GoUInt8))) : GoInt));
        };
        throw Go.toInterface(((("crypto: Size of unknown hash function" : GoString))));
    }
    @:keep
    public static function toString( _h:Hash):GoString {
        if (_h == ((1 : GoUInt))) {
            return ((("MD4" : GoString)));
        } else if (_h == ((2 : GoUInt))) {
            return ((("MD5" : GoString)));
        } else if (_h == ((3 : GoUInt))) {
            return ((("SHA-1" : GoString)));
        } else if (_h == ((4 : GoUInt))) {
            return ((("SHA-224" : GoString)));
        } else if (_h == ((5 : GoUInt))) {
            return ((("SHA-256" : GoString)));
        } else if (_h == ((6 : GoUInt))) {
            return ((("SHA-384" : GoString)));
        } else if (_h == ((7 : GoUInt))) {
            return ((("SHA-512" : GoString)));
        } else if (_h == ((8 : GoUInt))) {
            return ((("MD5+SHA1" : GoString)));
        } else if (_h == ((9 : GoUInt))) {
            return ((("RIPEMD-160" : GoString)));
        } else if (_h == ((10 : GoUInt))) {
            return ((("SHA3-224" : GoString)));
        } else if (_h == ((11 : GoUInt))) {
            return ((("SHA3-256" : GoString)));
        } else if (_h == ((12 : GoUInt))) {
            return ((("SHA3-384" : GoString)));
        } else if (_h == ((13 : GoUInt))) {
            return ((("SHA3-512" : GoString)));
        } else if (_h == ((14 : GoUInt))) {
            return ((("SHA-512/224" : GoString)));
        } else if (_h == ((15 : GoUInt))) {
            return ((("SHA-512/256" : GoString)));
        } else if (_h == ((16 : GoUInt))) {
            return ((("BLAKE2s-256" : GoString)));
        } else if (_h == ((17 : GoUInt))) {
            return ((("BLAKE2b-256" : GoString)));
        } else if (_h == ((18 : GoUInt))) {
            return ((("BLAKE2b-384" : GoString)));
        } else if (_h == ((19 : GoUInt))) {
            return ((("BLAKE2b-512" : GoString)));
        } else {
            return ((("unknown hash value " : GoString))) + stdgo.strconv.Strconv.itoa(((_h : GoInt)));
        };
    }
    /**
        // HashFunc simply returns the value of h so that Hash implements SignerOpts.
    **/
    @:keep
    public static function hashFunc( _h:Hash):Hash {
        return _h;
    }
}
class Hash_wrapper {
    /**
        // Available reports whether the given hash function is linked into the binary.
    **/
    @:keep
    public var available : () -> Bool = null;
    /**
        // New returns a new hash.Hash calculating the given hash function. New panics
        // if the hash function is not linked into the binary.
    **/
    @:keep
    public var new_ : () -> stdgo.hash.Hash.Hash = null;
    /**
        // Size returns the length, in bytes, of a digest resulting from the given hash
        // function. It doesn't require that the hash function in question be linked
        // into the program.
    **/
    @:keep
    public var size : () -> GoInt = null;
    @:keep
    public var toString : () -> GoString = null;
    /**
        // HashFunc simply returns the value of h so that Hash implements SignerOpts.
    **/
    @:keep
    public var hashFunc : () -> Hash = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Hash;
}
