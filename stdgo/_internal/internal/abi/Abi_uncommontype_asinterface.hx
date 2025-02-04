package stdgo._internal.internal.abi;
class UncommonType_asInterface {
    @:keep
    @:tdfield
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_0 __self__.value.exportedMethods();
    @:keep
    @:tdfield
    public dynamic function methods():stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_0 __self__.value.methods();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.abi.Abi_uncommontypepointer.UncommonTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
