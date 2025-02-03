package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackmap_static_extension) abstract T_stackmap(stdgo._internal.runtime.Runtime_T_stackmap.T_stackmap) from stdgo._internal.runtime.Runtime_T_stackmap.T_stackmap to stdgo._internal.runtime.Runtime_T_stackmap.T_stackmap {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackmap.T_stackmap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
