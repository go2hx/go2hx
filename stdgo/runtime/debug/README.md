# Module: `stdgo.runtime.debug`

[(view library index)](../../stdgo.md)


# Overview


Package debug contains facilities for programs to debug themselves while  they are running. 


# Index


- [`function freeOSMemory():Void`](<#function-freeosmemory>)

- [`function parseBuildInfo(_data:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Ref<stdgo.runtime.debug.BuildInfo>}`](<#function-parsebuildinfo>)

- [`function printStack():Void`](<#function-printstack>)

- [`function readBuildInfo():{_1:Bool, _0:stdgo.Ref<stdgo.runtime.debug.BuildInfo>}`](<#function-readbuildinfo>)

- [`function readGCStats(_stats:stdgo.Ref<stdgo.runtime.debug.GCStats>):Void`](<#function-readgcstats>)

- [`function setGCPercent(_percent:stdgo.GoInt):stdgo.GoInt`](<#function-setgcpercent>)

- [`function setMaxStack(_bytes:stdgo.GoInt):stdgo.GoInt`](<#function-setmaxstack>)

- [`function setMaxThreads(_threads:stdgo.GoInt):stdgo.GoInt`](<#function-setmaxthreads>)

- [`function setMemoryLimit(_limit:stdgo.GoInt64):stdgo.GoInt64`](<#function-setmemorylimit>)

- [`function setPanicOnFault(_enabled:Bool):Bool`](<#function-setpaniconfault>)

- [`function setTraceback(_level:stdgo.GoString):Void`](<#function-settraceback>)

- [`function stack():stdgo.Slice<stdgo.GoByte>`](<#function-stack>)

- [`function writeHeapDump(_fd:stdgo.GoUIntptr):Void`](<#function-writeheapdump>)

- [class BuildInfo](<#class-buildinfo>)

  - [`function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?_Main:stdgo.runtime.debug.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo.runtime.debug.Module>>, ?settings:stdgo.Slice<stdgo.runtime.debug.BuildSetting>):Void`](<#buildinfo-function-new>)

  - [`function string():stdgo.GoString`](<#buildinfo-function-string>)

- [class BuildInfo\_static\_extension](<#class-buildinfo_static_extension>)

  - [`function string():stdgo.GoString`](<#buildinfo_static_extension-function-string>)

- [class BuildSetting](<#class-buildsetting>)

  - [`function new(?key:stdgo.GoString, ?value:stdgo.GoString):Void`](<#buildsetting-function-new>)

- [class GCStats](<#class-gcstats>)

  - [`function new(?lastGC:stdgo.time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:Null<stdgo.time.Duration>, ?pause:stdgo.Slice<stdgo.time.Duration>, ?pauseEnd:stdgo.Slice<stdgo.time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo.time.Duration>):Void`](<#gcstats-function-new>)

- [class Module](<#class-module>)

  - [`function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo.runtime.debug.Module>):Void`](<#module-function-new>)

# Functions


```haxe
import stdgo.runtime.debug.Debug
```


## function freeOSMemory


```haxe
function freeOSMemory():Void
```


FreeOSMemory forces a garbage collection followed by an  attempt to return as much memory to the operating system  as possible. \(Even if this is not called, the runtime gradually  returns memory to the operating system in a background task.\) 


[\(view code\)](<./Debug.hx#L178>)


## function parseBuildInfo


```haxe
function parseBuildInfo(_data:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Ref<stdgo.runtime.debug.BuildInfo>}
```


 


[\(view code\)](<./Debug.hx#L332>)


## function printStack


```haxe
function printStack():Void
```


PrintStack prints to standard error the stack trace returned by runtime.Stack. 


[\(view code\)](<./Debug.hx#L338>)


## function readBuildInfo


```haxe
function readBuildInfo():{_1:Bool, _0:stdgo.Ref<stdgo.runtime.debug.BuildInfo>}
```


ReadBuildInfo returns the build information embedded  in the running binary. The information is available only  in binaries built with module support. 


[\(view code\)](<./Debug.hx#L329>)


## function readGCStats


```haxe
function readGCStats(_stats:stdgo.Ref<stdgo.runtime.debug.GCStats>):Void
```


ReadGCStats reads statistics about garbage collection into stats.  The number of entries in the pause history is system\-dependent;  stats.Pause slice will be reused if large enough, reallocated otherwise.  ReadGCStats may use the full capacity of the stats.Pause slice.  If stats.PauseQuantiles is non\-empty, ReadGCStats fills it with quantiles  summarizing the distribution of pause time. For example, if  len\(stats.PauseQuantiles\) is 5, it will be filled with the minimum,  25%, 50%, 75%, and maximum pause times. 


[\(view code\)](<./Debug.hx#L153>)


## function setGCPercent


```haxe
function setGCPercent(_percent:stdgo.GoInt):stdgo.GoInt
```


SetGCPercent sets the garbage collection target percentage:  a collection is triggered when the ratio of freshly allocated data  to live data remaining after the previous collection reaches this percentage.  SetGCPercent returns the previous setting.  The initial setting is the value of the GOGC environment variable  at startup, or 100 if the variable is not set.  This setting may be effectively reduced in order to maintain a memory  limit.  A negative percentage effectively disables garbage collection, unless  the memory limit is reached.  See SetMemoryLimit for more details. 


[\(view code\)](<./Debug.hx#L169>)


## function setMaxStack


```haxe
function setMaxStack(_bytes:stdgo.GoInt):stdgo.GoInt
```


SetMaxStack sets the maximum amount of memory that  can be used by a single goroutine stack.  If any goroutine exceeds this limit while growing its stack,  the program crashes.  SetMaxStack returns the previous setting.  The initial setting is 1 GB on 64\-bit systems, 250 MB on 32\-bit systems.  There may be a system\-imposed maximum stack limit regardless  of the value provided to SetMaxStack.    SetMaxStack is useful mainly for limiting the damage done by  goroutines that enter an infinite recursion. It only limits future  stack growth. 


[\(view code\)](<./Debug.hx#L195>)


## function setMaxThreads


```haxe
function setMaxThreads(_threads:stdgo.GoInt):stdgo.GoInt
```


SetMaxThreads sets the maximum number of operating system  threads that the Go program can use. If it attempts to use more than  this many, the program crashes.  SetMaxThreads returns the previous setting.  The initial setting is 10,000 threads.    The limit controls the number of operating system threads, not the number  of goroutines. A Go program creates a new thread only when a goroutine  is ready to run but all the existing threads are blocked in system calls, cgo calls,  or are locked to other goroutines due to use of runtime.LockOSThread.    SetMaxThreads is useful mainly for limiting the damage done by  programs that create an unbounded number of threads. The idea is  to take down the program before it takes down the operating system. 


[\(view code\)](<./Debug.hx#L214>)


## function setMemoryLimit


```haxe
function setMemoryLimit(_limit:stdgo.GoInt64):stdgo.GoInt64
```


SetMemoryLimit provides the runtime with a soft memory limit.    The runtime undertakes several processes to try to respect this  memory limit, including adjustments to the frequency of garbage  collections and returning memory to the underlying system more  aggressively. This limit will be respected even if GOGC=off \(or,  if SetGCPercent\(\-1\) is executed\).    The input limit is provided as bytes, and includes all memory  mapped, managed, and not released by the Go runtime. Notably, it  does not account for space used by the Go binary and memory  external to Go, such as memory managed by the underlying system  on behalf of the process, or memory managed by non\-Go code inside  the same process. Examples of excluded memory sources include: OS  kernel memory held on behalf of the process, memory allocated by  C code, and memory mapped by syscall.Mmap \(because it is not  managed by the Go runtime\).    More specifically, the following expression accurately reflects  the value the runtime attempts to maintain as the limit:     runtime.MemStats.Sys \- runtime.MemStats.HeapReleased    or in terms of the runtime/metrics package:     memory/classes/total:bytes \- /memory/classes/heap/released:bytes    A zero limit or a limit that's lower than the amount of memory  used by the Go runtime may cause the garbage collector to run  nearly continuously. However, the application may still make  progress.    The memory limit is always respected by the Go runtime, so to  effectively disable this behavior, set the limit very high.  math.MaxInt64 is the canonical value for disabling the limit,  but values much greater than the available memory on the underlying  system work just as well.    See https://go.dev/doc/gc-guide for a detailed guide explaining  the soft memory limit in more detail, as well as a variety of common  use\-cases and scenarios.    The initial setting is math.MaxInt64 unless the GOMEMLIMIT  environment variable is set, in which case it provides the initial  setting. GOMEMLIMIT is a numeric value in bytes with an optional  unit suffix. The supported suffixes include B, KiB, MiB, GiB, and  TiB. These suffixes represent quantities of bytes as defined by  the IEC 80000\-13 standard. That is, they are based on powers of  two: KiB means 2^10 bytes, MiB means 2^20 bytes, and so on.    SetMemoryLimit returns the previously set memory limit.  A negative input does not adjust the limit, and allows for  retrieval of the currently set memory limit. 


[\(view code\)](<./Debug.hx#L321>)


## function setPanicOnFault


```haxe
function setPanicOnFault(_enabled:Bool):Bool
```


SetPanicOnFault controls the runtime's behavior when a program faults  at an unexpected \(non\-nil\) address. Such faults are typically caused by  bugs such as runtime memory corruption, so the default response is to crash  the program. Programs working with memory\-mapped files or unsafe  manipulation of memory may cause faults at non\-nil addresses in less  dramatic situations; SetPanicOnFault allows such programs to request  that the runtime trigger only a panic, not a crash.  The runtime.Error that the runtime panics with may have an additional method:     Addr\(\) uintptr    If that method exists, it returns the memory address which triggered the fault.  The results of Addr are best\-effort and the veracity of the result  may depend on the platform.  SetPanicOnFault applies only to the current goroutine.  It returns the previous setting. 


[\(view code\)](<./Debug.hx#L235>)


## function setTraceback


```haxe
function setTraceback(_level:stdgo.GoString):Void
```


SetTraceback sets the amount of detail printed by the runtime in  the traceback it prints before exiting due to an unrecovered panic  or an internal runtime error.  The level argument takes the same values as the GOTRACEBACK  environment variable. For example, SetTraceback\("all"\) ensure  that the program prints all goroutines when it crashes.  See the package runtime documentation for details.  If SetTraceback is called with a level lower than that of the  environment variable, the call is ignored. 


[\(view code\)](<./Debug.hx#L263>)


## function stack


```haxe
function stack():stdgo.Slice<stdgo.GoByte>
```


Stack returns a formatted stack trace of the goroutine that calls it.  It calls runtime.Stack with a large enough buffer to capture the entire trace. 


[\(view code\)](<./Debug.hx#L345>)


## function writeHeapDump


```haxe
function writeHeapDump(_fd:stdgo.GoUIntptr):Void
```


WriteHeapDump writes a description of the heap and the objects in  it to the given file descriptor.    WriteHeapDump suspends the execution of all goroutines until the heap  dump is completely written.  Thus, the file descriptor must not be  connected to a pipe or socket whose other end is in the same Go  process; instead, use a temporary file or network socket.    The heap dump format is defined at https://golang.org/s/go15heapdump. 


[\(view code\)](<./Debug.hx#L249>)


# Classes


```haxe
import stdgo.runtime.debug.*
```


## class BuildInfo


BuildInfo represents the build information read from a Go binary. 


```haxe
var _Main:stdgo.runtime.debug.Module
```


```haxe
var deps:stdgo.Slice<stdgo.Ref<stdgo.runtime.debug.Module>>
```


```haxe
var goVersion:stdgo.GoString
```


```haxe
var path:stdgo.GoString
```


```haxe
var settings:stdgo.Slice<stdgo.runtime.debug.BuildSetting>
```


### BuildInfo function new


```haxe
function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?_Main:stdgo.runtime.debug.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo.runtime.debug.Module>>, ?settings:stdgo.Slice<stdgo.runtime.debug.BuildSetting>):Void
```


 


[\(view code\)](<./Debug.hx#L64>)


### BuildInfo function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Debug.hx#L369>)


## class BuildInfo\_static\_extension


 


### BuildInfo\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Debug.hx#L369>)


## class BuildSetting


BuildSetting describes a setting that may be used to understand how the  binary was built. For example, VCS commit and dirty status is stored here. 


```haxe
var key:stdgo.GoString
```


Key and Value describe the build setting.   Key must not contain an equals sign, space, tab, or newline.   Value must not contain newlines \('\\n'\). 


```haxe
var value:stdgo.GoString
```


### BuildSetting function new


```haxe
function new(?key:stdgo.GoString, ?value:stdgo.GoString):Void
```


 


[\(view code\)](<./Debug.hx#L127>)


## class GCStats


GCStats collect information about recent garbage collections. 


```haxe
var lastGC:stdgo.time.Time
```


```haxe
var numGC:stdgo.GoInt64
```


```haxe
var pause:stdgo.Slice<stdgo.time.Duration>
```


```haxe
var pauseEnd:stdgo.Slice<stdgo.time.Time>
```


```haxe
var pauseQuantiles:stdgo.Slice<stdgo.time.Duration>
```


```haxe
var pauseTotal:stdgo.time.Duration
```


### GCStats function new


```haxe
function new(?lastGC:stdgo.time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:Null<stdgo.time.Duration>, ?pause:stdgo.Slice<stdgo.time.Duration>, ?pauseEnd:stdgo.Slice<stdgo.time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo.time.Duration>):Void
```


 


[\(view code\)](<./Debug.hx#L30>)


## class Module


Module represents a module. 


```haxe
var path:stdgo.GoString
```


```haxe
var replace:stdgo.Ref<stdgo.runtime.debug.Module>
```


```haxe
var sum:stdgo.GoString
```


```haxe
var version:stdgo.GoString
```


### Module function new


```haxe
function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo.runtime.debug.Module>):Void
```


 


[\(view code\)](<./Debug.hx#L94>)


