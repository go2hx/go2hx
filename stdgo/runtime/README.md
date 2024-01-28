# Module: `stdgo.runtime`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function blockProfile(_p:stdgo.Slice<stdgo.runtime.BlockProfileRecord>):Void`](<#function-blockprofile>)

- [`function breakpoint():Void`](<#function-breakpoint>)

- [`function caller(_skip:stdgo.GoInt):Void`](<#function-caller>)

- [`function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):Void`](<#function-callers>)

- [`function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):Void`](<#function-callersframes>)

- [`function cpuprofile():Void`](<#function-cpuprofile>)

- [`function funcForPC(_pc:stdgo.GoUIntptr):Void`](<#function-funcforpc>)

- [`function gc():Void`](<#function-gc>)

- [`function goexit():Void`](<#function-goexit>)

- [`function gomaxprocs(_n:stdgo.GoInt):Void`](<#function-gomaxprocs>)

- [`function goroot():Void`](<#function-goroot>)

- [`function goroutineProfile(_p:stdgo.Slice<stdgo.runtime.StackRecord>):Void`](<#function-goroutineprofile>)

- [`function gosched():Void`](<#function-gosched>)

- [`function keepAlive(_x:stdgo.AnyInterface):Void`](<#function-keepalive>)

- [`function lockOSThread():Void`](<#function-lockosthread>)

- [`function memProfile(_p:stdgo.Slice<stdgo.runtime.MemProfileRecord>, _inuseZero:Bool):Void`](<#function-memprofile>)

- [`function mutexProfile(_p:stdgo.Slice<stdgo.runtime.BlockProfileRecord>):Void`](<#function-mutexprofile>)

- [`function numCPU():Void`](<#function-numcpu>)

- [`function numCgoCall():Void`](<#function-numcgocall>)

- [`function numGoroutine():Void`](<#function-numgoroutine>)

- [`function readMemStats(_m:stdgo.Ref<stdgo.runtime.MemStats>):Void`](<#function-readmemstats>)

- [`function readTrace():Void`](<#function-readtrace>)

- [`function setBlockProfileRate(_rate:stdgo.GoInt):Void`](<#function-setblockprofilerate>)

- [`function setCPUProfileRate(_hz:stdgo.GoInt):Void`](<#function-setcpuprofilerate>)

- [`function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo._internal.unsafe.UnsafePointer, _context:stdgo._internal.unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-setcgotraceback>)

- [`function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void`](<#function-setfinalizer>)

- [`function setMutexProfileFraction(_rate:stdgo.GoInt):Void`](<#function-setmutexprofilefraction>)

- [`function stack(_buf:stdgo.Slice<stdgo.GoByte>, _all:Bool):Void`](<#function-stack>)

- [`function startTrace():Void`](<#function-starttrace>)

- [`function stopTrace():Void`](<#function-stoptrace>)

- [`function threadCreateProfile(_p:stdgo.Slice<stdgo.runtime.StackRecord>):Void`](<#function-threadcreateprofile>)

- [`function unlockOSThread():Void`](<#function-unlockosthread>)

- [`function version():Void`](<#function-version>)

- [typedef BlockProfileRecord](<#typedef-blockprofilerecord>)

- [typedef BlockProfileRecord\_asInterface](<#typedef-blockprofilerecord_asinterface>)

- [typedef BlockProfileRecord\_static\_extension](<#typedef-blockprofilerecord_static_extension>)

- [typedef Error](<#typedef-error>)

- [typedef Frame](<#typedef-frame>)

- [typedef Frames](<#typedef-frames>)

- [typedef Frames\_asInterface](<#typedef-frames_asinterface>)

- [typedef Frames\_static\_extension](<#typedef-frames_static_extension>)

- [typedef Func](<#typedef-func>)

- [typedef Func\_asInterface](<#typedef-func_asinterface>)

- [typedef Func\_static\_extension](<#typedef-func_static_extension>)

- [typedef MemProfileRecord](<#typedef-memprofilerecord>)

- [typedef MemProfileRecord\_asInterface](<#typedef-memprofilerecord_asinterface>)

- [typedef MemProfileRecord\_static\_extension](<#typedef-memprofilerecord_static_extension>)

- [typedef MemStats](<#typedef-memstats>)

- [typedef PanicNilError](<#typedef-panicnilerror>)

- [typedef PanicNilError\_asInterface](<#typedef-panicnilerror_asinterface>)

- [typedef PanicNilError\_static\_extension](<#typedef-panicnilerror_static_extension>)

- [typedef Pinner](<#typedef-pinner>)

- [typedef Pinner\_asInterface](<#typedef-pinner_asinterface>)

- [typedef Pinner\_static\_extension](<#typedef-pinner_static_extension>)

- [typedef StackRecord](<#typedef-stackrecord>)

- [typedef StackRecord\_asInterface](<#typedef-stackrecord_asinterface>)

- [typedef StackRecord\_static\_extension](<#typedef-stackrecord_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef TypeAssertionError](<#typedef-typeassertionerror>)

- [typedef TypeAssertionError\_asInterface](<#typedef-typeassertionerror_asinterface>)

- [typedef TypeAssertionError\_static\_extension](<#typedef-typeassertionerror_static_extension>)

# Variables


```haxe
import stdgo.runtime.Runtime
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var compiler:Dynamic
```


```haxe
var goarch:Dynamic
```


```haxe
var goos:Dynamic
```


```haxe
var memProfileRate:Dynamic
```


# Functions


```haxe
import stdgo.runtime.Runtime
```


## function blockProfile


```haxe
function blockProfile(_p:stdgo.Slice<stdgo.runtime.BlockProfileRecord>):Void
```


[\(view code\)](<./Runtime.hx#L37>)


## function breakpoint


```haxe
function breakpoint():Void
```


[\(view code\)](<./Runtime.hx#L45>)


## function caller


```haxe
function caller(_skip:stdgo.GoInt):Void
```


[\(view code\)](<./Runtime.hx#L27>)


## function callers


```haxe
function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):Void
```


[\(view code\)](<./Runtime.hx#L28>)


## function callersFrames


```haxe
function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):Void
```


[\(view code\)](<./Runtime.hx#L48>)


## function cpuprofile


```haxe
function cpuprofile():Void
```


[\(view code\)](<./Runtime.hx#L22>)


## function funcForPC


```haxe
function funcForPC(_pc:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Runtime.hx#L49>)


## function gc


```haxe
function gc():Void
```


[\(view code\)](<./Runtime.hx#L33>)


## function goexit


```haxe
function goexit():Void
```


[\(view code\)](<./Runtime.hx#L43>)


## function gomaxprocs


```haxe
function gomaxprocs(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Runtime.hx#L23>)


## function goroot


```haxe
function goroot():Void
```


[\(view code\)](<./Runtime.hx#L29>)


## function goroutineProfile


```haxe
function goroutineProfile(_p:stdgo.Slice<stdgo.runtime.StackRecord>):Void
```


[\(view code\)](<./Runtime.hx#L40>)


## function gosched


```haxe
function gosched():Void
```


[\(view code\)](<./Runtime.hx#L44>)


## function keepAlive


```haxe
function keepAlive(_x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Runtime.hx#L32>)


## function lockOSThread


```haxe
function lockOSThread():Void
```


[\(view code\)](<./Runtime.hx#L46>)


## function memProfile


```haxe
function memProfile(_p:stdgo.Slice<stdgo.runtime.MemProfileRecord>, _inuseZero:Bool):Void
```


[\(view code\)](<./Runtime.hx#L36>)


## function mutexProfile


```haxe
function mutexProfile(_p:stdgo.Slice<stdgo.runtime.BlockProfileRecord>):Void
```


[\(view code\)](<./Runtime.hx#L38>)


## function numCPU


```haxe
function numCPU():Void
```


[\(view code\)](<./Runtime.hx#L24>)


## function numCgoCall


```haxe
function numCgoCall():Void
```


[\(view code\)](<./Runtime.hx#L25>)


## function numGoroutine


```haxe
function numGoroutine():Void
```


[\(view code\)](<./Runtime.hx#L26>)


## function readMemStats


```haxe
function readMemStats(_m:stdgo.Ref<stdgo.runtime.MemStats>):Void
```


[\(view code\)](<./Runtime.hx#L42>)


## function readTrace


```haxe
function readTrace():Void
```


[\(view code\)](<./Runtime.hx#L52>)


## function setBlockProfileRate


```haxe
function setBlockProfileRate(_rate:stdgo.GoInt):Void
```


[\(view code\)](<./Runtime.hx#L34>)


## function setCPUProfileRate


```haxe
function setCPUProfileRate(_hz:stdgo.GoInt):Void
```


[\(view code\)](<./Runtime.hx#L21>)


## function setCgoTraceback


```haxe
function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo._internal.unsafe.UnsafePointer, _context:stdgo._internal.unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Runtime.hx#L53>)


## function setFinalizer


```haxe
function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void
```


[\(view code\)](<./Runtime.hx#L31>)


## function setMutexProfileFraction


```haxe
function setMutexProfileFraction(_rate:stdgo.GoInt):Void
```


[\(view code\)](<./Runtime.hx#L35>)


## function stack


```haxe
function stack(_buf:stdgo.Slice<stdgo.GoByte>, _all:Bool):Void
```


[\(view code\)](<./Runtime.hx#L41>)


## function startTrace


```haxe
function startTrace():Void
```


[\(view code\)](<./Runtime.hx#L50>)


## function stopTrace


```haxe
function stopTrace():Void
```


[\(view code\)](<./Runtime.hx#L51>)


## function threadCreateProfile


```haxe
function threadCreateProfile(_p:stdgo.Slice<stdgo.runtime.StackRecord>):Void
```


[\(view code\)](<./Runtime.hx#L39>)


## function unlockOSThread


```haxe
function unlockOSThread():Void
```


[\(view code\)](<./Runtime.hx#L47>)


## function version


```haxe
function version():Void
```


[\(view code\)](<./Runtime.hx#L30>)


# Typedefs


```haxe
import stdgo.runtime.*
```


## typedef BlockProfileRecord


```haxe
typedef BlockProfileRecord = Dynamic;
```


## typedef BlockProfileRecord\_asInterface


```haxe
typedef BlockProfileRecord_asInterface = Dynamic;
```


## typedef BlockProfileRecord\_static\_extension


```haxe
typedef BlockProfileRecord_static_extension = Dynamic;
```


## typedef Error


```haxe
typedef Error = stdgo._internal.runtime.Error;
```


## typedef Frame


```haxe
typedef Frame = Dynamic;
```


## typedef Frames


```haxe
typedef Frames = Dynamic;
```


## typedef Frames\_asInterface


```haxe
typedef Frames_asInterface = Dynamic;
```


## typedef Frames\_static\_extension


```haxe
typedef Frames_static_extension = Dynamic;
```


## typedef Func


```haxe
typedef Func = Dynamic;
```


## typedef Func\_asInterface


```haxe
typedef Func_asInterface = Dynamic;
```


## typedef Func\_static\_extension


```haxe
typedef Func_static_extension = Dynamic;
```


## typedef MemProfileRecord


```haxe
typedef MemProfileRecord = Dynamic;
```


## typedef MemProfileRecord\_asInterface


```haxe
typedef MemProfileRecord_asInterface = Dynamic;
```


## typedef MemProfileRecord\_static\_extension


```haxe
typedef MemProfileRecord_static_extension = Dynamic;
```


## typedef MemStats


```haxe
typedef MemStats = Dynamic;
```


## typedef PanicNilError


```haxe
typedef PanicNilError = Dynamic;
```


## typedef PanicNilError\_asInterface


```haxe
typedef PanicNilError_asInterface = Dynamic;
```


## typedef PanicNilError\_static\_extension


```haxe
typedef PanicNilError_static_extension = Dynamic;
```


## typedef Pinner


```haxe
typedef Pinner = Dynamic;
```


## typedef Pinner\_asInterface


```haxe
typedef Pinner_asInterface = Dynamic;
```


## typedef Pinner\_static\_extension


```haxe
typedef Pinner_static_extension = Dynamic;
```


## typedef StackRecord


```haxe
typedef StackRecord = Dynamic;
```


## typedef StackRecord\_asInterface


```haxe
typedef StackRecord_asInterface = Dynamic;
```


## typedef StackRecord\_static\_extension


```haxe
typedef StackRecord_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.runtime.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef TypeAssertionError


```haxe
typedef TypeAssertionError = Dynamic;
```


## typedef TypeAssertionError\_asInterface


```haxe
typedef TypeAssertionError_asInterface = Dynamic;
```


## typedef TypeAssertionError\_static\_extension


```haxe
typedef TypeAssertionError_static_extension = Dynamic;
```


