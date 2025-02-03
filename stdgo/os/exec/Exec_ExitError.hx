package stdgo.os.exec;
@:structInit @:using(stdgo.os.exec.Exec.ExitError_static_extension) abstract ExitError(stdgo._internal.os.exec.Exec_ExitError.ExitError) from stdgo._internal.os.exec.Exec_ExitError.ExitError to stdgo._internal.os.exec.Exec_ExitError.ExitError {
    public var processState(get, set) : stdgo._internal.os.Os_ProcessState.ProcessState;
    function get_processState():stdgo._internal.os.Os_ProcessState.ProcessState return this.processState;
    function set_processState(v:stdgo._internal.os.Os_ProcessState.ProcessState):stdgo._internal.os.Os_ProcessState.ProcessState {
        this.processState = (v : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>);
        return v;
    }
    public var stderr(get, set) : Array<std.UInt>;
    function get_stderr():Array<std.UInt> return [for (i in this.stderr) i];
    function set_stderr(v:Array<std.UInt>):Array<std.UInt> {
        this.stderr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?processState:stdgo._internal.os.Os_ProcessState.ProcessState, ?stderr:Array<std.UInt>) this = new stdgo._internal.os.exec.Exec_ExitError.ExitError((processState : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>), ([for (i in stderr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
