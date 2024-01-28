package stdgo._internal.os.exec;
private var __go2hxdoc__package : Bool;
var errWaitDelay : stdgo.Error = (null : stdgo.Error);
var _execwait : stdgo.Ref<stdgo._internal.internal.godebug.Godebug.Setting> = (null : stdgo.Ref<stdgo._internal.internal.godebug.Godebug.Setting>);
var _execerrdot : stdgo.Ref<stdgo._internal.internal.godebug.Godebug.Setting> = (null : stdgo.Ref<stdgo._internal.internal.godebug.Godebug.Setting>);
var errDot : stdgo.Error = (null : stdgo.Error);
var errNotFound : stdgo.Error = (null : stdgo.Error);
var _nonExistentPaths : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
@:structInit @:using(stdgo._internal.os.exec.Exec.Error_static_extension) class Error {
    public var name : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?name:stdgo.GoString, ?err:stdgo.Error) {
        if (name != null) this.name = name;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(name, err);
    }
}
@:structInit @:private @:using(stdgo._internal.os.exec.Exec.T_wrappedError_static_extension) class T_wrappedError {
    public var _prefix : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_prefix:stdgo.GoString, ?_err:stdgo.Error) {
        if (_prefix != null) this._prefix = _prefix;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrappedError(_prefix, _err);
    }
}
@:structInit @:using(stdgo._internal.os.exec.Exec.Cmd_static_extension) class Cmd {
    public var path : stdgo.GoString = "";
    public var args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var dir : stdgo.GoString = "";
    public var stdin : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var stdout : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var stderr : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var extraFiles : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
    public var sysProcAttr : stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr>);
    public var process : stdgo.Ref<stdgo._internal.os.Os.Process> = (null : stdgo.Ref<stdgo._internal.os.Os.Process>);
    public var processState : stdgo.Ref<stdgo._internal.os.Os.ProcessState> = (null : stdgo.Ref<stdgo._internal.os.Os.ProcessState>);
    public var _ctx : stdgo._internal.context.Context.Context = (null : stdgo._internal.context.Context.Context);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var cancel : () -> stdgo.Error = null;
    public var waitDelay : stdgo._internal.time.Time.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
    public var _childIOFiles : stdgo.Slice<stdgo._internal.io.Io.Closer> = (null : stdgo.Slice<stdgo._internal.io.Io.Closer>);
    public var _parentIOPipes : stdgo.Slice<stdgo._internal.io.Io.Closer> = (null : stdgo.Slice<stdgo._internal.io.Io.Closer>);
    public var _goroutine : stdgo.Slice<() -> stdgo.Error> = (null : stdgo.Slice<() -> stdgo.Error>);
    public var _goroutineErr : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public var _ctxResult : stdgo.Chan<stdgo._internal.os.exec.Exec.T_ctxResult> = (null : stdgo.Chan<stdgo._internal.os.exec.Exec.T_ctxResult>);
    public var _createdByStack : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _lookPathErr : stdgo.Error = (null : stdgo.Error);
    public function new(?path:stdgo.GoString, ?args:stdgo.Slice<stdgo.GoString>, ?env:stdgo.Slice<stdgo.GoString>, ?dir:stdgo.GoString, ?stdin:stdgo._internal.io.Io.Reader, ?stdout:stdgo._internal.io.Io.Writer, ?stderr:stdgo._internal.io.Io.Writer, ?extraFiles:stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>, ?sysProcAttr:stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr>, ?process:stdgo.Ref<stdgo._internal.os.Os.Process>, ?processState:stdgo.Ref<stdgo._internal.os.Os.ProcessState>, ?_ctx:stdgo._internal.context.Context.Context, ?err:stdgo.Error, ?cancel:() -> stdgo.Error, ?waitDelay:stdgo._internal.time.Time.Duration, ?_childIOFiles:stdgo.Slice<stdgo._internal.io.Io.Closer>, ?_parentIOPipes:stdgo.Slice<stdgo._internal.io.Io.Closer>, ?_goroutine:stdgo.Slice<() -> stdgo.Error>, ?_goroutineErr:stdgo.Chan<stdgo.Error>, ?_ctxResult:stdgo.Chan<stdgo._internal.os.exec.Exec.T_ctxResult>, ?_createdByStack:stdgo.Slice<stdgo.GoUInt8>, ?_lookPathErr:stdgo.Error) {
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
@:structInit @:private class T_ctxResult {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time.Timer>);
    public function new(?_err:stdgo.Error, ?_timer:stdgo.Ref<stdgo._internal.time.Time.Timer>) {
        if (_err != null) this._err = _err;
        if (_timer != null) this._timer = _timer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ctxResult(_err, _timer);
    }
}
@:structInit @:using(stdgo._internal.os.exec.Exec.ExitError_static_extension) class ExitError {
    @:embedded
    public var processState : stdgo.Ref<stdgo._internal.os.Os.ProcessState> = (null : stdgo.Ref<stdgo._internal.os.Os.ProcessState>);
    public var stderr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?processState:stdgo.Ref<stdgo._internal.os.Os.ProcessState>, ?stderr:stdgo.Slice<stdgo.GoUInt8>) {
        if (processState != null) this.processState = processState;
        if (stderr != null) this.stderr = stderr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function exitCode():stdgo.GoInt return (0 : stdgo.GoInt);
    @:embedded
    public function exited():Bool return false;
    @:embedded
    public function pid():stdgo.GoInt return (0 : stdgo.GoInt);
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function success():Bool return false;
    @:embedded
    public function sys():stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function sysUsage():stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function systemTime():stdgo._internal.time.Time.Duration return ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
    @:embedded
    public function userTime():stdgo._internal.time.Time.Duration return ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
    @:embedded
    public function _exited():Bool return false;
    @:embedded
    public function _success():Bool return false;
    @:embedded
    public function _sys():stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function _sysUsage():stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function _systemTime():stdgo._internal.time.Time.Duration return ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
    @:embedded
    public function _userTime():stdgo._internal.time.Time.Duration return ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
    public function __copy__() {
        return new ExitError(processState, stderr);
    }
}
@:structInit @:private @:using(stdgo._internal.os.exec.Exec.T_prefixSuffixSaver_static_extension) class T_prefixSuffixSaver {
    public var n : stdgo.GoInt = 0;
    public var _prefix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _suffix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _suffixOff : stdgo.GoInt = 0;
    public var _skipped : stdgo.GoInt64 = 0;
    public function new(?n:stdgo.GoInt, ?_prefix:stdgo.Slice<stdgo.GoUInt8>, ?_suffix:stdgo.Slice<stdgo.GoUInt8>, ?_suffixOff:stdgo.GoInt, ?_skipped:stdgo.GoInt64) {
        if (n != null) this.n = n;
        if (_prefix != null) this._prefix = _prefix;
        if (_suffix != null) this._suffix = _suffix;
        if (_suffixOff != null) this._suffixOff = _suffixOff;
        if (_skipped != null) this._skipped = _skipped;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_prefixSuffixSaver(n, _prefix, _suffix, _suffixOff, _skipped);
    }
}
function benchmarkExecHostname(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void throw ":os.exec.benchmarkExecHostname is not yet implemented";
function testDedupEnv(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":os.exec.testDedupEnv is not yet implemented";
function command(_name:stdgo.GoString, _arg:haxe.Rest<stdgo.GoString>):stdgo.Ref<Cmd> throw ":os.exec.command is not yet implemented";
function commandContext(_ctx:stdgo._internal.context.Context.Context, _name:stdgo.GoString, _arg:haxe.Rest<stdgo.GoString>):stdgo.Ref<Cmd> throw ":os.exec.commandContext is not yet implemented";
function _interfaceEqual(_a:stdgo.AnyInterface, _b:stdgo.AnyInterface):Bool throw ":os.exec._interfaceEqual is not yet implemented";
function _closeDescriptors(_closers:stdgo.Slice<stdgo._internal.io.Io.Closer>):Void throw ":os.exec._closeDescriptors is not yet implemented";
function _lookExtensions(_path:stdgo.GoString, _dir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.exec._lookExtensions is not yet implemented";
function _minInt(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt throw ":os.exec._minInt is not yet implemented";
function _dedupEnv(_env:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw ":os.exec._dedupEnv is not yet implemented";
function _dedupEnvCase(_caseInsensitive:Bool, _nulOK:Bool, _env:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw ":os.exec._dedupEnvCase is not yet implemented";
function _addCriticalEnv(_env:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> throw ":os.exec._addCriticalEnv is not yet implemented";
function _skipStdinCopyError(_err:stdgo.Error):Bool throw ":os.exec._skipStdinCopyError is not yet implemented";
function testPrefixSuffixSaver(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":os.exec.testPrefixSuffixSaver is not yet implemented";
function testLookPathNotFound(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":os.exec.testLookPathNotFound is not yet implemented";
function lookPath(_file:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.exec.lookPath is not yet implemented";
class Error_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Error>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec.Exec.Error_asInterface) class Error_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<Error>):stdgo.Error throw "Error:os.exec.unwrap is not yet implemented";
    @:keep
    static public function error( _e:stdgo.Ref<Error>):stdgo.GoString throw "Error:os.exec.error is not yet implemented";
}
class T_wrappedError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wrappedError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec.Exec.T_wrappedError_asInterface) class T_wrappedError_static_extension {
    @:keep
    static public function unwrap( _w:T_wrappedError):stdgo.Error throw "T_wrappedError:os.exec.unwrap is not yet implemented";
    @:keep
    static public function error( _w:T_wrappedError):stdgo.GoString throw "T_wrappedError:os.exec.error is not yet implemented";
}
class Cmd_asInterface {
    @:keep
    public dynamic function environ():stdgo.Slice<stdgo.GoString> return __self__.value.environ();
    @:keep
    public dynamic function _environ():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value._environ();
    @:keep
    public dynamic function stderrPipe():{ var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; } return __self__.value.stderrPipe();
    @:keep
    public dynamic function stdoutPipe():{ var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; } return __self__.value.stdoutPipe();
    @:keep
    public dynamic function stdinPipe():{ var _0 : stdgo._internal.io.Io.WriteCloser; var _1 : stdgo.Error; } return __self__.value.stdinPipe();
    @:keep
    public dynamic function combinedOutput():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.combinedOutput();
    @:keep
    public dynamic function output():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.output();
    @:keep
    public dynamic function _awaitGoroutines(_timer:stdgo.Ref<stdgo._internal.time.Time.Timer>):stdgo.Error return __self__.value._awaitGoroutines(_timer);
    @:keep
    public dynamic function wait_():stdgo.Error return __self__.value.wait_();
    @:keep
    public dynamic function _watchCtx(_resultc:stdgo.Chan<T_ctxResult>):Void __self__.value._watchCtx(_resultc);
    @:keep
    public dynamic function start():stdgo.Error return __self__.value.start();
    @:keep
    public dynamic function run():stdgo.Error return __self__.value.run();
    @:keep
    public dynamic function _writerDescriptor(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.Ref<stdgo._internal.os.Os.File>; var _1 : stdgo.Error; } return __self__.value._writerDescriptor(_w);
    @:keep
    public dynamic function _childStderr(_childStdout:stdgo.Ref<stdgo._internal.os.Os.File>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os.File>; var _1 : stdgo.Error; } return __self__.value._childStderr(_childStdout);
    @:keep
    public dynamic function _childStdout():{ var _0 : stdgo.Ref<stdgo._internal.os.Os.File>; var _1 : stdgo.Error; } return __self__.value._childStdout();
    @:keep
    public dynamic function _childStdin():{ var _0 : stdgo.Ref<stdgo._internal.os.Os.File>; var _1 : stdgo.Error; } return __self__.value._childStdin();
    @:keep
    public dynamic function _argv():stdgo.Slice<stdgo.GoString> return __self__.value._argv();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Cmd>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec.Exec.Cmd_asInterface) class Cmd_static_extension {
    @:keep
    static public function environ( _c:stdgo.Ref<Cmd>):stdgo.Slice<stdgo.GoString> throw "Cmd:os.exec.environ is not yet implemented";
    @:keep
    static public function _environ( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "Cmd:os.exec._environ is not yet implemented";
    @:keep
    static public function stderrPipe( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stderrPipe is not yet implemented";
    @:keep
    static public function stdoutPipe( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stdoutPipe is not yet implemented";
    @:keep
    static public function stdinPipe( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo._internal.io.Io.WriteCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stdinPipe is not yet implemented";
    @:keep
    static public function combinedOutput( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } throw "Cmd:os.exec.combinedOutput is not yet implemented";
    @:keep
    static public function output( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } throw "Cmd:os.exec.output is not yet implemented";
    @:keep
    static public function _awaitGoroutines( _c:stdgo.Ref<Cmd>, _timer:stdgo.Ref<stdgo._internal.time.Time.Timer>):stdgo.Error throw "Cmd:os.exec._awaitGoroutines is not yet implemented";
    @:keep
    static public function wait_( _c:stdgo.Ref<Cmd>):stdgo.Error throw "Cmd:os.exec.wait_ is not yet implemented";
    @:keep
    static public function _watchCtx( _c:stdgo.Ref<Cmd>, _resultc:stdgo.Chan<T_ctxResult>):Void throw "Cmd:os.exec._watchCtx is not yet implemented";
    @:keep
    static public function start( _c:stdgo.Ref<Cmd>):stdgo.Error throw "Cmd:os.exec.start is not yet implemented";
    @:keep
    static public function run( _c:stdgo.Ref<Cmd>):stdgo.Error throw "Cmd:os.exec.run is not yet implemented";
    @:keep
    static public function _writerDescriptor( _c:stdgo.Ref<Cmd>, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.Ref<stdgo._internal.os.Os.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._writerDescriptor is not yet implemented";
    @:keep
    static public function _childStderr( _c:stdgo.Ref<Cmd>, _childStdout:stdgo.Ref<stdgo._internal.os.Os.File>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStderr is not yet implemented";
    @:keep
    static public function _childStdout( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStdout is not yet implemented";
    @:keep
    static public function _childStdin( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStdin is not yet implemented";
    @:keep
    static public function _argv( _c:stdgo.Ref<Cmd>):stdgo.Slice<stdgo.GoString> throw "Cmd:os.exec._argv is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<Cmd>):stdgo.GoString throw "Cmd:os.exec.string is not yet implemented";
}
class ExitError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    @:embedded
    public dynamic function _userTime():stdgo._internal.time.Time.Duration return __self__.value._userTime();
    @:embedded
    public dynamic function _systemTime():stdgo._internal.time.Time.Duration return __self__.value._systemTime();
    @:embedded
    public dynamic function _sysUsage():stdgo.AnyInterface return __self__.value._sysUsage();
    @:embedded
    public dynamic function _sys():stdgo.AnyInterface return __self__.value._sys();
    @:embedded
    public dynamic function _success():Bool return __self__.value._success();
    @:embedded
    public dynamic function _exited():Bool return __self__.value._exited();
    @:embedded
    public dynamic function userTime():stdgo._internal.time.Time.Duration return __self__.value.userTime();
    @:embedded
    public dynamic function systemTime():stdgo._internal.time.Time.Duration return __self__.value.systemTime();
    @:embedded
    public dynamic function sysUsage():stdgo.AnyInterface return __self__.value.sysUsage();
    @:embedded
    public dynamic function sys():stdgo.AnyInterface return __self__.value.sys();
    @:embedded
    public dynamic function success():Bool return __self__.value.success();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function pid():stdgo.GoInt return __self__.value.pid();
    @:embedded
    public dynamic function exited():Bool return __self__.value.exited();
    @:embedded
    public dynamic function exitCode():stdgo.GoInt return __self__.value.exitCode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ExitError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec.Exec.ExitError_asInterface) class ExitError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<ExitError>):stdgo.GoString throw "ExitError:os.exec.error is not yet implemented";
    @:embedded
    public static function _userTime( __self__:ExitError):stdgo._internal.time.Time.Duration return __self__._userTime();
    @:embedded
    public static function _systemTime( __self__:ExitError):stdgo._internal.time.Time.Duration return __self__._systemTime();
    @:embedded
    public static function _sysUsage( __self__:ExitError):stdgo.AnyInterface return __self__._sysUsage();
    @:embedded
    public static function _sys( __self__:ExitError):stdgo.AnyInterface return __self__._sys();
    @:embedded
    public static function _success( __self__:ExitError):Bool return __self__._success();
    @:embedded
    public static function _exited( __self__:ExitError):Bool return __self__._exited();
    @:embedded
    public static function userTime( __self__:ExitError):stdgo._internal.time.Time.Duration return __self__.userTime();
    @:embedded
    public static function systemTime( __self__:ExitError):stdgo._internal.time.Time.Duration return __self__.systemTime();
    @:embedded
    public static function sysUsage( __self__:ExitError):stdgo.AnyInterface return __self__.sysUsage();
    @:embedded
    public static function sys( __self__:ExitError):stdgo.AnyInterface return __self__.sys();
    @:embedded
    public static function success( __self__:ExitError):Bool return __self__.success();
    @:embedded
    public static function string( __self__:ExitError):stdgo.GoString return __self__.string();
    @:embedded
    public static function pid( __self__:ExitError):stdgo.GoInt return __self__.pid();
    @:embedded
    public static function exited( __self__:ExitError):Bool return __self__.exited();
    @:embedded
    public static function exitCode( __self__:ExitError):stdgo.GoInt return __self__.exitCode();
}
class T_prefixSuffixSaver_asInterface {
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoByte> return __self__.value.bytes();
    @:keep
    public dynamic function _fill(_dst:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _p:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value._fill(_dst, _p);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_prefixSuffixSaver>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec.Exec.T_prefixSuffixSaver_asInterface) class T_prefixSuffixSaver_static_extension {
    @:keep
    static public function bytes( _w:stdgo.Ref<T_prefixSuffixSaver>):stdgo.Slice<stdgo.GoByte> throw "T_prefixSuffixSaver:os.exec.bytes is not yet implemented";
    @:keep
    static public function _fill( _w:stdgo.Ref<T_prefixSuffixSaver>, _dst:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _p:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> throw "T_prefixSuffixSaver:os.exec._fill is not yet implemented";
    @:keep
    static public function write( _w:stdgo.Ref<T_prefixSuffixSaver>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_prefixSuffixSaver:os.exec.write is not yet implemented";
}
