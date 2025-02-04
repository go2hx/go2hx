package stdgo._internal.time;
class Duration_asInterface {
    @:keep
    @:tdfield
    public dynamic function abs():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.abs();
    @:keep
    @:tdfield
    public dynamic function round(_m:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.round(_m);
    @:keep
    @:tdfield
    public dynamic function truncate(_m:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.truncate(_m);
    @:keep
    @:tdfield
    public dynamic function hours():stdgo.GoFloat64 return @:_0 __self__.value.hours();
    @:keep
    @:tdfield
    public dynamic function minutes():stdgo.GoFloat64 return @:_0 __self__.value.minutes();
    @:keep
    @:tdfield
    public dynamic function seconds():stdgo.GoFloat64 return @:_0 __self__.value.seconds();
    @:keep
    @:tdfield
    public dynamic function milliseconds():stdgo.GoInt64 return @:_0 __self__.value.milliseconds();
    @:keep
    @:tdfield
    public dynamic function microseconds():stdgo.GoInt64 return @:_0 __self__.value.microseconds();
    @:keep
    @:tdfield
    public dynamic function nanoseconds():stdgo.GoInt64 return @:_0 __self__.value.nanoseconds();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.time.Time_durationpointer.DurationPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
