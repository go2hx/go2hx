package stdgo._internal.internal.testenv;
private var __go2hxdoc__package : Bool;
var _tryExecOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _tryExecErr : stdgo.Error = (null : stdgo.Error);
var _execPaths : stdgo._internal.sync.Sync.Map_ = ({} : stdgo._internal.sync.Sync.Map_);
var _goBuildOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _goBuildErr : stdgo.Error = (null : stdgo.Error);
var _gorootOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _gorootPath : stdgo.GoString = ("" : stdgo.GoString);
var _gorootErr : stdgo.Error = (null : stdgo.Error);
var _goToolOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _goToolPath : stdgo.GoString = ("" : stdgo.GoString);
var _goToolErr : stdgo.Error = (null : stdgo.Error);
var _hasCgoOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _hasCgo : Bool = false;
var _origEnv : stdgo.Slice<stdgo.GoString> = stdgo._internal.os.Os.environ_();
var _flaky : stdgo.Pointer<Bool> = stdgo._internal.flag.Flag.bool_(("flaky" : stdgo.GoString), false, ("run known-flaky tests too" : stdgo.GoString));
var sigquit : stdgo._internal.os.Os.Signal = stdgo._internal.os.Os.kill;
@:keep class T__interface_0_static_extension {
    static public function deadline(t:T__interface_0):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return t.deadline();
}
typedef T__interface_0 = stdgo.StructType & {
    > stdgo._internal.testing.Testing.TB,
    /**
        
        
        
    **/
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; };
};
function mustHaveExec(_t:stdgo._internal.testing.Testing.TB):Void {
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
        if (!stdgo._internal.testing.Testing.testing()) {
            return stdgo._internal.errors.Errors.new_(("can\'t probe for exec support with a non-test executable" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.os.Os.executable(), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt.errorf(("can\'t probe for exec support: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.os.exec.Exec.command(_exe?.__copy__(), ("-test.list=^$" : stdgo.GoString));
        _cmd.env = _origEnv;
        return _cmd.run();
    }
function mustHaveExecPath(_t:stdgo._internal.testing.Testing.TB, _path:stdgo.GoString):Void {
        mustHaveExec(_t);
        var __tmp__ = _execPaths.load(stdgo.Go.toInterface(_path)), _err:stdgo.AnyInterface = __tmp__._0, _found:Bool = __tmp__._1;
        if (!_found) {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec.lookPath(_path?.__copy__());
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
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd>):stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd> {
        if (_cmd.env != null) {
            throw stdgo.Go.toInterface(("environment already set" : stdgo.GoString));
        };
        for (__6 => _env in stdgo._internal.os.Os.environ_()) {
            if (stdgo._internal.strings.Strings.hasPrefix(_env?.__copy__(), ("GODEBUG=" : stdgo.GoString))) {
                continue;
            };
            if (stdgo._internal.strings.Strings.hasPrefix(_env?.__copy__(), ("GOTRACEBACK=" : stdgo.GoString))) {
                continue;
            };
            _cmd.env = (_cmd.env.__append__(_env?.__copy__()));
        };
        return _cmd;
    }
function commandContext(_t:stdgo._internal.testing.Testing.TB, _ctx:stdgo._internal.context.Context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        _t.helper();
        mustHaveExec(_t);
        var __0:stdgo._internal.context.Context.CancelFunc = (null : stdgo._internal.context.Context.CancelFunc), __1:stdgo._internal.time.Time.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
var _gracePeriod = __1, _cancelCtx = __0;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : T__interface_0)) : T__interface_0), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.internal.testenv.Testenv.T__interface_0), _1 : false };
            }, _t = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _t.deadline(), _td:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _gracePeriod = (100000000i64 : stdgo._internal.time.Time.Duration);
                        {
                            var _s = (stdgo._internal.os.Os.getenv(("GO_TEST_TIMEOUT_SCALE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                            if (_s != (stdgo.Go.str())) {
                                var __tmp__ = stdgo._internal.strconv.Strconv.atoi(_s?.__copy__()), _scale:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.fatalf(("invalid GO_TEST_TIMEOUT_SCALE: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                                _gracePeriod = (_gracePeriod * ((_scale : stdgo._internal.time.Time.Duration)) : stdgo._internal.time.Time.Duration);
                            };
                        };
                        var _testTimeout = (stdgo._internal.time.Time.until(_td?.__copy__()) : stdgo._internal.time.Time.Duration);
                        {
                            var _gp = (_testTimeout / (20i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
                            if ((_gp > _gracePeriod : Bool)) {
                                _gracePeriod = _gp;
                            };
                        };
                        var _cmdTimeout = (_testTimeout - ((2i64 : stdgo._internal.time.Time.Duration) * _gracePeriod : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
                        {
                            var __tmp__ = _ctx.deadline(), _cd:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                            if ((!_ok || (stdgo._internal.time.Time.until(_cd?.__copy__()) > _cmdTimeout : Bool) : Bool)) {
                                {
                                    var __tmp__ = stdgo._internal.context.Context.withTimeout(_ctx, _cmdTimeout);
                                    _ctx = __tmp__._0;
                                    _cancelCtx = __tmp__._1;
                                };
                            };
                        };
                    };
                };
            };
        };
        var _cmd = stdgo._internal.os.exec.Exec.commandContext(_ctx, _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
        _cmd.cancel = function():stdgo.Error {
            if (((_cancelCtx != null) && (stdgo.Go.toInterface(_ctx.err()) == stdgo.Go.toInterface(stdgo._internal.context.Context.deadlineExceeded)) : Bool)) {
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
            if ((((_cmd.process != null) && ((_cmd.process : Dynamic).__nil__ == null || !(_cmd.process : Dynamic).__nil__)) && (_cmd.processState == null) || (_cmd.processState : Dynamic).__nil__ : Bool)) {
                _t.errorf(("command was started, but test did not wait for it to complete: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            };
        });
        return _cmd;
    }
function command(_t:stdgo._internal.testing.Testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        _t.helper();
        return commandContext(_t, stdgo._internal.context.Context.background(), _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
    }
function optimizationOff():Bool {
        return false;
    }
function builder():stdgo.GoString return "";
function hasGoBuild():Bool return false;
function mustHaveGoBuild(_t:stdgo._internal.testing.Testing.TB):Void {
        if (stdgo._internal.os.Os.getenv(("GO_GCFLAGS" : stdgo.GoString)) != (stdgo.Go.str())) {
            _t.helper();
            _t.skipf(("skipping test: \'go build\' not compatible with setting $GO_GCFLAGS" : stdgo.GoString));
        };
        if (!hasGoBuild()) {
            _t.helper();
            _t.skipf(("skipping test: \'go build\' unavailable: %v" : stdgo.GoString), stdgo.Go.toInterface(_goBuildErr));
        };
    }
function hasGoRun():Bool return false;
function mustHaveGoRun(_t:stdgo._internal.testing.Testing.TB):Void {
        if (!hasGoRun()) {
            _t.skipf(("skipping test: \'go run\' not available on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
function hasParallelism():Bool return false;
function mustHaveParallelism(_t:stdgo._internal.testing.Testing.TB):Void {
        if (!hasParallelism()) {
            _t.skipf(("skipping test: no parallelism available on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
function goToolPath(_t:stdgo._internal.testing.Testing.TB):stdgo.GoString {
        mustHaveGoBuild(_t);
        var __tmp__ = goTool(), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__0 => _envVar in stdgo._internal.strings.Strings.fields(("\n\tAR\n\tCC\n\tCGO_CFLAGS\n\tCGO_CFLAGS_ALLOW\n\tCGO_CFLAGS_DISALLOW\n\tCGO_CPPFLAGS\n\tCGO_CPPFLAGS_ALLOW\n\tCGO_CPPFLAGS_DISALLOW\n\tCGO_CXXFLAGS\n\tCGO_CXXFLAGS_ALLOW\n\tCGO_CXXFLAGS_DISALLOW\n\tCGO_ENABLED\n\tCGO_FFLAGS\n\tCGO_FFLAGS_ALLOW\n\tCGO_FFLAGS_DISALLOW\n\tCGO_LDFLAGS\n\tCGO_LDFLAGS_ALLOW\n\tCGO_LDFLAGS_DISALLOW\n\tCXX\n\tFC\n\tGCCGO\n\tGO111MODULE\n\tGO386\n\tGOAMD64\n\tGOARCH\n\tGOARM\n\tGOBIN\n\tGOCACHE\n\tGOCACHEPROG\n\tGOENV\n\tGOEXE\n\tGOEXPERIMENT\n\tGOFLAGS\n\tGOGCCFLAGS\n\tGOHOSTARCH\n\tGOHOSTOS\n\tGOINSECURE\n\tGOMIPS\n\tGOMIPS64\n\tGOMODCACHE\n\tGONOPROXY\n\tGONOSUMDB\n\tGOOS\n\tGOPATH\n\tGOPPC64\n\tGOPRIVATE\n\tGOPROXY\n\tGOROOT\n\tGOSUMDB\n\tGOTMPDIR\n\tGOTOOLCHAIN\n\tGOTOOLDIR\n\tGOVCS\n\tGOWASM\n\tGOWORK\n\tGO_EXTLINK_ENABLED\n\tPKG_CONFIG\n" : stdgo.GoString))) {
            stdgo._internal.os.Os.getenv(_envVar?.__copy__());
        };
        return _path?.__copy__();
    }
function _findGOROOT():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        _gorootOnce.do_(function():Void {
            _gorootPath = stdgo._internal.runtime.Runtime.goroot()?.__copy__();
            if (_gorootPath != (stdgo.Go.str())) {
                return;
            };
            var __tmp__ = stdgo._internal.os.Os.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _gorootErr = stdgo._internal.fmt.Fmt.errorf(("finding GOROOT: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            var _dir = (_cwd?.__copy__() : stdgo.GoString);
            while (true) {
                var _parent = (stdgo._internal.path.filepath.Filepath.dir(_dir?.__copy__())?.__copy__() : stdgo.GoString);
                if (_parent == (_dir)) {
                    _gorootErr = stdgo._internal.fmt.Fmt.errorf(("failed to locate GOROOT/src in any parent directory" : stdgo.GoString));
                    return;
                };
                {
                    var _base = (stdgo._internal.path.filepath.Filepath.base(_dir?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_base != (("src" : stdgo.GoString))) {
                        _dir = _parent?.__copy__();
                        continue;
                    };
                };
                var __tmp__ = stdgo._internal.os.Os.readFile(stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("go.mod" : stdgo.GoString))?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo._internal.os.Os.isNotExist(_err)) {
                        _dir = _parent?.__copy__();
                        continue;
                    };
                    _gorootErr = stdgo._internal.fmt.Fmt.errorf(("finding GOROOT: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return;
                };
                var _goMod = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
                while (_goMod != (stdgo.Go.str())) {
                    var _line:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.strings.Strings.cut(_goMod?.__copy__(), ("\n" : stdgo.GoString));
                        _line = __tmp__._0?.__copy__();
                        _goMod = __tmp__._1?.__copy__();
                    };
                    var _fields = stdgo._internal.strings.Strings.fields(_line?.__copy__());
                    if (((((_fields.length) >= (2 : stdgo.GoInt) : Bool) && _fields[(0 : stdgo.GoInt)] == (("module" : stdgo.GoString)) : Bool) && (_fields[(1 : stdgo.GoInt)] == ("std" : stdgo.GoString)) : Bool)) {
                        _gorootPath = _parent?.__copy__();
                        return;
                    };
                };
            };
        });
        return { _0 : _gorootPath?.__copy__(), _1 : _gorootErr };
    }
function goroot(_t:stdgo._internal.testing.Testing.TB):stdgo.GoString {
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
function goTool():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (!hasGoBuild()) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors.new_(("platform cannot run go tool" : stdgo.GoString)) };
        };
        _goToolOnce.do_(function():Void {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec.lookPath(("go" : stdgo.GoString));
                _goToolPath = __tmp__._0?.__copy__();
                _goToolErr = __tmp__._1;
            };
        });
        return { _0 : _goToolPath?.__copy__(), _1 : _goToolErr };
    }
function hasSrc():Bool {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("ios" : stdgo.GoString))) {
                return false;
            };
        };
        return true;
    }
function hasExternalNetwork():Bool {
        return ((!stdgo._internal.testing.Testing.short() && false : Bool) && true : Bool);
    }
function mustHaveExternalNetwork(_t:stdgo._internal.testing.Testing.TB):Void {
        if (true) {
            _t.helper();
            _t.skipf(("skipping test: no external network on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        if (stdgo._internal.testing.Testing.short()) {
            _t.helper();
            _t.skipf(("skipping test: no external network in -short mode" : stdgo.GoString));
        };
    }
function hasCGO():Bool {
        _hasCgoOnce.do_(function():Void {
            var __tmp__ = goTool(), _goTool:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return;
            };
            var _cmd = stdgo._internal.os.exec.Exec.command(_goTool?.__copy__(), ("env" : stdgo.GoString), ("CGO_ENABLED" : stdgo.GoString));
            _cmd.env = _origEnv;
            var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_out)));
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv.parseBool((stdgo._internal.bytes.Bytes.trimSpace(_out) : stdgo.GoString)?.__copy__());
                _hasCgo = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v: non-boolean output %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_out)));
            };
        });
        return _hasCgo;
    }
function mustHaveCGO(_t:stdgo._internal.testing.Testing.TB):Void {
        if (!hasCGO()) {
            _t.skipf(("skipping test: no cgo" : stdgo.GoString));
        };
    }
function canInternalLink(_withCgo:Bool):Bool return false;
function mustInternalLink(_t:stdgo._internal.testing.Testing.TB, _withCgo:Bool):Void {
        if (!canInternalLink(_withCgo)) {
            if ((_withCgo && canInternalLink(false) : Bool)) {
                _t.skipf(("skipping test: internal linking on %s/%s is not supported with cgo" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
            };
            _t.skipf(("skipping test: internal linking on %s/%s is not supported" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
function mustHaveBuildMode(_t:stdgo._internal.testing.Testing.TB, _buildmode:stdgo.GoString):Void {
        if (!stdgo._internal.internal.platform.Platform.buildModeSupported(stdgo._internal.runtime.Runtime.compiler?.__copy__(), _buildmode?.__copy__(), ("js" : stdgo.GoString), ("wasm" : stdgo.GoString))) {
            _t.skipf(("skipping test: build mode %s on %s/%s is not supported by the %s compiler" : stdgo.GoString), stdgo.Go.toInterface(_buildmode), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime.compiler));
        };
    }
function hasSymlink():Bool {
        var __tmp__ = _hasSymlink(), _ok:Bool = __tmp__._0, __0:stdgo.GoString = __tmp__._1;
        return _ok;
    }
function mustHaveSymlink(_t:stdgo._internal.testing.Testing.TB):Void {
        var __tmp__ = _hasSymlink(), _ok:Bool = __tmp__._0, _reason:stdgo.GoString = __tmp__._1;
        if (!_ok) {
            _t.skipf(("skipping test: cannot make symlinks on %s/%s: %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(_reason));
        };
    }
function hasLink():Bool {
        return true;
    }
function mustHaveLink(_t:stdgo._internal.testing.Testing.TB):Void {
        if (!hasLink()) {
            _t.skipf(("skipping test: hardlinks are not supported on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
function skipFlaky(_t:stdgo._internal.testing.Testing.TB, _issue:stdgo.GoInt):Void {
        _t.helper();
        if (!_flaky.value) {
            _t.skipf(("skipping known flaky test without the -flaky flag; see golang.org/issue/%d" : stdgo.GoString), stdgo.Go.toInterface(_issue));
        };
    }
function skipFlakyNet(_t:stdgo._internal.testing.Testing.TB):Void {
        _t.helper();
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseBool(stdgo._internal.os.Os.getenv(("GO_BUILDER_FLAKY_NET" : stdgo.GoString))?.__copy__()), _v:Bool = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (_v) {
                _t.skip(stdgo.Go.toInterface(("skipping test on builder known to have frequent network failures" : stdgo.GoString)));
            };
        };
    }
function cpuisSlow():Bool {
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("arm" : stdgo.GoString)) || __value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString)) || __value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString)) || __value__ == (("wasm" : stdgo.GoString))) {
                return true;
            };
        };
        return false;
    }
function skipIfShortAndSlow(_t:stdgo._internal.testing.Testing.TB):Void {
        if ((stdgo._internal.testing.Testing.short() && cpuisSlow() : Bool)) {
            _t.helper();
            _t.skipf(("skipping test in -short mode on %s" : stdgo.GoString), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
function skipIfOptimizationOff(_t:stdgo._internal.testing.Testing.TB):Void {
        if (optimizationOff()) {
            _t.helper();
            _t.skip(stdgo.Go.toInterface(("skipping test with optimization disabled" : stdgo.GoString)));
        };
    }
function writeImportcfg(_t:stdgo._internal.testing.Testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void {
        var _pkgs = new stdgo.Slice<stdgo.GoString>(_pkgs.length, 0, ..._pkgs);
        _t.helper();
        var _icfg = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _icfg.writeString(("# import config\n" : stdgo.GoString));
        for (_k => _v in _packageFiles) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_icfg), ("packagefile %s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
        };
        if (((_pkgs.length) > (0 : stdgo.GoInt) : Bool)) {
            var _cmd = command(_t, goToolPath(_t)?.__copy__(), ("list" : stdgo.GoString), ("-export" : stdgo.GoString), ("-deps" : stdgo.GoString), ("-f" : stdgo.GoString), ("{{if ne .ImportPath \"command-line-arguments\"}}{{if .Export}}{{.ImportPath}}={{.Export}}{{end}}{{end}}" : stdgo.GoString));
            _cmd.args = (_cmd.args.__append__(...(_pkgs : Array<stdgo.GoString>)));
            _cmd.stderr = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>));
            var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_cmd.stderr));
            };
            for (__30 => _line in stdgo._internal.strings.Strings.split((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) {
                if (_line == (stdgo.Go.str())) {
                    continue;
                };
                var __tmp__ = stdgo._internal.strings.Strings.cut(_line?.__copy__(), ("=" : stdgo.GoString)), _importPath:stdgo.GoString = __tmp__._0, _export:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if (!_ok) {
                    _t.fatalf(("invalid line in output from %v:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_line));
                };
                if ((_packageFiles[_importPath] ?? ("" : stdgo.GoString)) == (stdgo.Go.str())) {
                    stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_icfg), ("packagefile %s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_importPath), stdgo.Go.toInterface(_export));
                };
            };
        };
        {
            var _err = (stdgo._internal.os.Os.writeFile(_dstPath?.__copy__(), _icfg.bytes(), (438u32 : stdgo._internal.io.fs.Fs.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function syscallIsNotSupported(_err:stdgo.Error):Bool {
        return _syscallIsNotSupported(_err);
    }
function _syscallIsNotSupported(_err:stdgo.Error):Bool {
        return (stdgo._internal.errors.Errors.is_(_err, stdgo._internal.io.fs.Fs.errPermission) || stdgo._internal.errors.Errors.is_(_err, stdgo._internal.errors.Errors.errUnsupported) : Bool);
    }
function _hasSymlink():{ var _0 : Bool; var _1 : stdgo.GoString; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _ok = false, _reason = ("" : stdgo.GoString);
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("plan9" : stdgo.GoString))) {
                    return { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
                } else if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                    var __tmp__ = stdgo._internal.os.Os.mkdirTemp(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
                    };
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __blank__ = stdgo._internal.os.Os.removeAll(_dir?.__copy__());
                        };
                        a();
                    });
                    var _fpath = (stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("testfile.txt" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    {
                        var _err = (stdgo._internal.os.Os.writeFile(_fpath?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs.FileMode)) : stdgo.Error);
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    {
                        var _err = (stdgo._internal.os.Os.symlink(_fpath?.__copy__(), stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("testlink" : stdgo.GoString))?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            if (syscallIsNotSupported(_err)) {
                                {
                                    final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : stdgo._internal.fmt.Fmt.sprintf(("symlinks unsupported: %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()))?.__copy__() };
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return __ret__;
                                };
                            };
                            {
                                final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                };
            };
            {
                final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : stdgo.Go.str()?.__copy__() };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : _ok, _1 : _reason };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : _ok, _1 : _reason };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
