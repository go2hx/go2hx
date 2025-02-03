package stdgo.crypto.ed25519;
class PrivateKey_static_extension {
    static public function sign(_priv:PrivateKey, _rand:stdgo._internal.io.Io_Reader.Reader, _message:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _message = ([for (i in _message) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ed25519.Ed25519_PrivateKey_static_extension.PrivateKey_static_extension.sign(_priv, _rand, _message, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seed(_priv:PrivateKey):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.ed25519.Ed25519_PrivateKey_static_extension.PrivateKey_static_extension.seed(_priv)) i];
    }
    static public function equal(_priv:PrivateKey, _x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool {
        return stdgo._internal.crypto.ed25519.Ed25519_PrivateKey_static_extension.PrivateKey_static_extension.equal(_priv, _x);
    }
    static public function public_(_priv:PrivateKey):stdgo._internal.crypto.Crypto_PublicKey.PublicKey {
        return stdgo._internal.crypto.ed25519.Ed25519_PrivateKey_static_extension.PrivateKey_static_extension.public_(_priv);
    }
}
