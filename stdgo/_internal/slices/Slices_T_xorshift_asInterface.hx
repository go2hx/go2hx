package stdgo._internal.slices;
class T_xorshift_asInterface {
    @:keep
    @:pointer
    public dynamic function next():stdgo.GoUInt64 return __self__.value.next(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.slices.Slices_T_xorshift.T_xorshift>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
