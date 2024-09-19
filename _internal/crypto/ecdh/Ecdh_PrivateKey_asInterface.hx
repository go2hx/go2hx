package _internal.crypto.ecdh;
class PrivateKey_asInterface {
    @:keep
    public dynamic function public_():stdgo._internal.crypto.Crypto_PublicKey.PublicKey return __self__.value.public_();
    @:keep
    public dynamic function publicKey():stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> return __self__.value.publicKey();
    @:keep
    public dynamic function curve():_internal.crypto.ecdh.Ecdh_Curve.Curve return __self__.value.curve();
    @:keep
    public dynamic function equal(_x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool return __self__.value.equal(_x);
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:keep
    public dynamic function ecdh(_remote:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.ecdh(_remote);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
