package stdgo.internal.coverage.cmerge;
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
