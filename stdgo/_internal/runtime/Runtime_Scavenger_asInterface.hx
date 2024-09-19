package stdgo._internal.runtime;
class Scavenger_asInterface {
    @:keep
    public dynamic function stop():Void __self__.value.stop();
    @:keep
    public dynamic function wake():Void __self__.value.wake();
    @:keep
    public dynamic function released():stdgo.GoUIntptr return __self__.value.released();
    @:keep
    public dynamic function blockUntilParked(_timeout:stdgo.GoInt64):Bool return __self__.value.blockUntilParked(_timeout);
    @:keep
    public dynamic function start():Void __self__.value.start();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_Scavenger.Scavenger>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
