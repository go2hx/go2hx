package stdgo._internal.crypto.cipher;
class T_cbcEncrypter_asInterface {
    @:keep
    public dynamic function setIV(_iv:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.setIV(_iv);
    @:keep
    public dynamic function cryptBlocks(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.cryptBlocks(_dst, _src);
    @:keep
    public dynamic function blockSize():stdgo.GoInt return __self__.value.blockSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypter.T_cbcEncrypter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
