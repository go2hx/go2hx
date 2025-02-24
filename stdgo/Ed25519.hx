package stdgo;
final publicKeySize : haxe.UInt64 = stdgo._internal.crypto.ed25519.Ed25519_publickeysize.publicKeySize;
final privateKeySize : haxe.UInt64 = stdgo._internal.crypto.ed25519.Ed25519_privatekeysize.privateKeySize;
final signatureSize : haxe.UInt64 = stdgo._internal.crypto.ed25519.Ed25519_signaturesize.signatureSize;
final seedSize : haxe.UInt64 = stdgo._internal.crypto.ed25519.Ed25519_seedsize.seedSize;
@:structInit @:using(stdgo.crypto.ed25519.Ed25519.Options_static_extension) abstract Options(stdgo._internal.crypto.ed25519.Ed25519_options.Options) from stdgo._internal.crypto.ed25519.Ed25519_options.Options to stdgo._internal.crypto.ed25519.Ed25519_options.Options {
    public var hash(get, set) : stdgo._internal.crypto.Crypto_hash.Hash;
    function get_hash():stdgo._internal.crypto.Crypto_hash.Hash return this.hash;
    function set_hash(v:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.crypto.Crypto_hash.Hash {
        this.hash = v;
        return v;
    }
    public var context(get, set) : String;
    function get_context():String return this.context;
    function set_context(v:String):String {
        this.context = (v : stdgo.GoString);
        return v;
    }
    public function new(?hash:stdgo._internal.crypto.Crypto_hash.Hash, ?context:String) this = new stdgo._internal.crypto.ed25519.Ed25519_options.Options(hash, (context : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef PublicKey = stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey;
typedef OptionsPointer = stdgo._internal.crypto.ed25519.Ed25519_optionspointer.OptionsPointer;
class Options_static_extension {
    static public function hashFunc(_o:Options):stdgo._internal.crypto.Crypto_hash.Hash {
        final _o = (_o : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>);
        return stdgo._internal.crypto.ed25519.Ed25519_options_static_extension.Options_static_extension.hashFunc(_o);
    }
}
typedef PublicKeyPointer = stdgo._internal.crypto.ed25519.Ed25519_publickeypointer.PublicKeyPointer;
class PublicKey_static_extension {
    static public function equal(_pub:PublicKey, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        return stdgo._internal.crypto.ed25519.Ed25519_publickey_static_extension.PublicKey_static_extension.equal(_pub, _x);
    }
}
typedef PrivateKeyPointer = stdgo._internal.crypto.ed25519.Ed25519_privatekeypointer.PrivateKeyPointer;
class PrivateKey_static_extension {
    static public function sign(_priv:PrivateKey, _rand:stdgo._internal.io.Io_reader.Reader, _message:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _message = ([for (i in _message) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ed25519.Ed25519_privatekey_static_extension.PrivateKey_static_extension.sign(_priv, _rand, _message, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seed(_priv:PrivateKey):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.ed25519.Ed25519_privatekey_static_extension.PrivateKey_static_extension.seed(_priv)) i];
    }
    static public function equal(_priv:PrivateKey, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        return stdgo._internal.crypto.ed25519.Ed25519_privatekey_static_extension.PrivateKey_static_extension.equal(_priv, _x);
    }
    static public function public_(_priv:PrivateKey):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        return stdgo._internal.crypto.ed25519.Ed25519_privatekey_static_extension.PrivateKey_static_extension.public_(_priv);
    }
}
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
    static public inline function generateKey(_rand:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple.Tuple3<PublicKey, PrivateKey, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.ed25519.Ed25519_generatekey.generateKey(_rand);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * NewKeyFromSeed calculates a private key from a seed. It will panic if
        * len(seed) is not [SeedSize]. This function is provided for interoperability
        * with RFC 8032. RFC 8032's private keys correspond to seeds in this
        * package.
    **/
    static public inline function newKeyFromSeed(_seed:Array<std.UInt>):PrivateKey {
        final _seed = ([for (i in _seed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.ed25519.Ed25519_newkeyfromseed.newKeyFromSeed(_seed);
    }
    /**
        * Sign signs the message with privateKey and returns a signature. It will
        * panic if len(privateKey) is not [PrivateKeySize].
    **/
    static public inline function sign(_privateKey:PrivateKey, _message:Array<std.UInt>):Array<std.UInt> {
        final _message = ([for (i in _message) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.ed25519.Ed25519_sign.sign(_privateKey, _message)) i];
    }
    /**
        * Verify reports whether sig is a valid signature of message by publicKey. It
        * will panic if len(publicKey) is not [PublicKeySize].
    **/
    static public inline function verify(_publicKey:PublicKey, _message:Array<std.UInt>, _sig:Array<std.UInt>):Bool {
        final _message = ([for (i in _message) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_publicKey, _message, _sig);
    }
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
    static public inline function verifyWithOptions(_publicKey:PublicKey, _message:Array<std.UInt>, _sig:Array<std.UInt>, _opts:Options):stdgo.Error {
        final _message = ([for (i in _message) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>);
        return stdgo._internal.crypto.ed25519.Ed25519_verifywithoptions.verifyWithOptions(_publicKey, _message, _sig, _opts);
    }
}
