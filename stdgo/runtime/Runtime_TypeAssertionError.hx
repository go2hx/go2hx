package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.TypeAssertionError_static_extension) abstract TypeAssertionError(stdgo._internal.runtime.Runtime_TypeAssertionError.TypeAssertionError) from stdgo._internal.runtime.Runtime_TypeAssertionError.TypeAssertionError to stdgo._internal.runtime.Runtime_TypeAssertionError.TypeAssertionError {
    public function new() this = new stdgo._internal.runtime.Runtime_TypeAssertionError.TypeAssertionError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
