package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_cpuProfile_static_extension) abstract T_cpuProfile(stdgo._internal.runtime.Runtime_T_cpuProfile.T_cpuProfile) from stdgo._internal.runtime.Runtime_T_cpuProfile.T_cpuProfile to stdgo._internal.runtime.Runtime_T_cpuProfile.T_cpuProfile {
    public function new() this = new stdgo._internal.runtime.Runtime_T_cpuProfile.T_cpuProfile();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
