# Module: `stdgo.runtime.debug`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Debug](<#class-debug>)

  - [`function freeOSMemory():Void`](<#debug-function-freeosmemory>)

  - [`function parseBuildInfo(_data:String):stdgo.Tuple<stdgo.runtime.debug.BuildInfo, stdgo.Error>`](<#debug-function-parsebuildinfo>)

  - [`function printStack():Void`](<#debug-function-printstack>)

  - [`function readBuildInfo():stdgo.Tuple<stdgo.runtime.debug.BuildInfo, Bool>`](<#debug-function-readbuildinfo>)

  - [`function readGCStats(_stats:stdgo.runtime.debug.GCStats):Void`](<#debug-function-readgcstats>)

  - [`function setGCPercent(_percent:Int):Int`](<#debug-function-setgcpercent>)

  - [`function setMaxStack(_bytes:Int):Int`](<#debug-function-setmaxstack>)

  - [`function setMaxThreads(_threads:Int):Int`](<#debug-function-setmaxthreads>)

  - [`function setMemoryLimit(_limit:haxe.Int64):haxe.Int64`](<#debug-function-setmemorylimit>)

  - [`function setPanicOnFault(_enabled:Bool):Bool`](<#debug-function-setpaniconfault>)

  - [`function setTraceback(_level:String):Void`](<#debug-function-settraceback>)

  - [`function stack():Array<UInt>`](<#debug-function-stack>)

  - [`function writeHeapDump(_fd:stdgo.GoUIntptr):Void`](<#debug-function-writeheapdump>)

- [abstract GCStats](<#abstract-gcstats>)

- [abstract BuildInfo](<#abstract-buildinfo>)

- [abstract Module](<#abstract-module>)

- [abstract BuildSetting](<#abstract-buildsetting>)

# Classes


```haxe
import
```


## class Debug


```
Package debug contains facilities for programs to debug themselves while
    they are running.
```
### Debug function freeOSMemory


```haxe
function freeOSMemory():Void
```


```
FreeOSMemory forces a garbage collection followed by an
        attempt to return as much memory to the operating system
        as possible. (Even if this is not called, the runtime gradually
        returns memory to the operating system in a background task.)
```
[\(view code\)](<./Debug.hx#L169>)


### Debug function parseBuildInfo


```haxe
function parseBuildInfo(_data:String):stdgo.Tuple<stdgo.runtime.debug.BuildInfo, stdgo.Error>
```


[\(view code\)](<./Debug.hx#L326>)


### Debug function printStack


```haxe
function printStack():Void
```



PrintStack prints to standard error the stack trace returned by runtime.Stack.  

[\(view code\)](<./Debug.hx#L335>)


### Debug function readBuildInfo


```haxe
function readBuildInfo():stdgo.Tuple<stdgo.runtime.debug.BuildInfo, Bool>
```


```
ReadBuildInfo returns the build information embedded
        in the running binary. The information is available only
        in binaries built with module support.
```
[\(view code\)](<./Debug.hx#L320>)


### Debug function readGCStats


```haxe
function readGCStats(_stats:stdgo.runtime.debug.GCStats):Void
```


```
ReadGCStats reads statistics about garbage collection into stats.
        The number of entries in the pause history is system-dependent;
        stats.Pause slice will be reused if large enough, reallocated otherwise.
        ReadGCStats may use the full capacity of the stats.Pause slice.
        If stats.PauseQuantiles is non-empty, ReadGCStats fills it with quantiles
        summarizing the distribution of pause time. For example, if
        len(stats.PauseQuantiles) is 5, it will be filled with the minimum,
        25%, 50%, 75%, and maximum pause times.
```
[\(view code\)](<./Debug.hx#L144>)


### Debug function setGCPercent


```haxe
function setGCPercent(_percent:Int):Int
```


```
SetGCPercent sets the garbage collection target percentage:
        a collection is triggered when the ratio of freshly allocated data
        to live data remaining after the previous collection reaches this percentage.
        SetGCPercent returns the previous setting.
        The initial setting is the value of the GOGC environment variable
        at startup, or 100 if the variable is not set.
        This setting may be effectively reduced in order to maintain a memory
        limit.
        A negative percentage effectively disables garbage collection, unless
        the memory limit is reached.
        See SetMemoryLimit for more details.
```
[\(view code\)](<./Debug.hx#L160>)


### Debug function setMaxStack


```haxe
function setMaxStack(_bytes:Int):Int
```


```
SetMaxStack sets the maximum amount of memory that
        can be used by a single goroutine stack.
        If any goroutine exceeds this limit while growing its stack,
        the program crashes.
        SetMaxStack returns the previous setting.
        The initial setting is 1 GB on 64-bit systems, 250 MB on 32-bit systems.
        There may be a system-imposed maximum stack limit regardless
        of the value provided to SetMaxStack.
```

SetMaxStack is useful mainly for limiting the damage done by
goroutines that enter an infinite recursion. It only limits future
stack growth.  

[\(view code\)](<./Debug.hx#L186>)


### Debug function setMaxThreads


```haxe
function setMaxThreads(_threads:Int):Int
```


```
SetMaxThreads sets the maximum number of operating system
        threads that the Go program can use. If it attempts to use more than
        this many, the program crashes.
        SetMaxThreads returns the previous setting.
        The initial setting is 10,000 threads.
```

The limit controls the number of operating system threads, not the number
of goroutines. A Go program creates a new thread only when a goroutine
is ready to run but all the existing threads are blocked in system calls, cgo calls,
or are locked to other goroutines due to use of runtime.LockOSThread.  


SetMaxThreads is useful mainly for limiting the damage done by
programs that create an unbounded number of threads. The idea is
to take down the program before it takes down the operating system.  

[\(view code\)](<./Debug.hx#L205>)


### Debug function setMemoryLimit


```haxe
function setMemoryLimit(_limit:haxe.Int64):haxe.Int64
```



SetMemoryLimit provides the runtime with a soft memory limit.  


The runtime undertakes several processes to try to respect this
memory limit, including adjustments to the frequency of garbage
collections and returning memory to the underlying system more
aggressively. This limit will be respected even if GOGC=off \(or,
if SetGCPercent\(\-1\) is executed\).  


The input limit is provided as bytes, and includes all memory
mapped, managed, and not released by the Go runtime. Notably, it
does not account for space used by the Go binary and memory
external to Go, such as memory managed by the underlying system
on behalf of the process, or memory managed by non\-Go code inside
the same process. Examples of excluded memory sources include: OS
kernel memory held on behalf of the process, memory allocated by
C code, and memory mapped by syscall.Mmap \(because it is not
managed by the Go runtime\).  


More specifically, the following expression accurately reflects
the value the runtime attempts to maintain as the limit:  

```
        	runtime.MemStats.Sys - runtime.MemStats.HeapReleased
```

or in terms of the runtime/metrics package:  

```
        	/memory/classes/total:bytes - /memory/classes/heap/released:bytes
```

A zero limit or a limit that's lower than the amount of memory
used by the Go runtime may cause the garbage collector to run
nearly continuously. However, the application may still make
progress.  


The memory limit is always respected by the Go runtime, so to
effectively disable this behavior, set the limit very high.
math.MaxInt64 is the canonical value for disabling the limit,
but values much greater than the available memory on the underlying
system work just as well.  


See https://go.dev/doc/gc-guide for a detailed guide explaining
the soft memory limit in more detail, as well as a variety of common
use\-cases and scenarios.  


The initial setting is math.MaxInt64 unless the GOMEMLIMIT
environment variable is set, in which case it provides the initial
setting. GOMEMLIMIT is a numeric value in bytes with an optional
unit suffix. The supported suffixes include B, KiB, MiB, GiB, and
TiB. These suffixes represent quantities of bytes as defined by
the IEC 80000\-13 standard. That is, they are based on powers of
two: KiB means 2^10 bytes, MiB means 2^20 bytes, and so on.  


SetMemoryLimit returns the previously set memory limit.
A negative input does not adjust the limit, and allows for
retrieval of the currently set memory limit.  

[\(view code\)](<./Debug.hx#L312>)


### Debug function setPanicOnFault


```haxe
function setPanicOnFault(_enabled:Bool):Bool
```


```
SetPanicOnFault controls the runtime's behavior when a program faults
        at an unexpected (non-nil) address. Such faults are typically caused by
        bugs such as runtime memory corruption, so the default response is to crash
        the program. Programs working with memory-mapped files or unsafe
        manipulation of memory may cause faults at non-nil addresses in less
        dramatic situations; SetPanicOnFault allows such programs to request
        that the runtime trigger only a panic, not a crash.
        The runtime.Error that the runtime panics with may have an additional method:
```
```
        	Addr() uintptr
```

If that method exists, it returns the memory address which triggered the fault.
The results of Addr are best\-effort and the veracity of the result
may depend on the platform.
SetPanicOnFault applies only to the current goroutine.
It returns the previous setting.  

[\(view code\)](<./Debug.hx#L226>)


### Debug function setTraceback


```haxe
function setTraceback(_level:String):Void
```


```
SetTraceback sets the amount of detail printed by the runtime in
        the traceback it prints before exiting due to an unrecovered panic
        or an internal runtime error.
        The level argument takes the same values as the GOTRACEBACK
        environment variable. For example, SetTraceback("all") ensure
        that the program prints all goroutines when it crashes.
        See the package runtime documentation for details.
        If SetTraceback is called with a level lower than that of the
        environment variable, the call is ignored.
```
[\(view code\)](<./Debug.hx#L254>)


### Debug function stack


```haxe
function stack():Array<UInt>
```


```
Stack returns a formatted stack trace of the goroutine that calls it.
        It calls runtime.Stack with a large enough buffer to capture the entire trace.
```
[\(view code\)](<./Debug.hx#L342>)


### Debug function writeHeapDump


```haxe
function writeHeapDump(_fd:stdgo.GoUIntptr):Void
```


```
WriteHeapDump writes a description of the heap and the objects in
        it to the given file descriptor.
```

WriteHeapDump suspends the execution of all goroutines until the heap
dump is completely written.  Thus, the file descriptor must not be
connected to a pipe or socket whose other end is in the same Go
process; instead, use a temporary file or network socket.  


The heap dump format is defined at https://golang.org/s/go15heapdump.  

[\(view code\)](<./Debug.hx#L240>)


# Abstracts


## abstract GCStats


[\(view file containing code\)](<./Debug.hx>)


## abstract BuildInfo


[\(view file containing code\)](<./Debug.hx>)


## abstract Module


[\(view file containing code\)](<./Debug.hx>)


## abstract BuildSetting


[\(view file containing code\)](<./Debug.hx>)


