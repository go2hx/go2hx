package stdgo._internal.crypto.rsa;
class PSSOptions_asInterface {
    @:keep
    public dynamic function _saltLength():stdgo.GoInt return __self__.value._saltLength();
    @:keep
    public dynamic function hashFunc():stdgo._internal.crypto.Crypto_Hash.Hash return __self__.value.hashFunc();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
