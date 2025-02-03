package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_spanSet_static_extension) abstract T_spanSet(stdgo._internal.runtime.Runtime_T_spanSet.T_spanSet) from stdgo._internal.runtime.Runtime_T_spanSet.T_spanSet to stdgo._internal.runtime.Runtime_T_spanSet.T_spanSet {
    public function new() this = new stdgo._internal.runtime.Runtime_T_spanSet.T_spanSet();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
