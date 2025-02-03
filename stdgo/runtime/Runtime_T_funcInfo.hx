package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_funcInfo_static_extension) abstract T_funcInfo(stdgo._internal.runtime.Runtime_T_funcInfo.T_funcInfo) from stdgo._internal.runtime.Runtime_T_funcInfo.T_funcInfo to stdgo._internal.runtime.Runtime_T_funcInfo.T_funcInfo {
    public function new() this = new stdgo._internal.runtime.Runtime_T_funcInfo.T_funcInfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
