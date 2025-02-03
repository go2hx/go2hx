package stdgo.os;
@:structInit @:using(stdgo.os.Os.ProcessState_static_extension) abstract ProcessState(stdgo._internal.os.Os_ProcessState.ProcessState) from stdgo._internal.os.Os_ProcessState.ProcessState to stdgo._internal.os.Os_ProcessState.ProcessState {
    public var _pid(get, set) : StdTypes.Int;
    function get__pid():StdTypes.Int return this._pid;
    function set__pid(v:StdTypes.Int):StdTypes.Int {
        this._pid = (v : stdgo.GoInt);
        return v;
    }
    public var _status(get, set) : stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus;
    function get__status():stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus return this._status;
    function set__status(v:stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus):stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus {
        this._status = v;
        return v;
    }
    public var _rusage(get, set) : stdgo._internal.syscall.Syscall_Rusage.Rusage;
    function get__rusage():stdgo._internal.syscall.Syscall_Rusage.Rusage return this._rusage;
    function set__rusage(v:stdgo._internal.syscall.Syscall_Rusage.Rusage):stdgo._internal.syscall.Syscall_Rusage.Rusage {
        this._rusage = (v : stdgo.Ref<stdgo._internal.syscall.Syscall_Rusage.Rusage>);
        return v;
    }
    public function new(?_pid:StdTypes.Int, ?_status:stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus, ?_rusage:stdgo._internal.syscall.Syscall_Rusage.Rusage) this = new stdgo._internal.os.Os_ProcessState.ProcessState((_pid : stdgo.GoInt), _status, (_rusage : stdgo.Ref<stdgo._internal.syscall.Syscall_Rusage.Rusage>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
