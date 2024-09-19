package stdgo._internal.os.exec;
@:structInit @:using(stdgo._internal.os.exec.Exec_ExitError_static_extension.ExitError_static_extension) class ExitError {
    @:embedded
    public var processState : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState> = (null : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>);
    public var stderr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?processState:stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>, ?stderr:stdgo.Slice<stdgo.GoUInt8>) {
        if (processState != null) this.processState = processState;
        if (stderr != null) this.stderr = stderr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function exitCode():stdgo.GoInt return this.processState.exitCode();
    @:embedded
    public function exited():Bool return this.processState.exited();
    @:embedded
    public function pid():stdgo.GoInt return this.processState.pid();
    @:embedded
    public function string():stdgo.GoString return this.processState.string();
    @:embedded
    public function success():Bool return this.processState.success();
    @:embedded
    public function sys():stdgo.AnyInterface return this.processState.sys();
    @:embedded
    public function sysUsage():stdgo.AnyInterface return this.processState.sysUsage();
    @:embedded
    public function systemTime():stdgo._internal.time.Time_Duration.Duration return this.processState.systemTime();
    @:embedded
    public function userTime():stdgo._internal.time.Time_Duration.Duration return this.processState.userTime();
    @:embedded
    public function _exited():Bool return this.processState._exited();
    @:embedded
    public function _success():Bool return this.processState._success();
    @:embedded
    public function _sys():stdgo.AnyInterface return this.processState._sys();
    @:embedded
    public function _sysUsage():stdgo.AnyInterface return this.processState._sysUsage();
    @:embedded
    public function _systemTime():stdgo._internal.time.Time_Duration.Duration return this.processState._systemTime();
    @:embedded
    public function _userTime():stdgo._internal.time.Time_Duration.Duration return this.processState._userTime();
    public function __copy__() {
        return new ExitError(processState, stderr);
    }
}
