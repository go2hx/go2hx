package stdgo._internal.runtime;
class T_atomicSpanSetSpinePointer_asInterface {
    @:keep
    @:tdfield
    public dynamic function storeNoWB(_p:stdgo._internal.runtime.Runtime_t_spansetspinepointer.T_spanSetSpinePointer):Void @:_0 __self__.value.storeNoWB(_p);
    @:keep
    @:tdfield
    public dynamic function load():stdgo._internal.runtime.Runtime_t_spansetspinepointer.T_spanSetSpinePointer return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_atomicspansetspinepointerpointer.T_atomicSpanSetSpinePointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
