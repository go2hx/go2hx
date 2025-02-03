package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_sigset_static_extension) abstract T_sigset(stdgo._internal.runtime.Runtime_T_sigset.T_sigset) from stdgo._internal.runtime.Runtime_T_sigset.T_sigset to stdgo._internal.runtime.Runtime_T_sigset.T_sigset {
    public function new() this = new stdgo._internal.runtime.Runtime_T_sigset.T_sigset();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
