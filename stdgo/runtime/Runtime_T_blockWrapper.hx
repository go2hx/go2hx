package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_blockWrapper_static_extension) abstract T_blockWrapper(stdgo._internal.runtime.Runtime_T_blockWrapper.T_blockWrapper) from stdgo._internal.runtime.Runtime_T_blockWrapper.T_blockWrapper to stdgo._internal.runtime.Runtime_T_blockWrapper.T_blockWrapper {
    public function new() this = new stdgo._internal.runtime.Runtime_T_blockWrapper.T_blockWrapper();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
