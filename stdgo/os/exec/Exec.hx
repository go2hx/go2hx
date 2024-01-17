package stdgo.os.exec;
/**
    // Package exec runs external commands. It wraps os.StartProcess to make it
    // easier to remap stdin and stdout, connect I/O with pipes, and do other
    // adjustments.
    //
    // Unlike the "system" library call from C and other languages, the
    // os/exec package intentionally does not invoke the system shell and
    // does not expand any glob patterns or handle other expansions,
    // pipelines, or redirections typically done by shells. The package
    // behaves more like C's "exec" family of functions. To expand glob
    // patterns, either call the shell directly, taking care to escape any
    // dangerous input, or use the path/filepath package's Glob function.
    // To expand environment variables, use package os's ExpandEnv.
    //
    // Note that the examples in this package assume a Unix system.
    // They may not run on Windows, and they do not run in the Go Playground
    // used by golang.org and godoc.org.
    //
    // # Executables in the current directory
    //
    // The functions Command and LookPath look for a program
    // in the directories listed in the current path, following the
    // conventions of the host operating system.
    // Operating systems have for decades included the current
    // directory in this search, sometimes implicitly and sometimes
    // configured explicitly that way by default.
    // Modern practice is that including the current directory
    // is usually unexpected and often leads to security problems.
    //
    // To avoid those security problems, as of Go 1.19, this package will not resolve a program
    // using an implicit or explicit path entry relative to the current directory.
    // That is, if you run exec.LookPath("go"), it will not successfully return
    // ./go on Unix nor .\go.exe on Windows, no matter how the path is configured.
    // Instead, if the usual path algorithms would result in that answer,
    // these functions return an error err satisfying errors.Is(err, ErrDot).
    //
    // For example, consider these two program snippets:
    //
    //	path, err := exec.LookPath("prog")
    //	if err != nil {
    //		log.Fatal(err)
    //	}
    //	use(path)
    //
    // and
    //
    //	cmd := exec.Command("prog")
    //	if err := cmd.Run(); err != nil {
    //		log.Fatal(err)
    //	}
    //
    // These will not find and run ./prog or .\prog.exe,
    // no matter how the current path is configured.
    //
    // Code that always wants to run a program from the current directory
    // can be rewritten to say "./prog" instead of "prog".
    //
    // Code that insists on including results from relative path entries
    // can instead override the error using an errors.Is check:
    //
    //	path, err := exec.LookPath("prog")
    //	if errors.Is(err, exec.ErrDot) {
    //		err = nil
    //	}
    //	if err != nil {
    //		log.Fatal(err)
    //	}
    //	use(path)
    //
    // and
    //
    //	cmd := exec.Command("prog")
    //	if errors.Is(cmd.Err, exec.ErrDot) {
    //		cmd.Err = nil
    //	}
    //	if err := cmd.Run(); err != nil {
    //		log.Fatal(err)
    //	}
    //
    // Setting the environment variable GODEBUG=execerrdot=0
    // disables generation of ErrDot entirely, temporarily restoring the pre-Go 1.19
    // behavior for programs that are unable to apply more targeted fixes.
    // A future version of Go may remove support for this variable.
    //
    // Before adding such overrides, make sure you understand the
    // security implications of doing so.
    // See https://go.dev/blog/path-security for more information.
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrWaitDelay is returned by (*Cmd).Wait if the process exits with a
    // successful status code but its output pipes are not closed before the
    // command's WaitDelay expires.
    
    
**/
var errWaitDelay : stdgo.Error = (null : stdgo.Error);
/**
    
    
    
**/
var _execwait : stdgo.Ref<stdgo.internal.godebug.Godebug.Setting> = (null : stdgo.Ref<stdgo.internal.godebug.Godebug.Setting>);
/**
    
    
    
**/
var _execerrdot : stdgo.Ref<stdgo.internal.godebug.Godebug.Setting> = (null : stdgo.Ref<stdgo.internal.godebug.Godebug.Setting>);
/**
    // ErrDot indicates that a path lookup resolved to an executable
    // in the current directory due to ‘.’ being in the path, either
    // implicitly or explicitly. See the package documentation for details.
    //
    // Note that functions in this package do not return ErrDot directly.
    // Code should use errors.Is(err, ErrDot), not err == ErrDot,
    // to test whether a returned error err is due to this condition.
    
    
**/
var errDot : stdgo.Error = (null : stdgo.Error);
/**
    // ErrNotFound is the error resulting if a path search failed to find an executable file.
    
    
**/
var errNotFound : stdgo.Error = (null : stdgo.Error);
/**
    
    
    
**/
var _nonExistentPaths : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
/**
    // Error is returned by LookPath when it fails to classify a file as an
    // executable.
    
    
**/
@:structInit @:using(stdgo.os.exec.Exec.Error_static_extension) class Error {
    /**
        // Name is the file name for which the error occurred.
    **/
    public var name : stdgo.GoString = "";
    /**
        // Err is the underlying error.
    **/
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
/**
    // wrappedError wraps an error without relying on fmt.Errorf.
    
    
**/
@:structInit @:private @:using(stdgo.os.exec.Exec.T_wrappedError_static_extension) class T_wrappedError {
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
/**
    // Cmd represents an external command being prepared or run.
    //
    // A Cmd cannot be reused after calling its Run, Output or CombinedOutput
    // methods.
    
    
**/
@:structInit @:using(stdgo.os.exec.Exec.Cmd_static_extension) class Cmd {
    /**
        // Path is the path of the command to run.
        //
        // This is the only field that must be set to a non-zero
        // value. If Path is relative, it is evaluated relative
        // to Dir.
    **/
    public var path : stdgo.GoString = "";
    /**
        // Args holds command line arguments, including the command as Args[0].
        // If the Args field is empty or nil, Run uses {Path}.
        //
        // In typical use, both Path and Args are set by calling Command.
    **/
    public var args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    /**
        // Env specifies the environment of the process.
        // Each entry is of the form "key=value".
        // If Env is nil, the new process uses the current process's
        // environment.
        // If Env contains duplicate environment keys, only the last
        // value in the slice for each duplicate key is used.
        // As a special case on Windows, SYSTEMROOT is always added if
        // missing and not explicitly set to the empty string.
    **/
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    /**
        // Dir specifies the working directory of the command.
        // If Dir is the empty string, Run runs the command in the
        // calling process's current directory.
    **/
    public var dir : stdgo.GoString = "";
    /**
        // Stdin specifies the process's standard input.
        //
        // If Stdin is nil, the process reads from the null device (os.DevNull).
        //
        // If Stdin is an *os.File, the process's standard input is connected
        // directly to that file.
        //
        // Otherwise, during the execution of the command a separate
        // goroutine reads from Stdin and delivers that data to the command
        // over a pipe. In this case, Wait does not complete until the goroutine
        // stops copying, either because it has reached the end of Stdin
        // (EOF or a read error), or because writing to the pipe returned an error,
        // or because a nonzero WaitDelay was set and expired.
    **/
    public var stdin : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    /**
        // Stdout and Stderr specify the process's standard output and error.
        //
        // If either is nil, Run connects the corresponding file descriptor
        // to the null device (os.DevNull).
        //
        // If either is an *os.File, the corresponding output from the process
        // is connected directly to that file.
        //
        // Otherwise, during the execution of the command a separate goroutine
        // reads from the process over a pipe and delivers that data to the
        // corresponding Writer. In this case, Wait does not complete until the
        // goroutine reaches EOF or encounters an error or a nonzero WaitDelay
        // expires.
        //
        // If Stdout and Stderr are the same writer, and have a type that can
        // be compared with ==, at most one goroutine at a time will call Write.
    **/
    public var stdout : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var stderr : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    /**
        // ExtraFiles specifies additional open files to be inherited by the
        // new process. It does not include standard input, standard output, or
        // standard error. If non-nil, entry i becomes file descriptor 3+i.
        //
        // ExtraFiles is not supported on Windows.
    **/
    public var extraFiles : stdgo.Slice<stdgo.Ref<stdgo.os.Os.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo.os.Os.File>>);
    /**
        // SysProcAttr holds optional, operating system-specific attributes.
        // Run passes it to os.StartProcess as the os.ProcAttr's Sys field.
    **/
    public var sysProcAttr : stdgo.Ref<stdgo.syscall.Syscall.SysProcAttr> = (null : stdgo.Ref<stdgo.syscall.Syscall.SysProcAttr>);
    /**
        // Process is the underlying process, once started.
    **/
    public var process : stdgo.Ref<stdgo.os.Os.Process> = (null : stdgo.Ref<stdgo.os.Os.Process>);
    /**
        // ProcessState contains information about an exited process.
        // If the process was started successfully, Wait or Run will
        // populate its ProcessState when the command completes.
    **/
    public var processState : stdgo.Ref<stdgo.os.Os.ProcessState> = (null : stdgo.Ref<stdgo.os.Os.ProcessState>);
    /**
        // ctx is the context passed to CommandContext, if any.
    **/
    public var _ctx : stdgo.context.Context.Context = (null : stdgo.context.Context.Context);
    public var err : stdgo.Error = (null : stdgo.Error);
    /**
        // If Cancel is non-nil, the command must have been created with
        // CommandContext and Cancel will be called when the command's
        // Context is done. By default, CommandContext sets Cancel to
        // call the Kill method on the command's Process.
        //
        // Typically a custom Cancel will send a signal to the command's
        // Process, but it may instead take other actions to initiate cancellation,
        // such as closing a stdin or stdout pipe or sending a shutdown request on a
        // network socket.
        //
        // If the command exits with a success status after Cancel is
        // called, and Cancel does not return an error equivalent to
        // os.ErrProcessDone, then Wait and similar methods will return a non-nil
        // error: either an error wrapping the one returned by Cancel,
        // or the error from the Context.
        // (If the command exits with a non-success status, or Cancel
        // returns an error that wraps os.ErrProcessDone, Wait and similar methods
        // continue to return the command's usual exit status.)
        //
        // If Cancel is set to nil, nothing will happen immediately when the command's
        // Context is done, but a nonzero WaitDelay will still take effect. That may
        // be useful, for example, to work around deadlocks in commands that do not
        // support shutdown signals but are expected to always finish quickly.
        //
        // Cancel will not be called if Start returns a non-nil error.
    **/
    public var cancel : () -> stdgo.Error = null;
    /**
        // If WaitDelay is non-zero, it bounds the time spent waiting on two sources
        // of unexpected delay in Wait: a child process that fails to exit after the
        // associated Context is canceled, and a child process that exits but leaves
        // its I/O pipes unclosed.
        //
        // The WaitDelay timer starts when either the associated Context is done or a
        // call to Wait observes that the child process has exited, whichever occurs
        // first. When the delay has elapsed, the command shuts down the child process
        // and/or its I/O pipes.
        //
        // If the child process has failed to exit — perhaps because it ignored or
        // failed to receive a shutdown signal from a Cancel function, or because no
        // Cancel function was set — then it will be terminated using os.Process.Kill.
        //
        // Then, if the I/O pipes communicating with the child process are still open,
        // those pipes are closed in order to unblock any goroutines currently blocked
        // on Read or Write calls.
        //
        // If pipes are closed due to WaitDelay, no Cancel call has occurred,
        // and the command has otherwise exited with a successful status, Wait and
        // similar methods will return ErrWaitDelay instead of nil.
        //
        // If WaitDelay is zero (the default), I/O pipes will be read until EOF,
        // which might not occur until orphaned subprocesses of the command have
        // also closed their descriptors for the pipes.
    **/
    public var waitDelay : stdgo.time.Time.Duration = ((0 : stdgo.GoInt64) : stdgo.time.Time.Duration);
    /**
        // childIOFiles holds closers for any of the child process's
        // stdin, stdout, and/or stderr files that were opened by the Cmd itself
        // (not supplied by the caller). These should be closed as soon as they
        // are inherited by the child process.
    **/
    public var _childIOFiles : stdgo.Slice<stdgo.io.Io.Closer> = (null : stdgo.Slice<stdgo.io.Io.Closer>);
    /**
        // parentIOPipes holds closers for the parent's end of any pipes
        // connected to the child's stdin, stdout, and/or stderr streams
        // that were opened by the Cmd itself (not supplied by the caller).
        // These should be closed after Wait sees the command and copying
        // goroutines exit, or after WaitDelay has expired.
    **/
    public var _parentIOPipes : stdgo.Slice<stdgo.io.Io.Closer> = (null : stdgo.Slice<stdgo.io.Io.Closer>);
    /**
        // goroutine holds a set of closures to execute to copy data
        // to and/or from the command's I/O pipes.
    **/
    public var _goroutine : stdgo.Slice<() -> stdgo.Error> = (null : stdgo.Slice<() -> stdgo.Error>);
    /**
        // If goroutineErr is non-nil, it receives the first error from a copying
        // goroutine once all such goroutines have completed.
        // goroutineErr is set to nil once its error has been received.
    **/
    public var _goroutineErr : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    /**
        // If ctxResult is non-nil, it receives the result of watchCtx exactly once.
    **/
    public var _ctxResult : stdgo.Chan<stdgo.os.exec.Exec.T_ctxResult> = (null : stdgo.Chan<stdgo.os.exec.Exec.T_ctxResult>);
    /**
        // The stack saved when the Command was created, if GODEBUG contains
        // execwait=2. Used for debugging leaks.
    **/
    public var _createdByStack : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    /**
        // For a security release long ago, we created x/sys/execabs,
        // which manipulated the unexported lookPathErr error field
        // in this struct. For Go 1.19 we exported the field as Err error,
        // above, but we have to keep lookPathErr around for use by
        // old programs building against new toolchains.
        // The String and Start methods look for an error in lookPathErr
        // in preference to Err, to preserve the errors that execabs sets.
        //
        // In general we don't guarantee misuse of reflect like this,
        // but the misuse of reflect was by us, the best of various bad
        // options to fix the security problem, and people depend on
        // those old copies of execabs continuing to work.
        // The result is that we have to leave this variable around for the
        // rest of time, a compatibility scar.
        //
        // See https://go.dev/blog/path-security
        // and https://go.dev/issue/43724 for more context.
    **/
    public var _lookPathErr : stdgo.Error = (null : stdgo.Error);
    public function new(?path:stdgo.GoString, ?args:stdgo.Slice<stdgo.GoString>, ?env:stdgo.Slice<stdgo.GoString>, ?dir:stdgo.GoString, ?stdin:stdgo.io.Io.Reader, ?stdout:stdgo.io.Io.Writer, ?stderr:stdgo.io.Io.Writer, ?extraFiles:stdgo.Slice<stdgo.Ref<stdgo.os.Os.File>>, ?sysProcAttr:stdgo.Ref<stdgo.syscall.Syscall.SysProcAttr>, ?process:stdgo.Ref<stdgo.os.Os.Process>, ?processState:stdgo.Ref<stdgo.os.Os.ProcessState>, ?_ctx:stdgo.context.Context.Context, ?err:stdgo.Error, ?cancel:() -> stdgo.Error, ?waitDelay:stdgo.time.Time.Duration, ?_childIOFiles:stdgo.Slice<stdgo.io.Io.Closer>, ?_parentIOPipes:stdgo.Slice<stdgo.io.Io.Closer>, ?_goroutine:stdgo.Slice<() -> stdgo.Error>, ?_goroutineErr:stdgo.Chan<stdgo.Error>, ?_ctxResult:stdgo.Chan<stdgo.os.exec.Exec.T_ctxResult>, ?_createdByStack:stdgo.Slice<stdgo.GoUInt8>, ?_lookPathErr:stdgo.Error) {
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
/**
    // A ctxResult reports the result of watching the Context associated with a
    // running command (and sending corresponding signals if needed).
    
    
**/
@:structInit @:private class T_ctxResult {
    public var _err : stdgo.Error = (null : stdgo.Error);
    /**
        // If timer is non-nil, it expires after WaitDelay has elapsed after
        // the Context is done.
        //
        // (If timer is nil, that means that the Context was not done before the
        // command completed, or no WaitDelay was set, or the WaitDelay already
        // expired and its effect was already applied.)
    **/
    public var _timer : stdgo.Ref<stdgo.time.Time.Timer> = (null : stdgo.Ref<stdgo.time.Time.Timer>);
    public function new(?_err:stdgo.Error, ?_timer:stdgo.Ref<stdgo.time.Time.Timer>) {
        if (_err != null) this._err = _err;
        if (_timer != null) this._timer = _timer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ctxResult(_err, _timer);
    }
}
/**
    // An ExitError reports an unsuccessful exit by a command.
    
    
**/
@:structInit @:using(stdgo.os.exec.Exec.ExitError_static_extension) class ExitError {
    @:embedded
    public var processState : stdgo.Ref<stdgo.os.Os.ProcessState> = (null : stdgo.Ref<stdgo.os.Os.ProcessState>);
    /**
        // Stderr holds a subset of the standard error output from the
        // Cmd.Output method if standard error was not otherwise being
        // collected.
        //
        // If the error output is long, Stderr may contain only a prefix
        // and suffix of the output, with the middle replaced with
        // text about the number of omitted bytes.
        //
        // Stderr is provided for debugging, for inclusion in error messages.
        // Users with other needs should redirect Cmd.Stderr as needed.
    **/
    public var stderr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?processState:stdgo.Ref<stdgo.os.Os.ProcessState>, ?stderr:stdgo.Slice<stdgo.GoUInt8>) {
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
    public function systemTime():stdgo.time.Time.Duration return ((0 : stdgo.GoInt64) : stdgo.time.Time.Duration);
    @:embedded
    public function userTime():stdgo.time.Time.Duration return ((0 : stdgo.GoInt64) : stdgo.time.Time.Duration);
    @:embedded
    public function _exited():Bool return false;
    @:embedded
    public function _success():Bool return false;
    @:embedded
    public function _sys():stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function _sysUsage():stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function _systemTime():stdgo.time.Time.Duration return ((0 : stdgo.GoInt64) : stdgo.time.Time.Duration);
    @:embedded
    public function _userTime():stdgo.time.Time.Duration return ((0 : stdgo.GoInt64) : stdgo.time.Time.Duration);
    public function __copy__() {
        return new ExitError(processState, stderr);
    }
}
/**
    // prefixSuffixSaver is an io.Writer which retains the first N bytes
    // and the last N bytes written to it. The Bytes() methods reconstructs
    // it with a pretty error message.
    
    
**/
@:structInit @:private @:using(stdgo.os.exec.Exec.T_prefixSuffixSaver_static_extension) class T_prefixSuffixSaver {
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
function benchmarkExecHostname(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void throw ":os.exec.benchmarkExecHostname is not yet implemented";
function testDedupEnv(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void throw ":os.exec.testDedupEnv is not yet implemented";
/**
    // Command returns the Cmd struct to execute the named program with
    // the given arguments.
    //
    // It sets only the Path and Args in the returned structure.
    //
    // If name contains no path separators, Command uses LookPath to
    // resolve name to a complete path if possible. Otherwise it uses name
    // directly as Path.
    //
    // The returned Cmd's Args field is constructed from the command name
    // followed by the elements of arg, so arg should not include the
    // command name itself. For example, Command("echo", "hello").
    // Args[0] is always name, not the possibly resolved Path.
    //
    // On Windows, processes receive the whole command line as a single string
    // and do their own parsing. Command combines and quotes Args into a command
    // line string with an algorithm compatible with applications using
    // CommandLineToArgvW (which is the most common way). Notable exceptions are
    // msiexec.exe and cmd.exe (and thus, all batch files), which have a different
    // unquoting algorithm. In these or other similar cases, you can do the
    // quoting yourself and provide the full command line in SysProcAttr.CmdLine,
    // leaving Args empty.
**/
function command(_name:stdgo.GoString, _arg:haxe.Rest<stdgo.GoString>):stdgo.Ref<Cmd> throw ":os.exec.command is not yet implemented";
/**
    // CommandContext is like Command but includes a context.
    //
    // The provided context is used to interrupt the process
    // (by calling cmd.Cancel or os.Process.Kill)
    // if the context becomes done before the command completes on its own.
    //
    // CommandContext sets the command's Cancel function to invoke the Kill method
    // on its Process, and leaves its WaitDelay unset. The caller may change the
    // cancellation behavior by modifying those fields before starting the command.
**/
function commandContext(_ctx:stdgo.context.Context.Context, _name:stdgo.GoString, _arg:haxe.Rest<stdgo.GoString>):stdgo.Ref<Cmd> throw ":os.exec.commandContext is not yet implemented";
/**
    // interfaceEqual protects against panics from doing equality tests on
    // two interfaces with non-comparable underlying types.
**/
function _interfaceEqual(_a:stdgo.AnyInterface, _b:stdgo.AnyInterface):Bool throw ":os.exec._interfaceEqual is not yet implemented";
function _closeDescriptors(_closers:stdgo.Slice<stdgo.io.Io.Closer>):Void throw ":os.exec._closeDescriptors is not yet implemented";
/**
    // lookExtensions finds windows executable by its dir and path.
    // It uses LookPath to try appropriate extensions.
    // lookExtensions does not search PATH, instead it converts `prog` into `.\prog`.
**/
function _lookExtensions(_path:stdgo.GoString, _dir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.exec._lookExtensions is not yet implemented";
function _minInt(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt throw ":os.exec._minInt is not yet implemented";
/**
    // dedupEnv returns a copy of env with any duplicates removed, in favor of
    // later values.
    // Items not of the normal environment "key=value" form are preserved unchanged.
    // Except on Plan 9, items containing NUL characters are removed, and
    // an error is returned along with the remaining values.
**/
function _dedupEnv(_env:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw ":os.exec._dedupEnv is not yet implemented";
/**
    // dedupEnvCase is dedupEnv with a case option for testing.
    // If caseInsensitive is true, the case of keys is ignored.
    // If nulOK is false, items containing NUL characters are allowed.
**/
function _dedupEnvCase(_caseInsensitive:Bool, _nulOK:Bool, _env:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw ":os.exec._dedupEnvCase is not yet implemented";
/**
    // addCriticalEnv adds any critical environment variables that are required
    // (or at least almost always required) on the operating system.
    // Currently this is only used for Windows.
**/
function _addCriticalEnv(_env:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> throw ":os.exec._addCriticalEnv is not yet implemented";
/**
    // skipStdinCopyError optionally specifies a function which reports
    // whether the provided stdin copy error should be ignored.
**/
function _skipStdinCopyError(_err:stdgo.Error):Bool throw ":os.exec._skipStdinCopyError is not yet implemented";
function testPrefixSuffixSaver(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void throw ":os.exec.testPrefixSuffixSaver is not yet implemented";
function testLookPathNotFound(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void throw ":os.exec.testLookPathNotFound is not yet implemented";
/**
    // LookPath searches for an executable named file in the
    // directories named by the PATH environment variable.
    // If file contains a slash, it is tried directly and the PATH is not consulted.
    // The result may be an absolute path or a path relative to the current directory.
**/
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Error>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.exec.Exec.Error_asInterface) class Error_static_extension {
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wrappedError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.exec.Exec.T_wrappedError_asInterface) class T_wrappedError_static_extension {
    @:keep
    static public function unwrap( _w:T_wrappedError):stdgo.Error throw "T_wrappedError:os.exec.unwrap is not yet implemented";
    @:keep
    static public function error( _w:T_wrappedError):stdgo.GoString throw "T_wrappedError:os.exec.error is not yet implemented";
}
class Cmd_asInterface {
    /**
        // Environ returns a copy of the environment in which the command would be run
        // as it is currently configured.
    **/
    @:keep
    public dynamic function environ():stdgo.Slice<stdgo.GoString> return __self__.value.environ();
    /**
        // environ returns a best-effort copy of the environment in which the command
        // would be run as it is currently configured. If an error occurs in computing
        // the environment, it is returned alongside the best-effort copy.
    **/
    @:keep
    public dynamic function _environ():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value._environ();
    /**
        // StderrPipe returns a pipe that will be connected to the command's
        // standard error when the command starts.
        //
        // Wait will close the pipe after seeing the command exit, so most callers
        // need not close the pipe themselves. It is thus incorrect to call Wait
        // before all reads from the pipe have completed.
        // For the same reason, it is incorrect to use Run when using StderrPipe.
        // See the StdoutPipe example for idiomatic usage.
    **/
    @:keep
    public dynamic function stderrPipe():{ var _0 : stdgo.io.Io.ReadCloser; var _1 : stdgo.Error; } return __self__.value.stderrPipe();
    /**
        // StdoutPipe returns a pipe that will be connected to the command's
        // standard output when the command starts.
        //
        // Wait will close the pipe after seeing the command exit, so most callers
        // need not close the pipe themselves. It is thus incorrect to call Wait
        // before all reads from the pipe have completed.
        // For the same reason, it is incorrect to call Run when using StdoutPipe.
        // See the example for idiomatic usage.
    **/
    @:keep
    public dynamic function stdoutPipe():{ var _0 : stdgo.io.Io.ReadCloser; var _1 : stdgo.Error; } return __self__.value.stdoutPipe();
    /**
        // StdinPipe returns a pipe that will be connected to the command's
        // standard input when the command starts.
        // The pipe will be closed automatically after Wait sees the command exit.
        // A caller need only call Close to force the pipe to close sooner.
        // For example, if the command being run will not exit until standard input
        // is closed, the caller must close the pipe.
    **/
    @:keep
    public dynamic function stdinPipe():{ var _0 : stdgo.io.Io.WriteCloser; var _1 : stdgo.Error; } return __self__.value.stdinPipe();
    /**
        // CombinedOutput runs the command and returns its combined standard
        // output and standard error.
    **/
    @:keep
    public dynamic function combinedOutput():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.combinedOutput();
    /**
        // Output runs the command and returns its standard output.
        // Any returned error will usually be of type *ExitError.
        // If c.Stderr was nil, Output populates ExitError.Stderr.
    **/
    @:keep
    public dynamic function output():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.output();
    /**
        // awaitGoroutines waits for the results of the goroutines copying data to or
        // from the command's I/O pipes.
        //
        // If c.WaitDelay elapses before the goroutines complete, awaitGoroutines
        // forcibly closes their pipes and returns ErrWaitDelay.
        //
        // If timer is non-nil, it must send to timer.C at the end of c.WaitDelay.
    **/
    @:keep
    public dynamic function _awaitGoroutines(_timer:stdgo.Ref<stdgo.time.Time.Timer>):stdgo.Error return __self__.value._awaitGoroutines(_timer);
    /**
        // Wait waits for the command to exit and waits for any copying to
        // stdin or copying from stdout or stderr to complete.
        //
        // The command must have been started by Start.
        //
        // The returned error is nil if the command runs, has no problems
        // copying stdin, stdout, and stderr, and exits with a zero exit
        // status.
        //
        // If the command fails to run or doesn't complete successfully, the
        // error is of type *ExitError. Other error types may be
        // returned for I/O problems.
        //
        // If any of c.Stdin, c.Stdout or c.Stderr are not an *os.File, Wait also waits
        // for the respective I/O loop copying to or from the process to complete.
        //
        // Wait releases any resources associated with the Cmd.
    **/
    @:keep
    public dynamic function wait_():stdgo.Error return __self__.value.wait_();
    /**
        // watchCtx watches c.ctx until it is able to send a result to resultc.
        //
        // If c.ctx is done before a result can be sent, watchCtx calls c.Cancel,
        // and/or kills cmd.Process it after c.WaitDelay has elapsed.
        //
        // watchCtx manipulates c.goroutineErr, so its result must be received before
        // c.awaitGoroutines is called.
    **/
    @:keep
    public dynamic function _watchCtx(_resultc:stdgo.Chan<T_ctxResult>):Void __self__.value._watchCtx(_resultc);
    /**
        // Start starts the specified command but does not wait for it to complete.
        //
        // If Start returns successfully, the c.Process field will be set.
        //
        // After a successful call to Start the Wait method must be called in
        // order to release associated system resources.
    **/
    @:keep
    public dynamic function start():stdgo.Error return __self__.value.start();
    /**
        // Run starts the specified command and waits for it to complete.
        //
        // The returned error is nil if the command runs, has no problems
        // copying stdin, stdout, and stderr, and exits with a zero exit
        // status.
        //
        // If the command starts but does not complete successfully, the error is of
        // type *ExitError. Other error types may be returned for other situations.
        //
        // If the calling goroutine has locked the operating system thread
        // with runtime.LockOSThread and modified any inheritable OS-level
        // thread state (for example, Linux or Plan 9 name spaces), the new
        // process will inherit the caller's thread state.
    **/
    @:keep
    public dynamic function run():stdgo.Error return __self__.value.run();
    /**
        // writerDescriptor returns an os.File to which the child process
        // can write to send data to w.
        //
        // If w is nil, writerDescriptor returns a File that writes to os.DevNull.
    **/
    @:keep
    public dynamic function _writerDescriptor(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.Ref<stdgo.os.Os.File>; var _1 : stdgo.Error; } return __self__.value._writerDescriptor(_w);
    @:keep
    public dynamic function _childStderr(_childStdout:stdgo.Ref<stdgo.os.Os.File>):{ var _0 : stdgo.Ref<stdgo.os.Os.File>; var _1 : stdgo.Error; } return __self__.value._childStderr(_childStdout);
    @:keep
    public dynamic function _childStdout():{ var _0 : stdgo.Ref<stdgo.os.Os.File>; var _1 : stdgo.Error; } return __self__.value._childStdout();
    @:keep
    public dynamic function _childStdin():{ var _0 : stdgo.Ref<stdgo.os.Os.File>; var _1 : stdgo.Error; } return __self__.value._childStdin();
    @:keep
    public dynamic function _argv():stdgo.Slice<stdgo.GoString> return __self__.value._argv();
    /**
        // String returns a human-readable description of c.
        // It is intended only for debugging.
        // In particular, it is not suitable for use as input to a shell.
        // The output of String may vary across Go releases.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Cmd>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.exec.Exec.Cmd_asInterface) class Cmd_static_extension {
    /**
        // Environ returns a copy of the environment in which the command would be run
        // as it is currently configured.
    **/
    @:keep
    static public function environ( _c:stdgo.Ref<Cmd>):stdgo.Slice<stdgo.GoString> throw "Cmd:os.exec.environ is not yet implemented";
    /**
        // environ returns a best-effort copy of the environment in which the command
        // would be run as it is currently configured. If an error occurs in computing
        // the environment, it is returned alongside the best-effort copy.
    **/
    @:keep
    static public function _environ( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "Cmd:os.exec._environ is not yet implemented";
    /**
        // StderrPipe returns a pipe that will be connected to the command's
        // standard error when the command starts.
        //
        // Wait will close the pipe after seeing the command exit, so most callers
        // need not close the pipe themselves. It is thus incorrect to call Wait
        // before all reads from the pipe have completed.
        // For the same reason, it is incorrect to use Run when using StderrPipe.
        // See the StdoutPipe example for idiomatic usage.
    **/
    @:keep
    static public function stderrPipe( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stderrPipe is not yet implemented";
    /**
        // StdoutPipe returns a pipe that will be connected to the command's
        // standard output when the command starts.
        //
        // Wait will close the pipe after seeing the command exit, so most callers
        // need not close the pipe themselves. It is thus incorrect to call Wait
        // before all reads from the pipe have completed.
        // For the same reason, it is incorrect to call Run when using StdoutPipe.
        // See the example for idiomatic usage.
    **/
    @:keep
    static public function stdoutPipe( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stdoutPipe is not yet implemented";
    /**
        // StdinPipe returns a pipe that will be connected to the command's
        // standard input when the command starts.
        // The pipe will be closed automatically after Wait sees the command exit.
        // A caller need only call Close to force the pipe to close sooner.
        // For example, if the command being run will not exit until standard input
        // is closed, the caller must close the pipe.
    **/
    @:keep
    static public function stdinPipe( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.io.Io.WriteCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stdinPipe is not yet implemented";
    /**
        // CombinedOutput runs the command and returns its combined standard
        // output and standard error.
    **/
    @:keep
    static public function combinedOutput( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } throw "Cmd:os.exec.combinedOutput is not yet implemented";
    /**
        // Output runs the command and returns its standard output.
        // Any returned error will usually be of type *ExitError.
        // If c.Stderr was nil, Output populates ExitError.Stderr.
    **/
    @:keep
    static public function output( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } throw "Cmd:os.exec.output is not yet implemented";
    /**
        // awaitGoroutines waits for the results of the goroutines copying data to or
        // from the command's I/O pipes.
        //
        // If c.WaitDelay elapses before the goroutines complete, awaitGoroutines
        // forcibly closes their pipes and returns ErrWaitDelay.
        //
        // If timer is non-nil, it must send to timer.C at the end of c.WaitDelay.
    **/
    @:keep
    static public function _awaitGoroutines( _c:stdgo.Ref<Cmd>, _timer:stdgo.Ref<stdgo.time.Time.Timer>):stdgo.Error throw "Cmd:os.exec._awaitGoroutines is not yet implemented";
    /**
        // Wait waits for the command to exit and waits for any copying to
        // stdin or copying from stdout or stderr to complete.
        //
        // The command must have been started by Start.
        //
        // The returned error is nil if the command runs, has no problems
        // copying stdin, stdout, and stderr, and exits with a zero exit
        // status.
        //
        // If the command fails to run or doesn't complete successfully, the
        // error is of type *ExitError. Other error types may be
        // returned for I/O problems.
        //
        // If any of c.Stdin, c.Stdout or c.Stderr are not an *os.File, Wait also waits
        // for the respective I/O loop copying to or from the process to complete.
        //
        // Wait releases any resources associated with the Cmd.
    **/
    @:keep
    static public function wait_( _c:stdgo.Ref<Cmd>):stdgo.Error throw "Cmd:os.exec.wait_ is not yet implemented";
    /**
        // watchCtx watches c.ctx until it is able to send a result to resultc.
        //
        // If c.ctx is done before a result can be sent, watchCtx calls c.Cancel,
        // and/or kills cmd.Process it after c.WaitDelay has elapsed.
        //
        // watchCtx manipulates c.goroutineErr, so its result must be received before
        // c.awaitGoroutines is called.
    **/
    @:keep
    static public function _watchCtx( _c:stdgo.Ref<Cmd>, _resultc:stdgo.Chan<T_ctxResult>):Void throw "Cmd:os.exec._watchCtx is not yet implemented";
    /**
        // Start starts the specified command but does not wait for it to complete.
        //
        // If Start returns successfully, the c.Process field will be set.
        //
        // After a successful call to Start the Wait method must be called in
        // order to release associated system resources.
    **/
    @:keep
    static public function start( _c:stdgo.Ref<Cmd>):stdgo.Error throw "Cmd:os.exec.start is not yet implemented";
    /**
        // Run starts the specified command and waits for it to complete.
        //
        // The returned error is nil if the command runs, has no problems
        // copying stdin, stdout, and stderr, and exits with a zero exit
        // status.
        //
        // If the command starts but does not complete successfully, the error is of
        // type *ExitError. Other error types may be returned for other situations.
        //
        // If the calling goroutine has locked the operating system thread
        // with runtime.LockOSThread and modified any inheritable OS-level
        // thread state (for example, Linux or Plan 9 name spaces), the new
        // process will inherit the caller's thread state.
    **/
    @:keep
    static public function run( _c:stdgo.Ref<Cmd>):stdgo.Error throw "Cmd:os.exec.run is not yet implemented";
    /**
        // writerDescriptor returns an os.File to which the child process
        // can write to send data to w.
        //
        // If w is nil, writerDescriptor returns a File that writes to os.DevNull.
    **/
    @:keep
    static public function _writerDescriptor( _c:stdgo.Ref<Cmd>, _w:stdgo.io.Io.Writer):{ var _0 : stdgo.Ref<stdgo.os.Os.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._writerDescriptor is not yet implemented";
    @:keep
    static public function _childStderr( _c:stdgo.Ref<Cmd>, _childStdout:stdgo.Ref<stdgo.os.Os.File>):{ var _0 : stdgo.Ref<stdgo.os.Os.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStderr is not yet implemented";
    @:keep
    static public function _childStdout( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Ref<stdgo.os.Os.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStdout is not yet implemented";
    @:keep
    static public function _childStdin( _c:stdgo.Ref<Cmd>):{ var _0 : stdgo.Ref<stdgo.os.Os.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStdin is not yet implemented";
    @:keep
    static public function _argv( _c:stdgo.Ref<Cmd>):stdgo.Slice<stdgo.GoString> throw "Cmd:os.exec._argv is not yet implemented";
    /**
        // String returns a human-readable description of c.
        // It is intended only for debugging.
        // In particular, it is not suitable for use as input to a shell.
        // The output of String may vary across Go releases.
    **/
    @:keep
    static public function string( _c:stdgo.Ref<Cmd>):stdgo.GoString throw "Cmd:os.exec.string is not yet implemented";
}
class ExitError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    @:embedded
    public dynamic function _userTime():stdgo.time.Time.Duration return __self__.value._userTime();
    @:embedded
    public dynamic function _systemTime():stdgo.time.Time.Duration return __self__.value._systemTime();
    @:embedded
    public dynamic function _sysUsage():stdgo.AnyInterface return __self__.value._sysUsage();
    @:embedded
    public dynamic function _sys():stdgo.AnyInterface return __self__.value._sys();
    @:embedded
    public dynamic function _success():Bool return __self__.value._success();
    @:embedded
    public dynamic function _exited():Bool return __self__.value._exited();
    @:embedded
    public dynamic function userTime():stdgo.time.Time.Duration return __self__.value.userTime();
    @:embedded
    public dynamic function systemTime():stdgo.time.Time.Duration return __self__.value.systemTime();
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ExitError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.exec.Exec.ExitError_asInterface) class ExitError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<ExitError>):stdgo.GoString throw "ExitError:os.exec.error is not yet implemented";
    @:embedded
    public static function _userTime( __self__:ExitError):stdgo.time.Time.Duration return __self__._userTime();
    @:embedded
    public static function _systemTime( __self__:ExitError):stdgo.time.Time.Duration return __self__._systemTime();
    @:embedded
    public static function _sysUsage( __self__:ExitError):stdgo.AnyInterface return __self__._sysUsage();
    @:embedded
    public static function _sys( __self__:ExitError):stdgo.AnyInterface return __self__._sys();
    @:embedded
    public static function _success( __self__:ExitError):Bool return __self__._success();
    @:embedded
    public static function _exited( __self__:ExitError):Bool return __self__._exited();
    @:embedded
    public static function userTime( __self__:ExitError):stdgo.time.Time.Duration return __self__.userTime();
    @:embedded
    public static function systemTime( __self__:ExitError):stdgo.time.Time.Duration return __self__.systemTime();
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
    /**
        // fill appends up to len(p) bytes of p to *dst, such that *dst does not
        // grow larger than w.N. It returns the un-appended suffix of p.
    **/
    @:keep
    public dynamic function _fill(_dst:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _p:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value._fill(_dst, _p);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_prefixSuffixSaver>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.exec.Exec.T_prefixSuffixSaver_asInterface) class T_prefixSuffixSaver_static_extension {
    @:keep
    static public function bytes( _w:stdgo.Ref<T_prefixSuffixSaver>):stdgo.Slice<stdgo.GoByte> throw "T_prefixSuffixSaver:os.exec.bytes is not yet implemented";
    /**
        // fill appends up to len(p) bytes of p to *dst, such that *dst does not
        // grow larger than w.N. It returns the un-appended suffix of p.
    **/
    @:keep
    static public function _fill( _w:stdgo.Ref<T_prefixSuffixSaver>, _dst:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _p:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> throw "T_prefixSuffixSaver:os.exec._fill is not yet implemented";
    @:keep
    static public function write( _w:stdgo.Ref<T_prefixSuffixSaver>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_prefixSuffixSaver:os.exec.write is not yet implemented";
}
