package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mcentral_static_extension) abstract T_mcentral(stdgo._internal.runtime.Runtime_T_mcentral.T_mcentral) from stdgo._internal.runtime.Runtime_T_mcentral.T_mcentral to stdgo._internal.runtime.Runtime_T_mcentral.T_mcentral {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mcentral.T_mcentral();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
