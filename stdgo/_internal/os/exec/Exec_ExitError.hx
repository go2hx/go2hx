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
    public var exitCode(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_exitCode():() -> stdgo.GoInt return @:check3 (this.processState ?? throw "null pointer derefrence").exitCode;
    public var exited(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_exited():() -> Bool return @:check3 (this.processState ?? throw "null pointer derefrence").exited;
    public var pid(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_pid():() -> stdgo.GoInt return @:check3 (this.processState ?? throw "null pointer derefrence").pid;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this.processState ?? throw "null pointer derefrence").string;
    public var success(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_success():() -> Bool return @:check3 (this.processState ?? throw "null pointer derefrence").success;
    public var sys(get, never) : () -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_sys():() -> stdgo.AnyInterface return @:check3 (this.processState ?? throw "null pointer derefrence").sys;
    public var sysUsage(get, never) : () -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_sysUsage():() -> stdgo.AnyInterface return @:check3 (this.processState ?? throw "null pointer derefrence").sysUsage;
    public var systemTime(get, never) : () -> stdgo._internal.time.Time_Duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get_systemTime():() -> stdgo._internal.time.Time_Duration.Duration return @:check3 (this.processState ?? throw "null pointer derefrence").systemTime;
    public var userTime(get, never) : () -> stdgo._internal.time.Time_Duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get_userTime():() -> stdgo._internal.time.Time_Duration.Duration return @:check3 (this.processState ?? throw "null pointer derefrence").userTime;
    public var _exited(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__exited():() -> Bool return @:check3 (this.processState ?? throw "null pointer derefrence")._exited;
    public var _success(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__success():() -> Bool return @:check3 (this.processState ?? throw "null pointer derefrence")._success;
    public var _sys(get, never) : () -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get__sys():() -> stdgo.AnyInterface return @:check3 (this.processState ?? throw "null pointer derefrence")._sys;
    public var _sysUsage(get, never) : () -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get__sysUsage():() -> stdgo.AnyInterface return @:check3 (this.processState ?? throw "null pointer derefrence")._sysUsage;
    public var _systemTime(get, never) : () -> stdgo._internal.time.Time_Duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__systemTime():() -> stdgo._internal.time.Time_Duration.Duration return @:check3 (this.processState ?? throw "null pointer derefrence")._systemTime;
    public var _userTime(get, never) : () -> stdgo._internal.time.Time_Duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__userTime():() -> stdgo._internal.time.Time_Duration.Duration return @:check3 (this.processState ?? throw "null pointer derefrence")._userTime;
    public function __copy__() {
        return new ExitError(processState, stderr);
    }
}
