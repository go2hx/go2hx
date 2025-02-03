package stdgo.crypto.rsa;
class PrivateKey_static_extension {
    static public function precompute(_priv:PrivateKey):Void {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.precompute(_priv);
    }
    static public function validate(_priv:PrivateKey):stdgo.Error {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.validate(_priv);
    }
    static public function decrypt(_priv:PrivateKey, _rand:stdgo._internal.io.Io_Reader.Reader, _ciphertext:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_DecrypterOpts.DecrypterOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.decrypt(_priv, _rand, _ciphertext, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sign(_priv:PrivateKey, _rand:stdgo._internal.io.Io_Reader.Reader, _digest:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        final _digest = ([for (i in _digest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.sign(_priv, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function equal(_priv:PrivateKey, _x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.equal(_priv, _x);
    }
    static public function public_(_priv:PrivateKey):stdgo._internal.crypto.Crypto_PublicKey.PublicKey {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.public_(_priv);
    }
    public static function size(__self__:stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey):StdTypes.Int {
        return stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.size(__self__);
    }
}
