package stdgo._internal.runtime;
class T_atomicMSpanPointer_asInterface {
    @:keep
    @:tdfield
    public dynamic function storeNoWB(_s:stdgo.Ref<stdgo._internal.runtime.Runtime_t_mspan.T_mspan>):Void @:_0 __self__.value.storeNoWB(_s);
    @:keep
    @:tdfield
    public dynamic function load():stdgo.Ref<stdgo._internal.runtime.Runtime_t_mspan.T_mspan> return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_atomicmspanpointerpointer.T_atomicMSpanPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
