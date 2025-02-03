package stdgo.time;
@:structInit @:using(stdgo.time.Time.T_rule_static_extension) abstract T_rule(stdgo._internal.time.Time_T_rule.T_rule) from stdgo._internal.time.Time_T_rule.T_rule to stdgo._internal.time.Time_T_rule.T_rule {
    public var _kind(get, set) : T_ruleKind;
    function get__kind():T_ruleKind return this._kind;
    function set__kind(v:T_ruleKind):T_ruleKind {
        this._kind = v;
        return v;
    }
    public var _day(get, set) : StdTypes.Int;
    function get__day():StdTypes.Int return this._day;
    function set__day(v:StdTypes.Int):StdTypes.Int {
        this._day = (v : stdgo.GoInt);
        return v;
    }
    public var _week(get, set) : StdTypes.Int;
    function get__week():StdTypes.Int return this._week;
    function set__week(v:StdTypes.Int):StdTypes.Int {
        this._week = (v : stdgo.GoInt);
        return v;
    }
    public var _mon(get, set) : StdTypes.Int;
    function get__mon():StdTypes.Int return this._mon;
    function set__mon(v:StdTypes.Int):StdTypes.Int {
        this._mon = (v : stdgo.GoInt);
        return v;
    }
    public var _time(get, set) : StdTypes.Int;
    function get__time():StdTypes.Int return this._time;
    function set__time(v:StdTypes.Int):StdTypes.Int {
        this._time = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_kind:T_ruleKind, ?_day:StdTypes.Int, ?_week:StdTypes.Int, ?_mon:StdTypes.Int, ?_time:StdTypes.Int) this = new stdgo._internal.time.Time_T_rule.T_rule(_kind, (_day : stdgo.GoInt), (_week : stdgo.GoInt), (_mon : stdgo.GoInt), (_time : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
