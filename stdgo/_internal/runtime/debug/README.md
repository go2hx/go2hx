# Module: `stdgo._internal.runtime.debug`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [`function freeOSMemory():Void`](<#function-freeosmemory>)

- [`function parseBuildInfo(_data:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.runtime.debug.BuildInfo>;
}`](<#function-parsebuildinfo>)

- [`function printStack():Void`](<#function-printstack>)

- [`function readBuildInfo():{
	_1:Bool;
	_0:stdgo.Ref<stdgo._internal.runtime.debug.BuildInfo>;
}`](<#function-readbuildinfo>)

- [`function readGCStats(_stats:stdgo.Ref<stdgo._internal.runtime.debug.GCStats>):Void`](<#function-readgcstats>)

- [`function setGCPercent(_percent:stdgo.GoInt):stdgo.GoInt`](<#function-setgcpercent>)

- [`function setMaxStack(_bytes:stdgo.GoInt):stdgo.GoInt`](<#function-setmaxstack>)

- [`function setMaxThreads(_threads:stdgo.GoInt):stdgo.GoInt`](<#function-setmaxthreads>)

- [`function setMemoryLimit(_limit:stdgo.GoInt64):stdgo.GoInt64`](<#function-setmemorylimit>)

- [`function setPanicOnFault(_enabled:Bool):Bool`](<#function-setpaniconfault>)

- [`function setTraceback(_level:stdgo.GoString):Void`](<#function-settraceback>)

- [`function stack():stdgo.Slice<stdgo.GoByte>`](<#function-stack>)

- [`function writeHeapDump(_fd:stdgo.GoUIntptr):Void`](<#function-writeheapdump>)

- [class BuildInfo](<#class-buildinfo>)

  - [`function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?_Main:stdgo._internal.runtime.debug.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Module>>, ?settings:stdgo.Slice<stdgo._internal.runtime.debug.BuildSetting>):Void`](<#buildinfo-function-new>)

  - [`function string():stdgo.GoString`](<#buildinfo-function-string>)

- [class BuildSetting](<#class-buildsetting>)

  - [`function new(?key:stdgo.GoString, ?value:stdgo.GoString):Void`](<#buildsetting-function-new>)

- [class GCStats](<#class-gcstats>)

  - [`function new(?lastGC:stdgo._internal.time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:Null<stdgo._internal.time.Duration>, ?pause:stdgo.Slice<stdgo._internal.time.Duration>, ?pauseEnd:stdgo.Slice<stdgo._internal.time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo._internal.time.Duration>):Void`](<#gcstats-function-new>)

- [class Module](<#class-module>)

  - [`function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo._internal.runtime.debug.Module>):Void`](<#module-function-new>)

# Functions


```haxe
import stdgo._internal.runtime.debug.Debug
```


## function freeOSMemory


```haxe
function freeOSMemory():Void
```


[\(view code\)](<./Debug.hx#L71>)


## function parseBuildInfo


```haxe
function parseBuildInfo(_data:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.runtime.debug.BuildInfo>;
}
```


[\(view code\)](<./Debug.hx#L79>)


## function printStack


```haxe
function printStack():Void
```


[\(view code\)](<./Debug.hx#L80>)


## function readBuildInfo


```haxe
function readBuildInfo():{
	_1:Bool;
	_0:stdgo.Ref<stdgo._internal.runtime.debug.BuildInfo>;
}
```


[\(view code\)](<./Debug.hx#L78>)


## function readGCStats


```haxe
function readGCStats(_stats:stdgo.Ref<stdgo._internal.runtime.debug.GCStats>):Void
```


[\(view code\)](<./Debug.hx#L69>)


## function setGCPercent


```haxe
function setGCPercent(_percent:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Debug.hx#L70>)


## function setMaxStack


```haxe
function setMaxStack(_bytes:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Debug.hx#L72>)


## function setMaxThreads


```haxe
function setMaxThreads(_threads:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Debug.hx#L73>)


## function setMemoryLimit


```haxe
function setMemoryLimit(_limit:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Debug.hx#L77>)


## function setPanicOnFault


```haxe
function setPanicOnFault(_enabled:Bool):Bool
```


[\(view code\)](<./Debug.hx#L74>)


## function setTraceback


```haxe
function setTraceback(_level:stdgo.GoString):Void
```


[\(view code\)](<./Debug.hx#L76>)


## function stack


```haxe
function stack():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Debug.hx#L81>)


## function writeHeapDump


```haxe
function writeHeapDump(_fd:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Debug.hx#L75>)


# Classes


```haxe
import stdgo._internal.runtime.debug.*
```


## class BuildInfo


```haxe
var _Main:stdgo._internal.runtime.debug.Module
```


```haxe
var deps:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Module>>
```


```haxe
var goVersion:stdgo.GoString
```


```haxe
var path:stdgo.GoString
```


```haxe
var settings:stdgo.Slice<stdgo._internal.runtime.debug.BuildSetting>
```


### BuildInfo function new


```haxe
function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?_Main:stdgo._internal.runtime.debug.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Module>>, ?settings:stdgo.Slice<stdgo._internal.runtime.debug.BuildSetting>):Void
```


[\(view code\)](<./Debug.hx#L29>)


### BuildInfo function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Debug.hx#L95>)


## class BuildSetting


```haxe
var key:stdgo.GoString
```


```haxe
var value:stdgo.GoString
```


### BuildSetting function new


```haxe
function new(?key:stdgo.GoString, ?value:stdgo.GoString):Void
```


[\(view code\)](<./Debug.hx#L60>)


## class GCStats


```haxe
var lastGC:stdgo._internal.time.Time
```


```haxe
var numGC:stdgo.GoInt64
```


```haxe
var pause:stdgo.Slice<stdgo._internal.time.Duration>
```


```haxe
var pauseEnd:stdgo.Slice<stdgo._internal.time.Time>
```


```haxe
var pauseQuantiles:stdgo.Slice<stdgo._internal.time.Duration>
```


```haxe
var pauseTotal:stdgo._internal.time.Duration
```


### GCStats function new


```haxe
function new(?lastGC:stdgo._internal.time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:Null<stdgo._internal.time.Duration>, ?pause:stdgo.Slice<stdgo._internal.time.Duration>, ?pauseEnd:stdgo.Slice<stdgo._internal.time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo._internal.time.Duration>):Void
```


[\(view code\)](<./Debug.hx#L10>)


## class Module


```haxe
var path:stdgo.GoString
```


```haxe
var replace:stdgo.Ref<stdgo._internal.runtime.debug.Module>
```


```haxe
var sum:stdgo.GoString
```


```haxe
var version:stdgo.GoString
```


### Module function new


```haxe
function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo._internal.runtime.debug.Module>):Void
```


[\(view code\)](<./Debug.hx#L46>)


