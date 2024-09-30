package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_ProcessState_static_extension.ProcessState_static_extension) class ProcessState {
    public var _pid : stdgo.GoInt = 0;
    public var _status : stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus = ((0 : stdgo.GoUInt32) : stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus);
    public var _rusage : stdgo.Ref<stdgo._internal.syscall.Syscall_Rusage.Rusage> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall_Rusage.Rusage>);
    public function new(?_pid:stdgo.GoInt, ?_status:stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus, ?_rusage:stdgo.Ref<stdgo._internal.syscall.Syscall_Rusage.Rusage>) {
        if (_pid != null) this._pid = _pid;
        if (_status != null) this._status = _status;
        if (_rusage != null) this._rusage = _rusage;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProcessState(_pid, _status, _rusage);
    }
}
