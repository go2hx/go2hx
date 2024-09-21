package _internal.vendor.golang_dot_org.x.text.unicode.norm;
class T_formInfo_asInterface {
    @:keep
    public dynamic function _quickSpan(_src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _i:stdgo.GoInt, _end:stdgo.GoInt, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._quickSpan(_src, _i, _end, _atEOF);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
