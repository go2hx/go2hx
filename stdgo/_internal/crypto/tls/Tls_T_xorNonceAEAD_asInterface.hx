package stdgo._internal.crypto.tls;
class T_xorNonceAEAD_asInterface {
    @:keep
    public dynamic function open(_out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.open(_out, _nonce, _ciphertext, _additionalData);
    @:keep
    public dynamic function seal(_out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.seal(_out, _nonce, _plaintext, _additionalData);
    @:keep
    public dynamic function _explicitNonceLen():stdgo.GoInt return __self__.value._explicitNonceLen();
    @:keep
    public dynamic function overhead():stdgo.GoInt return __self__.value.overhead();
    @:keep
    public dynamic function nonceSize():stdgo.GoInt return __self__.value.nonceSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_xorNonceAEAD.T_xorNonceAEAD>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
