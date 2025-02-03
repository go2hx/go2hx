package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_arenaHint_static_extension) abstract T_arenaHint(stdgo._internal.runtime.Runtime_T_arenaHint.T_arenaHint) from stdgo._internal.runtime.Runtime_T_arenaHint.T_arenaHint to stdgo._internal.runtime.Runtime_T_arenaHint.T_arenaHint {
    public function new() this = new stdgo._internal.runtime.Runtime_T_arenaHint.T_arenaHint();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
