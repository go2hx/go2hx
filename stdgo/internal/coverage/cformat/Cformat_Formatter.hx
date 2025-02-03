package stdgo.internal.coverage.cformat;
@:structInit @:using(stdgo.internal.coverage.cformat.Cformat.Formatter_static_extension) abstract Formatter(stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter) from stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter to stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter {
    public var _pm(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>>;
    function get__pm():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>> return this._pm;
    function set__pm(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>> {
        this._pm = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>>);
        return v;
    }
    public var _pkg(get, set) : String;
    function get__pkg():String return this._pkg;
    function set__pkg(v:String):String {
        this._pkg = (v : stdgo.GoString);
        return v;
    }
    public var _p(get, set) : T_pstate;
    function get__p():T_pstate return this._p;
    function set__p(v:T_pstate):T_pstate {
        this._p = (v : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>);
        return v;
    }
    public var _cm(get, set) : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode;
    function get__cm():stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode return this._cm;
    function set__cm(v:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode):stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode {
        this._cm = v;
        return v;
    }
    public function new(?_pm:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>>, ?_pkg:String, ?_p:T_pstate, ?_cm:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode) this = new stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter((_pm : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>>), (_pkg : stdgo.GoString), (_p : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>), _cm);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
