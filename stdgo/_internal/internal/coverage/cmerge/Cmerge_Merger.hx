package stdgo._internal.internal.coverage.cmerge;
@:structInit @:using(stdgo._internal.internal.coverage.cmerge.Cmerge_Merger_static_extension.Merger_static_extension) class Merger {
    public var _cmode : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode);
    public var _cgran : stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity);
    public var _policy : stdgo._internal.internal.coverage.cmerge.Cmerge_ModeMergePolicy.ModeMergePolicy = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.cmerge.Cmerge_ModeMergePolicy.ModeMergePolicy);
    public var _overflow : Bool = false;
    public function new(?_cmode:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode, ?_cgran:stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity, ?_policy:stdgo._internal.internal.coverage.cmerge.Cmerge_ModeMergePolicy.ModeMergePolicy, ?_overflow:Bool) {
        if (_cmode != null) this._cmode = _cmode;
        if (_cgran != null) this._cgran = _cgran;
        if (_policy != null) this._policy = _policy;
        if (_overflow != null) this._overflow = _overflow;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Merger(_cmode, _cgran, _policy, _overflow);
    }
}
