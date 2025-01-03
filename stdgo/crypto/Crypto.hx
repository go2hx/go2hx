package stdgo.crypto;
final mD4 : Hash = stdgo._internal.crypto.Crypto_mD4.mD4;
final mD5 = stdgo._internal.crypto.Crypto_mD5.mD5;
final sHA1 = stdgo._internal.crypto.Crypto_sHA1.sHA1;
final sHA224 = stdgo._internal.crypto.Crypto_sHA224.sHA224;
final sHA256 = stdgo._internal.crypto.Crypto_sHA256.sHA256;
final sHA384 = stdgo._internal.crypto.Crypto_sHA384.sHA384;
final sHA512 = stdgo._internal.crypto.Crypto_sHA512.sHA512;
final mD5SHA1 = stdgo._internal.crypto.Crypto_mD5SHA1.mD5SHA1;
final rIPEMD160 = stdgo._internal.crypto.Crypto_rIPEMD160.rIPEMD160;
final sHA3_224 = stdgo._internal.crypto.Crypto_sHA3_224.sHA3_224;
final sHA3_256 = stdgo._internal.crypto.Crypto_sHA3_256.sHA3_256;
final sHA3_384 = stdgo._internal.crypto.Crypto_sHA3_384.sHA3_384;
final sHA3_512 = stdgo._internal.crypto.Crypto_sHA3_512.sHA3_512;
final sHA512_224 = stdgo._internal.crypto.Crypto_sHA512_224.sHA512_224;
final sHA512_256 = stdgo._internal.crypto.Crypto_sHA512_256.sHA512_256;
final bLAKE2s_256 = stdgo._internal.crypto.Crypto_bLAKE2s_256.bLAKE2s_256;
final bLAKE2b_256 = stdgo._internal.crypto.Crypto_bLAKE2b_256.bLAKE2b_256;
final bLAKE2b_384 = stdgo._internal.crypto.Crypto_bLAKE2b_384.bLAKE2b_384;
final bLAKE2b_512 = stdgo._internal.crypto.Crypto_bLAKE2b_512.bLAKE2b_512;
class Signer_static_extension {
    static public function sign(t:stdgo._internal.crypto.Crypto_Signer.Signer, _rand:stdgo._internal.io.Io_Reader.Reader, _digest:Array<std.UInt>, _opts:SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _digest = ([for (i in _digest) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.Crypto_Signer_static_extension.Signer_static_extension.sign(t, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function public_(t:stdgo._internal.crypto.Crypto_Signer.Signer):PublicKey {
        return stdgo._internal.crypto.Crypto_Signer_static_extension.Signer_static_extension.public_(t);
    }
}
typedef Signer = stdgo._internal.crypto.Crypto_Signer.Signer;
class SignerOpts_static_extension {
    static public function hashFunc(t:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):Hash {
        return stdgo._internal.crypto.Crypto_SignerOpts_static_extension.SignerOpts_static_extension.hashFunc(t);
    }
}
typedef SignerOpts = stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts;
class Decrypter_static_extension {
    static public function decrypt(t:stdgo._internal.crypto.Crypto_Decrypter.Decrypter, _rand:stdgo._internal.io.Io_Reader.Reader, _msg:Array<std.UInt>, _opts:DecrypterOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _msg = ([for (i in _msg) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.Crypto_Decrypter_static_extension.Decrypter_static_extension.decrypt(t, _rand, _msg, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function public_(t:stdgo._internal.crypto.Crypto_Decrypter.Decrypter):PublicKey {
        return stdgo._internal.crypto.Crypto_Decrypter_static_extension.Decrypter_static_extension.public_(t);
    }
}
typedef Decrypter = stdgo._internal.crypto.Crypto_Decrypter.Decrypter;
typedef Hash = stdgo._internal.crypto.Crypto_Hash.Hash;
typedef PublicKey = stdgo._internal.crypto.Crypto_PublicKey.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey;
typedef DecrypterOpts = stdgo._internal.crypto.Crypto_DecrypterOpts.DecrypterOpts;
typedef HashPointer = stdgo._internal.crypto.Crypto_HashPointer.HashPointer;
class Hash_static_extension {
    static public function available(_h:Hash):Bool {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.available(_h);
    }
    static public function new_(_h:Hash):stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.new_(_h);
    }
    static public function size(_h:Hash):StdTypes.Int {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.size(_h);
    }
    static public function string(_h:Hash):String {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.string(_h);
    }
    static public function hashFunc(_h:Hash):Hash {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.hashFunc(_h);
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
    static public function registerHash(_h:Hash, _f:() -> stdgo._internal.hash.Hash_Hash.Hash):Void {
        final _f = _f;
        stdgo._internal.crypto.Crypto_registerHash.registerHash(_h, _f);
    }
}
