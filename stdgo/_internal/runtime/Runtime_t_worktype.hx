package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_worktype_static_extension.T_workType_static_extension) class T_workType {
    @:embedded
    public var _cpuStats : stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats = ({} : stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats);
    public function new(?_cpuStats:stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats) {
        if (_cpuStats != null) this._cpuStats = _cpuStats;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_workType(_cpuStats);
    }
}
