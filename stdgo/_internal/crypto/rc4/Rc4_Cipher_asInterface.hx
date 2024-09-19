package stdgo._internal.crypto.rc4;
class Cipher_asInterface {
    @:keep
    public dynamic function xorkeyStream(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.xorkeyStream(_dst, _src);
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.rc4.Rc4_Cipher.Cipher>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
