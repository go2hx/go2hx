# Module: `stdgo.internal.testenv`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _findGOROOT():Void`](<#function-_findgoroot>)

- [`function _hasSymlink():Void`](<#function-_hassymlink>)

- [`function _syscallIsNotSupported(_err:stdgo.Error):Void`](<#function-_syscallisnotsupported>)

- [`function _tryExec():Void`](<#function-_tryexec>)

- [`function builder():Void`](<#function-builder>)

- [`function canInternalLink(_withCgo:Bool):Void`](<#function-caninternallink>)

- [`function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Cmd>):Void`](<#function-cleancmdenv>)

- [`function command(_t:stdgo._internal.testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):Void`](<#function-command>)

- [`function commandContext(_t:stdgo._internal.testing.TB, _ctx:stdgo._internal.context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):Void`](<#function-commandcontext>)

- [`function cpuisSlow():Void`](<#function-cpuisslow>)

- [`function goTool():Void`](<#function-gotool>)

- [`function goToolPath(_t:stdgo._internal.testing.TB):Void`](<#function-gotoolpath>)

- [`function goroot(_t:stdgo._internal.testing.TB):Void`](<#function-goroot>)

- [`function hasCGO():Void`](<#function-hascgo>)

- [`function hasExternalNetwork():Void`](<#function-hasexternalnetwork>)

- [`function hasGoBuild():Void`](<#function-hasgobuild>)

- [`function hasGoRun():Void`](<#function-hasgorun>)

- [`function hasLink():Void`](<#function-haslink>)

- [`function hasParallelism():Void`](<#function-hasparallelism>)

- [`function hasSrc():Void`](<#function-hassrc>)

- [`function hasSymlink():Void`](<#function-hassymlink>)

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

- [`function optimizationOff():Void`](<#function-optimizationoff>)

- [`function skipFlaky(_t:stdgo._internal.testing.TB, _issue:stdgo.GoInt):Void`](<#function-skipflaky>)

- [`function skipFlakyNet(_t:stdgo._internal.testing.TB):Void`](<#function-skipflakynet>)

- [`function skipIfOptimizationOff(_t:stdgo._internal.testing.TB):Void`](<#function-skipifoptimizationoff>)

- [`function skipIfShortAndSlow(_t:stdgo._internal.testing.TB):Void`](<#function-skipifshortandslow>)

- [`function syscallIsNotSupported(_err:stdgo.Error):Void`](<#function-syscallisnotsupported>)

- [`function writeImportcfg(_t:stdgo._internal.testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void`](<#function-writeimportcfg>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

# Variables


```haxe
import stdgo.internal.testenv.Testenv
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _execPaths:Dynamic
```


```haxe
var _flaky:Dynamic
```


```haxe
var _goBuildErr:Dynamic
```


```haxe
var _goBuildOnce:Dynamic
```


```haxe
var _goToolErr:Dynamic
```


```haxe
var _goToolOnce:Dynamic
```


```haxe
var _goToolPath:Dynamic
```


```haxe
var _gorootErr:Dynamic
```


```haxe
var _gorootOnce:Dynamic
```


```haxe
var _gorootPath:Dynamic
```


```haxe
var _hasCgo:Dynamic
```


```haxe
var _hasCgoOnce:Dynamic
```


```haxe
var _origEnv:Dynamic
```


```haxe
var _tryExecErr:Dynamic
```


```haxe
var _tryExecOnce:Dynamic
```


```haxe
var sigquit:Dynamic
```


# Functions


```haxe
import stdgo.internal.testenv.Testenv
```


## function \_findGOROOT


```haxe
function _findGOROOT():Void
```


[\(view code\)](<./Testenv.hx#L35>)


## function \_hasSymlink


```haxe
function _hasSymlink():Void
```


[\(view code\)](<./Testenv.hx#L58>)


## function \_syscallIsNotSupported


```haxe
function _syscallIsNotSupported(_err:stdgo.Error):Void
```


[\(view code\)](<./Testenv.hx#L57>)


## function \_tryExec


```haxe
function _tryExec():Void
```


[\(view code\)](<./Testenv.hx#L21>)


## function builder


```haxe
function builder():Void
```


[\(view code\)](<./Testenv.hx#L27>)


## function canInternalLink


```haxe
function canInternalLink(_withCgo:Bool):Void
```


[\(view code\)](<./Testenv.hx#L43>)


## function cleanCmdEnv


```haxe
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Cmd>):Void
```


[\(view code\)](<./Testenv.hx#L23>)


## function command


```haxe
function command(_t:stdgo._internal.testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Testenv.hx#L25>)


## function commandContext


```haxe
function commandContext(_t:stdgo._internal.testing.TB, _ctx:stdgo._internal.context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Testenv.hx#L24>)


## function cpuisSlow


```haxe
function cpuisSlow():Void
```


[\(view code\)](<./Testenv.hx#L52>)


## function goTool


```haxe
function goTool():Void
```


[\(view code\)](<./Testenv.hx#L37>)


## function goToolPath


```haxe
function goToolPath(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L34>)


## function goroot


```haxe
function goroot(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L36>)


## function hasCGO


```haxe
function hasCGO():Void
```


[\(view code\)](<./Testenv.hx#L41>)


## function hasExternalNetwork


```haxe
function hasExternalNetwork():Void
```


[\(view code\)](<./Testenv.hx#L39>)


## function hasGoBuild


```haxe
function hasGoBuild():Void
```


[\(view code\)](<./Testenv.hx#L28>)


## function hasGoRun


```haxe
function hasGoRun():Void
```


[\(view code\)](<./Testenv.hx#L30>)


## function hasLink


```haxe
function hasLink():Void
```


[\(view code\)](<./Testenv.hx#L48>)


## function hasParallelism


```haxe
function hasParallelism():Void
```


[\(view code\)](<./Testenv.hx#L32>)


## function hasSrc


```haxe
function hasSrc():Void
```


[\(view code\)](<./Testenv.hx#L38>)


## function hasSymlink


```haxe
function hasSymlink():Void
```


[\(view code\)](<./Testenv.hx#L46>)


## function mustHaveBuildMode


```haxe
function mustHaveBuildMode(_t:stdgo._internal.testing.TB, _buildmode:stdgo.GoString):Void
```


[\(view code\)](<./Testenv.hx#L45>)


## function mustHaveCGO


```haxe
function mustHaveCGO(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L42>)


## function mustHaveExec


```haxe
function mustHaveExec(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L20>)


## function mustHaveExecPath


```haxe
function mustHaveExecPath(_t:stdgo._internal.testing.TB, _path:stdgo.GoString):Void
```


[\(view code\)](<./Testenv.hx#L22>)


## function mustHaveExternalNetwork


```haxe
function mustHaveExternalNetwork(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L40>)


## function mustHaveGoBuild


```haxe
function mustHaveGoBuild(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L29>)


## function mustHaveGoRun


```haxe
function mustHaveGoRun(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L31>)


## function mustHaveLink


```haxe
function mustHaveLink(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L49>)


## function mustHaveParallelism


```haxe
function mustHaveParallelism(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L33>)


## function mustHaveSymlink


```haxe
function mustHaveSymlink(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L47>)


## function mustInternalLink


```haxe
function mustInternalLink(_t:stdgo._internal.testing.TB, _withCgo:Bool):Void
```


[\(view code\)](<./Testenv.hx#L44>)


## function optimizationOff


```haxe
function optimizationOff():Void
```


[\(view code\)](<./Testenv.hx#L26>)


## function skipFlaky


```haxe
function skipFlaky(_t:stdgo._internal.testing.TB, _issue:stdgo.GoInt):Void
```


[\(view code\)](<./Testenv.hx#L50>)


## function skipFlakyNet


```haxe
function skipFlakyNet(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L51>)


## function skipIfOptimizationOff


```haxe
function skipIfOptimizationOff(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L54>)


## function skipIfShortAndSlow


```haxe
function skipIfShortAndSlow(_t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L53>)


## function syscallIsNotSupported


```haxe
function syscallIsNotSupported(_err:stdgo.Error):Void
```


[\(view code\)](<./Testenv.hx#L56>)


## function writeImportcfg


```haxe
function writeImportcfg(_t:stdgo._internal.testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Testenv.hx#L55>)


# Typedefs


```haxe
import stdgo.internal.testenv.*
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = stdgo._internal.internal.testenv.T__interface_0;
```


