package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
class Timer_asInterface {
    @:keep
    @:tdfield
    public dynamic function reset(_d:stdgo._internal.time.Time_Duration.Duration):Bool return @:_0 __self__.value.reset(_d);
    @:keep
    @:tdfield
    public dynamic function stop():Bool return @:_0 __self__.value.stop();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.time.Time_TimerPointer.TimerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
