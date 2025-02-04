package stdgo._internal.crypto.internal.boring;
@:keep @:allow(stdgo._internal.crypto.internal.boring.Boring.PublicKeyECDH_asInterface) class PublicKeyECDH_static_extension {
    @:keep
    @:tdfield
    static public function bytes( _:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH> = _;
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
}
