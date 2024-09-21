package _internal.vendor.golang_dot_org.x.text.transform;
class T_link_asInterface {
    @:keep
    public dynamic function _dst():stdgo.Slice<stdgo.GoUInt8> return __self__.value._dst();
    @:keep
    public dynamic function _src():stdgo.Slice<stdgo.GoUInt8> return __self__.value._src();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
