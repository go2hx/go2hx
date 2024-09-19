package _internal.vendor.golang_dot_org.x.text.unicode.norm;
class T_streamSafe_asInterface {
    @:keep
    public dynamic function _isMax():Bool return __self__.value._isMax();
    @:keep
    @:pointer
    public dynamic function _backwards(_p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState return __self__.value._backwards(__self__, _p);
    @:keep
    @:pointer
    public dynamic function _next(_p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState return __self__.value._next(__self__, _p);
    @:keep
    @:pointer
    public dynamic function _first(_p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Void __self__.value._first(__self__, _p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
