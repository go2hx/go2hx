package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_slice_static_extension) abstract T_slice(stdgo._internal.runtime.Runtime_T_slice.T_slice) from stdgo._internal.runtime.Runtime_T_slice.T_slice to stdgo._internal.runtime.Runtime_T_slice.T_slice {
    public function new() this = new stdgo._internal.runtime.Runtime_T_slice.T_slice();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
