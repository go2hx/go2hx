package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pageAlloc_static_extension) abstract T_pageAlloc(stdgo._internal.runtime.Runtime_T_pageAlloc.T_pageAlloc) from stdgo._internal.runtime.Runtime_T_pageAlloc.T_pageAlloc to stdgo._internal.runtime.Runtime_T_pageAlloc.T_pageAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pageAlloc.T_pageAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
