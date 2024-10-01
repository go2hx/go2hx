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

- [`function stack():stdgo.Slice<stdgo.GoUInt8>`](<#function-stack>)

- [`function writeHeapDump(_fd:stdgo.GoUIntptr):Void`](<#function-writeheapdump>)

- [class BuildInfo](<#class-buildinfo>)

  - [`function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?__Main:stdgo._internal.runtime.debug.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Module>>, ?settings:stdgo.Slice<stdgo._internal.runtime.debug.BuildSetting>):Void`](<#buildinfo-function-new>)

- [class BuildSetting](<#class-buildsetting>)

  - [`function new(?key:stdgo.GoString, ?value:stdgo.GoString):Void`](<#buildsetting-function-new>)

- [class GCStats](<#class-gcstats>)

  - [`function new(?lastGC:stdgo._internal.time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:Null<stdgo._internal.time.Duration>, ?pause:stdgo.Slice<stdgo._internal.time.Duration>, ?pauseEnd:stdgo.Slice<stdgo._internal.time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo._internal.time.Duration>):Void`](<#gcstats-function-new>)

- [class Module](<#class-module>)

  - [`function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo._internal.runtime.debug.Module>):Void`](<#module-function-new>)

# Functions


```haxe
import stdgo._internal.runtime.debug.Debug_writeHeapDump
```


## function freeOSMemory


```haxe
function freeOSMemory():Void
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function parseBuildInfo


```haxe
function parseBuildInfo(_data:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.runtime.debug.BuildInfo>;
}
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function printStack


```haxe
function printStack():Void
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function readBuildInfo


```haxe
function readBuildInfo():{
	_1:Bool;
	_0:stdgo.Ref<stdgo._internal.runtime.debug.BuildInfo>;
}
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function readGCStats


```haxe
function readGCStats(_stats:stdgo.Ref<stdgo._internal.runtime.debug.GCStats>):Void
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function setGCPercent


```haxe
function setGCPercent(_percent:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function setMaxStack


```haxe
function setMaxStack(_bytes:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function setMaxThreads


```haxe
function setMaxThreads(_threads:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function setMemoryLimit


```haxe
function setMemoryLimit(_limit:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function setPanicOnFault


```haxe
function setPanicOnFault(_enabled:Bool):Bool
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function setTraceback


```haxe
function setTraceback(_level:stdgo.GoString):Void
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


## function writeHeapDump


```haxe
function writeHeapDump(_fd:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Debug_writeHeapDump.hx#L2>)


# Classes


```haxe
import stdgo._internal.runtime.debug.*
```


## class BuildInfo


```haxe
var __Main:stdgo._internal.runtime.debug.Module
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
function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?__Main:stdgo._internal.runtime.debug.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Module>>, ?settings:stdgo.Slice<stdgo._internal.runtime.debug.BuildSetting>):Void
```


[\(view code\)](<./Debug_BuildInfo.hx#L8>)


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


[\(view code\)](<./Debug_BuildSetting.hx#L5>)


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


[\(view code\)](<./Debug_GCStats.hx#L9>)


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


[\(view code\)](<./Debug_Module.hx#L7>)


