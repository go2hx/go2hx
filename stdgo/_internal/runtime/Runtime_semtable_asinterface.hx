package stdgo._internal.runtime;
class SemTable_asInterface {
    @:keep
    @:tdfield
    public dynamic function dequeue(_addr:stdgo.Pointer<stdgo.GoUInt32>):Bool return @:_0 __self__.value.dequeue(_addr);
    @:keep
    @:tdfield
    public dynamic function enqueue(_addr:stdgo.Pointer<stdgo.GoUInt32>):Void @:_0 __self__.value.enqueue(_addr);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rootFor(_0:stdgo.Pointer<stdgo.GoUInt32>):stdgo.Ref<stdgo._internal.runtime.Runtime_t_semaroot.T_semaRoot> return @:_0 __self__.value._rootFor(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_semtablepointer.SemTablePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
