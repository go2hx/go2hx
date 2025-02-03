package stdgo.os.exec;
@:structInit @:using(stdgo.os.exec.Exec.Cmd_static_extension) abstract Cmd(stdgo._internal.os.exec.Exec_Cmd.Cmd) from stdgo._internal.os.exec.Exec_Cmd.Cmd to stdgo._internal.os.exec.Exec_Cmd.Cmd {
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var args(get, set) : Array<String>;
    function get_args():Array<String> return [for (i in this.args) i];
    function set_args(v:Array<String>):Array<String> {
        this.args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var env(get, set) : Array<String>;
    function get_env():Array<String> return [for (i in this.env) i];
    function set_env(v:Array<String>):Array<String> {
        this.env = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public var stdin(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_stdin():stdgo._internal.io.Io_Reader.Reader return this.stdin;
    function set_stdin(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.stdin = v;
        return v;
    }
    public var stdout(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_stdout():stdgo._internal.io.Io_Writer.Writer return this.stdout;
    function set_stdout(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.stdout = v;
        return v;
    }
    public var stderr(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_stderr():stdgo._internal.io.Io_Writer.Writer return this.stderr;
    function set_stderr(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.stderr = v;
        return v;
    }
    public var extraFiles(get, set) : Array<stdgo._internal.os.Os_File.File>;
    function get_extraFiles():Array<stdgo._internal.os.Os_File.File> return [for (i in this.extraFiles) i];
    function set_extraFiles(v:Array<stdgo._internal.os.Os_File.File>):Array<stdgo._internal.os.Os_File.File> {
        this.extraFiles = ([for (i in v) (i : stdgo.Ref<stdgo._internal.os.Os_File.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
        return v;
    }
    public var sysProcAttr(get, set) : stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr;
    function get_sysProcAttr():stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr return this.sysProcAttr;
    function set_sysProcAttr(v:stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr):stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr {
        this.sysProcAttr = (v : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>);
        return v;
    }
    public var process(get, set) : stdgo._internal.os.Os_Process.Process;
    function get_process():stdgo._internal.os.Os_Process.Process return this.process;
    function set_process(v:stdgo._internal.os.Os_Process.Process):stdgo._internal.os.Os_Process.Process {
        this.process = (v : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return v;
    }
    public var processState(get, set) : stdgo._internal.os.Os_ProcessState.ProcessState;
    function get_processState():stdgo._internal.os.Os_ProcessState.ProcessState return this.processState;
    function set_processState(v:stdgo._internal.os.Os_ProcessState.ProcessState):stdgo._internal.os.Os_ProcessState.ProcessState {
        this.processState = (v : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>);
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var cancel(get, set) : () -> stdgo.Error;
    function get_cancel():() -> stdgo.Error return () -> this.cancel();
    function set_cancel(v:() -> stdgo.Error):() -> stdgo.Error {
        this.cancel = v;
        return v;
    }
    public var waitDelay(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_waitDelay():stdgo._internal.time.Time_Duration.Duration return this.waitDelay;
    function set_waitDelay(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.waitDelay = v;
        return v;
    }
    public var _childIOFiles(get, set) : Array<stdgo._internal.io.Io_Closer.Closer>;
    function get__childIOFiles():Array<stdgo._internal.io.Io_Closer.Closer> return [for (i in this._childIOFiles) i];
    function set__childIOFiles(v:Array<stdgo._internal.io.Io_Closer.Closer>):Array<stdgo._internal.io.Io_Closer.Closer> {
        this._childIOFiles = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_Closer.Closer>);
        return v;
    }
    public var _parentIOPipes(get, set) : Array<stdgo._internal.io.Io_Closer.Closer>;
    function get__parentIOPipes():Array<stdgo._internal.io.Io_Closer.Closer> return [for (i in this._parentIOPipes) i];
    function set__parentIOPipes(v:Array<stdgo._internal.io.Io_Closer.Closer>):Array<stdgo._internal.io.Io_Closer.Closer> {
        this._parentIOPipes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_Closer.Closer>);
        return v;
    }
    public var _goroutine(get, set) : Array<() -> stdgo.Error>;
    function get__goroutine():Array<() -> stdgo.Error> return [for (i in this._goroutine) () -> i()];
    function set__goroutine(v:Array<() -> stdgo.Error>):Array<() -> stdgo.Error> {
        this._goroutine = ([for (i in v) i] : stdgo.Slice<() -> stdgo.Error>);
        return v;
    }
    public var _goroutineErr(get, set) : stdgo.Chan<stdgo.Error>;
    function get__goroutineErr():stdgo.Chan<stdgo.Error> return this._goroutineErr;
    function set__goroutineErr(v:stdgo.Chan<stdgo.Error>):stdgo.Chan<stdgo.Error> {
        this._goroutineErr = (v : stdgo.Chan<stdgo.Error>);
        return v;
    }
    public var _ctxResult(get, set) : stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>;
    function get__ctxResult():stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult> return this._ctxResult;
    function set__ctxResult(v:stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>):stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult> {
        this._ctxResult = (v : stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>);
        return v;
    }
    public var _createdByStack(get, set) : Array<std.UInt>;
    function get__createdByStack():Array<std.UInt> return [for (i in this._createdByStack) i];
    function set__createdByStack(v:Array<std.UInt>):Array<std.UInt> {
        this._createdByStack = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _lookPathErr(get, set) : stdgo.Error;
    function get__lookPathErr():stdgo.Error return this._lookPathErr;
    function set__lookPathErr(v:stdgo.Error):stdgo.Error {
        this._lookPathErr = (v : stdgo.Error);
        return v;
    }
    public function new(?path:String, ?args:Array<String>, ?env:Array<String>, ?dir:String, ?stdin:stdgo._internal.io.Io_Reader.Reader, ?stdout:stdgo._internal.io.Io_Writer.Writer, ?stderr:stdgo._internal.io.Io_Writer.Writer, ?extraFiles:Array<stdgo._internal.os.Os_File.File>, ?sysProcAttr:stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr, ?process:stdgo._internal.os.Os_Process.Process, ?processState:stdgo._internal.os.Os_ProcessState.ProcessState, ?_ctx:stdgo._internal.context.Context_Context.Context, ?err:stdgo.Error, ?cancel:() -> stdgo.Error, ?waitDelay:stdgo._internal.time.Time_Duration.Duration, ?_childIOFiles:Array<stdgo._internal.io.Io_Closer.Closer>, ?_parentIOPipes:Array<stdgo._internal.io.Io_Closer.Closer>, ?_goroutine:Array<() -> stdgo.Error>, ?_goroutineErr:stdgo.Chan<stdgo.Error>, ?_ctxResult:stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>, ?_createdByStack:Array<std.UInt>, ?_lookPathErr:stdgo.Error) this = new stdgo._internal.os.exec.Exec_Cmd.Cmd(
(path : stdgo.GoString),
([for (i in args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(dir : stdgo.GoString),
stdin,
stdout,
stderr,
([for (i in extraFiles) (i : stdgo.Ref<stdgo._internal.os.Os_File.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>),
(sysProcAttr : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>),
(process : stdgo.Ref<stdgo._internal.os.Os_Process.Process>),
(processState : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>),
_ctx,
(err : stdgo.Error),
cancel,
waitDelay,
([for (i in _childIOFiles) i] : stdgo.Slice<stdgo._internal.io.Io_Closer.Closer>),
([for (i in _parentIOPipes) i] : stdgo.Slice<stdgo._internal.io.Io_Closer.Closer>),
([for (i in _goroutine) i] : stdgo.Slice<() -> stdgo.Error>),
(_goroutineErr : stdgo.Chan<stdgo.Error>),
(_ctxResult : stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>),
([for (i in _createdByStack) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_lookPathErr : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
