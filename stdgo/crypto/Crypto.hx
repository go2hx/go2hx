package stdgo.crypto;
/**
    // Package crypto collects common cryptographic constants.
**/
private var __go2hxdoc__package : Bool;
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
typedef Signer = stdgo._internal.crypto.Crypto.Signer;
typedef SignerOpts = stdgo._internal.crypto.Crypto.SignerOpts;
typedef Decrypter = stdgo._internal.crypto.Crypto.Decrypter;
typedef Hash = stdgo._internal.crypto.Crypto.Hash;
typedef PublicKey = stdgo._internal.crypto.Crypto.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.Crypto.PrivateKey;
typedef DecrypterOpts = stdgo._internal.crypto.Crypto.DecrypterOpts;
/**
    // RegisterHash registers a function that returns a new instance of the given
    // hash function. This is intended to be called from the init function in
    // packages that implement hash functions.
**/
inline function registerHash(h:Hash, f:() -> stdgo._internal.hash.Hash.Hash):Void throw "not implemented";
@:invalid typedef Hash_asInterface = Dynamic;
@:invalid typedef Hash_static_extension = Dynamic;
