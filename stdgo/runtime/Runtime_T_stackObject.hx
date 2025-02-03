package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackObject_static_extension) abstract T_stackObject(stdgo._internal.runtime.Runtime_T_stackObject.T_stackObject) from stdgo._internal.runtime.Runtime_T_stackObject.T_stackObject to stdgo._internal.runtime.Runtime_T_stackObject.T_stackObject {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackObject.T_stackObject();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
