package stdgo._internal.crypto.internal.boring;
@:keep @:allow(stdgo._internal.crypto.internal.boring.Boring.PrivateKeyECDH_asInterface) class PrivateKeyECDH_static_extension {
    @:keep
    @:tdfield
    static public function publicKey( _:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH> = _;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/notboring.go#L122"
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
}
