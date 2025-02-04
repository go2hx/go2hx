package stdgo._internal.internal.coverage.cmerge;
class Merger_asInterface {
    @:keep
    @:tdfield
    public dynamic function granularity():stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity return @:_0 __self__.value.granularity();
    @:keep
    @:tdfield
    public dynamic function mode():stdgo._internal.internal.coverage.Coverage_countermode.CounterMode return @:_0 __self__.value.mode();
    @:keep
    @:tdfield
    public dynamic function resetModeAndGranularity():Void @:_0 __self__.value.resetModeAndGranularity();
    @:keep
    @:tdfield
    public dynamic function setModeAndGranularity(_mdf:stdgo.GoString, _cmode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode, _cgran:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):stdgo.Error return @:_0 __self__.value.setModeAndGranularity(_mdf, _cmode, _cgran);
    @:keep
    @:tdfield
    public dynamic function saturatingAdd(_dst:stdgo.GoUInt32, _src:stdgo.GoUInt32):stdgo.GoUInt32 return @:_0 __self__.value.saturatingAdd(_dst, _src);
    @:keep
    @:tdfield
    public dynamic function mergeCounters(_dst:stdgo.Slice<stdgo.GoUInt32>, _src:stdgo.Slice<stdgo.GoUInt32>):{ var _0 : stdgo.Error; var _1 : Bool; } return @:_0 __self__.value.mergeCounters(_dst, _src);
    @:keep
    @:tdfield
    public dynamic function setModeMergePolicy(_policy:stdgo._internal.internal.coverage.cmerge.Cmerge_modemergepolicy.ModeMergePolicy):Void @:_0 __self__.value.setModeMergePolicy(_policy);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.cmerge.Cmerge_mergerpointer.MergerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
