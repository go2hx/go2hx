package _internal.crypto.ecdh;
class PublicKey_asInterface {
    @:keep
    public dynamic function curve():_internal.crypto.ecdh.Ecdh_Curve.Curve return __self__.value.curve();
    @:keep
    public dynamic function equal(_x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool return __self__.value.equal(_x);
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
