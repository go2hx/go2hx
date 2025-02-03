package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_fixalloc_static_extension) abstract T_fixalloc(stdgo._internal.runtime.Runtime_T_fixalloc.T_fixalloc) from stdgo._internal.runtime.Runtime_T_fixalloc.T_fixalloc to stdgo._internal.runtime.Runtime_T_fixalloc.T_fixalloc {
    public function new() this = new stdgo._internal.runtime.Runtime_T_fixalloc.T_fixalloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
