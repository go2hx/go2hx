package stdgo.crypto;
final md4 : stdgo._internal.crypto.Crypto.Hash = stdgo._internal.crypto.Crypto.md4;
final md5 = stdgo._internal.crypto.Crypto.md5;
final sha1 = stdgo._internal.crypto.Crypto.sha1;
final sha224 = stdgo._internal.crypto.Crypto.sha224;
final sha256 = stdgo._internal.crypto.Crypto.sha256;
final sha384 = stdgo._internal.crypto.Crypto.sha384;
final sha512 = stdgo._internal.crypto.Crypto.sha512;
final md5sha1 = stdgo._internal.crypto.Crypto.md5sha1;
final ripemd160 = stdgo._internal.crypto.Crypto.ripemd160;
final sha3_224 = stdgo._internal.crypto.Crypto.sha3_224;
final sha3_256 = stdgo._internal.crypto.Crypto.sha3_256;
final sha3_384 = stdgo._internal.crypto.Crypto.sha3_384;
final sha3_512 = stdgo._internal.crypto.Crypto.sha3_512;
final sha512_224 = stdgo._internal.crypto.Crypto.sha512_224;
final sha512_256 = stdgo._internal.crypto.Crypto.sha512_256;
final blake2s_256 = stdgo._internal.crypto.Crypto.blake2s_256;
final blake2b_256 = stdgo._internal.crypto.Crypto.blake2b_256;
final blake2b_384 = stdgo._internal.crypto.Crypto.blake2b_384;
final blake2b_512 = stdgo._internal.crypto.Crypto.blake2b_512;
class Signer_static_extension {
    static public function sign(t:Signer, _rand:stdgo._internal.io.Io.Reader, _digest:Array<StdTypes.Int>, _opts:SignerOpts):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        final _digest = ([for (i in _digest) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.crypto.Crypto.Signer_static_extension.sign(t, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function public_(t:Signer):PublicKey {
        return stdgo._internal.crypto.Crypto.Signer_static_extension.public_(t);
    }
}
typedef Signer = stdgo._internal.crypto.Crypto.Signer;
class SignerOpts_static_extension {
    static public function hashFunc(t:SignerOpts):Hash {
        return stdgo._internal.crypto.Crypto.SignerOpts_static_extension.hashFunc(t);
    }
}
typedef SignerOpts = stdgo._internal.crypto.Crypto.SignerOpts;
class Decrypter_static_extension {
    static public function decrypt(t:Decrypter, _rand:stdgo._internal.io.Io.Reader, _msg:Array<StdTypes.Int>, _opts:DecrypterOpts):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        final _msg = ([for (i in _msg) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.crypto.Crypto.Decrypter_static_extension.decrypt(t, _rand, _msg, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function public_(t:Decrypter):PublicKey {
        return stdgo._internal.crypto.Crypto.Decrypter_static_extension.public_(t);
    }
}
typedef Decrypter = stdgo._internal.crypto.Crypto.Decrypter;
typedef Hash = stdgo._internal.crypto.Crypto.Hash;
typedef PublicKey = stdgo._internal.crypto.Crypto.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.Crypto.PrivateKey;
typedef DecrypterOpts = stdgo._internal.crypto.Crypto.DecrypterOpts;
class Hash_static_extension {
    static public function available(_h:Hash):Bool {
        return stdgo._internal.crypto.Crypto.Hash_static_extension.available(_h);
    }
    static public function new_(_h:Hash):stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.crypto.Crypto.Hash_static_extension.new_(_h);
    }
    static public function size(_h:Hash):StdTypes.Int {
        return stdgo._internal.crypto.Crypto.Hash_static_extension.size(_h);
    }
    static public function string(_h:Hash):String {
        return stdgo._internal.crypto.Crypto.Hash_static_extension.string(_h);
    }
    static public function hashFunc(_h:Hash):Hash {
        return stdgo._internal.crypto.Crypto.Hash_static_extension.hashFunc(_h);
    }
}
/**
    Package crypto collects common cryptographic constants.
**/
class Crypto {
    /**
        RegisterHash registers a function that returns a new instance of the given
        hash function. This is intended to be called from the init function in
        packages that implement hash functions.
    **/
    static public function registerHash(_h:Hash, _f:() -> stdgo._internal.hash.Hash.Hash):Void {
        final _f = _f;
        stdgo._internal.crypto.Crypto.registerHash(_h, _f);
    }
}
