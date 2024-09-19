package stdgo._internal.os.exec;
@:structInit @:using(stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension) class Cmd {
    public var path : stdgo.GoString = "";
    public var args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var dir : stdgo.GoString = "";
    public var stdin : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var stdout : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var stderr : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var extraFiles : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
    public var sysProcAttr : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>);
    public var process : stdgo.Ref<stdgo._internal.os.Os_Process.Process> = (null : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
    public var processState : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState> = (null : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var cancel : () -> stdgo.Error = null;
    public var waitDelay : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _childIOFiles : stdgo.Slice<stdgo._internal.io.Io_Closer.Closer> = (null : stdgo.Slice<stdgo._internal.io.Io_Closer.Closer>);
    public var _parentIOPipes : stdgo.Slice<stdgo._internal.io.Io_Closer.Closer> = (null : stdgo.Slice<stdgo._internal.io.Io_Closer.Closer>);
    public var _goroutine : stdgo.Slice<() -> stdgo.Error> = (null : stdgo.Slice<() -> stdgo.Error>);
    public var _goroutineErr : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public var _ctxResult : stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult> = (null : stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>);
    public var _createdByStack : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _lookPathErr : stdgo.Error = (null : stdgo.Error);
    public function new(?path:stdgo.GoString, ?args:stdgo.Slice<stdgo.GoString>, ?env:stdgo.Slice<stdgo.GoString>, ?dir:stdgo.GoString, ?stdin:stdgo._internal.io.Io_Reader.Reader, ?stdout:stdgo._internal.io.Io_Writer.Writer, ?stderr:stdgo._internal.io.Io_Writer.Writer, ?extraFiles:stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>, ?sysProcAttr:stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>, ?process:stdgo.Ref<stdgo._internal.os.Os_Process.Process>, ?processState:stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>, ?_ctx:stdgo._internal.context.Context_Context.Context, ?err:stdgo.Error, ?cancel:() -> stdgo.Error, ?waitDelay:stdgo._internal.time.Time_Duration.Duration, ?_childIOFiles:stdgo.Slice<stdgo._internal.io.Io_Closer.Closer>, ?_parentIOPipes:stdgo.Slice<stdgo._internal.io.Io_Closer.Closer>, ?_goroutine:stdgo.Slice<() -> stdgo.Error>, ?_goroutineErr:stdgo.Chan<stdgo.Error>, ?_ctxResult:stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>, ?_createdByStack:stdgo.Slice<stdgo.GoUInt8>, ?_lookPathErr:stdgo.Error) {
        if (path != null) this.path = path;
        if (args != null) this.args = args;
        if (env != null) this.env = env;
        if (dir != null) this.dir = dir;
        if (stdin != null) this.stdin = stdin;
        if (stdout != null) this.stdout = stdout;
        if (stderr != null) this.stderr = stderr;
        if (extraFiles != null) this.extraFiles = extraFiles;
        if (sysProcAttr != null) this.sysProcAttr = sysProcAttr;
        if (process != null) this.process = process;
        if (processState != null) this.processState = processState;
        if (_ctx != null) this._ctx = _ctx;
        if (err != null) this.err = err;
        if (cancel != null) this.cancel = cancel;
        if (waitDelay != null) this.waitDelay = waitDelay;
        if (_childIOFiles != null) this._childIOFiles = _childIOFiles;
        if (_parentIOPipes != null) this._parentIOPipes = _parentIOPipes;
        if (_goroutine != null) this._goroutine = _goroutine;
        if (_goroutineErr != null) this._goroutineErr = _goroutineErr;
        if (_ctxResult != null) this._ctxResult = _ctxResult;
        if (_createdByStack != null) this._createdByStack = _createdByStack;
        if (_lookPathErr != null) this._lookPathErr = _lookPathErr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Cmd(
path,
args,
env,
dir,
stdin,
stdout,
stderr,
extraFiles,
sysProcAttr,
process,
processState,
_ctx,
err,
cancel,
waitDelay,
_childIOFiles,
_parentIOPipes,
_goroutine,
_goroutineErr,
_ctxResult,
_createdByStack,
_lookPathErr);
    }
}
