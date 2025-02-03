package stdgo.time;
@:structInit @:using(stdgo.time.Time.Rule_static_extension) abstract Rule(stdgo._internal.time.Time_Rule.Rule) from stdgo._internal.time.Time_Rule.Rule to stdgo._internal.time.Time_Rule.Rule {
    public var kind(get, set) : RuleKind;
    function get_kind():RuleKind return this.kind;
    function set_kind(v:RuleKind):RuleKind {
        this.kind = v;
        return v;
    }
    public var day(get, set) : StdTypes.Int;
    function get_day():StdTypes.Int return this.day;
    function set_day(v:StdTypes.Int):StdTypes.Int {
        this.day = (v : stdgo.GoInt);
        return v;
    }
    public var week(get, set) : StdTypes.Int;
    function get_week():StdTypes.Int return this.week;
    function set_week(v:StdTypes.Int):StdTypes.Int {
        this.week = (v : stdgo.GoInt);
        return v;
    }
    public var mon(get, set) : StdTypes.Int;
    function get_mon():StdTypes.Int return this.mon;
    function set_mon(v:StdTypes.Int):StdTypes.Int {
        this.mon = (v : stdgo.GoInt);
        return v;
    }
    public var time(get, set) : StdTypes.Int;
    function get_time():StdTypes.Int return this.time;
    function set_time(v:StdTypes.Int):StdTypes.Int {
        this.time = (v : stdgo.GoInt);
        return v;
    }
    public function new(?kind:RuleKind, ?day:StdTypes.Int, ?week:StdTypes.Int, ?mon:StdTypes.Int, ?time:StdTypes.Int) this = new stdgo._internal.time.Time_Rule.Rule(kind, (day : stdgo.GoInt), (week : stdgo.GoInt), (mon : stdgo.GoInt), (time : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
