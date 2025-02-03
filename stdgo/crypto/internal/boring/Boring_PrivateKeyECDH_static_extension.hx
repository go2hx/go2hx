package stdgo.crypto.internal.boring;
class PrivateKeyECDH_static_extension {
    static public function publicKey(_:PrivateKeyECDH):stdgo.Tuple<PublicKeyECDH, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH_static_extension.PrivateKeyECDH_static_extension.publicKey(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
