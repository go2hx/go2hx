package stdgo.crypto;
final mD4 : Hash = stdgo._internal.crypto.Crypto_md4.mD4;
final mD5 = stdgo._internal.crypto.Crypto_md5.mD5;
final sHA1 = stdgo._internal.crypto.Crypto_sha1.sHA1;
final sHA224 = stdgo._internal.crypto.Crypto_sha224.sHA224;
final sHA256 = stdgo._internal.crypto.Crypto_sha256.sHA256;
final sHA384 = stdgo._internal.crypto.Crypto_sha384.sHA384;
final sHA512 = stdgo._internal.crypto.Crypto_sha512.sHA512;
final mD5SHA1 = stdgo._internal.crypto.Crypto_md5sha1.mD5SHA1;
final rIPEMD160 = stdgo._internal.crypto.Crypto_ripemd160.rIPEMD160;
final sHA3_224 = stdgo._internal.crypto.Crypto_sha3_224.sHA3_224;
final sHA3_256 = stdgo._internal.crypto.Crypto_sha3_256.sHA3_256;
final sHA3_384 = stdgo._internal.crypto.Crypto_sha3_384.sHA3_384;
final sHA3_512 = stdgo._internal.crypto.Crypto_sha3_512.sHA3_512;
final sHA512_224 = stdgo._internal.crypto.Crypto_sha512_224.sHA512_224;
final sHA512_256 = stdgo._internal.crypto.Crypto_sha512_256.sHA512_256;
final bLAKE2s_256 = stdgo._internal.crypto.Crypto_blake2s_256.bLAKE2s_256;
final bLAKE2b_256 = stdgo._internal.crypto.Crypto_blake2b_256.bLAKE2b_256;
final bLAKE2b_384 = stdgo._internal.crypto.Crypto_blake2b_384.bLAKE2b_384;
final bLAKE2b_512 = stdgo._internal.crypto.Crypto_blake2b_512.bLAKE2b_512;
class Signer_static_extension {
    static public function sign(t:stdgo._internal.crypto.Crypto_signer.Signer, _rand:stdgo._internal.io.Io_reader.Reader, _digest:Array<std.UInt>, _opts:SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _digest = ([for (i in _digest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.Crypto_signer_static_extension.Signer_static_extension.sign(t, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function public_(t:stdgo._internal.crypto.Crypto_signer.Signer):PublicKey {
        return stdgo._internal.crypto.Crypto_signer_static_extension.Signer_static_extension.public_(t);
    }
}
@:forward abstract Signer(stdgo._internal.crypto.Crypto_signer.Signer) from stdgo._internal.crypto.Crypto_signer.Signer to stdgo._internal.crypto.Crypto_signer.Signer {
    @:from
    static function fromHaxeInterface(x:{ function public_():PublicKey; function sign(_rand:stdgo._internal.io.Io_reader.Reader, _digest:Array<std.UInt>, _opts:SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):Signer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Signer = { public_ : () -> x.public_(), sign : (_0, _1, _2) -> x.sign(_0, [for (i in _1) i], _2), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class SignerOpts_static_extension {
    static public function hashFunc(t:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):Hash {
        return stdgo._internal.crypto.Crypto_signeropts_static_extension.SignerOpts_static_extension.hashFunc(t);
    }
}
@:forward abstract SignerOpts(stdgo._internal.crypto.Crypto_signeropts.SignerOpts) from stdgo._internal.crypto.Crypto_signeropts.SignerOpts to stdgo._internal.crypto.Crypto_signeropts.SignerOpts {
    @:from
    static function fromHaxeInterface(x:{ function hashFunc():Hash; }):SignerOpts {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:SignerOpts = { hashFunc : () -> x.hashFunc(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Decrypter_static_extension {
    static public function decrypt(t:stdgo._internal.crypto.Crypto_decrypter.Decrypter, _rand:stdgo._internal.io.Io_reader.Reader, _msg:Array<std.UInt>, _opts:DecrypterOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.Crypto_decrypter_static_extension.Decrypter_static_extension.decrypt(t, _rand, _msg, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function public_(t:stdgo._internal.crypto.Crypto_decrypter.Decrypter):PublicKey {
        return stdgo._internal.crypto.Crypto_decrypter_static_extension.Decrypter_static_extension.public_(t);
    }
}
@:forward abstract Decrypter(stdgo._internal.crypto.Crypto_decrypter.Decrypter) from stdgo._internal.crypto.Crypto_decrypter.Decrypter to stdgo._internal.crypto.Crypto_decrypter.Decrypter {
    @:from
    static function fromHaxeInterface(x:{ function public_():PublicKey; function decrypt(_rand:stdgo._internal.io.Io_reader.Reader, _msg:Array<std.UInt>, _opts:DecrypterOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):Decrypter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Decrypter = { public_ : () -> x.public_(), decrypt : (_0, _1, _2) -> x.decrypt(_0, [for (i in _1) i], _2), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
typedef Hash = stdgo._internal.crypto.Crypto_hash.Hash;
typedef PublicKey = stdgo._internal.crypto.Crypto_publickey.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.Crypto_privatekey.PrivateKey;
typedef DecrypterOpts = stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts;
typedef HashPointer = stdgo._internal.crypto.Crypto_hashpointer.HashPointer;
class Hash_static_extension {
    static public function available(_h:Hash):Bool {
        return stdgo._internal.crypto.Crypto_hash_static_extension.Hash_static_extension.available(_h);
    }
    static public function new_(_h:Hash):stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.Crypto_hash_static_extension.Hash_static_extension.new_(_h);
    }
    static public function size(_h:Hash):StdTypes.Int {
        return stdgo._internal.crypto.Crypto_hash_static_extension.Hash_static_extension.size(_h);
    }
    static public function string(_h:Hash):String {
        return stdgo._internal.crypto.Crypto_hash_static_extension.Hash_static_extension.string(_h);
    }
    static public function hashFunc(_h:Hash):Hash {
        return stdgo._internal.crypto.Crypto_hash_static_extension.Hash_static_extension.hashFunc(_h);
    }
}
typedef PublicKeyPointer = stdgo._internal.crypto.Crypto_publickeypointer.PublicKeyPointer;
class PublicKey_static_extension {

}
typedef PrivateKeyPointer = stdgo._internal.crypto.Crypto_privatekeypointer.PrivateKeyPointer;
class PrivateKey_static_extension {

}
typedef DecrypterOptsPointer = stdgo._internal.crypto.Crypto_decrypteroptspointer.DecrypterOptsPointer;
class DecrypterOpts_static_extension {

}
/**
    * Package crypto collects common cryptographic constants.
**/
class Crypto {
    /**
        * RegisterHash registers a function that returns a new instance of the given
        * hash function. This is intended to be called from the init function in
        * packages that implement hash functions.
    **/
    static public inline function registerHash(_h:Hash, _f:() -> stdgo._internal.hash.Hash_hash.Hash):Void {
        final _f = _f;
        stdgo._internal.crypto.Crypto_registerhash.registerHash(_h, _f);
    }
}
