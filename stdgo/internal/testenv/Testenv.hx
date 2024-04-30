package stdgo.internal.testenv;
/**
    Package testenv provides information about what functionality
    is available in different testing environments run by the Go team.
    
    It is an internal package because these details are specific
    to the Go team's test setup (on build.golang.org) and not
    fundamental to tests in general.
**/
private var __go2hxdoc__package : Bool;
var sigquit(get, set) : stdgo._internal.os.Os.Signal;
function get_sigquit():stdgo._internal.os.Os.Signal return stdgo._internal.internal.testenv.Testenv.sigquit;
function set_sigquit(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal return stdgo._internal.internal.testenv.Testenv.sigquit = v;
@:invalid typedef T__interface_0_static_extension = Dynamic;
typedef T__interface_0 = stdgo._internal.internal.testenv.Testenv.T__interface_0;
/**
    MustHaveExec checks that the current system can start new processes
    using os.StartProcess or (more commonly) exec.Command.
    If not, MustHaveExec calls t.Skip with an explanation.
    
    On some platforms MustHaveExec checks for exec support by re-executing the
    current executable, which must be a binary built by 'go test'.
    We intentionally do not provide a HasExec function because of the risk of
    inappropriate recursion in TestMain functions.
    
    To check for exec support outside of a test, just try to exec the command.
    If exec is not supported, testenv.SyscallIsNotSupported will return true
    for the resulting error.
**/
inline function mustHaveExec(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    MustHaveExecPath checks that the current system can start the named executable
    using os.StartProcess or (more commonly) exec.Command.
    If not, MustHaveExecPath calls t.Skip with an explanation.
**/
inline function mustHaveExecPath(t:stdgo._internal.testing.Testing.TB, path:String):Void throw "not implemented";
/**
    CleanCmdEnv will fill cmd.Env with the environment, excluding certain
    variables that could modify the behavior of the Go tools such as
    GODEBUG and GOTRACEBACK.
**/
inline function cleanCmdEnv(cmd:stdgo._internal.os.exec.Exec.Cmd):stdgo._internal.os.exec.Exec.Cmd throw "not implemented";
/**
    CommandContext is like exec.CommandContext, but:
      - skips t if the platform does not support os/exec,
      - sends SIGQUIT (if supported by the platform) instead of SIGKILL
        in its Cancel function
      - if the test has a deadline, adds a Context timeout and WaitDelay
        for an arbitrary grace period before the test's deadline expires,
      - fails the test if the command does not complete before the test's deadline, and
      - sets a Cleanup function that verifies that the test did not leak a subprocess.
**/
inline function commandContext(t:stdgo._internal.testing.Testing.TB, ctx:stdgo._internal.context.Context.Context, name:String, args:haxe.Rest<stdgo.GoString>):stdgo._internal.os.exec.Exec.Cmd throw "not implemented";
/**
    Command is like exec.Command, but applies the same changes as
    testenv.CommandContext (with a default Context).
**/
inline function command(t:stdgo._internal.testing.Testing.TB, name:String, args:haxe.Rest<stdgo.GoString>):stdgo._internal.os.exec.Exec.Cmd throw "not implemented";
/**
    OptimizationOff reports whether optimization is disabled.
**/
inline function optimizationOff():Bool throw "not implemented";
/**
    Builder reports the name of the builder running this test
    (for example, "linux-amd64" or "windows-386-gce").
    If the test is not running on the build infrastructure,
    Builder returns the empty string.
**/
inline function builder():String throw "not implemented";
/**
    HasGoBuild reports whether the current system can build programs with “go build”
    and then run them with os.StartProcess or exec.Command.
**/
inline function hasGoBuild():Bool throw "not implemented";
/**
    MustHaveGoBuild checks that the current system can build programs with “go build”
    and then run them with os.StartProcess or exec.Command.
    If not, MustHaveGoBuild calls t.Skip with an explanation.
**/
inline function mustHaveGoBuild(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    HasGoRun reports whether the current system can run programs with “go run.”
**/
inline function hasGoRun():Bool throw "not implemented";
/**
    MustHaveGoRun checks that the current system can run programs with “go run.”
    If not, MustHaveGoRun calls t.Skip with an explanation.
**/
inline function mustHaveGoRun(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    HasParallelism reports whether the current system can execute multiple
    threads in parallel.
    There is a copy of this function in cmd/dist/test.go.
**/
inline function hasParallelism():Bool throw "not implemented";
/**
    MustHaveParallelism checks that the current system can execute multiple
    threads in parallel. If not, MustHaveParallelism calls t.Skip with an explanation.
**/
inline function mustHaveParallelism(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    GoToolPath reports the path to the Go tool.
    It is a convenience wrapper around GoTool.
    If the tool is unavailable GoToolPath calls t.Skip.
    If the tool should be available and isn't, GoToolPath calls t.Fatal.
**/
inline function goToolPath(t:stdgo._internal.testing.Testing.TB):String throw "not implemented";
/**
    GOROOT reports the path to the directory containing the root of the Go
    project source tree. This is normally equivalent to runtime.GOROOT, but
    works even if the test binary was built with -trimpath and cannot exec
    'go env GOROOT'.
    
    If GOROOT cannot be found, GOROOT skips t if t is non-nil,
    or panics otherwise.
**/
inline function goroot(t:stdgo._internal.testing.Testing.TB):String throw "not implemented";
/**
    GoTool reports the path to the Go tool.
**/
inline function goTool():stdgo.Tuple<String, stdgo.Error> throw "not implemented";
/**
    HasSrc reports whether the entire source tree is available under GOROOT.
**/
inline function hasSrc():Bool throw "not implemented";
/**
    HasExternalNetwork reports whether the current system can use
    external (non-localhost) networks.
**/
inline function hasExternalNetwork():Bool throw "not implemented";
/**
    MustHaveExternalNetwork checks that the current system can use
    external (non-localhost) networks.
    If not, MustHaveExternalNetwork calls t.Skip with an explanation.
**/
inline function mustHaveExternalNetwork(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    HasCGO reports whether the current system can use cgo.
**/
inline function hasCGO():Bool throw "not implemented";
/**
    MustHaveCGO calls t.Skip if cgo is not available.
**/
inline function mustHaveCGO(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    CanInternalLink reports whether the current system can link programs with
    internal linking.
**/
inline function canInternalLink(withCgo:Bool):Bool throw "not implemented";
/**
    MustInternalLink checks that the current system can link programs with internal
    linking.
    If not, MustInternalLink calls t.Skip with an explanation.
**/
inline function mustInternalLink(t:stdgo._internal.testing.Testing.TB, withCgo:Bool):Void throw "not implemented";
/**
    MustHaveBuildMode reports whether the current system can build programs in
    the given build mode.
    If not, MustHaveBuildMode calls t.Skip with an explanation.
**/
inline function mustHaveBuildMode(t:stdgo._internal.testing.Testing.TB, buildmode:String):Void throw "not implemented";
/**
    HasSymlink reports whether the current system can use os.Symlink.
**/
inline function hasSymlink():Bool throw "not implemented";
/**
    MustHaveSymlink reports whether the current system can use os.Symlink.
    If not, MustHaveSymlink calls t.Skip with an explanation.
**/
inline function mustHaveSymlink(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    HasLink reports whether the current system can use os.Link.
**/
inline function hasLink():Bool throw "not implemented";
/**
    MustHaveLink reports whether the current system can use os.Link.
    If not, MustHaveLink calls t.Skip with an explanation.
**/
inline function mustHaveLink(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
inline function skipFlaky(t:stdgo._internal.testing.Testing.TB, issue:Int):Void throw "not implemented";
inline function skipFlakyNet(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    CPUIsSlow reports whether the CPU running the test is suspected to be slow.
**/
inline function cpuisSlow():Bool throw "not implemented";
/**
    SkipIfShortAndSlow skips t if -short is set and the CPU running the test is
    suspected to be slow.
    
    (This is useful for CPU-intensive tests that otherwise complete quickly.)
**/
inline function skipIfShortAndSlow(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    SkipIfOptimizationOff skips t if optimization is disabled.
**/
inline function skipIfOptimizationOff(t:stdgo._internal.testing.Testing.TB):Void throw "not implemented";
/**
    WriteImportcfg writes an importcfg file used by the compiler or linker to
    dstPath containing entries for the file mappings in packageFiles, as well
    as for the packages transitively imported by the package(s) in pkgs.
    
    pkgs may include any package pattern that is valid to pass to 'go list',
    so it may also be a list of Go source files all in the same directory.
**/
inline function writeImportcfg(t:stdgo._internal.testing.Testing.TB, dstPath:String, packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, pkgs:haxe.Rest<stdgo.GoString>):Void throw "not implemented";
/**
    SyscallIsNotSupported reports whether err may indicate that a system call is
    not supported by the current platform or execution environment.
**/
inline function syscallIsNotSupported(err:stdgo.Error):Bool throw "not implemented";
