package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_call_static_extension) abstract T_call(stdgo._internal.internal.fuzz.Fuzz_T_call.T_call) from stdgo._internal.internal.fuzz.Fuzz_T_call.T_call to stdgo._internal.internal.fuzz.Fuzz_T_call.T_call {
    public var ping(get, set) : T_pingArgs;
    function get_ping():T_pingArgs return this.ping;
    function set_ping(v:T_pingArgs):T_pingArgs {
        this.ping = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs>);
        return v;
    }
    public var fuzz(get, set) : T_fuzzArgs;
    function get_fuzz():T_fuzzArgs return this.fuzz;
    function set_fuzz(v:T_fuzzArgs):T_fuzzArgs {
        this.fuzz = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs>);
        return v;
    }
    public var minimize(get, set) : T_minimizeArgs;
    function get_minimize():T_minimizeArgs return this.minimize;
    function set_minimize(v:T_minimizeArgs):T_minimizeArgs {
        this.minimize = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs>);
        return v;
    }
    public function new(?ping:T_pingArgs, ?fuzz:T_fuzzArgs, ?minimize:T_minimizeArgs) this = new stdgo._internal.internal.fuzz.Fuzz_T_call.T_call((ping : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs>), (fuzz : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs>), (minimize : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
