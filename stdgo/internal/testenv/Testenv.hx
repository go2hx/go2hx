package stdgo.internal.testenv;
/**
    // Package testenv provides information about what functionality
    // is available in different testing environments run by the Go team.
    //
    // It is an internal package because these details are specific
    // to the Go team's test setup (on build.golang.org) and not
    // fundamental to tests in general.
**/
private var __go2hxdoc__package : Bool;
/**
    // Save the original environment during init for use in checks. A test
    // binary may modify its environment before calling HasExec to change its
    // behavior (such as mimicking a command-line tool), and that modified
    // environment might cause environment checks to behave erratically.
    
    
**/
var _origEnv : stdgo.Slice<stdgo.GoString> = stdgo.os.Os.environ();
/**
    
    
    
**/
var _flaky : stdgo.Pointer<Bool> = stdgo.flag.Flag.bool_(("flaky" : stdgo.GoString), false, ("run known-flaky tests too" : stdgo.GoString));
/**
    // Sigquit is the signal to send to kill a hanging subprocess.
    // On Unix we send SIGQUIT, but on non-Unix we only have os.Kill.
    
    
**/
var sigquit : stdgo.os.Os.Signal = stdgo.os.Os.kill;
/**
    
    
    
**/
var _tryExecOnce = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _tryExecErr = (null : stdgo.Error);
/**
    
    
    // path -> error
**/
var _execPaths = ({} : stdgo.sync.Sync.Map_);
/**
    
    
    
**/
var _goBuildOnce = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _goBuildErr = (null : stdgo.Error);
/**
    
    
    
**/
var _gorootOnce = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _gorootPath = ("" : stdgo.GoString);
/**
    
    
    
**/
var _gorootErr = (null : stdgo.Error);
/**
    
    
    
**/
var _goToolOnce = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _goToolPath = ("" : stdgo.GoString);
/**
    
    
    
**/
var _goToolErr = (null : stdgo.Error);
/**
    
    
    
**/
var _hasCgoOnce = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _hasCgo = false;
/**
    
    
    
**/
typedef T__interface_0 = stdgo.StdGoTypes.StructType & {
    > stdgo.testing.Testing.TB,
    /**
        
        
        
    **/
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; };
};
/**
    // MustHaveExec checks that the current system can start new processes
    // using os.StartProcess or (more commonly) exec.Command.
    // If not, MustHaveExec calls t.Skip with an explanation.
    //
    // On some platforms MustHaveExec checks for exec support by re-executing the
    // current executable, which must be a binary built by 'go test'.
    // We intentionally do not provide a HasExec function because of the risk of
    // inappropriate recursion in TestMain functions.
    //
    // To check for exec support outside of a test, just try to exec the command.
    // If exec is not supported, testenv.SyscallIsNotSupported will return true
    // for the resulting error.
**/
function mustHaveExec(_t:stdgo.testing.Testing.TB):Void {
        _tryExecOnce.do_(function():Void {
            _tryExecErr = _tryExec();
        });
        if (_tryExecErr != null) {
            _t.skipf(("skipping test: cannot exec subprocess on %s/%s: %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(_tryExecErr));
        };
    }
function _tryExec():stdgo.Error {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("wasip1" : stdgo.GoString)) || __value__ == (("js" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString))) {} else {
                return (null : stdgo.Error);
            };
        };
        if (!stdgo.testing.Testing.testing()) {
            return stdgo.errors.Errors.new_(("can\'t probe for exec support with a non-test executable" : stdgo.GoString));
        };
        var __tmp__ = stdgo.os.Os.executable(), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo.fmt.Fmt.errorf(("can\'t probe for exec support: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo.os.exec.Exec.command(_exe?.__copy__(), ("-test.list=^$" : stdgo.GoString));
        _cmd.env = _origEnv;
        return _cmd.run();
    }
/**
    // MustHaveExecPath checks that the current system can start the named executable
    // using os.StartProcess or (more commonly) exec.Command.
    // If not, MustHaveExecPath calls t.Skip with an explanation.
**/
function mustHaveExecPath(_t:stdgo.testing.Testing.TB, _path:stdgo.GoString):Void {
        mustHaveExec(_t);
        var __tmp__ = _execPaths.load(stdgo.Go.toInterface(_path)), _err:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _found:Bool = __tmp__._1;
        if (!_found) {
            {
                var __tmp__ = stdgo.os.exec.Exec.lookPath(_path?.__copy__());
                _err = stdgo.Go.toInterface(__tmp__._1);
            };
            {
                var __tmp__ = _execPaths.loadOrStore(stdgo.Go.toInterface(_path), _err);
                _err = __tmp__._0;
            };
        };
        if (_err != null) {
            _t.skipf(("skipping test: %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), _err);
        };
    }
/**
    // CleanCmdEnv will fill cmd.Env with the environment, excluding certain
    // variables that could modify the behavior of the Go tools such as
    // GODEBUG and GOTRACEBACK.
**/
function cleanCmdEnv(_cmd:stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.Cmd>):stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.Cmd> {
        if (_cmd.env != null) {
            throw stdgo.Go.toInterface(("environment already set" : stdgo.GoString));
        };
        for (__6 => _env in stdgo.os.Os.environ()) {
            if (stdgo.strings.Strings.hasPrefix(_env?.__copy__(), ("GODEBUG=" : stdgo.GoString))) {
                continue;
            };
            if (stdgo.strings.Strings.hasPrefix(_env?.__copy__(), ("GOTRACEBACK=" : stdgo.GoString))) {
                continue;
            };
            _cmd.env = (_cmd.env.__append__(_env?.__copy__()));
        };
        return _cmd;
    }
/**
    // CommandContext is like exec.CommandContext, but:
    //   - skips t if the platform does not support os/exec,
    //   - sends SIGQUIT (if supported by the platform) instead of SIGKILL
    //     in its Cancel function
    //   - if the test has a deadline, adds a Context timeout and WaitDelay
    //     for an arbitrary grace period before the test's deadline expires,
    //   - fails the test if the command does not complete before the test's deadline, and
    //   - sets a Cleanup function that verifies that the test did not leak a subprocess.
**/
function commandContext(_t:stdgo.testing.Testing.TB, _ctx:stdgo.context.Context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        _t.helper();
        mustHaveExec(_t);
        var __0:stdgo.context.Context.CancelFunc = (null : stdgo.context.Context.CancelFunc), __1:stdgo.time.Time.Duration = ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.time.Time.Duration), _gracePeriod:stdgo.time.Time.Duration = __1, _cancelCtx:stdgo.context.Context.CancelFunc = __0;
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : T__interface_0)) : T__interface_0), ok : true };
            } catch(_) {
                { value : (null : stdgo.internal.testenv.Testenv.T__interface_0), ok : false };
            }, _t = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                {
                    var __tmp__ = _t.deadline(), _td:stdgo.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _gracePeriod = (100000000i64 : stdgo.time.Time.Duration);
                        {
                            var _s:stdgo.GoString = stdgo.os.Os.getenv(("GO_TEST_TIMEOUT_SCALE" : stdgo.GoString))?.__copy__();
                            if (_s != (stdgo.Go.str())) {
                                var __tmp__ = stdgo.strconv.Strconv.atoi(_s?.__copy__()), _scale:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.fatalf(("invalid GO_TEST_TIMEOUT_SCALE: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                                _gracePeriod = _gracePeriod * ((_scale : stdgo.time.Time.Duration));
                            };
                        };
                        var _testTimeout:stdgo.time.Time.Duration = stdgo.time.Time.until(_td?.__copy__());
                        {
                            var _gp:stdgo.time.Time.Duration = _testTimeout / (20i64 : stdgo.time.Time.Duration);
                            if (_gp > _gracePeriod) {
                                _gracePeriod = _gp;
                            };
                        };
                        var _cmdTimeout:stdgo.time.Time.Duration = _testTimeout - ((2i64 : stdgo.time.Time.Duration) * _gracePeriod);
                        {
                            var __tmp__ = _ctx.deadline(), _cd:stdgo.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok || (stdgo.time.Time.until(_cd?.__copy__()) > _cmdTimeout)) {
                                {
                                    var __tmp__ = stdgo.context.Context.withTimeout(_ctx, _cmdTimeout);
                                    _ctx = __tmp__._0;
                                    _cancelCtx = __tmp__._1;
                                };
                            };
                        };
                    };
                };
            };
        };
        var _cmd = stdgo.os.exec.Exec.commandContext(_ctx, _name?.__copy__(), ..._args.__toArray__());
        _cmd.cancel = function():stdgo.Error {
            if ((_cancelCtx != null) && (stdgo.Go.toInterface(_ctx.err()) == stdgo.Go.toInterface(stdgo.context.Context.deadlineExceeded))) {
                _t.errorf(("test timed out while running command: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            } else {
                _t.logf(("%v: terminating command: %v" : stdgo.GoString), stdgo.Go.toInterface(_ctx.err()), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            };
            return _cmd.process.signal(sigquit);
        };
        _cmd.waitDelay = _gracePeriod;
        _t.cleanup(function():Void {
            if (_cancelCtx != null) {
                _cancelCtx();
            };
            if (((_cmd.process != null) && ((_cmd.process : Dynamic).__nil__ == null || !(_cmd.process : Dynamic).__nil__)) && (_cmd.processState == null) || (_cmd.processState : Dynamic).__nil__) {
                _t.errorf(("command was started, but test did not wait for it to complete: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            };
        });
        return _cmd;
    }
/**
    // Command is like exec.Command, but applies the same changes as
    // testenv.CommandContext (with a default Context).
**/
function command(_t:stdgo.testing.Testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        _t.helper();
        return commandContext(_t, stdgo.context.Context.background(), _name?.__copy__(), ..._args.__toArray__());
    }
/**
    // OptimizationOff reports whether optimization is disabled.
**/
function optimizationOff():Bool {
        return false;
    }
/**
    // Builder reports the name of the builder running this test
    // (for example, "linux-amd64" or "windows-386-gce").
    // If the test is not running on the build infrastructure,
    // Builder returns the empty string.
**/
function builder():stdgo.GoString return "";
/**
    // HasGoBuild reports whether the current system can build programs with “go build”
    // and then run them with os.StartProcess or exec.Command.
**/
function hasGoBuild():Bool return false;
/**
    // MustHaveGoBuild checks that the current system can build programs with “go build”
    // and then run them with os.StartProcess or exec.Command.
    // If not, MustHaveGoBuild calls t.Skip with an explanation.
**/
function mustHaveGoBuild(_t:stdgo.testing.Testing.TB):Void {
        if (stdgo.os.Os.getenv(("GO_GCFLAGS" : stdgo.GoString)) != (stdgo.Go.str())) {
            _t.helper();
            _t.skipf(("skipping test: \'go build\' not compatible with setting $GO_GCFLAGS" : stdgo.GoString));
        };
        if (!hasGoBuild()) {
            _t.helper();
            _t.skipf(("skipping test: \'go build\' unavailable: %v" : stdgo.GoString), stdgo.Go.toInterface(_goBuildErr));
        };
    }
/**
    // HasGoRun reports whether the current system can run programs with “go run.”
**/
function hasGoRun():Bool return false;
/**
    // MustHaveGoRun checks that the current system can run programs with “go run.”
    // If not, MustHaveGoRun calls t.Skip with an explanation.
**/
function mustHaveGoRun(_t:stdgo.testing.Testing.TB):Void {
        if (!hasGoRun()) {
            _t.skipf(("skipping test: \'go run\' not available on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
/**
    // HasParallelism reports whether the current system can execute multiple
    // threads in parallel.
    // There is a copy of this function in cmd/dist/test.go.
**/
function hasParallelism():Bool return false;
/**
    // MustHaveParallelism checks that the current system can execute multiple
    // threads in parallel. If not, MustHaveParallelism calls t.Skip with an explanation.
**/
function mustHaveParallelism(_t:stdgo.testing.Testing.TB):Void {
        if (!hasParallelism()) {
            _t.skipf(("skipping test: no parallelism available on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
/**
    // GoToolPath reports the path to the Go tool.
    // It is a convenience wrapper around GoTool.
    // If the tool is unavailable GoToolPath calls t.Skip.
    // If the tool should be available and isn't, GoToolPath calls t.Fatal.
**/
function goToolPath(_t:stdgo.testing.Testing.TB):stdgo.GoString {
        mustHaveGoBuild(_t);
        var __tmp__ = goTool(), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__0 => _envVar in stdgo.strings.Strings.fields(("\n\tAR\n\tCC\n\tCGO_CFLAGS\n\tCGO_CFLAGS_ALLOW\n\tCGO_CFLAGS_DISALLOW\n\tCGO_CPPFLAGS\n\tCGO_CPPFLAGS_ALLOW\n\tCGO_CPPFLAGS_DISALLOW\n\tCGO_CXXFLAGS\n\tCGO_CXXFLAGS_ALLOW\n\tCGO_CXXFLAGS_DISALLOW\n\tCGO_ENABLED\n\tCGO_FFLAGS\n\tCGO_FFLAGS_ALLOW\n\tCGO_FFLAGS_DISALLOW\n\tCGO_LDFLAGS\n\tCGO_LDFLAGS_ALLOW\n\tCGO_LDFLAGS_DISALLOW\n\tCXX\n\tFC\n\tGCCGO\n\tGO111MODULE\n\tGO386\n\tGOAMD64\n\tGOARCH\n\tGOARM\n\tGOBIN\n\tGOCACHE\n\tGOCACHEPROG\n\tGOENV\n\tGOEXE\n\tGOEXPERIMENT\n\tGOFLAGS\n\tGOGCCFLAGS\n\tGOHOSTARCH\n\tGOHOSTOS\n\tGOINSECURE\n\tGOMIPS\n\tGOMIPS64\n\tGOMODCACHE\n\tGONOPROXY\n\tGONOSUMDB\n\tGOOS\n\tGOPATH\n\tGOPPC64\n\tGOPRIVATE\n\tGOPROXY\n\tGOROOT\n\tGOSUMDB\n\tGOTMPDIR\n\tGOTOOLCHAIN\n\tGOTOOLDIR\n\tGOVCS\n\tGOWASM\n\tGOWORK\n\tGO_EXTLINK_ENABLED\n\tPKG_CONFIG\n" : stdgo.GoString))) {
            stdgo.os.Os.getenv(_envVar?.__copy__());
        };
        return _path?.__copy__();
    }
function _findGOROOT():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        _gorootOnce.do_(function():Void {
            _gorootPath = stdgo.runtime.Runtime.goroot()?.__copy__();
            if (_gorootPath != (stdgo.Go.str())) {
                return;
            };
            var __tmp__ = stdgo.os.Os.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _gorootErr = stdgo.fmt.Fmt.errorf(("finding GOROOT: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            var _dir:stdgo.GoString = _cwd?.__copy__();
            while (true) {
                var _parent:stdgo.GoString = stdgo.path.filepath.Filepath.dir(_dir?.__copy__())?.__copy__();
                if (_parent == (_dir)) {
                    _gorootErr = stdgo.fmt.Fmt.errorf(("failed to locate GOROOT/src in any parent directory" : stdgo.GoString));
                    return;
                };
                {
                    var _base:stdgo.GoString = stdgo.path.filepath.Filepath.base(_dir?.__copy__())?.__copy__();
                    if (_base != (("src" : stdgo.GoString))) {
                        _dir = _parent?.__copy__();
                        continue;
                    };
                };
                var __tmp__ = stdgo.os.Os.readFile(stdgo.path.filepath.Filepath.join(_dir?.__copy__(), ("go.mod" : stdgo.GoString))?.__copy__()), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.os.Os.isNotExist(_err)) {
                        _dir = _parent?.__copy__();
                        continue;
                    };
                    _gorootErr = stdgo.fmt.Fmt.errorf(("finding GOROOT: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return;
                };
                var _goMod:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
                while (_goMod != (stdgo.Go.str())) {
                    var _line:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        var __tmp__ = stdgo.strings.Strings.cut(_goMod?.__copy__(), ("\n" : stdgo.GoString));
                        _line = __tmp__._0?.__copy__();
                        _goMod = __tmp__._1?.__copy__();
                    };
                    var _fields = stdgo.strings.Strings.fields(_line?.__copy__());
                    if (((_fields.length >= (2 : stdgo.StdGoTypes.GoInt)) && (_fields[(0 : stdgo.StdGoTypes.GoInt)] == ("module" : stdgo.GoString))) && (_fields[(1 : stdgo.StdGoTypes.GoInt)] == ("std" : stdgo.GoString))) {
                        _gorootPath = _parent?.__copy__();
                        return;
                    };
                };
            };
        });
        return { _0 : _gorootPath?.__copy__(), _1 : _gorootErr };
    }
/**
    // GOROOT reports the path to the directory containing the root of the Go
    // project source tree. This is normally equivalent to runtime.GOROOT, but
    // works even if the test binary was built with -trimpath and cannot exec
    // 'go env GOROOT'.
    //
    // If GOROOT cannot be found, GOROOT skips t if t is non-nil,
    // or panics otherwise.
**/
function goroot(_t:stdgo.testing.Testing.TB):stdgo.GoString {
        var __tmp__ = _findGOROOT(), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (_t == null) {
                throw stdgo.Go.toInterface(_err);
            };
            _t.helper();
            _t.skip(stdgo.Go.toInterface(_err));
        };
        return _path?.__copy__();
    }
/**
    // GoTool reports the path to the Go tool.
**/
function goTool():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (!hasGoBuild()) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.errors.Errors.new_(("platform cannot run go tool" : stdgo.GoString)) };
        };
        _goToolOnce.do_(function():Void {
            {
                var __tmp__ = stdgo.os.exec.Exec.lookPath(("go" : stdgo.GoString));
                _goToolPath = __tmp__._0?.__copy__();
                _goToolErr = __tmp__._1;
            };
        });
        return { _0 : _goToolPath?.__copy__(), _1 : _goToolErr };
    }
/**
    // HasSrc reports whether the entire source tree is available under GOROOT.
**/
function hasSrc():Bool {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("ios" : stdgo.GoString))) {
                return false;
            };
        };
        return true;
    }
/**
    // HasExternalNetwork reports whether the current system can use
    // external (non-localhost) networks.
**/
function hasExternalNetwork():Bool {
        return (!stdgo.testing.Testing.short() && false) && true;
    }
/**
    // MustHaveExternalNetwork checks that the current system can use
    // external (non-localhost) networks.
    // If not, MustHaveExternalNetwork calls t.Skip with an explanation.
**/
function mustHaveExternalNetwork(_t:stdgo.testing.Testing.TB):Void {
        if (true) {
            _t.helper();
            _t.skipf(("skipping test: no external network on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        if (stdgo.testing.Testing.short()) {
            _t.helper();
            _t.skipf(("skipping test: no external network in -short mode" : stdgo.GoString));
        };
    }
/**
    // HasCGO reports whether the current system can use cgo.
**/
function hasCGO():Bool {
        _hasCgoOnce.do_(function():Void {
            var __tmp__ = goTool(), _goTool:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return;
            };
            var _cmd = stdgo.os.exec.Exec.command(_goTool?.__copy__(), ("env" : stdgo.GoString), ("CGO_ENABLED" : stdgo.GoString));
            _cmd.env = _origEnv;
            var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_out)));
            };
            {
                var __tmp__ = stdgo.strconv.Strconv.parseBool((stdgo.bytes.Bytes.trimSpace(_out) : stdgo.GoString)?.__copy__());
                _hasCgo = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v: non-boolean output %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_out)));
            };
        });
        return _hasCgo;
    }
