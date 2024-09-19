package stdgo._internal.errors;
class T_joinError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Slice<stdgo.Error> return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.errors.Errors_T_joinError.T_joinError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
