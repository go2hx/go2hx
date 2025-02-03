package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_specialPinCounter_static_extension) abstract T_specialPinCounter(stdgo._internal.runtime.Runtime_T_specialPinCounter.T_specialPinCounter) from stdgo._internal.runtime.Runtime_T_specialPinCounter.T_specialPinCounter to stdgo._internal.runtime.Runtime_T_specialPinCounter.T_specialPinCounter {
    public function new() this = new stdgo._internal.runtime.Runtime_T_specialPinCounter.T_specialPinCounter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
