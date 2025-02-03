package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_modulehash_static_extension) abstract T_modulehash(stdgo._internal.runtime.Runtime_T_modulehash.T_modulehash) from stdgo._internal.runtime.Runtime_T_modulehash.T_modulehash to stdgo._internal.runtime.Runtime_T_modulehash.T_modulehash {
    public function new() this = new stdgo._internal.runtime.Runtime_T_modulehash.T_modulehash();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
