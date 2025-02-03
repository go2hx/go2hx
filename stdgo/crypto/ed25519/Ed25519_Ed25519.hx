package stdgo.crypto.ed25519;
/**
    Package ed25519 implements the Ed25519 signature algorithm. See
    https://ed25519.cr.yp.to/.
    
    These functions are also compatible with the “Ed25519” function defined in
    RFC 8032. However, unlike RFC 8032's formulation, this package's private key
    representation includes a public key suffix to make multiple signing
    operations with the same key more efficient. This package refers to the RFC
    8032 private key as the “seed”.
**/
class Ed25519 {
    /**
        GenerateKey generates a public/private key pair using entropy from rand.
        If rand is nil, [crypto/rand.Reader] will be used.
        
        The output of this function is deterministic, and equivalent to reading
        [SeedSize] bytes from rand, and passing them to [NewKeyFromSeed].
    **/
    static public inline function generateKey(_rand:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple.Tuple3<PublicKey, PrivateKey, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.ed25519.Ed25519_generateKey.generateKey(_rand);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        NewKeyFromSeed calculates a private key from a seed. It will panic if
        len(seed) is not [SeedSize]. This function is provided for interoperability
        with RFC 8032. RFC 8032's private keys correspond to seeds in this
        package.
    **/
    static public inline function newKeyFromSeed(_seed:Array<std.UInt>):PrivateKey {
        final _seed = ([for (i in _seed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.ed25519.Ed25519_newKeyFromSeed.newKeyFromSeed(_seed);
    }
    /**
        Sign signs the message with privateKey and returns a signature. It will
        panic if len(privateKey) is not [PrivateKeySize].
    **/
    static public inline function sign(_privateKey:PrivateKey, _message:Array<std.UInt>):Array<std.UInt> {
        final _message = ([for (i in _message) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.ed25519.Ed25519_sign.sign(_privateKey, _message)) i];
    }
    /**
        Verify reports whether sig is a valid signature of message by publicKey. It
        will panic if len(publicKey) is not [PublicKeySize].
    **/
    static public inline function verify(_publicKey:PublicKey, _message:Array<std.UInt>, _sig:Array<std.UInt>):Bool {
        final _message = ([for (i in _message) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_publicKey, _message, _sig);
    }
    /**
        VerifyWithOptions reports whether sig is a valid signature of message by
        publicKey. A valid signature is indicated by returning a nil error. It will
        panic if len(publicKey) is not [PublicKeySize].
        
        If opts.Hash is [crypto.SHA512], the pre-hashed variant Ed25519ph is used and
        message is expected to be a SHA-512 hash, otherwise opts.Hash must be
        [crypto.Hash](0) and the message must not be hashed, as Ed25519 performs two
        passes over messages to be signed.
    **/
    static public inline function verifyWithOptions(_publicKey:PublicKey, _message:Array<std.UInt>, _sig:Array<std.UInt>, _opts:Options):stdgo.Error {
        final _message = ([for (i in _message) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_Options.Options>);
        return stdgo._internal.crypto.ed25519.Ed25519_verifyWithOptions.verifyWithOptions(_publicKey, _message, _sig, _opts);
    }
}
