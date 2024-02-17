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
var errWaitDelay(get, set) : stdgo.Error;
function get_errWaitDelay():stdgo.Error return stdgo._internal.os.exec.Exec.errWaitDelay;
function set_errWaitDelay(v:stdgo.Error):stdgo.Error return stdgo._internal.os.exec.Exec.errWaitDelay = v;
var errDot(get, set) : stdgo.Error;
function get_errDot():stdgo.Error return stdgo._internal.os.exec.Exec.errDot;
function set_errDot(v:stdgo.Error):stdgo.Error return stdgo._internal.os.exec.Exec.errDot = v;
var errNotFound(get, set) : stdgo.Error;
function get_errNotFound():stdgo.Error return stdgo._internal.os.exec.Exec.errNotFound;
function set_errNotFound(v:stdgo.Error):stdgo.Error return stdgo._internal.os.exec.Exec.errNotFound = v;
@:invalid typedef Error = Dynamic;
@:invalid typedef T_wrappedError = Dynamic;
@:invalid typedef Cmd = Dynamic;
@:invalid typedef T_ctxResult = Dynamic;
@:invalid typedef ExitError = Dynamic;
@:invalid typedef T_prefixSuffixSaver = Dynamic;
inline function benchmarkExecHostname(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testDedupEnv(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
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
inline function command(name:String, arg:haxe.Rest<stdgo.GoString>):Cmd throw "not implemented";
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
inline function commandContext(ctx:stdgo._internal.context.Context.Context, name:String, arg:haxe.Rest<stdgo.GoString>):Cmd throw "not implemented";
inline function testPrefixSuffixSaver(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLookPathNotFound(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // LookPath searches for an executable named file in the
    // directories named by the PATH environment variable.
    // If file contains a slash, it is tried directly and the PATH is not consulted.
    // The result may be an absolute path or a path relative to the current directory.
**/
inline function lookPath(file:String):stdgo.Tuple.<String, stdgo.Error> throw "not implemented";
@:invalid typedef Error_asInterface = Dynamic;
@:invalid typedef Error_static_extension = Dynamic;
@:invalid typedef T_wrappedError_asInterface = Dynamic;
@:invalid typedef T_wrappedError_static_extension = Dynamic;
@:invalid typedef Cmd_asInterface = Dynamic;
@:invalid typedef Cmd_static_extension = Dynamic;
@:invalid typedef ExitError_asInterface = Dynamic;
@:invalid typedef ExitError_static_extension = Dynamic;
@:invalid typedef T_prefixSuffixSaver_asInterface = Dynamic;
@:invalid typedef T_prefixSuffixSaver_static_extension = Dynamic;
