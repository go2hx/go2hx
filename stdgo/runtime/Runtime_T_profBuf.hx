package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_profBuf_static_extension) abstract T_profBuf(stdgo._internal.runtime.Runtime_T_profBuf.T_profBuf) from stdgo._internal.runtime.Runtime_T_profBuf.T_profBuf to stdgo._internal.runtime.Runtime_T_profBuf.T_profBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_profBuf.T_profBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
