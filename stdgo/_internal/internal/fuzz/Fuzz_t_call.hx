package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_call_static_extension.T_call_static_extension) class T_call {
    public var ping : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs>);
    public var fuzz : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs>);
    public var minimize : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs>);
    public function new(?ping:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs>, ?fuzz:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs>, ?minimize:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs>) {
        if (ping != null) this.ping = ping;
        if (fuzz != null) this.fuzz = fuzz;
        if (minimize != null) this.minimize = minimize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_call(ping, fuzz, minimize);
    }
}
