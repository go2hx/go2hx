package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_debugLogBuf_static_extension) abstract T_debugLogBuf(stdgo._internal.runtime.Runtime_T_debugLogBuf.T_debugLogBuf) from stdgo._internal.runtime.Runtime_T_debugLogBuf.T_debugLogBuf to stdgo._internal.runtime.Runtime_T_debugLogBuf.T_debugLogBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_debugLogBuf.T_debugLogBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
