package stdgo._internal.crypto.ecdsa;
class T_zr_asInterface {
    @:keep
    @:tdfield
    public dynamic function read(_dst:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_dst);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.ecdsa.Ecdsa_t_zrpointer.T_zrPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
