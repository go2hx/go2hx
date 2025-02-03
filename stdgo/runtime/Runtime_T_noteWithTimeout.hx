package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_noteWithTimeout_static_extension) abstract T_noteWithTimeout(stdgo._internal.runtime.Runtime_T_noteWithTimeout.T_noteWithTimeout) from stdgo._internal.runtime.Runtime_T_noteWithTimeout.T_noteWithTimeout to stdgo._internal.runtime.Runtime_T_noteWithTimeout.T_noteWithTimeout {
    public function new() this = new stdgo._internal.runtime.Runtime_T_noteWithTimeout.T_noteWithTimeout();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
