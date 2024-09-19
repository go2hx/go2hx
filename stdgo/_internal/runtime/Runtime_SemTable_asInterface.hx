package stdgo._internal.runtime;
class SemTable_asInterface {
    @:keep
    public dynamic function dequeue(_addr:stdgo.Pointer<stdgo.GoUInt32>):Bool return __self__.value.dequeue(_addr);
    @:keep
    public dynamic function enqueue(_addr:stdgo.Pointer<stdgo.GoUInt32>):Void __self__.value.enqueue(_addr);
    @:embedded
    public dynamic function _rootFor(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.Ref<stdgo._internal.runtime.Runtime_T_semaRoot.T_semaRoot> return __self__.value._rootFor(_addr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_SemTable.SemTable>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
