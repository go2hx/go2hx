package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_arrayBlockWrapper_static_extension) abstract T_arrayBlockWrapper(stdgo._internal.runtime.Runtime_T_arrayBlockWrapper.T_arrayBlockWrapper) from stdgo._internal.runtime.Runtime_T_arrayBlockWrapper.T_arrayBlockWrapper to stdgo._internal.runtime.Runtime_T_arrayBlockWrapper.T_arrayBlockWrapper {
    public function new() this = new stdgo._internal.runtime.Runtime_T_arrayBlockWrapper.T_arrayBlockWrapper();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
