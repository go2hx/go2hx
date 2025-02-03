package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_markBits_static_extension) abstract T_markBits(stdgo._internal.runtime.Runtime_T_markBits.T_markBits) from stdgo._internal.runtime.Runtime_T_markBits.T_markBits to stdgo._internal.runtime.Runtime_T_markBits.T_markBits {
    public function new() this = new stdgo._internal.runtime.Runtime_T_markBits.T_markBits();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
