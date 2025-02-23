package stdgo;
var sigquit(get, set) : stdgo._internal.os.Os_signal.Signal;
private function get_sigquit():stdgo._internal.os.Os_signal.Signal return stdgo._internal.internal.testenv.Testenv_sigquit.sigquit;
private function set_sigquit(v:stdgo._internal.os.Os_signal.Signal):stdgo._internal.os.Os_signal.Signal {
        stdgo._internal.internal.testenv.Testenv_sigquit.sigquit = v;
        return v;
    }
@:dox(hide) class T__interface_0_static_extension {
    static public function deadline(t:stdgo._internal.internal.testenv.Testenv_t__interface_0.T__interface_0):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.internal.testenv.Testenv_t__interface_0_static_extension.T__interface_0_static_extension.deadline(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T__interface_0(stdgo._internal.internal.testenv.Testenv_t__interface_0.T__interface_0) from stdgo._internal.internal.testenv.Testenv_t__interface_0.T__interface_0 to stdgo._internal.internal.testenv.Testenv_t__interface_0.T__interface_0 {
    @:from
    static function fromHaxeInterface(x:{ function deadline():stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool>; }):T__interface_0 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_0 = { deadline : () -> x.deadline(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
/**
    * Package testenv provides information about what functionality
    * is available in different testing environments run by the Go team.
    * 
    * It is an internal package because these details are specific
    * to the Go team's test setup (on build.golang.org) and not
    * fundamental to tests in general.
**/
class Testenv {
    /**
        * MustHaveExec checks that the current system can start new processes
        * using os.StartProcess or (more commonly) exec.Command.
        * If not, MustHaveExec calls t.Skip with an explanation.
        * 
        * On some platforms MustHaveExec checks for exec support by re-executing the
        * current executable, which must be a binary built by 'go test'.
        * We intentionally do not provide a HasExec function because of the risk of
        * inappropriate recursion in TestMain functions.
        * 
        * To check for exec support outside of a test, just try to exec the command.
        * If exec is not supported, testenv.SyscallIsNotSupported will return true
        * for the resulting error.
    **/
    static public inline function mustHaveExec(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_musthaveexec.mustHaveExec(_t);
    }
    /**
        * MustHaveExecPath checks that the current system can start the named executable
        * using os.StartProcess or (more commonly) exec.Command.
        * If not, MustHaveExecPath calls t.Skip with an explanation.
    **/
    static public inline function mustHaveExecPath(_t:stdgo._internal.testing.Testing_tb.TB, _path:String):Void {
        final _path = (_path : stdgo.GoString);
        stdgo._internal.internal.testenv.Testenv_musthaveexecpath.mustHaveExecPath(_t, _path);
    }
    /**
        * CleanCmdEnv will fill cmd.Env with the environment, excluding certain
        * variables that could modify the behavior of the Go tools such as
        * GODEBUG and GOTRACEBACK.
    **/
    static public inline function cleanCmdEnv(_cmd:stdgo._internal.os.exec.Exec_cmd.Cmd):stdgo._internal.os.exec.Exec_cmd.Cmd {
        final _cmd = (_cmd : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return stdgo._internal.internal.testenv.Testenv_cleancmdenv.cleanCmdEnv(_cmd);
    }
    /**
        * CommandContext is like exec.CommandContext, but:
        *   - skips t if the platform does not support os/exec,
        *   - sends SIGQUIT (if supported by the platform) instead of SIGKILL
        *     in its Cancel function
        *   - if the test has a deadline, adds a Context timeout and WaitDelay
        *     for an arbitrary grace period before the test's deadline expires,
        *   - fails the test if the command does not complete before the test's deadline, and
        *   - sets a Cleanup function that verifies that the test did not leak a subprocess.
    **/
    static public inline function commandContext(_t:stdgo._internal.testing.Testing_tb.TB, _ctx:stdgo._internal.context.Context_context.Context, _name:String, _args:haxe.Rest<String>):stdgo._internal.os.exec.Exec_cmd.Cmd {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.internal.testenv.Testenv_commandcontext.commandContext(_t, _ctx, _name, ...[for (i in _args) i]);
    }
    /**
        * Command is like exec.Command, but applies the same changes as
        * testenv.CommandContext (with a default Context).
    **/
    static public inline function command(_t:stdgo._internal.testing.Testing_tb.TB, _name:String, _args:haxe.Rest<String>):stdgo._internal.os.exec.Exec_cmd.Cmd {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.internal.testenv.Testenv_command.command(_t, _name, ...[for (i in _args) i]);
    }
    /**
        * OptimizationOff reports whether optimization is disabled.
    **/
    static public inline function optimizationOff():Bool {
        return stdgo._internal.internal.testenv.Testenv_optimizationoff.optimizationOff();
    }
    /**
        * Builder reports the name of the builder running this test
        * (for example, "linux-amd64" or "windows-386-gce").
        * If the test is not running on the build infrastructure,
        * Builder returns the empty string.
    **/
    static public inline function builder():String {
        return stdgo._internal.internal.testenv.Testenv_builder.builder();
    }
    /**
        * HasGoBuild reports whether the current system can build programs with “go build”
        * and then run them with os.StartProcess or exec.Command.
    **/
    static public inline function hasGoBuild():Bool {
        return stdgo._internal.internal.testenv.Testenv_hasgobuild.hasGoBuild();
    }
    /**
        * MustHaveGoBuild checks that the current system can build programs with “go build”
        * and then run them with os.StartProcess or exec.Command.
        * If not, MustHaveGoBuild calls t.Skip with an explanation.
    **/
    static public inline function mustHaveGoBuild(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_musthavegobuild.mustHaveGoBuild(_t);
    }
    /**
        * HasGoRun reports whether the current system can run programs with “go run.”
    **/
    static public inline function hasGoRun():Bool {
        return stdgo._internal.internal.testenv.Testenv_hasgorun.hasGoRun();
    }
    /**
        * MustHaveGoRun checks that the current system can run programs with “go run.”
        * If not, MustHaveGoRun calls t.Skip with an explanation.
    **/
    static public inline function mustHaveGoRun(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_musthavegorun.mustHaveGoRun(_t);
    }
    /**
        * HasParallelism reports whether the current system can execute multiple
        * threads in parallel.
        * There is a copy of this function in cmd/dist/test.go.
    **/
    static public inline function hasParallelism():Bool {
        return stdgo._internal.internal.testenv.Testenv_hasparallelism.hasParallelism();
    }
    /**
        * MustHaveParallelism checks that the current system can execute multiple
        * threads in parallel. If not, MustHaveParallelism calls t.Skip with an explanation.
    **/
    static public inline function mustHaveParallelism(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_musthaveparallelism.mustHaveParallelism(_t);
    }
    /**
        * GoToolPath reports the path to the Go tool.
        * It is a convenience wrapper around GoTool.
        * If the tool is unavailable GoToolPath calls t.Skip.
        * If the tool should be available and isn't, GoToolPath calls t.Fatal.
    **/
    static public inline function goToolPath(_t:stdgo._internal.testing.Testing_tb.TB):String {
        return stdgo._internal.internal.testenv.Testenv_gotoolpath.goToolPath(_t);
    }
    /**
        * GOROOT reports the path to the directory containing the root of the Go
        * project source tree. This is normally equivalent to runtime.GOROOT, but
        * works even if the test binary was built with -trimpath and cannot exec
        * 'go env GOROOT'.
        * 
        * If GOROOT cannot be found, GOROOT skips t if t is non-nil,
        * or panics otherwise.
    **/
    static public inline function gOROOT(_t:stdgo._internal.testing.Testing_tb.TB):String {
        return stdgo._internal.internal.testenv.Testenv_goroot.gOROOT(_t);
    }
    /**
        * GoTool reports the path to the Go tool.
    **/
    static public inline function goTool():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.testenv.Testenv_gotool.goTool();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * HasSrc reports whether the entire source tree is available under GOROOT.
    **/
    static public inline function hasSrc():Bool {
        return stdgo._internal.internal.testenv.Testenv_hassrc.hasSrc();
    }
    /**
        * HasExternalNetwork reports whether the current system can use
        * external (non-localhost) networks.
    **/
    static public inline function hasExternalNetwork():Bool {
        return stdgo._internal.internal.testenv.Testenv_hasexternalnetwork.hasExternalNetwork();
    }
    /**
        * MustHaveExternalNetwork checks that the current system can use
        * external (non-localhost) networks.
        * If not, MustHaveExternalNetwork calls t.Skip with an explanation.
    **/
    static public inline function mustHaveExternalNetwork(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_musthaveexternalnetwork.mustHaveExternalNetwork(_t);
    }
    /**
        * HasCGO reports whether the current system can use cgo.
    **/
    static public inline function hasCGO():Bool {
        return stdgo._internal.internal.testenv.Testenv_hascgo.hasCGO();
    }
    /**
        * MustHaveCGO calls t.Skip if cgo is not available.
    **/
    static public inline function mustHaveCGO(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_musthavecgo.mustHaveCGO(_t);
    }
    /**
        * CanInternalLink reports whether the current system can link programs with
        * internal linking.
    **/
    static public inline function canInternalLink(_withCgo:Bool):Bool {
        return stdgo._internal.internal.testenv.Testenv_caninternallink.canInternalLink(_withCgo);
    }
    /**
        * MustInternalLink checks that the current system can link programs with internal
        * linking.
        * If not, MustInternalLink calls t.Skip with an explanation.
    **/
    static public inline function mustInternalLink(_t:stdgo._internal.testing.Testing_tb.TB, _withCgo:Bool):Void {
        stdgo._internal.internal.testenv.Testenv_mustinternallink.mustInternalLink(_t, _withCgo);
    }
    /**
        * MustHaveBuildMode reports whether the current system can build programs in
        * the given build mode.
        * If not, MustHaveBuildMode calls t.Skip with an explanation.
    **/
    static public inline function mustHaveBuildMode(_t:stdgo._internal.testing.Testing_tb.TB, _buildmode:String):Void {
        final _buildmode = (_buildmode : stdgo.GoString);
        stdgo._internal.internal.testenv.Testenv_musthavebuildmode.mustHaveBuildMode(_t, _buildmode);
    }
    /**
        * HasSymlink reports whether the current system can use os.Symlink.
    **/
    static public inline function hasSymlink():Bool {
        return stdgo._internal.internal.testenv.Testenv_hassymlink.hasSymlink();
    }
    /**
        * MustHaveSymlink reports whether the current system can use os.Symlink.
        * If not, MustHaveSymlink calls t.Skip with an explanation.
    **/
    static public inline function mustHaveSymlink(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_musthavesymlink.mustHaveSymlink(_t);
    }
    /**
        * HasLink reports whether the current system can use os.Link.
    **/
    static public inline function hasLink():Bool {
        return stdgo._internal.internal.testenv.Testenv_haslink.hasLink();
    }
    /**
        * MustHaveLink reports whether the current system can use os.Link.
        * If not, MustHaveLink calls t.Skip with an explanation.
    **/
    static public inline function mustHaveLink(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_musthavelink.mustHaveLink(_t);
    }
    static public inline function skipFlaky(_t:stdgo._internal.testing.Testing_tb.TB, _issue:StdTypes.Int):Void {
        final _issue = (_issue : stdgo.GoInt);
        stdgo._internal.internal.testenv.Testenv_skipflaky.skipFlaky(_t, _issue);
    }
    static public inline function skipFlakyNet(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_skipflakynet.skipFlakyNet(_t);
    }
    /**
        * CPUIsSlow reports whether the CPU running the test is suspected to be slow.
    **/
    static public inline function cPUIsSlow():Bool {
        return stdgo._internal.internal.testenv.Testenv_cpuisslow.cPUIsSlow();
    }
    /**
        * SkipIfShortAndSlow skips t if -short is set and the CPU running the test is
        * suspected to be slow.
        * 
        * (This is useful for CPU-intensive tests that otherwise complete quickly.)
    **/
    static public inline function skipIfShortAndSlow(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_skipifshortandslow.skipIfShortAndSlow(_t);
    }
    /**
        * SkipIfOptimizationOff skips t if optimization is disabled.
    **/
    static public inline function skipIfOptimizationOff(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.internal.testenv.Testenv_skipifoptimizationoff.skipIfOptimizationOff(_t);
    }
    /**
        * WriteImportcfg writes an importcfg file used by the compiler or linker to
        * dstPath containing entries for the file mappings in packageFiles, as well
        * as for the packages transitively imported by the package(s) in pkgs.
        * 
        * pkgs may include any package pattern that is valid to pass to 'go list',
        * so it may also be a list of Go source files all in the same directory.
    **/
    static public inline function writeImportcfg(_t:stdgo._internal.testing.Testing_tb.TB, _dstPath:String, _packageFiles:Map<String, String>, _pkgs:haxe.Rest<String>):Void {
        final _dstPath = (_dstPath : stdgo.GoString);
        final _packageFiles = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in _packageFiles) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        stdgo._internal.internal.testenv.Testenv_writeimportcfg.writeImportcfg(_t, _dstPath, _packageFiles, ...[for (i in _pkgs) i]);
    }
    /**
        * SyscallIsNotSupported reports whether err may indicate that a system call is
        * not supported by the current platform or execution environment.
    **/
    static public inline function syscallIsNotSupported(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.internal.testenv.Testenv_syscallisnotsupported.syscallIsNotSupported(_err);
    }
}
