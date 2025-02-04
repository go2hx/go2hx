package stdgo._internal.syscall;
class WaitStatus_asInterface {
    @:keep
    @:tdfield
    public dynamic function trapCause():stdgo.GoInt return @:_0 __self__.value.trapCause();
    @:keep
    @:tdfield
    public dynamic function stopSignal():stdgo._internal.syscall.Syscall_signal.Signal return @:_0 __self__.value.stopSignal();
    @:keep
    @:tdfield
    public dynamic function continued():Bool return @:_0 __self__.value.continued();
    @:keep
    @:tdfield
    public dynamic function stopped():Bool return @:_0 __self__.value.stopped();
    @:keep
    @:tdfield
    public dynamic function coreDump():Bool return @:_0 __self__.value.coreDump();
    @:keep
    @:tdfield
    public dynamic function signal():stdgo._internal.syscall.Syscall_signal.Signal return @:_0 __self__.value.signal();
    @:keep
    @:tdfield
    public dynamic function signaled():Bool return @:_0 __self__.value.signaled();
    @:keep
    @:tdfield
    public dynamic function exitStatus():stdgo.GoInt return @:_0 __self__.value.exitStatus();
    @:keep
    @:tdfield
    public dynamic function exited():Bool return @:_0 __self__.value.exited();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.syscall.Syscall_waitstatuspointer.WaitStatusPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
