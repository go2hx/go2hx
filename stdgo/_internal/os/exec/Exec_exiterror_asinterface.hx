package stdgo._internal.os.exec;
class ExitError_asInterface {
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _userTime():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._userTime();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _systemTime():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._systemTime();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _sysUsage():stdgo.AnyInterface return @:_0 __self__.value._sysUsage();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _sys():stdgo.AnyInterface return @:_0 __self__.value._sys();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _success():Bool return @:_0 __self__.value._success();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _exited():Bool return @:_0 __self__.value._exited();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function userTime():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.userTime();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function systemTime():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.systemTime();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function sysUsage():stdgo.AnyInterface return @:_0 __self__.value.sysUsage();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function sys():stdgo.AnyInterface return @:_0 __self__.value.sys();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function success():Bool return @:_0 __self__.value.success();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pid():stdgo.GoInt return @:_0 __self__.value.pid();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function exited():Bool return @:_0 __self__.value.exited();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function exitCode():stdgo.GoInt return @:_0 __self__.value.exitCode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.exec.Exec_exiterrorpointer.ExitErrorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
