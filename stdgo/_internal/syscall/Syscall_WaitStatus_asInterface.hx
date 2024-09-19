package stdgo._internal.syscall;
class WaitStatus_asInterface {
    @:keep
    public dynamic function trapCause():stdgo.GoInt return __self__.value.trapCause();
    @:keep
    public dynamic function stopSignal():stdgo._internal.syscall.Syscall_Signal.Signal return __self__.value.stopSignal();
    @:keep
    public dynamic function continued():Bool return __self__.value.continued();
    @:keep
    public dynamic function stopped():Bool return __self__.value.stopped();
    @:keep
    public dynamic function coreDump():Bool return __self__.value.coreDump();
    @:keep
    public dynamic function signal():stdgo._internal.syscall.Syscall_Signal.Signal return __self__.value.signal();
    @:keep
    public dynamic function signaled():Bool return __self__.value.signaled();
    @:keep
    public dynamic function exitStatus():stdgo.GoInt return __self__.value.exitStatus();
    @:keep
    public dynamic function exited():Bool return __self__.value.exited();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
