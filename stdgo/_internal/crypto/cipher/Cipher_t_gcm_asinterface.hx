package stdgo._internal.crypto.cipher;
class T_gcm_asInterface {
    @:keep
    @:tdfield
    public dynamic function _auth(_out:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>, _tagMask:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void @:_0 __self__.value._auth(_out, _ciphertext, _additionalData, _tagMask);
    @:keep
    @:tdfield
    public dynamic function _deriveCounter(_counter:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _nonce:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._deriveCounter(_counter, _nonce);
    @:keep
    @:tdfield
    public dynamic function _counterCrypt(_out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>, _counter:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void @:_0 __self__.value._counterCrypt(_out, _in, _counter);
    @:keep
    @:tdfield
    public dynamic function _update(_y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>, _data:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._update(_y, _data);
    @:keep
    @:tdfield
    public dynamic function _updateBlocks(_y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>, _blocks:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._updateBlocks(_y, _blocks);
    @:keep
    @:tdfield
    public dynamic function _mul(_y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>):Void @:_0 __self__.value._mul(_y);
    @:keep
    @:tdfield
    public dynamic function open(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_dst, _nonce, _ciphertext, _data);
    @:keep
    @:tdfield
    public dynamic function seal(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.seal(_dst, _nonce, _plaintext, _data);
    @:keep
    @:tdfield
    public dynamic function overhead():stdgo.GoInt return @:_0 __self__.value.overhead();
    @:keep
    @:tdfield
    public dynamic function nonceSize():stdgo.GoInt return @:_0 __self__.value.nonceSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.cipher.Cipher_t_gcmpointer.T_gcmPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
