package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_inlineUnwinder_static_extension) abstract T_inlineUnwinder(stdgo._internal.runtime.Runtime_T_inlineUnwinder.T_inlineUnwinder) from stdgo._internal.runtime.Runtime_T_inlineUnwinder.T_inlineUnwinder to stdgo._internal.runtime.Runtime_T_inlineUnwinder.T_inlineUnwinder {
    public function new() this = new stdgo._internal.runtime.Runtime_T_inlineUnwinder.T_inlineUnwinder();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
