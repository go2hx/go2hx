package stdgo._internal.log.slog;
class Value_asInterface {
    @:keep
    @:tdfield
    public dynamic function resolve():stdgo._internal.log.slog.Slog_value.Value return @:_0 __self__.value.resolve();
    @:keep
    @:tdfield
    public dynamic function _append(_dst:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._append(_dst);
    @:keep
    @:tdfield
    public dynamic function _isEmptyGroup():Bool return @:_0 __self__.value._isEmptyGroup();
    @:keep
    @:tdfield
    public dynamic function equal(_w:stdgo._internal.log.slog.Slog_value.Value):Bool return @:_0 __self__.value.equal(_w);
    @:keep
    @:tdfield
    public dynamic function _group():stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> return @:_0 __self__.value._group();
    @:keep
    @:tdfield
    public dynamic function group():stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> return @:_0 __self__.value.group();
    @:keep
    @:tdfield
    public dynamic function logValuer():stdgo._internal.log.slog.Slog_logvaluer.LogValuer return @:_0 __self__.value.logValuer();
    @:keep
    @:tdfield
    public dynamic function _time():stdgo._internal.time.Time_time.Time return @:_0 __self__.value._time();
    @:keep
    @:tdfield
    public dynamic function time():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.time();
    @:keep
    @:tdfield
    public dynamic function _float():stdgo.GoFloat64 return @:_0 __self__.value._float();
    @:keep
    @:tdfield
    public dynamic function float64():stdgo.GoFloat64 return @:_0 __self__.value.float64();
    @:keep
    @:tdfield
    public dynamic function _duration():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._duration();
    @:keep
    @:tdfield
    public dynamic function duration():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.duration();
    @:keep
    @:tdfield
    public dynamic function _bool():Bool return @:_0 __self__.value._bool();
    @:keep
    @:tdfield
    public dynamic function bool_():Bool return @:_0 __self__.value.bool_();
    @:keep
    @:tdfield
    public dynamic function uint64():stdgo.GoUInt64 return @:_0 __self__.value.uint64();
    @:keep
    @:tdfield
    public dynamic function int64():stdgo.GoInt64 return @:_0 __self__.value.int64();
    @:keep
    @:tdfield
    public dynamic function _str():stdgo.GoString return @:_0 __self__.value._str();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function any():stdgo.AnyInterface return @:_0 __self__.value.any();
    @:keep
    @:tdfield
    public dynamic function kind():stdgo._internal.log.slog.Slog_kind.Kind return @:_0 __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_valuepointer.ValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
