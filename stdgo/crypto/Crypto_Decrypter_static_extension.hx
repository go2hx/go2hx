package stdgo.crypto;
class Decrypter_static_extension {
    static public function decrypt(t:stdgo._internal.crypto.Crypto_Decrypter.Decrypter, _rand:stdgo._internal.io.Io_Reader.Reader, _msg:Array<std.UInt>, _opts:DecrypterOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.Crypto_Decrypter_static_extension.Decrypter_static_extension.decrypt(t, _rand, _msg, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function public_(t:stdgo._internal.crypto.Crypto_Decrypter.Decrypter):PublicKey {
        return stdgo._internal.crypto.Crypto_Decrypter_static_extension.Decrypter_static_extension.public_(t);
    }
}
