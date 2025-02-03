package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_arrayLargeBlockWrapper_static_extension) abstract T_arrayLargeBlockWrapper(stdgo._internal.runtime.Runtime_T_arrayLargeBlockWrapper.T_arrayLargeBlockWrapper) from stdgo._internal.runtime.Runtime_T_arrayLargeBlockWrapper.T_arrayLargeBlockWrapper to stdgo._internal.runtime.Runtime_T_arrayLargeBlockWrapper.T_arrayLargeBlockWrapper {
    public function new() this = new stdgo._internal.runtime.Runtime_T_arrayLargeBlockWrapper.T_arrayLargeBlockWrapper();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
