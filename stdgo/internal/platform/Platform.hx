package stdgo.internal.platform;
@:invalid var list : Dynamic;
@:invalid var _distInfo : Dynamic;
@:invalid typedef OSArch = Dynamic;
@:invalid typedef T_osArchInfo = Dynamic;
function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Void {}
function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Void {}
function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void {}
@:invalid typedef OSArch_asInterface = Dynamic;
@:invalid typedef OSArch_static_extension = Dynamic;
