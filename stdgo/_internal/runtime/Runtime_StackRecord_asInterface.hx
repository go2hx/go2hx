package stdgo._internal.runtime;
class StackRecord_asInterface {
    @:keep
    public dynamic function stack():stdgo.Slice<stdgo.GoUIntptr> return __self__.value.stack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}