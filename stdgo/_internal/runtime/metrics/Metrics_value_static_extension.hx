package stdgo._internal.runtime.metrics;
@:keep @:allow(stdgo._internal.runtime.metrics.Metrics.Value_asInterface) class Value_static_extension {
    @:keep
    @:tdfield
    static public function float64Histogram( _v:stdgo._internal.runtime.metrics.Metrics_value.Value):stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_float64histogram.Float64Histogram> {
        @:recv var _v:stdgo._internal.runtime.metrics.Metrics_value.Value = _v?.__copy__();
        if (_v._kind != ((3 : stdgo._internal.runtime.metrics.Metrics_valuekind.ValueKind))) {
            throw stdgo.Go.toInterface(("called Float64Histogram on non-Float64Histogram metric value" : stdgo.GoString));
        };
        return (_v._pointer.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.runtime.metrics.Metrics_float64histogram.Float64Histogram", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "counts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }) }, optional : false }, { name : "buckets", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(float64_kind) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_float64histogram.Float64Histogram>);
    }
    @:keep
    @:tdfield
    static public function float64( _v:stdgo._internal.runtime.metrics.Metrics_value.Value):stdgo.GoFloat64 {
        @:recv var _v:stdgo._internal.runtime.metrics.Metrics_value.Value = _v?.__copy__();
        if (_v._kind != ((2 : stdgo._internal.runtime.metrics.Metrics_valuekind.ValueKind))) {
            throw stdgo.Go.toInterface(("called Float64 on non-float64 metric value" : stdgo.GoString));
        };
        return stdgo._internal.math.Math_float64frombits.float64frombits(_v._scalar);
    }
    @:keep
    @:tdfield
    static public function uint64( _v:stdgo._internal.runtime.metrics.Metrics_value.Value):stdgo.GoUInt64 {
        @:recv var _v:stdgo._internal.runtime.metrics.Metrics_value.Value = _v?.__copy__();
        if (_v._kind != ((1 : stdgo._internal.runtime.metrics.Metrics_valuekind.ValueKind))) {
            throw stdgo.Go.toInterface(("called Uint64 on non-uint64 metric value" : stdgo.GoString));
        };
        return _v._scalar;
    }
    @:keep
    @:tdfield
    static public function kind( _v:stdgo._internal.runtime.metrics.Metrics_value.Value):stdgo._internal.runtime.metrics.Metrics_valuekind.ValueKind {
        @:recv var _v:stdgo._internal.runtime.metrics.Metrics_value.Value = _v?.__copy__();
        return _v._kind;
    }
}
