package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
class Duration_asInterface {
    @:keep
    public dynamic function abs():stdgo._internal.time.Time_Duration.Duration return __self__.value.abs();
    @:keep
    public dynamic function round(_m:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration return __self__.value.round(_m);
    @:keep
    public dynamic function truncate(_m:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration return __self__.value.truncate(_m);
    @:keep
    public dynamic function hours():stdgo.GoFloat64 return __self__.value.hours();
    @:keep
    public dynamic function minutes():stdgo.GoFloat64 return __self__.value.minutes();
    @:keep
    public dynamic function seconds():stdgo.GoFloat64 return __self__.value.seconds();
    @:keep
    public dynamic function milliseconds():stdgo.GoInt64 return __self__.value.milliseconds();
    @:keep
    public dynamic function microseconds():stdgo.GoInt64 return __self__.value.microseconds();
    @:keep
    public dynamic function nanoseconds():stdgo.GoInt64 return __self__.value.nanoseconds();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
