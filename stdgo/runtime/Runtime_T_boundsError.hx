package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_boundsError_static_extension) abstract T_boundsError(stdgo._internal.runtime.Runtime_T_boundsError.T_boundsError) from stdgo._internal.runtime.Runtime_T_boundsError.T_boundsError to stdgo._internal.runtime.Runtime_T_boundsError.T_boundsError {
    public function new() this = new stdgo._internal.runtime.Runtime_T_boundsError.T_boundsError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
