package stdgo._internal.internal.abi;
class RegArgs_asInterface {
    @:keep
    public dynamic function intRegArgAddr(_reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer return __self__.value.intRegArgAddr(_reg, _argSize);
    @:keep
    public dynamic function dump():Void __self__.value.dump();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.abi.Abi_RegArgs.RegArgs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
