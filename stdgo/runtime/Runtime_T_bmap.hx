package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_bmap_static_extension) abstract T_bmap(stdgo._internal.runtime.Runtime_T_bmap.T_bmap) from stdgo._internal.runtime.Runtime_T_bmap.T_bmap to stdgo._internal.runtime.Runtime_T_bmap.T_bmap {
    public function new() this = new stdgo._internal.runtime.Runtime_T_bmap.T_bmap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
