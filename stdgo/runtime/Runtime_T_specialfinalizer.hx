package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_specialfinalizer_static_extension) abstract T_specialfinalizer(stdgo._internal.runtime.Runtime_T_specialfinalizer.T_specialfinalizer) from stdgo._internal.runtime.Runtime_T_specialfinalizer.T_specialfinalizer to stdgo._internal.runtime.Runtime_T_specialfinalizer.T_specialfinalizer {
    public function new() this = new stdgo._internal.runtime.Runtime_T_specialfinalizer.T_specialfinalizer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
