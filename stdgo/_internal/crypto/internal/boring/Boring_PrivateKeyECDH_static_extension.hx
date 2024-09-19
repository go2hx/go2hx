package stdgo._internal.crypto.internal.boring;
@:keep @:allow(stdgo._internal.crypto.internal.boring.Boring.PrivateKeyECDH_asInterface) class PrivateKeyECDH_static_extension {
    @:keep
    static public function publicKey( _:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH> = _;
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
}
