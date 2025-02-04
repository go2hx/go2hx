package stdgo._internal.os;
class ProcessState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _systemTime():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._systemTime();
    @:keep
    @:tdfield
    public dynamic function _userTime():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._userTime();
    @:keep
    @:tdfield
    public dynamic function exitCode():stdgo.GoInt return @:_0 __self__.value.exitCode();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _sysUsage():stdgo.AnyInterface return @:_0 __self__.value._sysUsage();
    @:keep
    @:tdfield
    public dynamic function _sys():stdgo.AnyInterface return @:_0 __self__.value._sys();
    @:keep
    @:tdfield
    public dynamic function _success():Bool return @:_0 __self__.value._success();
    @:keep
    @:tdfield
    public dynamic function _exited():Bool return @:_0 __self__.value._exited();
    @:keep
    @:tdfield
    public dynamic function pid():stdgo.GoInt return @:_0 __self__.value.pid();
    @:keep
    @:tdfield
    public dynamic function sysUsage():stdgo.AnyInterface return @:_0 __self__.value.sysUsage();
    @:keep
    @:tdfield
    public dynamic function sys():stdgo.AnyInterface return @:_0 __self__.value.sys();
    @:keep
    @:tdfield
    public dynamic function success():Bool return @:_0 __self__.value.success();
    @:keep
    @:tdfield
    public dynamic function exited():Bool return @:_0 __self__.value.exited();
    @:keep
    @:tdfield
    public dynamic function systemTime():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.systemTime();
    @:keep
    @:tdfield
    public dynamic function userTime():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.userTime();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.Os_processstatepointer.ProcessStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
