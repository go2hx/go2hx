package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stkframe_static_extension) abstract T_stkframe(stdgo._internal.runtime.Runtime_T_stkframe.T_stkframe) from stdgo._internal.runtime.Runtime_T_stkframe.T_stkframe to stdgo._internal.runtime.Runtime_T_stkframe.T_stkframe {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stkframe.T_stkframe();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
