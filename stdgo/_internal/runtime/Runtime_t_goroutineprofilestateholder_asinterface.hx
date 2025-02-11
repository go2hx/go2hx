package stdgo._internal.runtime;
class T_goroutineProfileStateHolder_asInterface {
    @:keep
    @:tdfield
    public dynamic function compareAndSwap(_old:stdgo._internal.runtime.Runtime_t_goroutineprofilestate.T_goroutineProfileState, _new_:stdgo._internal.runtime.Runtime_t_goroutineprofilestate.T_goroutineProfileState):Bool return @:_0 __self__.value.compareAndSwap(_old, _new_);
    @:keep
    @:tdfield
    public dynamic function store(_value:stdgo._internal.runtime.Runtime_t_goroutineprofilestate.T_goroutineProfileState):Void @:_0 __self__.value.store(_value);
    @:keep
    @:tdfield
    public dynamic function load():stdgo._internal.runtime.Runtime_t_goroutineprofilestate.T_goroutineProfileState return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_goroutineprofilestateholderpointer.T_goroutineProfileStateHolderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
