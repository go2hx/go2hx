package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_childInfo_static_extension) abstract T_childInfo(stdgo._internal.runtime.Runtime_T_childInfo.T_childInfo) from stdgo._internal.runtime.Runtime_T_childInfo.T_childInfo to stdgo._internal.runtime.Runtime_T_childInfo.T_childInfo {
    public function new() this = new stdgo._internal.runtime.Runtime_T_childInfo.T_childInfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
