package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_ancestorInfo_static_extension) abstract T_ancestorInfo(stdgo._internal.runtime.Runtime_T_ancestorInfo.T_ancestorInfo) from stdgo._internal.runtime.Runtime_T_ancestorInfo.T_ancestorInfo to stdgo._internal.runtime.Runtime_T_ancestorInfo.T_ancestorInfo {
    public function new() this = new stdgo._internal.runtime.Runtime_T_ancestorInfo.T_ancestorInfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
