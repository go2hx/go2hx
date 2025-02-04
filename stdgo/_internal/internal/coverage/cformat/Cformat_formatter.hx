package stdgo._internal.internal.coverage.cformat;
@:structInit @:using(stdgo._internal.internal.coverage.cformat.Cformat_formatter_static_extension.Formatter_static_extension) class Formatter {
    public var _pm : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>>);
    public var _pkg : stdgo.GoString = "";
    public var _p : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate> = (null : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>);
    public var _cm : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
    public function new(?_pm:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>>, ?_pkg:stdgo.GoString, ?_p:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>, ?_cm:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode) {
        if (_pm != null) this._pm = _pm;
        if (_pkg != null) this._pkg = _pkg;
        if (_p != null) this._p = _p;
        if (_cm != null) this._cm = _cm;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Formatter(_pm, _pkg, _p, _cm);
    }
}
