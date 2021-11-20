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
@:follow typedef PublicKey = AnyInterface;
@:follow typedef PrivateKey = AnyInterface;
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
@:follow typedef DecrypterOpts = AnyInterface;
@:named class Hash {
    public function available():Bool {
        var _h = this.__copy__();
        return _h.__t__ < _maxHash.__t__ && _hashes[_h.__t__] != null;
    }
    public function new_():stdgo.hash.Hash.Hash {
        var _h = this.__copy__();
        if (_h.__t__ > ((0 : GoUInt)) && _h.__t__ < _maxHash.__t__) {
            var _f:() -> stdgo.hash.Hash.Hash = _hashes[_h.__t__];
            if (_f != null) {
                return _f();
            };
        };
        throw (("crypto: requested hash function #" : GoString)) + stdgo.strconv.Strconv.itoa(_h.__t__) + ((" is unavailable" : GoString));
    }
    public function size():GoInt {
        var _h = this.__copy__();
        if (_h.__t__ > ((0 : GoUInt)) && _h.__t__ < _maxHash.__t__) {
            return ((_digestSizes[_h.__t__] : GoInt));
        };
        throw "crypto: Size of unknown hash function";
    }
    public function toString():GoString {
        var _h = this.__copy__();
        if (_h.__t__ == md4.__t__) {
            return "MD4";
        } else if (_h.__t__ == md5.__t__) {
            return "MD5";
        } else if (_h.__t__ == sha1.__t__) {
            return "SHA-1";
        } else if (_h.__t__ == sha224.__t__) {
            return "SHA-224";
        } else if (_h.__t__ == sha256.__t__) {
            return "SHA-256";
        } else if (_h.__t__ == sha384.__t__) {
            return "SHA-384";
        } else if (_h.__t__ == sha512.__t__) {
            return "SHA-512";
        } else if (_h.__t__ == md5sha1.__t__) {
            return "MD5+SHA1";
        } else if (_h.__t__ == ripemd160.__t__) {
            return "RIPEMD-160";
        } else if (_h.__t__ == sha3_224.__t__) {
            return "SHA3-224";
        } else if (_h.__t__ == sha3_256.__t__) {
            return "SHA3-256";
        } else if (_h.__t__ == sha3_384.__t__) {
            return "SHA3-384";
        } else if (_h.__t__ == sha3_512.__t__) {
            return "SHA3-512";
        } else if (_h.__t__ == sha512_224.__t__) {
            return "SHA-512/224";
        } else if (_h.__t__ == sha512_256.__t__) {
            return "SHA-512/256";
        } else if (_h.__t__ == blake2s_256.__t__) {
            return "BLAKE2s-256";
        } else if (_h.__t__ == blake2b_256.__t__) {
            return "BLAKE2b-256";
        } else if (_h.__t__ == blake2b_384.__t__) {
            return "BLAKE2b-384";
        } else if (_h.__t__ == blake2b_512.__t__) {
            return "BLAKE2b-512";
        } else {
            return (("unknown hash value " : GoString)) + stdgo.strconv.Strconv.itoa(_h.__t__);
        };
    }
    public function hashFunc():Hash {
        var _h = this.__copy__();
        return _h;
    }
    public var __t__ : GoUInt;
    public function new(?t:GoUInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Hash(__t__);
}
final blake2b_256 : Hash = new Hash(((1 : GoUnTypedInt)) + (16 : GoUnTypedInt));
final sha512_256 : Hash = new Hash(((1 : GoUnTypedInt)) + (14 : GoUnTypedInt));
final sha3_256 : Hash = new Hash(((1 : GoUnTypedInt)) + (10 : GoUnTypedInt));
final sha224 : Hash = new Hash(((1 : GoUnTypedInt)) + (3 : GoUnTypedInt));
final _maxHash : Hash = new Hash(((1 : GoUnTypedInt)) + (19 : GoUnTypedInt));
var _hashes : Slice<() -> stdgo.hash.Hash.Hash> = new Slice<() -> stdgo.hash.Hash.Hash>(...[for (i in 0 ... ((_maxHash.__t__ : GoInt)).toBasic()) null]);
final sha512_224 : Hash = new Hash(((1 : GoUnTypedInt)) + (13 : GoUnTypedInt));
final sha3_224 : Hash = new Hash(((1 : GoUnTypedInt)) + (9 : GoUnTypedInt));
final blake2s_256 : Hash = new Hash(((1 : GoUnTypedInt)) + (15 : GoUnTypedInt));
final sha512 : Hash = new Hash(((1 : GoUnTypedInt)) + (6 : GoUnTypedInt));
final sha384 : Hash = new Hash(((1 : GoUnTypedInt)) + (5 : GoUnTypedInt));
final blake2b_512 : Hash = new Hash(((1 : GoUnTypedInt)) + (18 : GoUnTypedInt));
final blake2b_384 : Hash = new Hash(((1 : GoUnTypedInt)) + (17 : GoUnTypedInt));
final sha3_512 : Hash = new Hash(((1 : GoUnTypedInt)) + (12 : GoUnTypedInt));
final sha3_384 : Hash = new Hash(((1 : GoUnTypedInt)) + (11 : GoUnTypedInt));
final sha1 : Hash = new Hash(((1 : GoUnTypedInt)) + (2 : GoUnTypedInt));
final ripemd160 : Hash = new Hash(((1 : GoUnTypedInt)) + (8 : GoUnTypedInt));
final md5sha1 : Hash = new Hash(((1 : GoUnTypedInt)) + (7 : GoUnTypedInt));
final md4 : Hash = new Hash(((1 : GoUnTypedInt)) + (0 : GoUnTypedInt));
var _digestSizes : Slice<GoUInt8> = {
        var s = new Slice<GoUInt8>(...([for (i in 0 ... 1) 0]));
        s[0] = ((16 : GoUInt8));
        s[0] = ((16 : GoUInt8));
        s[0] = ((20 : GoUInt8));
        s[0] = ((28 : GoUInt8));
        s[0] = ((32 : GoUInt8));
        s[0] = ((48 : GoUInt8));
        s[0] = ((64 : GoUInt8));
        s[0] = ((28 : GoUInt8));
        s[0] = ((32 : GoUInt8));
        s[0] = ((28 : GoUInt8));
        s[0] = ((32 : GoUInt8));
        s[0] = ((48 : GoUInt8));
        s[0] = ((64 : GoUInt8));
        s[0] = ((36 : GoUInt8));
        s[0] = ((20 : GoUInt8));
        s[0] = ((32 : GoUInt8));
        s[0] = ((32 : GoUInt8));
        s[0] = ((48 : GoUInt8));
        s[0] = ((64 : GoUInt8));
        s;
    };
final sha256 : Hash = new Hash(((1 : GoUnTypedInt)) + (4 : GoUnTypedInt));
final md5 : Hash = new Hash(((1 : GoUnTypedInt)) + (1 : GoUnTypedInt));
/**
    // RegisterHash registers a function that returns a new instance of the given
    // hash function. This is intended to be called from the init function in
    // packages that implement hash functions.
**/
function registerHash(_h:Hash, _f:() -> stdgo.hash.Hash.Hash):Void {
        if (_h.__t__ >= _maxHash.__t__) {
            throw "crypto: RegisterHash of unknown hash function";
        };
        _hashes[_h.__t__] = _f;
    }
class Hash_extension_fields {
    public function hashFunc(__tmp__):Hash return __tmp__.hashFunc();
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function size(__tmp__):GoInt return __tmp__.size();
    public function new_(__tmp__):stdgo.hash.Hash.Hash return __tmp__.new_();
    public function available(__tmp__):Bool return __tmp__.available();
}
