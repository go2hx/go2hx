package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_durationOrCountFlag_static_extension) abstract T_durationOrCountFlag(stdgo._internal.testing.Testing_T_durationOrCountFlag.T_durationOrCountFlag) from stdgo._internal.testing.Testing_T_durationOrCountFlag.T_durationOrCountFlag to stdgo._internal.testing.Testing_T_durationOrCountFlag.T_durationOrCountFlag {
    public var _d(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__d():stdgo._internal.time.Time_Duration.Duration return this._d;
    function set__d(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._d = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _allowZero(get, set) : Bool;
    function get__allowZero():Bool return this._allowZero;
    function set__allowZero(v:Bool):Bool {
        this._allowZero = v;
        return v;
    }
    public function new(?_d:stdgo._internal.time.Time_Duration.Duration, ?_n:StdTypes.Int, ?_allowZero:Bool) this = new stdgo._internal.testing.Testing_T_durationOrCountFlag.T_durationOrCountFlag(_d, (_n : stdgo.GoInt), _allowZero);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
