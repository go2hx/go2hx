package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackfreelist_static_extension) abstract T_stackfreelist(stdgo._internal.runtime.Runtime_T_stackfreelist.T_stackfreelist) from stdgo._internal.runtime.Runtime_T_stackfreelist.T_stackfreelist to stdgo._internal.runtime.Runtime_T_stackfreelist.T_stackfreelist {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackfreelist.T_stackfreelist();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
