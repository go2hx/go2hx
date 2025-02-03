package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_initTask_static_extension) abstract T_initTask(stdgo._internal.runtime.Runtime_T_initTask.T_initTask) from stdgo._internal.runtime.Runtime_T_initTask.T_initTask to stdgo._internal.runtime.Runtime_T_initTask.T_initTask {
    public function new() this = new stdgo._internal.runtime.Runtime_T_initTask.T_initTask();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
