package stdgo.internal.coverage.cmerge;
class Merger_static_extension {
    static public function granularity(_cm:Merger):stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity {
        final _cm = (_cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
        return stdgo._internal.internal.coverage.cmerge.Cmerge_Merger_static_extension.Merger_static_extension.granularity(_cm);
    }
    static public function mode(_cm:Merger):stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode {
        final _cm = (_cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
        return stdgo._internal.internal.coverage.cmerge.Cmerge_Merger_static_extension.Merger_static_extension.mode(_cm);
    }
    static public function resetModeAndGranularity(_cm:Merger):Void {
        final _cm = (_cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
        stdgo._internal.internal.coverage.cmerge.Cmerge_Merger_static_extension.Merger_static_extension.resetModeAndGranularity(_cm);
    }
    static public function setModeAndGranularity(_cm:Merger, _mdf:String, _cmode:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode, _cgran:stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity):stdgo.Error {
        final _cm = (_cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
        final _mdf = (_mdf : stdgo.GoString);
        return stdgo._internal.internal.coverage.cmerge.Cmerge_Merger_static_extension.Merger_static_extension.setModeAndGranularity(_cm, _mdf, _cmode, _cgran);
    }
    static public function saturatingAdd(_m:Merger, _dst:std.UInt, _src:std.UInt):std.UInt {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
        final _dst = (_dst : stdgo.GoUInt32);
        final _src = (_src : stdgo.GoUInt32);
        return stdgo._internal.internal.coverage.cmerge.Cmerge_Merger_static_extension.Merger_static_extension.saturatingAdd(_m, _dst, _src);
    }
    static public function mergeCounters(_m:Merger, _dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple<stdgo.Error, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return {
            final obj = stdgo._internal.internal.coverage.cmerge.Cmerge_Merger_static_extension.Merger_static_extension.mergeCounters(_m, _dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setModeMergePolicy(_cm:Merger, _policy:ModeMergePolicy):Void {
        final _cm = (_cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
        stdgo._internal.internal.coverage.cmerge.Cmerge_Merger_static_extension.Merger_static_extension.setModeMergePolicy(_cm, _policy);
    }
}
