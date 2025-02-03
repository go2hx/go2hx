package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_traceBuf_static_extension) abstract T_traceBuf(stdgo._internal.runtime.Runtime_T_traceBuf.T_traceBuf) from stdgo._internal.runtime.Runtime_T_traceBuf.T_traceBuf to stdgo._internal.runtime.Runtime_T_traceBuf.T_traceBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_traceBuf.T_traceBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
