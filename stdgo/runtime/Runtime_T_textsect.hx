package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_textsect_static_extension) abstract T_textsect(stdgo._internal.runtime.Runtime_T_textsect.T_textsect) from stdgo._internal.runtime.Runtime_T_textsect.T_textsect to stdgo._internal.runtime.Runtime_T_textsect.T_textsect {
    public function new() this = new stdgo._internal.runtime.Runtime_T_textsect.T_textsect();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
