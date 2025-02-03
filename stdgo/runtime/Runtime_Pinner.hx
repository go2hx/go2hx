package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.Pinner_static_extension) abstract Pinner(stdgo._internal.runtime.Runtime_Pinner.Pinner) from stdgo._internal.runtime.Runtime_Pinner.Pinner to stdgo._internal.runtime.Runtime_Pinner.Pinner {
    public function new() this = new stdgo._internal.runtime.Runtime_Pinner.Pinner();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
