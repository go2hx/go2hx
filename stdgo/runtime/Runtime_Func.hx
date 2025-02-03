package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.Func_static_extension) abstract Func(stdgo._internal.runtime.Runtime_Func.Func) from stdgo._internal.runtime.Runtime_Func.Func to stdgo._internal.runtime.Runtime_Func.Func {
    public function new() this = new stdgo._internal.runtime.Runtime_Func.Func();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
