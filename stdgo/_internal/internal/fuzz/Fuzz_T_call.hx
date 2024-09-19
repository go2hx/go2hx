package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_call {
    public var ping : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs>);
    public var fuzz : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs>);
    public var minimize : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs>);
    public function new(?ping:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs>, ?fuzz:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs>, ?minimize:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs>) {
        if (ping != null) this.ping = ping;
        if (fuzz != null) this.fuzz = fuzz;
        if (minimize != null) this.minimize = minimize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_call(ping, fuzz, minimize);
    }
}
