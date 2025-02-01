package stdgo.internal.coverage.cmerge;
final modeMergeStrict : ModeMergePolicy = stdgo._internal.internal.coverage.cmerge.Cmerge_modeMergeStrict.modeMergeStrict;
final modeMergeRelaxed = stdgo._internal.internal.coverage.cmerge.Cmerge_modeMergeRelaxed.modeMergeRelaxed;
@:structInit @:using(stdgo.internal.coverage.cmerge.Cmerge.Merger_static_extension) abstract Merger(stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger) from stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger to stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger {
    public var _cmode(get, set) : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode;
    function get__cmode():stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode return this._cmode;
    function set__cmode(v:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode):stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode {
        this._cmode = v;
        return v;
    }
    public var _cgran(get, set) : stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity;
    function get__cgran():stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity return this._cgran;
    function set__cgran(v:stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity):stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity {
        this._cgran = v;
        return v;
    }
    public var _policy(get, set) : ModeMergePolicy;
    function get__policy():ModeMergePolicy return this._policy;
    function set__policy(v:ModeMergePolicy):ModeMergePolicy {
        this._policy = v;
        return v;
    }
    public var _overflow(get, set) : Bool;
    function get__overflow():Bool return this._overflow;
    function set__overflow(v:Bool):Bool {
        this._overflow = v;
        return v;
    }
    public function new(?_cmode:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode, ?_cgran:stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity, ?_policy:ModeMergePolicy, ?_overflow:Bool) this = new stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger(_cmode, _cgran, _policy, _overflow);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ModeMergePolicy = stdgo._internal.internal.coverage.cmerge.Cmerge_ModeMergePolicy.ModeMergePolicy;
typedef MergerPointer = stdgo._internal.internal.coverage.cmerge.Cmerge_MergerPointer.MergerPointer;
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
typedef ModeMergePolicyPointer = stdgo._internal.internal.coverage.cmerge.Cmerge_ModeMergePolicyPointer.ModeMergePolicyPointer;
class ModeMergePolicy_static_extension {

}
class Cmerge {
    /**
        Saturating add does a saturating addition of 'dst' and 'src',
        returning added value or math.MaxUint32 plus an overflow flag.
    **/
    static public inline function saturatingAdd(_dst:std.UInt, _src:std.UInt):stdgo.Tuple<std.UInt, Bool> {
        final _dst = (_dst : stdgo.GoUInt32);
        final _src = (_src : stdgo.GoUInt32);
        return {
            final obj = stdgo._internal.internal.coverage.cmerge.Cmerge_saturatingAdd.saturatingAdd(_dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
