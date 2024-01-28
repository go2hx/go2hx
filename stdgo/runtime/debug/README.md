# Module: `stdgo.runtime.debug`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function freeOSMemory():Void`](<#function-freeosmemory>)

- [`function parseBuildInfo(_data:stdgo.GoString):Void`](<#function-parsebuildinfo>)

- [`function printStack():Void`](<#function-printstack>)

- [`function readBuildInfo():Void`](<#function-readbuildinfo>)

- [`function readGCStats(_stats:stdgo.Ref<stdgo.runtime.debug.GCStats>):Void`](<#function-readgcstats>)

- [`function setGCPercent(_percent:stdgo.GoInt):Void`](<#function-setgcpercent>)

- [`function setMaxStack(_bytes:stdgo.GoInt):Void`](<#function-setmaxstack>)

- [`function setMaxThreads(_threads:stdgo.GoInt):Void`](<#function-setmaxthreads>)

- [`function setMemoryLimit(_limit:stdgo.GoInt64):Void`](<#function-setmemorylimit>)

- [`function setPanicOnFault(_enabled:Bool):Void`](<#function-setpaniconfault>)

- [`function setTraceback(_level:stdgo.GoString):Void`](<#function-settraceback>)

- [`function stack():Void`](<#function-stack>)

- [`function writeHeapDump(_fd:stdgo.GoUIntptr):Void`](<#function-writeheapdump>)

- [typedef BuildInfo](<#typedef-buildinfo>)

- [typedef BuildInfo\_asInterface](<#typedef-buildinfo_asinterface>)

- [typedef BuildInfo\_static\_extension](<#typedef-buildinfo_static_extension>)

- [typedef BuildSetting](<#typedef-buildsetting>)

- [typedef GCStats](<#typedef-gcstats>)

- [typedef Module](<#typedef-module>)

# Variables


```haxe
import stdgo.runtime.debug.Debug
```


```haxe
var __go2hxdoc__package:Dynamic
```


# Functions


```haxe
import stdgo.runtime.debug.Debug
```


## function freeOSMemory


```haxe
function freeOSMemory():Void
```


[\(view code\)](<./Debug.hx#L9>)


## function parseBuildInfo


```haxe
function parseBuildInfo(_data:stdgo.GoString):Void
```


[\(view code\)](<./Debug.hx#L17>)


## function printStack


```haxe
function printStack():Void
```


[\(view code\)](<./Debug.hx#L18>)


## function readBuildInfo


```haxe
function readBuildInfo():Void
```


[\(view code\)](<./Debug.hx#L16>)


## function readGCStats


```haxe
function readGCStats(_stats:stdgo.Ref<stdgo.runtime.debug.GCStats>):Void
```


[\(view code\)](<./Debug.hx#L7>)


## function setGCPercent


```haxe
function setGCPercent(_percent:stdgo.GoInt):Void
```


[\(view code\)](<./Debug.hx#L8>)


## function setMaxStack


```haxe
function setMaxStack(_bytes:stdgo.GoInt):Void
```


[\(view code\)](<./Debug.hx#L10>)


## function setMaxThreads


```haxe
function setMaxThreads(_threads:stdgo.GoInt):Void
```


[\(view code\)](<./Debug.hx#L11>)


## function setMemoryLimit


```haxe
function setMemoryLimit(_limit:stdgo.GoInt64):Void
```


[\(view code\)](<./Debug.hx#L15>)


## function setPanicOnFault


```haxe
function setPanicOnFault(_enabled:Bool):Void
```


[\(view code\)](<./Debug.hx#L12>)


## function setTraceback


```haxe
function setTraceback(_level:stdgo.GoString):Void
```


[\(view code\)](<./Debug.hx#L14>)


## function stack


```haxe
function stack():Void
```


[\(view code\)](<./Debug.hx#L19>)


## function writeHeapDump


```haxe
function writeHeapDump(_fd:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Debug.hx#L13>)


# Typedefs


```haxe
import stdgo.runtime.debug.*
```


## typedef BuildInfo


```haxe
typedef BuildInfo = Dynamic;
```


## typedef BuildInfo\_asInterface


```haxe
typedef BuildInfo_asInterface = Dynamic;
```


## typedef BuildInfo\_static\_extension


```haxe
typedef BuildInfo_static_extension = Dynamic;
```


## typedef BuildSetting


```haxe
typedef BuildSetting = Dynamic;
```


## typedef GCStats


```haxe
typedef GCStats = Dynamic;
```


## typedef Module


```haxe
typedef Module = Dynamic;
```


