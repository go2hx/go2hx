package stdgo.internal;
/**
    Package testenv provides information about what functionality
    is available in different testing environments run by the Go team.
    
    It is an internal package because these details are specific
    to the Go team's test setup (on build.golang.org) and not
    fundamental to tests in general.
**/
private var __go2hxdoc__package : Bool;
var sigquit(get, set) : stdgo._internal.os.Os.Signal;
private function get_sigquit():stdgo._internal.os.Os.Signal return stdgo._internal.internal.testenv.Testenv.sigquit;
private function set_sigquit(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal return stdgo._internal.internal.testenv.Testenv.sigquit = v;
@:forward @:forward.new abstract T__interface_0_static_extension(stdgo._internal.internal.testenv.Testenv.T__interface_0_static_extension) from stdgo._internal.internal.testenv.Testenv.T__interface_0_static_extension to stdgo._internal.internal.testenv.Testenv.T__interface_0_static_extension {

}
typedef T__interface_0 = stdgo._internal.internal.testenv.Testenv.T__interface_0;
class Testenv {
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
    static public function mustHaveExec(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(t);
    }
    /**
        MustHaveExecPath checks that the current system can start the named executable
        using os.StartProcess or (more commonly) exec.Command.
        If not, MustHaveExecPath calls t.Skip with an explanation.
    **/
    static public function mustHaveExecPath(t:stdgo._internal.testing.Testing.TB, path:String):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveExecPath(t, path);
    }
    /**
        CleanCmdEnv will fill cmd.Env with the environment, excluding certain
        variables that could modify the behavior of the Go tools such as
        GODEBUG and GOTRACEBACK.
    **/
    static public function cleanCmdEnv(cmd:stdgo._internal.os.exec.Exec.Cmd):stdgo._internal.os.exec.Exec.Cmd {
        return stdgo._internal.internal.testenv.Testenv.cleanCmdEnv(cmd);
    }
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
    static public function commandContext(t:stdgo._internal.testing.Testing.TB, ctx:stdgo._internal.context.Context.Context, name:String, args:haxe.Rest<String>):stdgo._internal.os.exec.Exec.Cmd {
        return stdgo._internal.internal.testenv.Testenv.commandContext(t, ctx, name, ...args);
    }
    /**
        Command is like exec.Command, but applies the same changes as
        testenv.CommandContext (with a default Context).
    **/
    static public function command(t:stdgo._internal.testing.Testing.TB, name:String, args:haxe.Rest<String>):stdgo._internal.os.exec.Exec.Cmd {
        return stdgo._internal.internal.testenv.Testenv.command(t, name, ...args);
    }
    /**
        OptimizationOff reports whether optimization is disabled.
    **/
    static public function optimizationOff():Bool {
        return stdgo._internal.internal.testenv.Testenv.optimizationOff();
    }
    /**
        Builder reports the name of the builder running this test
        (for example, "linux-amd64" or "windows-386-gce").
        If the test is not running on the build infrastructure,
        Builder returns the empty string.
    **/
    static public function builder():String {
        return stdgo._internal.internal.testenv.Testenv.builder();
    }
    /**
        HasGoBuild reports whether the current system can build programs with “go build”
        and then run them with os.StartProcess or exec.Command.
    **/
    static public function hasGoBuild():Bool {
        return stdgo._internal.internal.testenv.Testenv.hasGoBuild();
    }
    /**
        MustHaveGoBuild checks that the current system can build programs with “go build”
        and then run them with os.StartProcess or exec.Command.
        If not, MustHaveGoBuild calls t.Skip with an explanation.
    **/
    static public function mustHaveGoBuild(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveGoBuild(t);
    }
    /**
        HasGoRun reports whether the current system can run programs with “go run.”
    **/
    static public function hasGoRun():Bool {
        return stdgo._internal.internal.testenv.Testenv.hasGoRun();
    }
    /**
        MustHaveGoRun checks that the current system can run programs with “go run.”
        If not, MustHaveGoRun calls t.Skip with an explanation.
    **/
    static public function mustHaveGoRun(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveGoRun(t);
    }
    /**
        HasParallelism reports whether the current system can execute multiple
        threads in parallel.
        There is a copy of this function in cmd/dist/test.go.
    **/
    static public function hasParallelism():Bool {
        return stdgo._internal.internal.testenv.Testenv.hasParallelism();
    }
    /**
        MustHaveParallelism checks that the current system can execute multiple
        threads in parallel. If not, MustHaveParallelism calls t.Skip with an explanation.
    **/
    static public function mustHaveParallelism(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveParallelism(t);
    }
    /**
        GoToolPath reports the path to the Go tool.
        It is a convenience wrapper around GoTool.
        If the tool is unavailable GoToolPath calls t.Skip.
        If the tool should be available and isn't, GoToolPath calls t.Fatal.
    **/
    static public function goToolPath(t:stdgo._internal.testing.Testing.TB):String {
        return stdgo._internal.internal.testenv.Testenv.goToolPath(t);
    }
    /**
        GOROOT reports the path to the directory containing the root of the Go
        project source tree. This is normally equivalent to runtime.GOROOT, but
        works even if the test binary was built with -trimpath and cannot exec
        'go env GOROOT'.
        
        If GOROOT cannot be found, GOROOT skips t if t is non-nil,
        or panics otherwise.
    **/
    static public function goroot(t:stdgo._internal.testing.Testing.TB):String {
        return stdgo._internal.internal.testenv.Testenv.goroot(t);
    }
    /**
        GoTool reports the path to the Go tool.
    **/
    static public function goTool():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.testenv.Testenv.goTool();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HasSrc reports whether the entire source tree is available under GOROOT.
    **/
    static public function hasSrc():Bool {
        return stdgo._internal.internal.testenv.Testenv.hasSrc();
    }
    /**
        HasExternalNetwork reports whether the current system can use
        external (non-localhost) networks.
    **/
    static public function hasExternalNetwork():Bool {
        return stdgo._internal.internal.testenv.Testenv.hasExternalNetwork();
    }
    /**
        MustHaveExternalNetwork checks that the current system can use
        external (non-localhost) networks.
        If not, MustHaveExternalNetwork calls t.Skip with an explanation.
    **/
    static public function mustHaveExternalNetwork(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveExternalNetwork(t);
    }
    /**
        HasCGO reports whether the current system can use cgo.
    **/
    static public function hasCGO():Bool {
        return stdgo._internal.internal.testenv.Testenv.hasCGO();
    }
    /**
        MustHaveCGO calls t.Skip if cgo is not available.
    **/
    static public function mustHaveCGO(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveCGO(t);
    }
    /**
        CanInternalLink reports whether the current system can link programs with
        internal linking.
    **/
    static public function canInternalLink(withCgo:Bool):Bool {
        return stdgo._internal.internal.testenv.Testenv.canInternalLink(withCgo);
    }
    /**
        MustInternalLink checks that the current system can link programs with internal
        linking.
        If not, MustInternalLink calls t.Skip with an explanation.
    **/
    static public function mustInternalLink(t:stdgo._internal.testing.Testing.TB, withCgo:Bool):Void {
        stdgo._internal.internal.testenv.Testenv.mustInternalLink(t, withCgo);
    }
    /**
        MustHaveBuildMode reports whether the current system can build programs in
        the given build mode.
        If not, MustHaveBuildMode calls t.Skip with an explanation.
    **/
    static public function mustHaveBuildMode(t:stdgo._internal.testing.Testing.TB, buildmode:String):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveBuildMode(t, buildmode);
    }
    /**
        HasSymlink reports whether the current system can use os.Symlink.
    **/
    static public function hasSymlink():Bool {
        return stdgo._internal.internal.testenv.Testenv.hasSymlink();
    }
    /**
        MustHaveSymlink reports whether the current system can use os.Symlink.
        If not, MustHaveSymlink calls t.Skip with an explanation.
    **/
    static public function mustHaveSymlink(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(t);
    }
    /**
        HasLink reports whether the current system can use os.Link.
    **/
    static public function hasLink():Bool {
        return stdgo._internal.internal.testenv.Testenv.hasLink();
    }
    /**
        MustHaveLink reports whether the current system can use os.Link.
        If not, MustHaveLink calls t.Skip with an explanation.
    **/
    static public function mustHaveLink(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveLink(t);
    }
    static public function skipFlaky(t:stdgo._internal.testing.Testing.TB, issue:StdTypes.Int):Void {
        stdgo._internal.internal.testenv.Testenv.skipFlaky(t, issue);
    }
    static public function skipFlakyNet(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.skipFlakyNet(t);
    }
    /**
        CPUIsSlow reports whether the CPU running the test is suspected to be slow.
    **/
    static public function cpuisSlow():Bool {
        return stdgo._internal.internal.testenv.Testenv.cpuisSlow();
    }
    /**
        SkipIfShortAndSlow skips t if -short is set and the CPU running the test is
        suspected to be slow.
        
        (This is useful for CPU-intensive tests that otherwise complete quickly.)
    **/
    static public function skipIfShortAndSlow(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.skipIfShortAndSlow(t);
    }
    /**
        SkipIfOptimizationOff skips t if optimization is disabled.
    **/
    static public function skipIfOptimizationOff(t:stdgo._internal.testing.Testing.TB):Void {
        stdgo._internal.internal.testenv.Testenv.skipIfOptimizationOff(t);
    }
    /**
        WriteImportcfg writes an importcfg file used by the compiler or linker to
        dstPath containing entries for the file mappings in packageFiles, as well
        as for the packages transitively imported by the package(s) in pkgs.
        
        pkgs may include any package pattern that is valid to pass to 'go list',
        so it may also be a list of Go source files all in the same directory.
    **/
    static public function writeImportcfg(t:stdgo._internal.testing.Testing.TB, dstPath:String, packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, pkgs:haxe.Rest<String>):Void {
        stdgo._internal.internal.testenv.Testenv.writeImportcfg(t, dstPath, packageFiles, ...pkgs);
    }
    /**
        SyscallIsNotSupported reports whether err may indicate that a system call is
        not supported by the current platform or execution environment.
    **/
    static public function syscallIsNotSupported(err:stdgo.Error):Bool {
        return stdgo._internal.internal.testenv.Testenv.syscallIsNotSupported(err);
    }
}
