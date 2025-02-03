package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackObjectBuf_static_extension) abstract T_stackObjectBuf(stdgo._internal.runtime.Runtime_T_stackObjectBuf.T_stackObjectBuf) from stdgo._internal.runtime.Runtime_T_stackObjectBuf.T_stackObjectBuf to stdgo._internal.runtime.Runtime_T_stackObjectBuf.T_stackObjectBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackObjectBuf.T_stackObjectBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
