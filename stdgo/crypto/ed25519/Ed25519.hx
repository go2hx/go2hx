package stdgo.crypto.ed25519;
var publicKeySize : stdgo.GoUInt64 = 32i32;
var privateKeySize : stdgo.GoUInt64 = 64i32;
var signatureSize : stdgo.GoUInt64 = 64i32;
var seedSize : stdgo.GoUInt64 = 32i32;
typedef Options = stdgo._internal.crypto.ed25519.Ed25519_options.Options;
typedef PublicKey = stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey;
typedef OptionsPointer = stdgo._internal.crypto.ed25519.Ed25519_optionspointer.OptionsPointer;
typedef PublicKeyPointer = stdgo._internal.crypto.ed25519.Ed25519_publickeypointer.PublicKeyPointer;
typedef PrivateKeyPointer = stdgo._internal.crypto.ed25519.Ed25519_privatekeypointer.PrivateKeyPointer;
/**
    * Package ed25519 implements the Ed25519 signature algorithm. See
    * https://ed25519.cr.yp.to/.
    * 
    * These functions are also compatible with the “Ed25519” function defined in
    * RFC 8032. However, unlike RFC 8032's formulation, this package's private key
    * representation includes a public key suffix to make multiple signing
    * operations with the same key more efficient. This package refers to the RFC
    * 8032 private key as the “seed”.
**/
class Ed25519 {
    /**
        * GenerateKey generates a public/private key pair using entropy from rand.
        * If rand is nil, [crypto/rand.Reader] will be used.
        * 
        * The output of this function is deterministic, and equivalent to reading
        * [SeedSize] bytes from rand, and passing them to [NewKeyFromSeed].
    **/
    static public inline function generateKey(_rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey; var _1 : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey; var _2 : stdgo.Error; } return stdgo._internal.crypto.ed25519.Ed25519_generatekey.generateKey(_rand);
    /**
        * NewKeyFromSeed calculates a private key from a seed. It will panic if
        * len(seed) is not [SeedSize]. This function is provided for interoperability
        * with RFC 8032. RFC 8032's private keys correspond to seeds in this
        * package.
    **/
    static public inline function newKeyFromSeed(_seed:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey return stdgo._internal.crypto.ed25519.Ed25519_newkeyfromseed.newKeyFromSeed(_seed);
    /**
        * Sign signs the message with privateKey and returns a signature. It will
        * panic if len(privateKey) is not [PrivateKeySize].
    **/
    static public inline function sign(_privateKey:PrivateKey, _message:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.crypto.ed25519.Ed25519_sign.sign(_privateKey, _message);
    /**
        * Verify reports whether sig is a valid signature of message by publicKey. It
        * will panic if len(publicKey) is not [PublicKeySize].
    **/
    static public inline function verify(_publicKey:PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_publicKey, _message, _sig);
    /**
        * VerifyWithOptions reports whether sig is a valid signature of message by
        * publicKey. A valid signature is indicated by returning a nil error. It will
        * panic if len(publicKey) is not [PublicKeySize].
        * 
        * If opts.Hash is [crypto.SHA512], the pre-hashed variant Ed25519ph is used and
        * message is expected to be a SHA-512 hash, otherwise opts.Hash must be
        * [crypto.Hash](0) and the message must not be hashed, as Ed25519 performs two
        * passes over messages to be signed.
    **/
    static public inline function verifyWithOptions(_publicKey:PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>):stdgo.Error return stdgo._internal.crypto.ed25519.Ed25519_verifywithoptions.verifyWithOptions(_publicKey, _message, _sig, _opts);
}
