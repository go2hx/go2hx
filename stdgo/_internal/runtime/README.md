# Module: `stdgo._internal.runtime`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function blockProfile(_p:stdgo.Slice<stdgo._internal.runtime.BlockProfileRecord>):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-blockprofile>)

- [`function breakpoint():Void`](<#function-breakpoint>)

- [`function caller(_skip:stdgo.GoInt):{
	_3:Bool;
	_2:stdgo.GoInt;
	_1:stdgo.GoString;
	_0:stdgo.GoUIntptr;
}`](<#function-caller>)

- [`function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt`](<#function-callers>)

- [`function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Ref<stdgo._internal.runtime.Frames>`](<#function-callersframes>)

- [`function cpuprofile():stdgo.Slice<stdgo.GoByte>`](<#function-cpuprofile>)

- [`function funcForPC(_pc:stdgo.GoUIntptr):stdgo.Ref<stdgo._internal.runtime.Func>`](<#function-funcforpc>)

- [`function gc():Void`](<#function-gc>)

- [`function goexit():Void`](<#function-goexit>)

- [`function gomaxprocs(_n:stdgo.GoInt):stdgo.GoInt`](<#function-gomaxprocs>)

- [`function goroot():stdgo.GoString`](<#function-goroot>)

- [`function goroutineProfile(_p:stdgo.Slice<stdgo._internal.runtime.StackRecord>):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-goroutineprofile>)

- [`function gosched():Void`](<#function-gosched>)

- [`function keepAlive(_x:stdgo.AnyInterface):Void`](<#function-keepalive>)

- [`function lockOSThread():Void`](<#function-lockosthread>)

- [`function memProfile(_p:stdgo.Slice<stdgo._internal.runtime.MemProfileRecord>, _inuseZero:Bool):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-memprofile>)

- [`function mutexProfile(_p:stdgo.Slice<stdgo._internal.runtime.BlockProfileRecord>):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-mutexprofile>)

- [`function numCPU():stdgo.GoInt`](<#function-numcpu>)

- [`function numCgoCall():stdgo.GoInt64`](<#function-numcgocall>)

- [`function numGoroutine():stdgo.GoInt`](<#function-numgoroutine>)

- [`function readMemStats(_m:stdgo.Ref<stdgo._internal.runtime.MemStats>):Void`](<#function-readmemstats>)

- [`function readTrace():stdgo.Slice<stdgo.GoByte>`](<#function-readtrace>)

- [`function setBlockProfileRate(_rate:stdgo.GoInt):Void`](<#function-setblockprofilerate>)

- [`function setCPUProfileRate(_hz:stdgo.GoInt):Void`](<#function-setcpuprofilerate>)

- [`function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo._internal.unsafe.UnsafePointer, _context:stdgo._internal.unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-setcgotraceback>)

- [`function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void`](<#function-setfinalizer>)

- [`function setMutexProfileFraction(_rate:stdgo.GoInt):stdgo.GoInt`](<#function-setmutexprofilefraction>)

- [`function stack(_buf:stdgo.Slice<stdgo.GoByte>, _all:Bool):stdgo.GoInt`](<#function-stack>)

- [`function startTrace():stdgo.Error`](<#function-starttrace>)

- [`function stopTrace():Void`](<#function-stoptrace>)

- [`function threadCreateProfile(_p:stdgo.Slice<stdgo._internal.runtime.StackRecord>):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-threadcreateprofile>)

- [`function unlockOSThread():Void`](<#function-unlockosthread>)

- [`function version():stdgo.GoString`](<#function-version>)

- [class BlockProfileRecord](<#class-blockprofilerecord>)

  - [`function new(?count:stdgo.GoInt64, ?cycles:stdgo.GoInt64, ?stackRecord:stdgo._internal.runtime.StackRecord):Void`](<#blockprofilerecord-function-new>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#blockprofilerecord-function-stack>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#blockprofilerecord-function-stack>)

- [class Frame](<#class-frame>)

  - [`function new(?pc:stdgo.GoUIntptr, ?func:stdgo.Ref<stdgo._internal.runtime.Func>, ?function_:stdgo.GoString, ?file:stdgo.GoString, ?line:stdgo.GoInt, ?entry:stdgo.GoUIntptr):Void`](<#frame-function-new>)

- [class Frames](<#class-frames>)

  - [`function new():Void`](<#frames-function-new>)

  - [`function next():{ _1:Bool; _0:stdgo._internal.runtime.Frame;}`](<#frames-function-next>)

- [class Func](<#class-func>)

  - [`function new():Void`](<#func-function-new>)

  - [`function entry():stdgo.GoUIntptr`](<#func-function-entry>)

  - [`function fileLine( _pc:stdgo.GoUIntptr):{ _1:stdgo.GoInt; _0:stdgo.GoString;}`](<#func-function-fileline>)

  - [`function name():stdgo.GoString`](<#func-function-name>)

- [class MemProfileRecord](<#class-memprofilerecord>)

  - [`function new(?allocBytes:stdgo.GoInt64, ?freeBytes:stdgo.GoInt64, ?allocObjects:stdgo.GoInt64, ?freeObjects:stdgo.GoInt64, ?stack0:stdgo.GoArray<stdgo.GoUIntptr>):Void`](<#memprofilerecord-function-new>)

  - [`function inUseBytes():stdgo.GoInt64`](<#memprofilerecord-function-inusebytes>)

  - [`function inUseObjects():stdgo.GoInt64`](<#memprofilerecord-function-inuseobjects>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#memprofilerecord-function-stack>)

- [class MemStats](<#class-memstats>)

  - [`function new(?alloc:stdgo.GoUInt64, ?totalAlloc:stdgo.GoUInt64, ?sys:stdgo.GoUInt64, ?lookups:stdgo.GoUInt64, ?mallocs:stdgo.GoUInt64, ?frees:stdgo.GoUInt64, ?heapAlloc:stdgo.GoUInt64, ?heapSys:stdgo.GoUInt64, ?heapIdle:stdgo.GoUInt64, ?heapInuse:stdgo.GoUInt64, ?heapReleased:stdgo.GoUInt64, ?heapObjects:stdgo.GoUInt64, ?stackInuse:stdgo.GoUInt64, ?stackSys:stdgo.GoUInt64, ?mspanInuse:stdgo.GoUInt64, ?mspanSys:stdgo.GoUInt64, ?mcacheInuse:stdgo.GoUInt64, ?mcacheSys:stdgo.GoUInt64, ?buckHashSys:stdgo.GoUInt64, ?gcsys:stdgo.GoUInt64, ?otherSys:stdgo.GoUInt64, ?nextGC:stdgo.GoUInt64, ?lastGC:stdgo.GoUInt64, ?pauseTotalNs:stdgo.GoUInt64, ?pauseNs:stdgo.GoArray<stdgo.GoUInt64>, ?pauseEnd:stdgo.GoArray<stdgo.GoUInt64>, ?numGC:stdgo.GoUInt32, ?numForcedGC:stdgo.GoUInt32, ?gccpufraction:stdgo.GoFloat64, ?enableGC:Bool, ?debugGC:Bool, ?bySize:stdgo.GoArray<{ size:stdgo.GoUInt32; mallocs:stdgo.GoUInt64; frees:stdgo.GoUInt64;}>):Void`](<#memstats-function-new>)

- [class PanicNilError](<#class-panicnilerror>)

  - [`function new():Void`](<#panicnilerror-function-new>)

  - [`function error():stdgo.GoString`](<#panicnilerror-function-error>)

  - [`function runtimeError():Void`](<#panicnilerror-function-runtimeerror>)

- [class Pinner](<#class-pinner>)

  - [`function _unpin():Void`](<#pinner-function-_unpin>)

  - [`function new():Void`](<#pinner-function-new>)

  - [`function _unpin():Void`](<#pinner-function-_unpin>)

  - [`function pin( _pointer:stdgo.AnyInterface):Void`](<#pinner-function-pin>)

  - [`function unpin():Void`](<#pinner-function-unpin>)

- [class StackRecord](<#class-stackrecord>)

  - [`function new(?stack0:stdgo.GoArray<stdgo.GoUIntptr>):Void`](<#stackrecord-function-new>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#stackrecord-function-stack>)

- [class TypeAssertionError](<#class-typeassertionerror>)

  - [`function new():Void`](<#typeassertionerror-function-new>)

  - [`function error():stdgo.GoString`](<#typeassertionerror-function-error>)

  - [`function runtimeError():Void`](<#typeassertionerror-function-runtimeerror>)

- [typedef Error](<#typedef-error>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Constants


```haxe
import stdgo._internal.runtime.Runtime
```


```haxe
final compiler:stdgo.GoString = "go2hx"
```


```haxe
final goarch:stdgo.GoString = (("" : stdgo.GoString))
```


```haxe
final goos:stdgo.GoString = (("" : stdgo.GoString))
```


# Variables


```haxe
import stdgo._internal.runtime.Runtime
```


```haxe
var memProfileRate:stdgo.GoInt
```


# Functions


```haxe
import stdgo._internal.runtime.Runtime
```


## function blockProfile


```haxe
function blockProfile(_p:stdgo.Slice<stdgo._internal.runtime.BlockProfileRecord>):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Runtime.hx#L275>)


## function breakpoint


```haxe
function breakpoint():Void
```


[\(view code\)](<./Runtime.hx#L283>)


## function caller


```haxe
function caller(_skip:stdgo.GoInt):{
	_3:Bool;
	_2:stdgo.GoInt;
	_1:stdgo.GoString;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Runtime.hx#L265>)


## function callers


```haxe
function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt
```


[\(view code\)](<./Runtime.hx#L266>)


## function callersFrames


```haxe
function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Ref<stdgo._internal.runtime.Frames>
```


[\(view code\)](<./Runtime.hx#L286>)


## function cpuprofile


```haxe
function cpuprofile():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Runtime.hx#L260>)


## function funcForPC


```haxe
function funcForPC(_pc:stdgo.GoUIntptr):stdgo.Ref<stdgo._internal.runtime.Func>
```


[\(view code\)](<./Runtime.hx#L287>)


## function gc


```haxe
function gc():Void
```


[\(view code\)](<./Runtime.hx#L271>)


## function goexit


```haxe
function goexit():Void
```


[\(view code\)](<./Runtime.hx#L281>)


## function gomaxprocs


```haxe
function gomaxprocs(_n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Runtime.hx#L261>)


## function goroot


```haxe
function goroot():stdgo.GoString
```


[\(view code\)](<./Runtime.hx#L267>)


## function goroutineProfile


```haxe
function goroutineProfile(_p:stdgo.Slice<stdgo._internal.runtime.StackRecord>):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Runtime.hx#L278>)


## function gosched


```haxe
function gosched():Void
```


[\(view code\)](<./Runtime.hx#L282>)


## function keepAlive


```haxe
function keepAlive(_x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Runtime.hx#L270>)


## function lockOSThread


```haxe
function lockOSThread():Void
```


[\(view code\)](<./Runtime.hx#L284>)


## function memProfile


```haxe
function memProfile(_p:stdgo.Slice<stdgo._internal.runtime.MemProfileRecord>, _inuseZero:Bool):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Runtime.hx#L274>)


## function mutexProfile


```haxe
function mutexProfile(_p:stdgo.Slice<stdgo._internal.runtime.BlockProfileRecord>):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Runtime.hx#L276>)


## function numCPU


```haxe
function numCPU():stdgo.GoInt
```


[\(view code\)](<./Runtime.hx#L262>)


## function numCgoCall


```haxe
function numCgoCall():stdgo.GoInt64
```


[\(view code\)](<./Runtime.hx#L263>)


## function numGoroutine


```haxe
function numGoroutine():stdgo.GoInt
```


[\(view code\)](<./Runtime.hx#L264>)


## function readMemStats


```haxe
function readMemStats(_m:stdgo.Ref<stdgo._internal.runtime.MemStats>):Void
```


[\(view code\)](<./Runtime.hx#L280>)


## function readTrace


```haxe
function readTrace():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Runtime.hx#L290>)


## function setBlockProfileRate


```haxe
function setBlockProfileRate(_rate:stdgo.GoInt):Void
```


[\(view code\)](<./Runtime.hx#L272>)


## function setCPUProfileRate


```haxe
function setCPUProfileRate(_hz:stdgo.GoInt):Void
```


[\(view code\)](<./Runtime.hx#L259>)


## function setCgoTraceback


```haxe
function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo._internal.unsafe.UnsafePointer, _context:stdgo._internal.unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Runtime.hx#L291>)


## function setFinalizer


```haxe
function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void
```


[\(view code\)](<./Runtime.hx#L269>)


## function setMutexProfileFraction


```haxe
function setMutexProfileFraction(_rate:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Runtime.hx#L273>)


## function stack


```haxe
function stack(_buf:stdgo.Slice<stdgo.GoByte>, _all:Bool):stdgo.GoInt
```


[\(view code\)](<./Runtime.hx#L279>)


## function startTrace


```haxe
function startTrace():stdgo.Error
```


[\(view code\)](<./Runtime.hx#L288>)


## function stopTrace


```haxe
function stopTrace():Void
```


[\(view code\)](<./Runtime.hx#L289>)


## function threadCreateProfile


```haxe
function threadCreateProfile(_p:stdgo.Slice<stdgo._internal.runtime.StackRecord>):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Runtime.hx#L277>)


## function unlockOSThread


```haxe
function unlockOSThread():Void
```


[\(view code\)](<./Runtime.hx#L285>)


## function version


```haxe
function version():stdgo.GoString
```


[\(view code\)](<./Runtime.hx#L268>)


# Classes


```haxe
import stdgo._internal.runtime.*
```


## class BlockProfileRecord


```haxe
var count:stdgo.GoInt64
```


```haxe
var cycles:stdgo.GoInt64
```


```haxe
var stackRecord:stdgo._internal.runtime.StackRecord
```


### BlockProfileRecord function new


```haxe
function new(?count:stdgo.GoInt64, ?cycles:stdgo.GoInt64, ?stackRecord:stdgo._internal.runtime.StackRecord):Void
```


[\(view code\)](<./Runtime.hx#L62>)


### BlockProfileRecord function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


[\(view code\)](<./Runtime.hx#L69>)


### BlockProfileRecord function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


[\(view code\)](<./Runtime.hx#L362>)


## class Frame


```haxe
var entry:stdgo.GoUIntptr
```


```haxe
var file:stdgo.GoString
```


```haxe
var func:stdgo.Ref<stdgo._internal.runtime.Func>
```


```haxe
var function_:stdgo.GoString
```


```haxe
var line:stdgo.GoInt
```


```haxe
var pc:stdgo.GoUIntptr
```


### Frame function new


```haxe
function new(?pc:stdgo.GoUIntptr, ?func:stdgo.Ref<stdgo._internal.runtime.Func>, ?function_:stdgo.GoString, ?file:stdgo.GoString, ?line:stdgo.GoInt, ?entry:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Runtime.hx#L208>)


## class Frames


### Frames function new


```haxe
function new():Void
```


[\(view code\)](<./Runtime.hx#L195>)


### Frames function next


```haxe
function next():{
	_1:Bool;
	_0:stdgo._internal.runtime.Frame;
}
```


[\(view code\)](<./Runtime.hx#L419>)


## class Func


### Func function new


```haxe
function new():Void
```


[\(view code\)](<./Runtime.hx#L222>)


### Func function entry


```haxe
function entry():stdgo.GoUIntptr
```


[\(view code\)](<./Runtime.hx#L440>)


### Func function fileLine


```haxe
function fileLine( _pc:stdgo.GoUIntptr):{
	_1:stdgo.GoInt;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Runtime.hx#L438>)


### Func function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Runtime.hx#L442>)


## class MemProfileRecord


```haxe
var allocBytes:stdgo.GoInt64
```


```haxe
var allocObjects:stdgo.GoInt64
```


```haxe
var freeBytes:stdgo.GoInt64
```


```haxe
var freeObjects:stdgo.GoInt64
```


```haxe
var stack0:stdgo.GoArray<stdgo.GoUIntptr>
```


### MemProfileRecord function new


```haxe
function new(?allocBytes:stdgo.GoInt64, ?freeBytes:stdgo.GoInt64, ?allocObjects:stdgo.GoInt64, ?freeObjects:stdgo.GoInt64, ?stack0:stdgo.GoArray<stdgo.GoUIntptr>):Void
```


[\(view code\)](<./Runtime.hx#L45>)


### MemProfileRecord function inUseBytes


```haxe
function inUseBytes():stdgo.GoInt64
```


[\(view code\)](<./Runtime.hx#L347>)


### MemProfileRecord function inUseObjects


```haxe
function inUseObjects():stdgo.GoInt64
```


[\(view code\)](<./Runtime.hx#L345>)


### MemProfileRecord function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


[\(view code\)](<./Runtime.hx#L343>)


## class MemStats


```haxe
var alloc:stdgo.GoUInt64
```


```haxe
var buckHashSys:stdgo.GoUInt64
```


```haxe
var bySize:stdgo.GoArray<{
	size:stdgo.GoUInt32;
	mallocs:stdgo.GoUInt64;
	frees:stdgo.GoUInt64;
}>
```


```haxe
var debugGC:Bool
```


```haxe
var enableGC:Bool
```


```haxe
var frees:stdgo.GoUInt64
```


```haxe
var gccpufraction:stdgo.GoFloat64
```


```haxe
var gcsys:stdgo.GoUInt64
```


```haxe
var heapAlloc:stdgo.GoUInt64
```


```haxe
var heapIdle:stdgo.GoUInt64
```


```haxe
var heapInuse:stdgo.GoUInt64
```


```haxe
var heapObjects:stdgo.GoUInt64
```


```haxe
var heapReleased:stdgo.GoUInt64
```


```haxe
var heapSys:stdgo.GoUInt64
```


```haxe
var lastGC:stdgo.GoUInt64
```


```haxe
var lookups:stdgo.GoUInt64
```


```haxe
var mallocs:stdgo.GoUInt64
```


```haxe
var mcacheInuse:stdgo.GoUInt64
```


```haxe
var mcacheSys:stdgo.GoUInt64
```


```haxe
var mspanInuse:stdgo.GoUInt64
```


```haxe
var mspanSys:stdgo.GoUInt64
```


```haxe
var nextGC:stdgo.GoUInt64
```


```haxe
var numForcedGC:stdgo.GoUInt32
```


```haxe
var numGC:stdgo.GoUInt32
```


```haxe
var otherSys:stdgo.GoUInt64
```


```haxe
var pauseEnd:stdgo.GoArray<stdgo.GoUInt64>
```


```haxe
var pauseNs:stdgo.GoArray<stdgo.GoUInt64>
```


```haxe
var pauseTotalNs:stdgo.GoUInt64
```


```haxe
var stackInuse:stdgo.GoUInt64
```


```haxe
var stackSys:stdgo.GoUInt64
```


```haxe
var sys:stdgo.GoUInt64
```


```haxe
var totalAlloc:stdgo.GoUInt64
```


### MemStats function new


```haxe
function new(?alloc:stdgo.GoUInt64, ?totalAlloc:stdgo.GoUInt64, ?sys:stdgo.GoUInt64, ?lookups:stdgo.GoUInt64, ?mallocs:stdgo.GoUInt64, ?frees:stdgo.GoUInt64, ?heapAlloc:stdgo.GoUInt64, ?heapSys:stdgo.GoUInt64, ?heapIdle:stdgo.GoUInt64, ?heapInuse:stdgo.GoUInt64, ?heapReleased:stdgo.GoUInt64, ?heapObjects:stdgo.GoUInt64, ?stackInuse:stdgo.GoUInt64, ?stackSys:stdgo.GoUInt64, ?mspanInuse:stdgo.GoUInt64, ?mspanSys:stdgo.GoUInt64, ?mcacheInuse:stdgo.GoUInt64, ?mcacheSys:stdgo.GoUInt64, ?buckHashSys:stdgo.GoUInt64, ?gcsys:stdgo.GoUInt64, ?otherSys:stdgo.GoUInt64, ?nextGC:stdgo.GoUInt64, ?lastGC:stdgo.GoUInt64, ?pauseTotalNs:stdgo.GoUInt64, ?pauseNs:stdgo.GoArray<stdgo.GoUInt64>, ?pauseEnd:stdgo.GoArray<stdgo.GoUInt64>, ?numGC:stdgo.GoUInt32, ?numForcedGC:stdgo.GoUInt32, ?gccpufraction:stdgo.GoFloat64, ?enableGC:Bool, ?debugGC:Bool, ?bySize:stdgo.GoArray<{
	size:stdgo.GoUInt32;
	mallocs:stdgo.GoUInt64;
	frees:stdgo.GoUInt64;
}>):Void
```


[\(view code\)](<./Runtime.hx#L107>)


## class PanicNilError


### PanicNilError function new


```haxe
function new():Void
```


[\(view code\)](<./Runtime.hx#L179>)


### PanicNilError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Runtime.hx#L381>)


### PanicNilError function runtimeError


```haxe
function runtimeError():Void
```


[\(view code\)](<./Runtime.hx#L379>)


## class Pinner


### Pinner function \_unpin


```haxe
function _unpin():Void
```


[\(view code\)](<./Runtime.hx#L189>)


### Pinner function new


```haxe
function new():Void
```


[\(view code\)](<./Runtime.hx#L186>)


### Pinner function \_unpin


```haxe
function _unpin():Void
```


[\(view code\)](<./Runtime.hx#L404>)


### Pinner function pin


```haxe
function pin( _pointer:stdgo.AnyInterface):Void
```


[\(view code\)](<./Runtime.hx#L402>)


### Pinner function unpin


```haxe
function unpin():Void
```


[\(view code\)](<./Runtime.hx#L400>)


## class StackRecord


```haxe
var stack0:stdgo.GoArray<stdgo.GoUIntptr>
```


### StackRecord function new


```haxe
function new(?stack0:stdgo.GoArray<stdgo.GoUIntptr>):Void
```


[\(view code\)](<./Runtime.hx#L31>)


### StackRecord function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


[\(view code\)](<./Runtime.hx#L324>)


## class TypeAssertionError


### TypeAssertionError function new


```haxe
function new():Void
```


[\(view code\)](<./Runtime.hx#L23>)


### TypeAssertionError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Runtime.hx#L307>)


### TypeAssertionError function runtimeError


```haxe
function runtimeError():Void
```


[\(view code\)](<./Runtime.hx#L309>)


# Typedefs


```haxe
import stdgo._internal.runtime.*
```


## typedef Error


```haxe
typedef Error = {
	public function runtimeError():Void;	// RuntimeError is a no-op function but serves to distinguish types that are run time errors from ordinary errors: a type is a run time error if it has a RuntimeError method.
	public function error():stdgo.GoString;
};
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	size:stdgo.GoUInt32;	// Size is the maximum byte size of an object in this size class.
	mallocs:stdgo.GoUInt64;	// Mallocs is the cumulative count of heap objects allocated in this size class. The cumulative bytes of allocation is Size*Mallocs. The number of live objects in this size class is Mallocs - Frees.
	frees:stdgo.GoUInt64;	// Frees is the cumulative count of heap objects freed in this size class.
};
```


