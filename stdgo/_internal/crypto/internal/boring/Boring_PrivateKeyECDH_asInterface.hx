package stdgo._internal.crypto.internal.boring;
import _internal.crypto.internal.boring.sig.Sig;
class PrivateKeyECDH_asInterface {
    @:keep
    @:tdfield
    public dynamic function publicKey():{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH>; var _1 : stdgo.Error; } return @:_0 __self__.value.publicKey();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDHPointer.PrivateKeyECDHPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
