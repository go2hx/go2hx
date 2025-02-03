package stdgo.crypto;
class Signer_static_extension {
    static public function sign(t:stdgo._internal.crypto.Crypto_Signer.Signer, _rand:stdgo._internal.io.Io_Reader.Reader, _digest:Array<std.UInt>, _opts:SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _digest = ([for (i in _digest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.Crypto_Signer_static_extension.Signer_static_extension.sign(t, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function public_(t:stdgo._internal.crypto.Crypto_Signer.Signer):PublicKey {
        return stdgo._internal.crypto.Crypto_Signer_static_extension.Signer_static_extension.public_(t);
    }
}
