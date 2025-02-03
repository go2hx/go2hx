package stdgo.runtime.coverage;
@:structInit @:using(stdgo.runtime.coverage.Coverage.T_tstate_static_extension) abstract T_tstate(stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate) from stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate to stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate {
    public var batchCounterAlloc(get, set) : stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc;
    function get_batchCounterAlloc():stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc return this.batchCounterAlloc;
    function set_batchCounterAlloc(v:stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc):stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc {
        this.batchCounterAlloc = v;
        return v;
    }
    public var _cm(get, set) : stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger;
    function get__cm():stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger return this._cm;
    function set__cm(v:stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger):stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger {
        this._cm = (v : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
        return v;
    }
    public var _cf(get, set) : stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter;
    function get__cf():stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter return this._cf;
    function set__cf(v:stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter):stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter {
        this._cf = (v : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>);
        return v;
    }
    public var _cmode(get, set) : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode;
    function get__cmode():stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode return this._cmode;
    function set__cmode(v:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode):stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode {
        this._cmode = v;
        return v;
    }
    public function new(?batchCounterAlloc:stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc, ?_cm:stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger, ?_cf:stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter, ?_cmode:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode) this = new stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate(batchCounterAlloc, (_cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>), (_cf : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>), _cmode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
