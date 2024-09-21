package _internal.crypto.internal.nistec;
class T_p256Table_asInterface {
    @:keep
    public dynamic function select(_p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>, _n:stdgo.GoUInt8):Void __self__.value.select(_p, _n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.nistec.Nistec_T_p256Table.T_p256Table>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
