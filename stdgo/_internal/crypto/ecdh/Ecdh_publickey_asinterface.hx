package stdgo._internal.crypto.ecdh;
class PublicKey_asInterface {
    @:keep
    @:tdfield
    public dynamic function curve():stdgo._internal.crypto.ecdh.Ecdh_curve.Curve return @:_0 __self__.value.curve();
    @:keep
    @:tdfield
    public dynamic function equal(_x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool return @:_0 __self__.value.equal(_x);
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.ecdh.Ecdh_publickeypointer.PublicKeyPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
