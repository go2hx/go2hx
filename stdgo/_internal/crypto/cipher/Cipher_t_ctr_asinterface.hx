package stdgo._internal.crypto.cipher;
class T_ctr_asInterface {
    @:keep
    @:tdfield
    public dynamic function xORKeyStream(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.xORKeyStream(_dst, _src);
    @:keep
    @:tdfield
    public dynamic function _refill():Void @:_0 __self__.value._refill();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.cipher.Cipher_t_ctrpointer.T_ctrPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
