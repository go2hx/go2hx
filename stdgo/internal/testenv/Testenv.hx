package stdgo.internal.testenv;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _origEnv : Dynamic;
@:invalid var _flaky : Dynamic;
@:invalid var sigquit : Dynamic;
@:invalid var _tryExecOnce : Dynamic;
@:invalid var _tryExecErr : Dynamic;
@:invalid var _execPaths : Dynamic;
@:invalid var _goBuildOnce : Dynamic;
@:invalid var _goBuildErr : Dynamic;
@:invalid var _gorootOnce : Dynamic;
@:invalid var _gorootPath : Dynamic;
@:invalid var _gorootErr : Dynamic;
@:invalid var _goToolOnce : Dynamic;
@:invalid var _goToolPath : Dynamic;
@:invalid var _goToolErr : Dynamic;
@:invalid var _hasCgoOnce : Dynamic;
@:invalid var _hasCgo : Dynamic;
typedef T__interface_0 = stdgo._internal.internal.testenv.Testenv.T__interface_0;
function mustHaveExec(_t:stdgo._internal.testing.Testing.TB):Void {}
function _tryExec():Void {}
function mustHaveExecPath(_t:stdgo._internal.testing.Testing.TB, _path:stdgo.GoString):Void {}
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd>):Void {}
function commandContext(_t:stdgo._internal.testing.Testing.TB, _ctx:stdgo._internal.context.Context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):Void {}
function command(_t:stdgo._internal.testing.Testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):Void {}
function optimizationOff():Void {}
function builder():Void {}
function hasGoBuild():Void {}
function mustHaveGoBuild(_t:stdgo._internal.testing.Testing.TB):Void {}
function hasGoRun():Void {}
function mustHaveGoRun(_t:stdgo._internal.testing.Testing.TB):Void {}
function hasParallelism():Void {}
function mustHaveParallelism(_t:stdgo._internal.testing.Testing.TB):Void {}
function goToolPath(_t:stdgo._internal.testing.Testing.TB):Void {}
function _findGOROOT():Void {}
function goroot(_t:stdgo._internal.testing.Testing.TB):Void {}
function goTool():Void {}
function hasSrc():Void {}
function hasExternalNetwork():Void {}
function mustHaveExternalNetwork(_t:stdgo._internal.testing.Testing.TB):Void {}
function hasCGO():Void {}
function mustHaveCGO(_t:stdgo._internal.testing.Testing.TB):Void {}
function canInternalLink(_withCgo:Bool):Void {}
function mustInternalLink(_t:stdgo._internal.testing.Testing.TB, _withCgo:Bool):Void {}
function mustHaveBuildMode(_t:stdgo._internal.testing.Testing.TB, _buildmode:stdgo.GoString):Void {}
function hasSymlink():Void {}
function mustHaveSymlink(_t:stdgo._internal.testing.Testing.TB):Void {}
function hasLink():Void {}
function mustHaveLink(_t:stdgo._internal.testing.Testing.TB):Void {}
function skipFlaky(_t:stdgo._internal.testing.Testing.TB, _issue:stdgo.GoInt):Void {}
function skipFlakyNet(_t:stdgo._internal.testing.Testing.TB):Void {}
function cpuisSlow():Void {}
function skipIfShortAndSlow(_t:stdgo._internal.testing.Testing.TB):Void {}
function skipIfOptimizationOff(_t:stdgo._internal.testing.Testing.TB):Void {}
function writeImportcfg(_t:stdgo._internal.testing.Testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void {}
function syscallIsNotSupported(_err:stdgo.Error):Void {}
function _syscallIsNotSupported(_err:stdgo.Error):Void {}
function _hasSymlink():Void {}
