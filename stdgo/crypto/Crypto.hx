package stdgo.crypto;
var mD4 : Hash = 1i32;
var mD5 : Hash = 2i32;
var sHA1 : Hash = 3i32;
var sHA224 : Hash = 4i32;
var sHA256 : Hash = 5i32;
var sHA384 : Hash = 6i32;
var sHA512 : Hash = 7i32;
var mD5SHA1 : Hash = 8i32;
var rIPEMD160 : Hash = 9i32;
var sHA3_224 : Hash = 10i32;
var sHA3_256 : Hash = 11i32;
var sHA3_384 : Hash = 12i32;
var sHA3_512 : Hash = 13i32;
var sHA512_224 : Hash = 14i32;
var sHA512_256 : Hash = 15i32;
var bLAKE2s_256 : Hash = 16i32;
var bLAKE2b_256 : Hash = 17i32;
var bLAKE2b_384 : Hash = 18i32;
var bLAKE2b_512 : Hash = 19i32;
typedef Signer = stdgo._internal.crypto.Crypto_signer.Signer;
typedef SignerOpts = stdgo._internal.crypto.Crypto_signeropts.SignerOpts;
typedef Decrypter = stdgo._internal.crypto.Crypto_decrypter.Decrypter;
typedef Hash = stdgo._internal.crypto.Crypto_hash.Hash;
typedef PublicKey = stdgo._internal.crypto.Crypto_publickey.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.Crypto_privatekey.PrivateKey;
typedef DecrypterOpts = stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts;
typedef HashPointer = stdgo._internal.crypto.Crypto_hashpointer.HashPointer;
typedef PublicKeyPointer = stdgo._internal.crypto.Crypto_publickeypointer.PublicKeyPointer;
typedef PrivateKeyPointer = stdgo._internal.crypto.Crypto_privatekeypointer.PrivateKeyPointer;
typedef DecrypterOptsPointer = stdgo._internal.crypto.Crypto_decrypteroptspointer.DecrypterOptsPointer;
/**
    * Package crypto collects common cryptographic constants.
**/
class Crypto {
    /**
        * RegisterHash registers a function that returns a new instance of the given
        * hash function. This is intended to be called from the init function in
        * packages that implement hash functions.
    **/
    static public inline function registerHash(_h:Hash, _f:() -> stdgo._internal.hash.Hash_hash.Hash):Void stdgo._internal.crypto.Crypto_registerhash.registerHash(_h, _f);
}
