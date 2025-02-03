package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_scase_static_extension) abstract T_scase(stdgo._internal.runtime.Runtime_T_scase.T_scase) from stdgo._internal.runtime.Runtime_T_scase.T_scase to stdgo._internal.runtime.Runtime_T_scase.T_scase {
    public function new() this = new stdgo._internal.runtime.Runtime_T_scase.T_scase();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
