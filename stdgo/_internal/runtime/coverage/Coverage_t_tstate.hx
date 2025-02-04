package stdgo._internal.runtime.coverage;
@:structInit @:using(stdgo._internal.runtime.coverage.Coverage_t_tstate_static_extension.T_tstate_static_extension) class T_tstate {
    @:embedded
    public var batchCounterAlloc : stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc = ({} : stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc);
    public var _cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger> = (null : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>);
    public var _cf : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter> = (null : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>);
    public var _cmode : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
    public function new(?batchCounterAlloc:stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc, ?_cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>, ?_cf:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>, ?_cmode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode) {
        if (batchCounterAlloc != null) this.batchCounterAlloc = batchCounterAlloc;
        if (_cm != null) this._cm = _cm;
        if (_cf != null) this._cf = _cf;
        if (_cmode != null) this._cmode = _cmode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var allocateCounters(get, never) : stdgo.GoInt -> stdgo.Slice<stdgo.GoUInt32>;
    @:embedded
    @:embeddededffieldsffun
    public function get_allocateCounters():stdgo.GoInt -> stdgo.Slice<stdgo.GoUInt32> return @:check32 this.batchCounterAlloc.allocateCounters;
    public function __copy__() {
        return new T_tstate(batchCounterAlloc, _cm, _cf, _cmode);
    }
}
