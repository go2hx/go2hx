package stdgo._internal.runtime.cgo;
class Handle_asInterface {
    @:keep
    public dynamic function delete():Void __self__.value.delete();
    @:keep
    public dynamic function value():stdgo.AnyInterface return __self__.value.value();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.cgo.Cgo_Handle.Handle>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