/**
    // MustHaveCGO calls t.Skip if cgo is not available.
**/
function mustHaveCGO(_t:stdgo.testing.Testing.TB):Void {
        if (!hasCGO()) {
            _t.skipf(("skipping test: no cgo" : stdgo.GoString));
        };
    }
/**
    // CanInternalLink reports whether the current system can link programs with
    // internal linking.
**/
function canInternalLink(_withCgo:Bool):Bool return false;
/**
    // MustInternalLink checks that the current system can link programs with internal
    // linking.
    // If not, MustInternalLink calls t.Skip with an explanation.
**/
function mustInternalLink(_t:stdgo.testing.Testing.TB, _withCgo:Bool):Void {
        if (!canInternalLink(_withCgo)) {
            if (_withCgo && canInternalLink(false)) {
                _t.skipf(("skipping test: internal linking on %s/%s is not supported with cgo" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
            };
            _t.skipf(("skipping test: internal linking on %s/%s is not supported" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
/**
    // MustHaveBuildMode reports whether the current system can build programs in
    // the given build mode.
    // If not, MustHaveBuildMode calls t.Skip with an explanation.
**/
function mustHaveBuildMode(_t:stdgo.testing.Testing.TB, _buildmode:stdgo.GoString):Void {
        if (!stdgo.internal.platform.Platform.buildModeSupported(stdgo.runtime.Runtime.compiler?.__copy__(), _buildmode?.__copy__(), ("js" : stdgo.GoString), ("wasm" : stdgo.GoString))) {
            _t.skipf(("skipping test: build mode %s on %s/%s is not supported by the %s compiler" : stdgo.GoString), stdgo.Go.toInterface(_buildmode), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.runtime.Runtime.compiler));
        };
    }
/**
    // HasSymlink reports whether the current system can use os.Symlink.
**/
function hasSymlink():Bool {
        var __tmp__ = _hasSymlink(), _ok:Bool = __tmp__._0, __0:stdgo.GoString = __tmp__._1;
        return _ok;
    }
/**
    // MustHaveSymlink reports whether the current system can use os.Symlink.
    // If not, MustHaveSymlink calls t.Skip with an explanation.
**/
function mustHaveSymlink(_t:stdgo.testing.Testing.TB):Void {
        var __tmp__ = _hasSymlink(), _ok:Bool = __tmp__._0, _reason:stdgo.GoString = __tmp__._1;
        if (!_ok) {
            _t.skipf(("skipping test: cannot make symlinks on %s/%s: %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(_reason));
        };
    }
/**
    // HasLink reports whether the current system can use os.Link.
**/
function hasLink():Bool {
        return true;
    }
/**
    // MustHaveLink reports whether the current system can use os.Link.
    // If not, MustHaveLink calls t.Skip with an explanation.
**/
function mustHaveLink(_t:stdgo.testing.Testing.TB):Void {
        if (!hasLink()) {
            _t.skipf(("skipping test: hardlinks are not supported on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
function skipFlaky(_t:stdgo.testing.Testing.TB, _issue:stdgo.StdGoTypes.GoInt):Void {
        _t.helper();
        if (!_flaky.value) {
            _t.skipf(("skipping known flaky test without the -flaky flag; see golang.org/issue/%d" : stdgo.GoString), stdgo.Go.toInterface(_issue));
        };
    }
function skipFlakyNet(_t:stdgo.testing.Testing.TB):Void {
        _t.helper();
        {
            var __tmp__ = stdgo.strconv.Strconv.parseBool(stdgo.os.Os.getenv(("GO_BUILDER_FLAKY_NET" : stdgo.GoString))?.__copy__()), _v:Bool = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (_v) {
                _t.skip(stdgo.Go.toInterface(("skipping test on builder known to have frequent network failures" : stdgo.GoString)));
            };
        };
    }
/**
    // CPUIsSlow reports whether the CPU running the test is suspected to be slow.
**/
function cpuisSlow():Bool {
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("arm" : stdgo.GoString)) || __value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString)) || __value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString)) || __value__ == (("wasm" : stdgo.GoString))) {
                return true;
            };
        };
        return false;
    }
/**
    // SkipIfShortAndSlow skips t if -short is set and the CPU running the test is
    // suspected to be slow.
    //
    // (This is useful for CPU-intensive tests that otherwise complete quickly.)
**/
function skipIfShortAndSlow(_t:stdgo.testing.Testing.TB):Void {
        if (stdgo.testing.Testing.short() && cpuisSlow()) {
            _t.helper();
            _t.skipf(("skipping test in -short mode on %s" : stdgo.GoString), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
/**
    // SkipIfOptimizationOff skips t if optimization is disabled.
**/
function skipIfOptimizationOff(_t:stdgo.testing.Testing.TB):Void {
        if (optimizationOff()) {
            _t.helper();
            _t.skip(stdgo.Go.toInterface(("skipping test with optimization disabled" : stdgo.GoString)));
        };
    }
/**
    // WriteImportcfg writes an importcfg file used by the compiler or linker to
    // dstPath containing entries for the file mappings in packageFiles, as well
    // as for the packages transitively imported by the package(s) in pkgs.
    //
    // pkgs may include any package pattern that is valid to pass to 'go list',
    // so it may also be a list of Go source files all in the same directory.
**/
function writeImportcfg(_t:stdgo.testing.Testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void {
        var _pkgs = new stdgo.Slice<stdgo.GoString>(_pkgs.length, 0, ..._pkgs);
        _t.helper();
        var _icfg = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        _icfg.writeString(("# import config\n" : stdgo.GoString));
        for (_k => _v in _packageFiles) {
            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(_icfg), ("packagefile %s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
        };
        if ((_pkgs.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            var _cmd = command(_t, goToolPath(_t)?.__copy__(), ("list" : stdgo.GoString), ("-export" : stdgo.GoString), ("-deps" : stdgo.GoString), ("-f" : stdgo.GoString), ("{{if ne .ImportPath \"command-line-arguments\"}}{{if .Export}}{{.ImportPath}}={{.Export}}{{end}}{{end}}" : stdgo.GoString));
            _cmd.args = (_cmd.args.__append__(..._pkgs.__toArray__()));
            _cmd.stderr = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.strings.Strings.Builder)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>));
            var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_cmd.stderr));
            };
            for (__30 => _line in stdgo.strings.Strings.split((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) {
                if (_line == (stdgo.Go.str())) {
                    continue;
                };
                var __tmp__ = stdgo.strings.Strings.cut(_line?.__copy__(), ("=" : stdgo.GoString)), _importPath:stdgo.GoString = __tmp__._0, _export:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if (!_ok) {
                    _t.fatalf(("invalid line in output from %v:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_line));
                };
                if ((_packageFiles[_importPath] ?? ("" : stdgo.GoString)) == (stdgo.Go.str())) {
                    stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(_icfg), ("packagefile %s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_importPath), stdgo.Go.toInterface(_export));
                };
            };
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.writeFile(_dstPath?.__copy__(), _icfg.bytes(), (438u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // SyscallIsNotSupported reports whether err may indicate that a system call is
    // not supported by the current platform or execution environment.
**/
function syscallIsNotSupported(_err:stdgo.Error):Bool {
        return _syscallIsNotSupported(_err);
    }
function _syscallIsNotSupported(_err:stdgo.Error):Bool {
        return stdgo.errors.Errors.is_(_err, stdgo.io.fs.Fs.errPermission) || stdgo.errors.Errors.is_(_err, stdgo.errors.Errors.errUnsupported);
    }
function _hasSymlink():{ var _0 : Bool; var _1 : stdgo.GoString; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _ok:Bool = false, _reason:stdgo.GoString = ("" : stdgo.GoString);
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("plan9" : stdgo.GoString))) {
                    return { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
                } else if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                    var __tmp__ = stdgo.os.Os.mkdirTemp(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
                    };
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            stdgo.os.Os.removeAll(_dir?.__copy__());
                        };
                        a();
                    });
                    var _fpath:stdgo.GoString = stdgo.path.filepath.Filepath.join(_dir?.__copy__(), ("testfile.txt" : stdgo.GoString))?.__copy__();
                    {
                        var _err:stdgo.Error = stdgo.os.Os.writeFile(_fpath?.__copy__(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (420u32 : stdgo.io.fs.Fs.FileMode));
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
                            };
                        };
                    };
                    {
                        var _err:stdgo.Error = stdgo.os.Os.symlink(_fpath?.__copy__(), stdgo.path.filepath.Filepath.join(_dir?.__copy__(), ("testlink" : stdgo.GoString))?.__copy__());
                        if (_err != null) {
                            if (syscallIsNotSupported(_err)) {
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return { _0 : false, _1 : stdgo.fmt.Fmt.sprintf(("symlinks unsupported: %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()))?.__copy__() };
                                };
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
                            };
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : true, _1 : stdgo.Go.str()?.__copy__() };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _ok, _1 : _reason };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _ok, _1 : _reason };
        };
    }
