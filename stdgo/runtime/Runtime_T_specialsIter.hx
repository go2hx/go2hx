package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_specialsIter_static_extension) abstract T_specialsIter(stdgo._internal.runtime.Runtime_T_specialsIter.T_specialsIter) from stdgo._internal.runtime.Runtime_T_specialsIter.T_specialsIter to stdgo._internal.runtime.Runtime_T_specialsIter.T_specialsIter {
    public function new() this = new stdgo._internal.runtime.Runtime_T_specialsIter.T_specialsIter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
