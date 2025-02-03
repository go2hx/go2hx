package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackWorkBuf_static_extension) abstract T_stackWorkBuf(stdgo._internal.runtime.Runtime_T_stackWorkBuf.T_stackWorkBuf) from stdgo._internal.runtime.Runtime_T_stackWorkBuf.T_stackWorkBuf to stdgo._internal.runtime.Runtime_T_stackWorkBuf.T_stackWorkBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackWorkBuf.T_stackWorkBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
