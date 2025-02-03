package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mProfCycleHolder_static_extension) abstract T_mProfCycleHolder(stdgo._internal.runtime.Runtime_T_mProfCycleHolder.T_mProfCycleHolder) from stdgo._internal.runtime.Runtime_T_mProfCycleHolder.T_mProfCycleHolder to stdgo._internal.runtime.Runtime_T_mProfCycleHolder.T_mProfCycleHolder {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mProfCycleHolder.T_mProfCycleHolder();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
