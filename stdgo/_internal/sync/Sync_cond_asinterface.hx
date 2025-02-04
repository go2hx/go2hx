package stdgo._internal.sync;
class Cond_asInterface {
    @:keep
    @:tdfield
    public dynamic function broadcast():Void @:_0 __self__.value.broadcast();
    @:keep
    @:tdfield
    public dynamic function signal():Void @:_0 __self__.value.signal();
    @:keep
    @:tdfield
    public dynamic function wait_():Void @:_0 __self__.value.wait_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.Sync_condpointer.CondPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
