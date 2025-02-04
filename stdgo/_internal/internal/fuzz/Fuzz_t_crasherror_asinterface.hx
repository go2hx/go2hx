package stdgo._internal.internal.fuzz;
class T_crashError_asInterface {
    @:keep
    @:tdfield
    public dynamic function crashPath():stdgo.GoString return @:_0 __self__.value.crashPath();
    @:keep
    @:tdfield
    public dynamic function unwrap():stdgo.Error return @:_0 __self__.value.unwrap();
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_crasherrorpointer.T_crashErrorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
