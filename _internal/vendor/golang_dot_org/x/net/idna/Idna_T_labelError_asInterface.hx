package _internal.vendor.golang_dot_org.x.net.idna;
class T_labelError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    @:keep
    public dynamic function _code():stdgo.GoString return __self__.value._code();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
