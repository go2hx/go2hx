# Module: `stdgo._internal.internal.testenv`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _findGOROOT():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-_findgoroot>)

- [`function _hasSymlink():{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_hassymlink>)

- [`function _syscallIsNotSupported(_err:stdgo.Error):Bool`](<#function-_syscallisnotsupported>)

- [`function _tryExec():stdgo.Error`](<#function-_tryexec>)

- [`function builder():stdgo.GoString`](<#function-builder>)

- [`function canInternalLink(_withCgo:Bool):Bool`](<#function-caninternallink>)

- [`function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Cmd>):stdgo.Ref<stdgo._internal.os.exec.Cmd>`](<#function-cleancmdenv>)

- [`function command(_t:stdgo._internal.testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Cmd>`](<#function-command>)

- [`function commandContext(_t:stdgo._internal.testing.TB, _ctx:stdgo._internal.context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Cmd>`](<#function-commandcontext>)

- [`function cpuisSlow():Bool`](<#function-cpuisslow>)

- [`function goTool():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-gotool>)

- [`function goToolPath(_t:stdgo._internal.testing.TB):stdgo.GoString`](<#function-gotoolpath>)

- [`function goroot(_t:stdgo._internal.testing.TB):stdgo.GoString`](<#function-goroot>)

- [`function hasCGO():Bool`](<#function-hascgo>)

- [`function hasExternalNetwork():Bool`](<#function-hasexternalnetwork>)

- [`function hasGoBuild():Bool`](<#function-hasgobuild>)

- [`function hasGoRun():Bool`](<#function-hasgorun>)

- [`function hasLink():Bool`](<#function-haslink>)

- [`function hasParallelism():Bool`](<#function-hasparallelism>)

- [`function hasSrc():Bool`](<#function-hassrc>)

- [`function hasSymlink():Bool`](<#function-hassymlink>)

- [`function mustHaveBuildMode(_t:stdgo._internal.testing.TB, _buildmode:stdgo.GoString):Void`](<#function-musthavebuildmode>)

- [`function mustHaveCGO(_t:stdgo._internal.testing.TB):Void`](<#function-musthavecgo>)

- [`function mustHaveExec(_t:stdgo._internal.testing.TB):Void`](<#function-musthaveexec>)

- [`function mustHaveExecPath(_t:stdgo._internal.testing.TB, _path:stdgo.GoString):Void`](<#function-musthaveexecpath>)

- [`function mustHaveExternalNetwork(_t:stdgo._internal.testing.TB):Void`](<#function-musthaveexternalnetwork>)

- [`function mustHaveGoBuild(_t:stdgo._internal.testing.TB):Void`](<#function-musthavegobuild>)

- [`function mustHaveGoRun(_t:stdgo._internal.testing.TB):Void`](<#function-musthavegorun>)

- [`function mustHaveLink(_t:stdgo._internal.testing.TB):Void`](<#function-musthavelink>)

- [`function mustHaveParallelism(_t:stdgo._internal.testing.TB):Void`](<#function-musthaveparallelism>)

- [`function mustHaveSymlink(_t:stdgo._internal.testing.TB):Void`](<#function-musthavesymlink>)

- [`function mustInternalLink(_t:stdgo._internal.testing.TB, _withCgo:Bool):Void`](<#function-mustinternallink>)

- [`function optimizationOff():Bool`](<#function-optimizationoff>)

- [`function skipFlaky(_t:stdgo._internal.testing.TB, _issue:stdgo.GoInt):Void`](<#function-skipflaky>)

- [`function skipFlakyNet(_t:stdgo._internal.testing.TB):Void`](<#function-skipflakynet>)

- [`function skipIfOptimizationOff(_t:stdgo._internal.testing.TB):Void`](<#function-skipifoptimizationoff>)

- [`function skipIfShortAndSlow(_t:stdgo._internal.testing.TB):Void`](<#function-skipifshortandslow>)

- [`function syscallIsNotSupported(_err:stdgo.Error):Bool`](<#function-syscallisnotsupported>)

- [`function writeImportcfg(_t:stdgo._internal.testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void`](<#function-writeimportcfg>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

# Variables


```haxe
import stdgo._internal.internal.testenv.Testenv_writeImportcfg
```


```haxe
var _origEnv:stdgo.Slice<stdgo.GoString>
```


```haxe
var _flaky:stdgo.Pointer<Bool>
```


```haxe
var sigquit:stdgo._internal.os.Signal
```


```haxe
var _execPaths:stdgo._internal.sync.Map_
```


```haxe
var _goBuildErr:stdgo.Error
```


```haxe
var _goBuildOnce:stdgo._internal.sync.Once
```


```haxe
var _goToolErr:stdgo.Error
```


```haxe
var _goToolOnce:stdgo._internal.sync.Once
```


```haxe
var _goToolPath:stdgo.GoString
```


```haxe
var _gorootErr:stdgo.Error
```


```haxe
var _gorootOnce:stdgo._internal.sync.Once
```


```haxe
var _gorootPath:stdgo.GoString
```


```haxe
var _hasCgo:Bool
```


```haxe
var _hasCgoOnce:stdgo._internal.sync.Once
```


```haxe
var _tryExecErr:stdgo.Error
```


```haxe
var _tryExecOnce:stdgo._internal.sync.Once
```


# Functions


```haxe
import stdgo._internal.internal.testenv.Testenv_writeImportcfg
```


## function \_findGOROOT


```haxe
function _findGOROOT():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function \_hasSymlink


```haxe
function _hasSymlink():{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function \_syscallIsNotSupported


```haxe
function _syscallIsNotSupported(_err:stdgo.Error):Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function \_tryExec


```haxe
function _tryExec():stdgo.Error
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function builder


```haxe
function builder():stdgo.GoString
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function canInternalLink


```haxe
function canInternalLink(_withCgo:Bool):Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function cleanCmdEnv


```haxe
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Cmd>):stdgo.Ref<stdgo._internal.os.exec.Cmd>
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function command


```haxe
function command(_t:stdgo._internal.testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Cmd>
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function commandContext


```haxe
function commandContext(_t:stdgo._internal.testing.TB, _ctx:stdgo._internal.context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Cmd>
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function cpuisSlow


```haxe
function cpuisSlow():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function goTool


```haxe
function goTool():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function goToolPath


```haxe
function goToolPath(_t:stdgo._internal.testing.TB):stdgo.GoString
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function goroot


```haxe
function goroot(_t:stdgo._internal.testing.TB):stdgo.GoString
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function hasCGO


```haxe
function hasCGO():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function hasExternalNetwork


```haxe
function hasExternalNetwork():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function hasGoBuild


```haxe
function hasGoBuild():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function hasGoRun


```haxe
function hasGoRun():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function hasLink


```haxe
function hasLink():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function hasParallelism


```haxe
function hasParallelism():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function hasSrc


```haxe
function hasSrc():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function hasSymlink


```haxe
function hasSymlink():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveBuildMode


```haxe
function mustHaveBuildMode(_t:stdgo._internal.testing.TB, _buildmode:stdgo.GoString):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveCGO


```haxe
function mustHaveCGO(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveExec


```haxe
function mustHaveExec(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveExecPath


```haxe
function mustHaveExecPath(_t:stdgo._internal.testing.TB, _path:stdgo.GoString):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveExternalNetwork


```haxe
function mustHaveExternalNetwork(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveGoBuild


```haxe
function mustHaveGoBuild(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveGoRun


```haxe
function mustHaveGoRun(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveLink


```haxe
function mustHaveLink(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveParallelism


```haxe
function mustHaveParallelism(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustHaveSymlink


```haxe
function mustHaveSymlink(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function mustInternalLink


```haxe
function mustInternalLink(_t:stdgo._internal.testing.TB, _withCgo:Bool):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function optimizationOff


```haxe
function optimizationOff():Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function skipFlaky


```haxe
function skipFlaky(_t:stdgo._internal.testing.TB, _issue:stdgo.GoInt):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function skipFlakyNet


```haxe
function skipFlakyNet(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function skipIfOptimizationOff


```haxe
function skipIfOptimizationOff(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function skipIfShortAndSlow


```haxe
function skipIfShortAndSlow(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function syscallIsNotSupported


```haxe
function syscallIsNotSupported(_err:stdgo.Error):Bool
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


## function writeImportcfg


```haxe
function writeImportcfg(_t:stdgo._internal.testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Testenv_writeImportcfg.hx#L2>)


# Typedefs


```haxe
import stdgo._internal.internal.testenv.*
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = {
	public function tempDir():stdgo.GoString;
	public function skipped():Bool;
	public function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function skipNow():Void;
	public function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void;
	public function name():stdgo.GoString;
	public function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function log(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function helper():Void;
	public function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function failed():Bool;
	public function failNow():Void;
	public function fail():Void;
	public function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function error(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function deadline():{
		_1:Bool;
		_0:stdgo._internal.time.Time;
	};
	public function cleanup(_0:():Void):Void;
	public function _private():Void;	// A private method to prevent users implementing the interface and so future additions to it will not violate Go 1 compatibility.
};
```


