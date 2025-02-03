package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gcBits_static_extension) abstract T_gcBits(stdgo._internal.runtime.Runtime_T_gcBits.T_gcBits) from stdgo._internal.runtime.Runtime_T_gcBits.T_gcBits to stdgo._internal.runtime.Runtime_T_gcBits.T_gcBits {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gcBits.T_gcBits();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
