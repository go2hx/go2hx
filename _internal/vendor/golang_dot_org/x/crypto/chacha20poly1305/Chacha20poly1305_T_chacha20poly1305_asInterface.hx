package _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305;
class T_chacha20poly1305_asInterface {
    @:keep
    public dynamic function _open(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._open(_dst, _nonce, _ciphertext, _additionalData);
    @:keep
    public dynamic function _seal(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._seal(_dst, _nonce, _plaintext, _additionalData);
    @:keep
    public dynamic function _openGeneric(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._openGeneric(_dst, _nonce, _ciphertext, _additionalData);
    @:keep
    public dynamic function _sealGeneric(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._sealGeneric(_dst, _nonce, _plaintext, _additionalData);
    @:keep
    public dynamic function open(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.open(_dst, _nonce, _ciphertext, _additionalData);
    @:keep
    public dynamic function seal(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.seal(_dst, _nonce, _plaintext, _additionalData);
    @:keep
    public dynamic function overhead():stdgo.GoInt return __self__.value.overhead();
    @:keep
    public dynamic function nonceSize():stdgo.GoInt return __self__.value.nonceSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
