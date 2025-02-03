package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gobuf_static_extension) abstract T_gobuf(stdgo._internal.runtime.Runtime_T_gobuf.T_gobuf) from stdgo._internal.runtime.Runtime_T_gobuf.T_gobuf to stdgo._internal.runtime.Runtime_T_gobuf.T_gobuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gobuf.T_gobuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
