package stdgo;
var errWaitDelay(get, set) : stdgo.Error;
private function get_errWaitDelay():stdgo.Error return stdgo._internal.os.exec.Exec_errwaitdelay.errWaitDelay;
private function set_errWaitDelay(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.exec.Exec_errwaitdelay.errWaitDelay = (v : stdgo.Error);
        return v;
    }
var errDot(get, set) : stdgo.Error;
private function get_errDot():stdgo.Error return stdgo._internal.os.exec.Exec_errdot.errDot;
private function set_errDot(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.exec.Exec_errdot.errDot = (v : stdgo.Error);
        return v;
    }
var errNotFound(get, set) : stdgo.Error;
private function get_errNotFound():stdgo.Error return stdgo._internal.os.exec.Exec_errnotfound.errNotFound;
private function set_errNotFound(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.exec.Exec_errnotfound.errNotFound = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.os.exec.Exec.Error_static_extension) abstract Error(stdgo._internal.os.exec.Exec_error.Error) from stdgo._internal.os.exec.Exec_error.Error to stdgo._internal.os.exec.Exec_error.Error {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?name:String, ?err:stdgo.Error) this = new stdgo._internal.os.exec.Exec_error.Error((name : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.exec.Exec.T_wrappedError_static_extension) @:dox(hide) abstract T_wrappedError(stdgo._internal.os.exec.Exec_t_wrappederror.T_wrappedError) from stdgo._internal.os.exec.Exec_t_wrappederror.T_wrappedError to stdgo._internal.os.exec.Exec_t_wrappederror.T_wrappedError {
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_prefix:String, ?_err:stdgo.Error) this = new stdgo._internal.os.exec.Exec_t_wrappederror.T_wrappedError((_prefix : stdgo.GoString), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.exec.Exec.Cmd_static_extension) abstract Cmd(stdgo._internal.os.exec.Exec_cmd.Cmd) from stdgo._internal.os.exec.Exec_cmd.Cmd to stdgo._internal.os.exec.Exec_cmd.Cmd {
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
    public var stdin(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get_stdin():stdgo._internal.io.Io_reader.Reader return this.stdin;
    function set_stdin(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this.stdin = v;
        return v;
    }
    public var stdout(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get_stdout():stdgo._internal.io.Io_writer.Writer return this.stdout;
    function set_stdout(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this.stdout = v;
        return v;
    }
    public var stderr(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get_stderr():stdgo._internal.io.Io_writer.Writer return this.stderr;
    function set_stderr(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this.stderr = v;
        return v;
    }
    public var extraFiles(get, set) : Array<stdgo._internal.os.Os_file.File>;
    function get_extraFiles():Array<stdgo._internal.os.Os_file.File> return [for (i in this.extraFiles) i];
    function set_extraFiles(v:Array<stdgo._internal.os.Os_file.File>):Array<stdgo._internal.os.Os_file.File> {
        this.extraFiles = ([for (i in v) (i : stdgo.Ref<stdgo._internal.os.Os_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>>);
        return v;
    }
    public var sysProcAttr(get, set) : stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr;
    function get_sysProcAttr():stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr return this.sysProcAttr;
    function set_sysProcAttr(v:stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr):stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr {
        this.sysProcAttr = (v : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>);
        return v;
    }
    public var process(get, set) : stdgo._internal.os.Os_process.Process;
    function get_process():stdgo._internal.os.Os_process.Process return this.process;
    function set_process(v:stdgo._internal.os.Os_process.Process):stdgo._internal.os.Os_process.Process {
        this.process = (v : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return v;
    }
    public var processState(get, set) : stdgo._internal.os.Os_processstate.ProcessState;
    function get_processState():stdgo._internal.os.Os_processstate.ProcessState return this.processState;
    function set_processState(v:stdgo._internal.os.Os_processstate.ProcessState):stdgo._internal.os.Os_processstate.ProcessState {
        this.processState = (v : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_context.Context;
    function get__ctx():stdgo._internal.context.Context_context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_context.Context):stdgo._internal.context.Context_context.Context {
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
    public var waitDelay(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_waitDelay():stdgo._internal.time.Time_duration.Duration return this.waitDelay;
    function set_waitDelay(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.waitDelay = v;
        return v;
    }
    public var _childIOFiles(get, set) : Array<stdgo._internal.io.Io_closer.Closer>;
    function get__childIOFiles():Array<stdgo._internal.io.Io_closer.Closer> return [for (i in this._childIOFiles) i];
    function set__childIOFiles(v:Array<stdgo._internal.io.Io_closer.Closer>):Array<stdgo._internal.io.Io_closer.Closer> {
        this._childIOFiles = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_closer.Closer>);
        return v;
    }
    public var _parentIOPipes(get, set) : Array<stdgo._internal.io.Io_closer.Closer>;
    function get__parentIOPipes():Array<stdgo._internal.io.Io_closer.Closer> return [for (i in this._parentIOPipes) i];
    function set__parentIOPipes(v:Array<stdgo._internal.io.Io_closer.Closer>):Array<stdgo._internal.io.Io_closer.Closer> {
        this._parentIOPipes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_closer.Closer>);
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
    public var _ctxResult(get, set) : stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>;
    function get__ctxResult():stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult> return this._ctxResult;
    function set__ctxResult(v:stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>):stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult> {
        this._ctxResult = (v : stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>);
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
    public function new(?path:String, ?args:Array<String>, ?env:Array<String>, ?dir:String, ?stdin:stdgo._internal.io.Io_reader.Reader, ?stdout:stdgo._internal.io.Io_writer.Writer, ?stderr:stdgo._internal.io.Io_writer.Writer, ?extraFiles:Array<stdgo._internal.os.Os_file.File>, ?sysProcAttr:stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr, ?process:stdgo._internal.os.Os_process.Process, ?processState:stdgo._internal.os.Os_processstate.ProcessState, ?_ctx:stdgo._internal.context.Context_context.Context, ?err:stdgo.Error, ?cancel:() -> stdgo.Error, ?waitDelay:stdgo._internal.time.Time_duration.Duration, ?_childIOFiles:Array<stdgo._internal.io.Io_closer.Closer>, ?_parentIOPipes:Array<stdgo._internal.io.Io_closer.Closer>, ?_goroutine:Array<() -> stdgo.Error>, ?_goroutineErr:stdgo.Chan<stdgo.Error>, ?_ctxResult:stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>, ?_createdByStack:Array<std.UInt>, ?_lookPathErr:stdgo.Error) this = new stdgo._internal.os.exec.Exec_cmd.Cmd(
(path : stdgo.GoString),
([for (i in args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(dir : stdgo.GoString),
stdin,
stdout,
stderr,
([for (i in extraFiles) (i : stdgo.Ref<stdgo._internal.os.Os_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>>),
(sysProcAttr : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>),
(process : stdgo.Ref<stdgo._internal.os.Os_process.Process>),
(processState : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>),
_ctx,
(err : stdgo.Error),
cancel,
waitDelay,
([for (i in _childIOFiles) i] : stdgo.Slice<stdgo._internal.io.Io_closer.Closer>),
([for (i in _parentIOPipes) i] : stdgo.Slice<stdgo._internal.io.Io_closer.Closer>),
([for (i in _goroutine) i] : stdgo.Slice<() -> stdgo.Error>),
(_goroutineErr : stdgo.Chan<stdgo.Error>),
(_ctxResult : stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>),
([for (i in _createdByStack) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_lookPathErr : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.exec.Exec.T_ctxResult_static_extension) @:dox(hide) abstract T_ctxResult(stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult) from stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult to stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _timer(get, set) : stdgo._internal.time.Time_timer.Timer;
    function get__timer():stdgo._internal.time.Time_timer.Timer return this._timer;
    function set__timer(v:stdgo._internal.time.Time_timer.Timer):stdgo._internal.time.Time_timer.Timer {
        this._timer = (v : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_timer:stdgo._internal.time.Time_timer.Timer) this = new stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult((_err : stdgo.Error), (_timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.exec.Exec.ExitError_static_extension) abstract ExitError(stdgo._internal.os.exec.Exec_exiterror.ExitError) from stdgo._internal.os.exec.Exec_exiterror.ExitError to stdgo._internal.os.exec.Exec_exiterror.ExitError {
    public var processState(get, set) : stdgo._internal.os.Os_processstate.ProcessState;
    function get_processState():stdgo._internal.os.Os_processstate.ProcessState return this.processState;
    function set_processState(v:stdgo._internal.os.Os_processstate.ProcessState):stdgo._internal.os.Os_processstate.ProcessState {
        this.processState = (v : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return v;
    }
    public var stderr(get, set) : Array<std.UInt>;
    function get_stderr():Array<std.UInt> return [for (i in this.stderr) i];
    function set_stderr(v:Array<std.UInt>):Array<std.UInt> {
        this.stderr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?processState:stdgo._internal.os.Os_processstate.ProcessState, ?stderr:Array<std.UInt>) this = new stdgo._internal.os.exec.Exec_exiterror.ExitError((processState : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>), ([for (i in stderr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.exec.Exec.T_prefixSuffixSaver_static_extension) @:dox(hide) abstract T_prefixSuffixSaver(stdgo._internal.os.exec.Exec_t_prefixsuffixsaver.T_prefixSuffixSaver) from stdgo._internal.os.exec.Exec_t_prefixsuffixsaver.T_prefixSuffixSaver to stdgo._internal.os.exec.Exec_t_prefixsuffixsaver.T_prefixSuffixSaver {
    public var n(get, set) : StdTypes.Int;
    function get_n():StdTypes.Int return this.n;
    function set_n(v:StdTypes.Int):StdTypes.Int {
        this.n = (v : stdgo.GoInt);
        return v;
    }
    public var _prefix(get, set) : Array<std.UInt>;
    function get__prefix():Array<std.UInt> return [for (i in this._prefix) i];
    function set__prefix(v:Array<std.UInt>):Array<std.UInt> {
        this._prefix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _suffix(get, set) : Array<std.UInt>;
    function get__suffix():Array<std.UInt> return [for (i in this._suffix) i];
    function set__suffix(v:Array<std.UInt>):Array<std.UInt> {
        this._suffix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _suffixOff(get, set) : StdTypes.Int;
    function get__suffixOff():StdTypes.Int return this._suffixOff;
    function set__suffixOff(v:StdTypes.Int):StdTypes.Int {
        this._suffixOff = (v : stdgo.GoInt);
        return v;
    }
    public var _skipped(get, set) : haxe.Int64;
    function get__skipped():haxe.Int64 return this._skipped;
    function set__skipped(v:haxe.Int64):haxe.Int64 {
        this._skipped = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?n:StdTypes.Int, ?_prefix:Array<std.UInt>, ?_suffix:Array<std.UInt>, ?_suffixOff:StdTypes.Int, ?_skipped:haxe.Int64) this = new stdgo._internal.os.exec.Exec_t_prefixsuffixsaver.T_prefixSuffixSaver((n : stdgo.GoInt), ([for (i in _prefix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _suffix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_suffixOff : stdgo.GoInt), (_skipped : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ErrorPointer = stdgo._internal.os.exec.Exec_errorpointer.ErrorPointer;
class Error_static_extension {
    static public function unwrap(_e:Error):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.exec.Exec_error.Error>);
        return stdgo._internal.os.exec.Exec_error_static_extension.Error_static_extension.unwrap(_e);
    }
    static public function error(_e:Error):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.exec.Exec_error.Error>);
        return stdgo._internal.os.exec.Exec_error_static_extension.Error_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_wrappedErrorPointer = stdgo._internal.os.exec.Exec_t_wrappederrorpointer.T_wrappedErrorPointer;
@:dox(hide) class T_wrappedError_static_extension {
    static public function unwrap(_w:T_wrappedError):stdgo.Error {
        return stdgo._internal.os.exec.Exec_t_wrappederror_static_extension.T_wrappedError_static_extension.unwrap(_w);
    }
    static public function error(_w:T_wrappedError):String {
        return stdgo._internal.os.exec.Exec_t_wrappederror_static_extension.T_wrappedError_static_extension.error(_w);
    }
}
typedef CmdPointer = stdgo._internal.os.exec.Exec_cmdpointer.CmdPointer;
class Cmd_static_extension {
    static public function environ_(_c:Cmd):Array<String> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return [for (i in stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.environ_(_c)) i];
    }
    static public function _environ(_c:Cmd):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension._environ(_c);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function stderrPipe(_c:Cmd):stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.stderrPipe(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stdoutPipe(_c:Cmd):stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.stdoutPipe(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stdinPipe(_c:Cmd):stdgo.Tuple<stdgo._internal.io.Io_writecloser.WriteCloser, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.stdinPipe(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function combinedOutput(_c:Cmd):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.combinedOutput(_c);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function output(_c:Cmd):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.output(_c);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _awaitGoroutines(_c:Cmd, _timer:stdgo._internal.time.Time_timer.Timer):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        final _timer = (_timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
        return stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension._awaitGoroutines(_c, _timer);
    }
    static public function wait_(_c:Cmd):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.wait_(_c);
    }
    static public function _watchCtx(_c:Cmd, _resultc:stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        final _resultc = (_resultc : stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>);
        stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension._watchCtx(_c, _resultc);
    }
    static public function start(_c:Cmd):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.start(_c);
    }
    static public function run(_c:Cmd):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.run(_c);
    }
    static public function _writerDescriptor(_c:Cmd, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension._writerDescriptor(_c, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _childStderr(_c:Cmd, _childStdout:stdgo._internal.os.Os_file.File):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        final _childStdout = (_childStdout : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension._childStderr(_c, _childStdout);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _childStdout(_c:Cmd):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension._childStdout(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _childStdin(_c:Cmd):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension._childStdin(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _argv(_c:Cmd):Array<String> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return [for (i in stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension._argv(_c)) i];
    }
    static public function string(_c:Cmd):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension.string(_c);
    }
}
@:dox(hide) typedef T_ctxResultPointer = stdgo._internal.os.exec.Exec_t_ctxresultpointer.T_ctxResultPointer;
@:dox(hide) class T_ctxResult_static_extension {

}
typedef ExitErrorPointer = stdgo._internal.os.exec.Exec_exiterrorpointer.ExitErrorPointer;
class ExitError_static_extension {
    static public function error(_e:ExitError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.exec.Exec_exiterror.ExitError>);
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.error(_e);
    }
    public static function _userTime(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension._userTime(__self__);
    }
    public static function _systemTime(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension._systemTime(__self__);
    }
    public static function _sysUsage(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.AnyInterface {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension._sysUsage(__self__);
    }
    public static function _sys(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.AnyInterface {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension._sys(__self__);
    }
    public static function _success(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):Bool {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension._success(__self__);
    }
    public static function _exited(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):Bool {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension._exited(__self__);
    }
    public static function userTime(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.userTime(__self__);
    }
    public static function systemTime(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.systemTime(__self__);
    }
    public static function sysUsage(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.AnyInterface {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.sysUsage(__self__);
    }
    public static function sys(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.AnyInterface {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.sys(__self__);
    }
    public static function success(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):Bool {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.success(__self__);
    }
    public static function string(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):String {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.string(__self__);
    }
    public static function pid(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):StdTypes.Int {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.pid(__self__);
    }
    public static function exited(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):Bool {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.exited(__self__);
    }
    public static function exitCode(__self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):StdTypes.Int {
        return stdgo._internal.os.exec.Exec_exiterror_static_extension.ExitError_static_extension.exitCode(__self__);
    }
}
@:dox(hide) typedef T_prefixSuffixSaverPointer = stdgo._internal.os.exec.Exec_t_prefixsuffixsaverpointer.T_prefixSuffixSaverPointer;
@:dox(hide) class T_prefixSuffixSaver_static_extension {
    static public function bytes(_w:T_prefixSuffixSaver):Array<std.UInt> {
        final _w = (_w : stdgo.Ref<stdgo._internal.os.exec.Exec_t_prefixsuffixsaver.T_prefixSuffixSaver>);
        return [for (i in stdgo._internal.os.exec.Exec_t_prefixsuffixsaver_static_extension.T_prefixSuffixSaver_static_extension.bytes(_w)) i];
    }
    static public function _fill(_w:T_prefixSuffixSaver, _dst:Array<std.UInt>, _p:Array<std.UInt>):Array<std.UInt> {
        final _w = (_w : stdgo.Ref<stdgo._internal.os.exec.Exec_t_prefixsuffixsaver.T_prefixSuffixSaver>);
        final _dst = (_dst : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.os.exec.Exec_t_prefixsuffixsaver_static_extension.T_prefixSuffixSaver_static_extension._fill(_w, _dst, _p)) i];
    }
    static public function write(_w:T_prefixSuffixSaver, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.os.exec.Exec_t_prefixsuffixsaver.T_prefixSuffixSaver>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.exec.Exec_t_prefixsuffixsaver_static_extension.T_prefixSuffixSaver_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package exec runs external commands. It wraps os.StartProcess to make it
    * easier to remap stdin and stdout, connect I/O with pipes, and do other
    * adjustments.
    * 
    * Unlike the "system" library call from C and other languages, the
    * os/exec package intentionally does not invoke the system shell and
    * does not expand any glob patterns or handle other expansions,
    * pipelines, or redirections typically done by shells. The package
    * behaves more like C's "exec" family of functions. To expand glob
    * patterns, either call the shell directly, taking care to escape any
    * dangerous input, or use the path/filepath package's Glob function.
    * To expand environment variables, use package os's ExpandEnv.
    * 
    * Note that the examples in this package assume a Unix system.
    * They may not run on Windows, and they do not run in the Go Playground
    * used by golang.org and godoc.org.
    * 
    * # Executables in the current directory
    * 
    * The functions Command and LookPath look for a program
    * in the directories listed in the current path, following the
    * conventions of the host operating system.
    * Operating systems have for decades included the current
    * directory in this search, sometimes implicitly and sometimes
    * configured explicitly that way by default.
    * Modern practice is that including the current directory
    * is usually unexpected and often leads to security problems.
    * 
    * To avoid those security problems, as of Go 1.19, this package will not resolve a program
    * using an implicit or explicit path entry relative to the current directory.
    * That is, if you run exec.LookPath("go"), it will not successfully return
    * ./go on Unix nor .\go.exe on Windows, no matter how the path is configured.
    * Instead, if the usual path algorithms would result in that answer,
    * these functions return an error err satisfying errors.Is(err, ErrDot).
    * 
    * For example, consider these two program snippets:
    * 
    * 	path, err := exec.LookPath("prog")
    * 	if err != nil {
    * 		log.Fatal(err)
    * 	}
    * 	use(path)
    * 
    * and
    * 
    * 	cmd := exec.Command("prog")
    * 	if err := cmd.Run(); err != nil {
    * 		log.Fatal(err)
    * 	}
    * 
    * These will not find and run ./prog or .\prog.exe,
    * no matter how the current path is configured.
    * 
    * Code that always wants to run a program from the current directory
    * can be rewritten to say "./prog" instead of "prog".
    * 
    * Code that insists on including results from relative path entries
    * can instead override the error using an errors.Is check:
    * 
    * 	path, err := exec.LookPath("prog")
    * 	if errors.Is(err, exec.ErrDot) {
    * 		err = nil
    * 	}
    * 	if err != nil {
    * 		log.Fatal(err)
    * 	}
    * 	use(path)
    * 
    * and
    * 
    * 	cmd := exec.Command("prog")
    * 	if errors.Is(cmd.Err, exec.ErrDot) {
    * 		cmd.Err = nil
    * 	}
    * 	if err := cmd.Run(); err != nil {
    * 		log.Fatal(err)
    * 	}
    * 
    * Setting the environment variable GODEBUG=execerrdot=0
    * disables generation of ErrDot entirely, temporarily restoring the pre-Go 1.19
    * behavior for programs that are unable to apply more targeted fixes.
    * A future version of Go may remove support for this variable.
    * 
    * Before adding such overrides, make sure you understand the
    * security implications of doing so.
    * See https://go.dev/blog/path-security for more information.
**/
class Exec {
    static public inline function benchmarkExecHostname(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.os.exec.Exec_benchmarkexechostname.benchmarkExecHostname(_b);
    }
    static public inline function testDedupEnv(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.os.exec.Exec_testdedupenv.testDedupEnv(_t);
    }
    /**
        * Command returns the Cmd struct to execute the named program with
        * the given arguments.
        * 
        * It sets only the Path and Args in the returned structure.
        * 
        * If name contains no path separators, Command uses LookPath to
        * resolve name to a complete path if possible. Otherwise it uses name
        * directly as Path.
        * 
        * The returned Cmd's Args field is constructed from the command name
        * followed by the elements of arg, so arg should not include the
        * command name itself. For example, Command("echo", "hello").
        * Args[0] is always name, not the possibly resolved Path.
        * 
        * On Windows, processes receive the whole command line as a single string
        * and do their own parsing. Command combines and quotes Args into a command
        * line string with an algorithm compatible with applications using
        * CommandLineToArgvW (which is the most common way). Notable exceptions are
        * msiexec.exe and cmd.exe (and thus, all batch files), which have a different
        * unquoting algorithm. In these or other similar cases, you can do the
        * quoting yourself and provide the full command line in SysProcAttr.CmdLine,
        * leaving Args empty.
    **/
    static public inline function command(_name:String, _arg:haxe.Rest<String>):Cmd {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.exec.Exec_command.command(_name, ...[for (i in _arg) i]);
    }
    /**
        * CommandContext is like Command but includes a context.
        * 
        * The provided context is used to interrupt the process
        * (by calling cmd.Cancel or os.Process.Kill)
        * if the context becomes done before the command completes on its own.
        * 
        * CommandContext sets the command's Cancel function to invoke the Kill method
        * on its Process, and leaves its WaitDelay unset. The caller may change the
        * cancellation behavior by modifying those fields before starting the command.
    **/
    static public inline function commandContext(_ctx:stdgo._internal.context.Context_context.Context, _name:String, _arg:haxe.Rest<String>):Cmd {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.exec.Exec_commandcontext.commandContext(_ctx, _name, ...[for (i in _arg) i]);
    }
    static public inline function testPrefixSuffixSaver(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.os.exec.Exec_testprefixsuffixsaver.testPrefixSuffixSaver(_t);
    }
    static public inline function testLookPathNotFound(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.os.exec.Exec_testlookpathnotfound.testLookPathNotFound(_t);
    }
    /**
        * LookPath searches for an executable named file in the
        * directories named by the PATH environment variable.
        * If file contains a slash, it is tried directly and the PATH is not consulted.
        * The result may be an absolute path or a path relative to the current directory.
    **/
    static public inline function lookPath(_file:String):stdgo.Tuple<String, stdgo.Error> {
        final _file = (_file : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.exec.Exec_lookpath.lookPath(_file);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
