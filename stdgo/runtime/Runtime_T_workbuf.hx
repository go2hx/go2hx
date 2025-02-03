package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_workbuf_static_extension) abstract T_workbuf(stdgo._internal.runtime.Runtime_T_workbuf.T_workbuf) from stdgo._internal.runtime.Runtime_T_workbuf.T_workbuf to stdgo._internal.runtime.Runtime_T_workbuf.T_workbuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_workbuf.T_workbuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
