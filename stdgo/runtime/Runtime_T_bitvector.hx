package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_bitvector_static_extension) abstract T_bitvector(stdgo._internal.runtime.Runtime_T_bitvector.T_bitvector) from stdgo._internal.runtime.Runtime_T_bitvector.T_bitvector to stdgo._internal.runtime.Runtime_T_bitvector.T_bitvector {
    public function new() this = new stdgo._internal.runtime.Runtime_T_bitvector.T_bitvector();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
