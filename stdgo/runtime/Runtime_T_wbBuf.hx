package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_wbBuf_static_extension) abstract T_wbBuf(stdgo._internal.runtime.Runtime_T_wbBuf.T_wbBuf) from stdgo._internal.runtime.Runtime_T_wbBuf.T_wbBuf to stdgo._internal.runtime.Runtime_T_wbBuf.T_wbBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_wbBuf.T_wbBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
