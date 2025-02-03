package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mapextra_static_extension) abstract T_mapextra(stdgo._internal.runtime.Runtime_T_mapextra.T_mapextra) from stdgo._internal.runtime.Runtime_T_mapextra.T_mapextra to stdgo._internal.runtime.Runtime_T_mapextra.T_mapextra {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mapextra.T_mapextra();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
