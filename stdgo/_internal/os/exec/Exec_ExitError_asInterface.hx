package stdgo._internal.os.exec;
class ExitError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    @:embedded
    public dynamic function _userTime():stdgo._internal.time.Time_Duration.Duration return __self__.value._userTime();
    @:embedded
    public dynamic function _systemTime():stdgo._internal.time.Time_Duration.Duration return __self__.value._systemTime();
    @:embedded
    public dynamic function _sysUsage():stdgo.AnyInterface return __self__.value._sysUsage();
    @:embedded
    public dynamic function _sys():stdgo.AnyInterface return __self__.value._sys();
    @:embedded
    public dynamic function _success():Bool return __self__.value._success();
    @:embedded
    public dynamic function _exited():Bool return __self__.value._exited();
    @:embedded
    public dynamic function userTime():stdgo._internal.time.Time_Duration.Duration return __self__.value.userTime();
    @:embedded
    public dynamic function systemTime():stdgo._internal.time.Time_Duration.Duration return __self__.value.systemTime();
    @:embedded
    public dynamic function sysUsage():stdgo.AnyInterface return __self__.value.sysUsage();
    @:embedded
    public dynamic function sys():stdgo.AnyInterface return __self__.value.sys();
    @:embedded
    public dynamic function success():Bool return __self__.value.success();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function pid():stdgo.GoInt return __self__.value.pid();
    @:embedded
    public dynamic function exited():Bool return __self__.value.exited();
    @:embedded
    public dynamic function exitCode():stdgo.GoInt return __self__.value.exitCode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.os.exec.Exec_ExitError.ExitError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
