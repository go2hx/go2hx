package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_fuzzResult_static_extension) abstract T_fuzzResult(stdgo._internal.testing.Testing_T_fuzzResult.T_fuzzResult) from stdgo._internal.testing.Testing_T_fuzzResult.T_fuzzResult to stdgo._internal.testing.Testing_T_fuzzResult.T_fuzzResult {
    public var n(get, set) : StdTypes.Int;
    function get_n():StdTypes.Int return this.n;
    function set_n(v:StdTypes.Int):StdTypes.Int {
        this.n = (v : stdgo.GoInt);
        return v;
    }
    public var t(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_t():stdgo._internal.time.Time_Duration.Duration return this.t;
    function set_t(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.t = v;
        return v;
    }
    public var error(get, set) : stdgo.Error;
    function get_error():stdgo.Error return this.error;
    function set_error(v:stdgo.Error):stdgo.Error {
        this.error = (v : stdgo.Error);
        return v;
    }
    public function new(?n:StdTypes.Int, ?t:stdgo._internal.time.Time_Duration.Duration, ?error:stdgo.Error) this = new stdgo._internal.testing.Testing_T_fuzzResult.T_fuzzResult((n : stdgo.GoInt), t, (error : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
