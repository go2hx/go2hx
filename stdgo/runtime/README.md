# Module: `stdgo.runtime`

[(view library index)](../stdgo.md)


# Overview


|\* Package runtime contains operations that interact with Go's runtime system, such as functions to control goroutines. It also includes the low\-level type information used by the reflect package; see reflect's documentation for the programmable interface to the run\-time type system.  \# Environment Variables  The following environment variables \($name or %name%, depending on the host operating system\) control the run\-time behavior of Go programs. The meanings and use may change from release to release.  The GOGC variable sets the initial garbage collection target percentage. A collection is triggered when the ratio of freshly allocated data to live data remaining after the previous collection reaches this percentage. The default is GOGC=100. Setting GOGC=off disables the garbage collector entirely. \[runtime/debug.SetGCPercent\] allows changing this percentage at run time.  The GOMEMLIMIT variable sets a soft memory limit for the runtime. This memory limit includes the Go heap and all other memory managed by the runtime, and excludes external memory sources such as mappings of the binary itself, memory managed in other languages, and memory held by the operating system on behalf of the Go program. GOMEMLIMIT is a numeric value in bytes with an optional unit suffix. The supported suffixes include B, KiB, MiB, GiB, and TiB. These suffixes represent quantities of bytes as defined by the IEC 80000\-13 standard. That is, they are based on powers of two: KiB means 2^10 bytes, MiB means 2^20 bytes, and so on. The default setting is math.MaxInt64, which effectively disables the memory limit. \[runtime/debug.SetMemoryLimit\] allows changing this limit at run time.  The GODEBUG variable controls debugging variables within the runtime. It is a comma\-separated list of name=val pairs setting these named variables:  allocfreetrace: setting allocfreetrace=1 causes every allocation to be profiled and a stack trace printed on each object's allocation and free.  clobberfree: setting clobberfree=1 causes the garbage collector to clobber the memory content of an object with bad content when it frees the object.  cgocheck: setting cgocheck=0 disables all checks for packages using cgo to incorrectly pass Go pointers to non\-Go code. Setting cgocheck=1 \(the default\) enables relatively cheap checks that may miss some errors.  Setting cgocheck=2 enables expensive checks that should not miss any errors, but will cause your program to run slower.  efence: setting efence=1 causes the allocator to run in a mode where each object is allocated on a unique page and addresses are never recycled.  gccheckmark: setting gccheckmark=1 enables verification of the garbage collector's concurrent mark phase by performing a second mark pass while the world is stopped.  If the second pass finds a reachable object that was not found by concurrent mark, the garbage collector will panic.  gcpacertrace: setting gcpacertrace=1 causes the garbage collector to print information about the internal state of the concurrent pacer.  gcshrinkstackoff: setting gcshrinkstackoff=1 disables moving goroutines onto smaller stacks. In this mode, a goroutine's stack can only grow.  gcstoptheworld: setting gcstoptheworld=1 disables concurrent garbage collection, making every garbage collection a stop\-the\-world event. Setting gcstoptheworld=2 also disables concurrent sweeping after the garbage collection finishes.  gctrace: setting gctrace=1 causes the garbage collector to emit a single line to standard error at each collection, summarizing the amount of memory collected and the length of the pause. The format of this line is subject to change. Currently, it is: gc \# @\#s \#%: \#\+\#\+\# ms clock, \#\+\#/\#/\#\+\# ms cpu, \#\-\>\#\-\>\# MB, \# MB goal, \# P where the fields are as follows: gc \#         the GC number, incremented at each GC @\#s          time in seconds since program start \#%           percentage of time spent in GC since program start \#\+...\+\#      wall\-clock/CPU times for the phases of the GC \#\-\>\#\-\>\# MB   heap size at GC start, at GC end, and live heap \# MB goal    goal heap size \# MB stacks  estimated scannable stack size \# MB globals scannable global size \# P          number of processors used The phases are stop\-the\-world \(STW\) sweep termination, concurrent mark and scan, and STW mark termination. The CPU times for mark/scan are broken down in to assist time \(GC performed in line with allocation\), background GC time, and idle GC time. If the line ends with "\(forced\)", this GC was forced by a runtime.GC\(\) call.  harddecommit: setting harddecommit=1 causes memory that is returned to the OS to also have protections removed on it. This is the only mode of operation on Windows, but is helpful in debugging scavenger\-related issues on other platforms. Currently, only supported on Linux.  inittrace: setting inittrace=1 causes the runtime to emit a single line to standard error for each package with init work, summarizing the execution time and memory allocation. No information is printed for inits executed as part of plugin loading and for packages without both user defined and compiler generated init work. The format of this line is subject to change. Currently, it is: init \# @\#ms, \# ms clock, \# bytes, \# allocs where the fields are as follows: init \#      the package name @\# ms       time in milliseconds when the init started since program start \# clock     wall\-clock time for package initialization work \# bytes     memory allocated on the heap \# allocs    number of heap allocations  madvdontneed: setting madvdontneed=0 will use MADV\_FREE instead of MADV\_DONTNEED on Linux when returning memory to the kernel. This is more efficient, but means RSS numbers will drop only when the OS is under memory pressure.  memprofilerate: setting memprofilerate=X will update the value of runtime.MemProfileRate. When set to 0 memory profiling is disabled.  Refer to the description of MemProfileRate for the default value.  invalidptr: invalidptr=1 \(the default\) causes the garbage collector and stack copier to crash the program if an invalid pointer value \(for example, 1\) is found in a pointer\-typed location. Setting invalidptr=0 disables this check. This should only be used as a temporary workaround to diagnose buggy code. The real fix is to not store integers in pointer\-typed locations.  sbrk: setting sbrk=1 replaces the memory allocator and garbage collector with a trivial allocator that obtains memory from the operating system and never reclaims any memory.  scavtrace: setting scavtrace=1 causes the runtime to emit a single line to standard error, roughly once per GC cycle, summarizing the amount of work done by the scavenger as well as the total amount of memory returned to the operating system and an estimate of physical memory utilization. The format of this line is subject to change, but currently it is: scav \# KiB work, \# KiB total, \#% util where the fields are as follows: \# KiB work   the amount of memory returned to the OS since the last line \# KiB total  the total amount of memory returned to the OS \#% util      the fraction of all unscavenged memory which is in\-use If the line ends with "\(forced\)", then scavenging was forced by a debug.FreeOSMemory\(\) call.  scheddetail: setting schedtrace=X and scheddetail=1 causes the scheduler to emit detailed multiline info every X milliseconds, describing state of the scheduler, processors, threads and goroutines.  schedtrace: setting schedtrace=X causes the scheduler to emit a single line to standard error every X milliseconds, summarizing the scheduler state.  tracebackancestors: setting tracebackancestors=N extends tracebacks with the stacks at which goroutines were created, where N limits the number of ancestor goroutines to report. This also extends the information returned by runtime.Stack. Ancestor's goroutine IDs will refer to the ID of the goroutine at the time of creation; it's possible for this ID to be reused for another goroutine. Setting N to 0 will report no ancestry information.  asyncpreemptoff: asyncpreemptoff=1 disables signal\-based asynchronous goroutine preemption. This makes some loops non\-preemptible for long periods, which may delay GC and goroutine scheduling. This is useful for debugging GC issues because it also disables the conservative stack scanning used for asynchronously preempted goroutines.  The net and net/http packages also refer to debugging variables in GODEBUG. See the documentation for those packages for details.  The GOMAXPROCS variable limits the number of operating system threads that can execute user\-level Go code simultaneously. There is no limit to the number of threads that can be blocked in system calls on behalf of Go code; those do not count against the GOMAXPROCS limit. This package's GOMAXPROCS function queries and changes the limit.  The GORACE variable configures the race detector, for programs built using \-race. See https://golang.org/doc/articles/race_detector.html for details.  The GOTRACEBACK variable controls the amount of output generated when a Go program fails due to an unrecovered panic or an unexpected runtime condition. By default, a failure prints a stack trace for the current goroutine, eliding functions internal to the run\-time system, and then exits with exit code 2. The failure prints stack traces for all goroutines if there is no current goroutine or the failure is internal to the run\-time. GOTRACEBACK=none omits the goroutine stack traces entirely. GOTRACEBACK=single \(the default\) behaves as described above. GOTRACEBACK=all adds stack traces for all user\-created goroutines. GOTRACEBACK=system is like “all” but adds stack frames for run\-time functions and shows goroutines created internally by the run\-time. GOTRACEBACK=crash is like “system” but crashes in an operating system\-specific manner instead of exiting. For example, on Unix systems, the crash raises SIGABRT to trigger a core dump. For historical reasons, the GOTRACEBACK settings 0, 1, and 2 are synonyms for none, all, and system, respectively. The runtime/debug package's SetTraceback function allows increasing the amount of output at run time, but it cannot reduce the amount below that specified by the environment variable. See https://golang.org/pkg/runtime/debug/#SetTraceback.  The GOARCH, GOOS, GOPATH, and GOROOT environment variables complete the set of Go environment variables. They influence the building of Go programs \(see https://golang.org/cmd/go and https://golang.org/pkg/go/build\). GOARCH, GOOS, and GOROOT are recorded at compile time and made available by constants or functions in this package, but they do not influence the execution of the run\-time system. \*|/ 


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function blockProfile(_p:stdgo.Slice<stdgo.runtime.BlockProfileRecord>):{_1:Bool, _0:stdgo.GoInt}`](<#function-blockprofile>)

- [`function breakpoint():Void`](<#function-breakpoint>)

- [`function caller(_skip:stdgo.GoInt):{_3:Bool, _2:stdgo.GoInt, _1:stdgo.GoString, _0:stdgo.GoUIntptr}`](<#function-caller>)

- [`function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt`](<#function-callers>)

- [`function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Ref<stdgo.runtime.Frames>`](<#function-callersframes>)

- [`function cpuprofile():stdgo.Slice<stdgo.GoByte>`](<#function-cpuprofile>)

- [`function funcForPC(_pc:stdgo.GoUIntptr):stdgo.Ref<stdgo.runtime.Func>`](<#function-funcforpc>)

- [`function gc():Void`](<#function-gc>)

- [`function goexit():Void`](<#function-goexit>)

- [`function gomaxprocs(_n:stdgo.GoInt):stdgo.GoInt`](<#function-gomaxprocs>)

- [`function goroot():stdgo.GoString`](<#function-goroot>)

- [`function goroutineProfile(_p:stdgo.Slice<stdgo.runtime.StackRecord>):{_1:Bool, _0:stdgo.GoInt}`](<#function-goroutineprofile>)

- [`function gosched():Void`](<#function-gosched>)

- [`function keepAlive(_x:stdgo.AnyInterface):Void`](<#function-keepalive>)

- [`function lockOSThread():Void`](<#function-lockosthread>)

- [`function memProfile(_p:stdgo.Slice<stdgo.runtime.MemProfileRecord>, _inuseZero:Bool):{_1:Bool, _0:stdgo.GoInt}`](<#function-memprofile>)

- [`function mutexProfile(_p:stdgo.Slice<stdgo.runtime.BlockProfileRecord>):{_1:Bool, _0:stdgo.GoInt}`](<#function-mutexprofile>)

- [`function numCPU():stdgo.GoInt`](<#function-numcpu>)

- [`function numCgoCall():stdgo.GoInt64`](<#function-numcgocall>)

- [`function numGoroutine():stdgo.GoInt`](<#function-numgoroutine>)

- [`function readMemStats(_m:stdgo.Ref<stdgo.runtime.MemStats>):Void`](<#function-readmemstats>)

- [`function readTrace():stdgo.Slice<stdgo.GoByte>`](<#function-readtrace>)

- [`function setBlockProfileRate(_rate:stdgo.GoInt):Void`](<#function-setblockprofilerate>)

- [`function setCPUProfileRate(_hz:stdgo.GoInt):Void`](<#function-setcpuprofilerate>)

- [`function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo.unsafe.UnsafePointer, _context:stdgo.unsafe.UnsafePointer, _symbolizer:stdgo.unsafe.UnsafePointer):Void`](<#function-setcgotraceback>)

- [`function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void`](<#function-setfinalizer>)

- [`function setMutexProfileFraction(_rate:stdgo.GoInt):stdgo.GoInt`](<#function-setmutexprofilefraction>)

- [`function stack(_buf:stdgo.Slice<stdgo.GoByte>, _all:Bool):stdgo.GoInt`](<#function-stack>)

- [`function startTrace():stdgo.Error`](<#function-starttrace>)

- [`function stopTrace():Void`](<#function-stoptrace>)

- [`function threadCreateProfile(_p:stdgo.Slice<stdgo.runtime.StackRecord>):{_1:Bool, _0:stdgo.GoInt}`](<#function-threadcreateprofile>)

- [`function unlockOSThread():Void`](<#function-unlockosthread>)

- [`function version():stdgo.GoString`](<#function-version>)

- [class BlockProfileRecord](<#class-blockprofilerecord>)

  - [`function new(?count:stdgo.GoInt64, ?cycles:stdgo.GoInt64, ?stackRecord:stdgo.runtime.StackRecord):Void`](<#blockprofilerecord-function-new>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#blockprofilerecord-function-stack>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#blockprofilerecord-function-stack>)

- [class BlockProfileRecord\_static\_extension](<#class-blockprofilerecord_static_extension>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#blockprofilerecord_static_extension-function-stack>)

- [class Frame](<#class-frame>)

  - [`function new(?pc:stdgo.GoUIntptr, ?func:stdgo.Ref<stdgo.runtime.Func>, ?function_:stdgo.GoString, ?file:stdgo.GoString, ?line:Null<stdgo.GoInt>, ?entry:stdgo.GoUIntptr):Void`](<#frame-function-new>)

- [class Frames](<#class-frames>)

  - [`function new():Void`](<#frames-function-new>)

  - [`function next():{_1:Bool, _0:stdgo.runtime.Frame}`](<#frames-function-next>)

- [class Frames\_static\_extension](<#class-frames_static_extension>)

  - [`function next():{_1:Bool, _0:stdgo.runtime.Frame}`](<#frames_static_extension-function-next>)

- [class Func](<#class-func>)

  - [`function new():Void`](<#func-function-new>)

  - [`function entry():stdgo.GoUIntptr`](<#func-function-entry>)

  - [`function fileLine( _pc:stdgo.GoUIntptr):{_1:stdgo.GoInt, _0:stdgo.GoString}`](<#func-function-fileline>)

  - [`function name():stdgo.GoString`](<#func-function-name>)

- [class Func\_static\_extension](<#class-func_static_extension>)

  - [`function entry():stdgo.GoUIntptr`](<#func_static_extension-function-entry>)

  - [`function fileLine( _pc:stdgo.GoUIntptr):{_1:stdgo.GoInt, _0:stdgo.GoString}`](<#func_static_extension-function-fileline>)

  - [`function name():stdgo.GoString`](<#func_static_extension-function-name>)

- [class MemProfileRecord](<#class-memprofilerecord>)

  - [`function new(?allocBytes:stdgo.GoInt64, ?freeBytes:stdgo.GoInt64, ?allocObjects:stdgo.GoInt64, ?freeObjects:stdgo.GoInt64, ?stack0:stdgo.GoArray<stdgo.GoUIntptr>):Void`](<#memprofilerecord-function-new>)

  - [`function inUseBytes():stdgo.GoInt64`](<#memprofilerecord-function-inusebytes>)

  - [`function inUseObjects():stdgo.GoInt64`](<#memprofilerecord-function-inuseobjects>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#memprofilerecord-function-stack>)

- [class MemProfileRecord\_static\_extension](<#class-memprofilerecord_static_extension>)

  - [`function inUseBytes():stdgo.GoInt64`](<#memprofilerecord_static_extension-function-inusebytes>)

  - [`function inUseObjects():stdgo.GoInt64`](<#memprofilerecord_static_extension-function-inuseobjects>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#memprofilerecord_static_extension-function-stack>)

- [class MemStats](<#class-memstats>)

  - [`function new(?alloc:stdgo.GoUInt64, ?totalAlloc:stdgo.GoUInt64, ?sys:stdgo.GoUInt64, ?lookups:stdgo.GoUInt64, ?mallocs:stdgo.GoUInt64, ?frees:stdgo.GoUInt64, ?heapAlloc:stdgo.GoUInt64, ?heapSys:stdgo.GoUInt64, ?heapIdle:stdgo.GoUInt64, ?heapInuse:stdgo.GoUInt64, ?heapReleased:stdgo.GoUInt64, ?heapObjects:stdgo.GoUInt64, ?stackInuse:stdgo.GoUInt64, ?stackSys:stdgo.GoUInt64, ?mspanInuse:stdgo.GoUInt64, ?mspanSys:stdgo.GoUInt64, ?mcacheInuse:stdgo.GoUInt64, ?mcacheSys:stdgo.GoUInt64, ?buckHashSys:stdgo.GoUInt64, ?gcsys:stdgo.GoUInt64, ?otherSys:stdgo.GoUInt64, ?nextGC:stdgo.GoUInt64, ?lastGC:stdgo.GoUInt64, ?pauseTotalNs:stdgo.GoUInt64, ?pauseNs:stdgo.GoArray<stdgo.GoUInt64>, ?pauseEnd:stdgo.GoArray<stdgo.GoUInt64>, ?numGC:stdgo.GoUInt32, ?numForcedGC:stdgo.GoUInt32, ?gccpufraction:stdgo.GoFloat64, ?enableGC:Bool, ?debugGC:Bool, ?bySize:stdgo.GoArray<{size:stdgo.GoUInt32, mallocs:stdgo.GoUInt64, frees:stdgo.GoUInt64}>):Void`](<#memstats-function-new>)

- [class StackRecord](<#class-stackrecord>)

  - [`function new(?stack0:stdgo.GoArray<stdgo.GoUIntptr>):Void`](<#stackrecord-function-new>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#stackrecord-function-stack>)

- [class StackRecord\_static\_extension](<#class-stackrecord_static_extension>)

  - [`function stack():stdgo.Slice<stdgo.GoUIntptr>`](<#stackrecord_static_extension-function-stack>)

- [class TypeAssertionError](<#class-typeassertionerror>)

  - [`function new():Void`](<#typeassertionerror-function-new>)

  - [`function error():stdgo.GoString`](<#typeassertionerror-function-error>)

  - [`function runtimeError():Void`](<#typeassertionerror-function-runtimeerror>)

- [class TypeAssertionError\_static\_extension](<#class-typeassertionerror_static_extension>)

  - [`function error():stdgo.GoString`](<#typeassertionerror_static_extension-function-error>)

  - [`function runtimeError():Void`](<#typeassertionerror_static_extension-function-runtimeerror>)

- [typedef T\_error](<#typedef-t_error>)

# Constants


```haxe
import stdgo.runtime.Runtime
```


```haxe
final compiler:stdgo.GoString = (("" : GoString))
```


Compiler is the name of the compiler toolchain that built the running binary. Known toolchains are:  gc      Also known as cmd/compile. gccgo   The gccgo front end, part of the GCC compiler suite. 


```haxe
final goarch:stdgo.GoString = (("" : GoString))
```


GOARCH is the running program's architecture target: one of 386, amd64, arm, s390x, and so on. 


```haxe
final goos:stdgo.GoString = (("" : GoString))
```


GOOS is the running program's operating system target: one of darwin, freebsd, linux, and so on. To view possible combinations of GOOS and GOARCH, run "go tool dist list". 


# Variables


```haxe
import stdgo.runtime.Runtime
```


```haxe
var memProfileRate:stdgo.GoInt
```


MemProfileRate controls the fraction of memory allocations that are recorded and reported in the memory profile. The profiler aims to sample an average of one allocation per MemProfileRate bytes allocated.  To include every allocated block in the profile, set MemProfileRate to 1. To turn off profiling entirely, set MemProfileRate to 0.  The tools that process the memory profiles assume that the profile rate is constant across the lifetime of the program and equal to the current value. Programs that change the memory profiling rate should do so just once, as early as possible in the execution of the program \(for example, at the beginning of main\). 


# Functions


```haxe
import stdgo.runtime.Runtime
```


## function blockProfile


```haxe
function blockProfile(_p:stdgo.Slice<stdgo.runtime.BlockProfileRecord>):{_1:Bool, _0:stdgo.GoInt}
```


BlockProfile returns n, the number of records in the current blocking profile. If len\(p\) \>= n, BlockProfile copies the profile into p and returns n, true. If len\(p\) \< n, BlockProfile does not change p and returns n, false.  Most clients should use the runtime/pprof package or the testing package's \-test.blockprofile flag instead of calling BlockProfile directly. 


[\(view code\)](<./Runtime.hx#L1153>)


## function breakpoint


```haxe
function breakpoint():Void
```


Breakpoint executes a breakpoint trap. 


[\(view code\)](<./Runtime.hx#L1232>)


## function caller


```haxe
function caller(_skip:stdgo.GoInt):{_3:Bool, _2:stdgo.GoInt, _1:stdgo.GoString, _0:stdgo.GoUIntptr}
```


Caller reports file and line number information about function invocations on the calling goroutine's stack. The argument skip is the number of stack frames to ascend, with 0 identifying the caller of Caller.  \(For historical reasons the meaning of skip differs between Caller and Callers.\) The return values report the program counter, file name, and line number within the file of the corresponding call. The boolean ok is false if it was not possible to recover the information. 


[\(view code\)](<./Runtime.hx#L939>)


## function callers


```haxe
function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt
```


Callers fills the slice pc with the return program counters of function invocations on the calling goroutine's stack. The argument skip is the number of stack frames to skip before recording in pc, with 0 identifying the frame for Callers itself and 1 identifying the caller of Callers. It returns the number of entries written to pc.  To translate these PCs into symbolic information such as function names and line numbers, use CallersFrames. CallersFrames accounts for inlined functions and adjusts the return program counters into call program counters. Iterating over the returned slice of PCs directly is discouraged, as is using FuncForPC on any of the returned PCs, since these cannot account for inlining or return program counter adjustment. 


[\(view code\)](<./Runtime.hx#L957>)


## function callersFrames


```haxe
function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Ref<stdgo.runtime.Frames>
```


CallersFrames takes a slice of PC values returned by Callers and prepares to return function/file/line information. Do not change the slice until you are done with the Frames. 


[\(view code\)](<./Runtime.hx#L1276>)


## function cpuprofile


```haxe
function cpuprofile():stdgo.Slice<stdgo.GoByte>
```


CPUProfile panics. It formerly provided raw access to chunks of a pprof\-format profile generated by the runtime. The details of generating that format have changed, so this functionality has been removed.  Deprecated: Use the runtime/pprof package, or the handlers in the net/http/pprof package, or the testing package's \-test.cpuprofile flag instead. 


[\(view code\)](<./Runtime.hx#L892>)


## function funcForPC


```haxe
function funcForPC(_pc:stdgo.GoUIntptr):stdgo.Ref<stdgo.runtime.Func>
```


FuncForPC returns a \*Func describing the function that contains the given program counter address, or else nil.  If pc represents multiple functions because of inlining, it returns the \*Func describing the innermost function, but with an entry of the outermost function. 


[\(view code\)](<./Runtime.hx#L1287>)


## function gc


```haxe
function gc():Void
```


GC runs a garbage collection and blocks the caller until the garbage collection is complete. It may also block the entire program. 


[\(view code\)](<./Runtime.hx#L1092>)


## function goexit


```haxe
function goexit():Void
```


Goexit terminates the goroutine that calls it. No other goroutine is affected. Goexit runs all deferred calls before terminating the goroutine. Because Goexit is not a panic, any recover calls in those deferred functions will return nil.  Calling Goexit from the main goroutine terminates that goroutine without func main returning. Since func main has not returned, the program continues execution of other goroutines. If all other goroutines exit, the program crashes. 


[\(view code\)](<./Runtime.hx#L1219>)


## function gomaxprocs


```haxe
function gomaxprocs(_n:stdgo.GoInt):stdgo.GoInt
```


GOMAXPROCS sets the maximum number of CPUs that can be executing simultaneously and returns the previous setting. It defaults to the value of runtime.NumCPU. If n \< 1, it does not change the current setting. This call will go away when the scheduler improves. 


[\(view code\)](<./Runtime.hx#L901>)


## function goroot


```haxe
function goroot():stdgo.GoString
```


GOROOT returns the root of the Go tree. It uses the GOROOT environment variable, if set at process start, or else the root used during the Go build. 


[\(view code\)](<./Runtime.hx#L965>)


## function goroutineProfile


```haxe
function goroutineProfile(_p:stdgo.Slice<stdgo.runtime.StackRecord>):{_1:Bool, _0:stdgo.GoInt}
```


GoroutineProfile returns n, the number of records in the active goroutine stack profile. If len\(p\) \>= n, GoroutineProfile copies the profile into p and returns n, true. If len\(p\) \< n, GoroutineProfile does not change p and returns n, false.  Most clients should use the runtime/pprof package instead of calling GoroutineProfile directly. 


[\(view code\)](<./Runtime.hx#L1186>)


## function gosched


```haxe
function gosched():Void
```


Gosched yields the processor, allowing other goroutines to run. It does not suspend the current goroutine, so execution resumes automatically. 


[\(view code\)](<./Runtime.hx#L1226>)


## function keepAlive


```haxe
function keepAlive(_x:stdgo.AnyInterface):Void
```


KeepAlive marks its argument as currently reachable. This ensures that the object is not freed, and its finalizer is not run, before the point in the program where KeepAlive is called.  A very simplified example showing where KeepAlive is required:  type File struct \{ d int \} d, err := syscall.Open\("/file/path", syscall.O\_RDONLY, 0\) // ... do something if err \!= nil ... p := &File\{d\} runtime.SetFinalizer\(p, func\(p \*File\) \{ syscall.Close\(p.d\) \}\) var buf \[10\]byte n, err := syscall.Read\(p.d, buf\[:\]\) // Ensure p is not finalized until Read returns. runtime.KeepAlive\(p\) // No more uses of p after this point.  Without the KeepAlive call, the finalizer could run at the start of syscall.Read, closing the file descriptor before syscall.Read makes the actual system call.  Note: KeepAlive should only be used to prevent finalizers from running prematurely. In particular, when used with unsafe.Pointer, the rules for valid uses of unsafe.Pointer still apply. 


[\(view code\)](<./Runtime.hx#L1084>)


## function lockOSThread


```haxe
function lockOSThread():Void
```


LockOSThread wires the calling goroutine to its current operating system thread. The calling goroutine will always execute in that thread, and no other goroutine will execute in it, until the calling goroutine has made as many calls to UnlockOSThread as to LockOSThread. If the calling goroutine exits without unlocking the thread, the thread will be terminated.  All init functions are run on the startup thread. Calling LockOSThread from an init function will cause the main function to be invoked on that thread.  A goroutine should call LockOSThread before calling OS services or non\-Go library functions that depend on per\-thread state. 


[\(view code\)](<./Runtime.hx#L1251>)


## function memProfile


```haxe
function memProfile(_p:stdgo.Slice<stdgo.runtime.MemProfileRecord>, _inuseZero:Bool):{_1:Bool, _0:stdgo.GoInt}
```


MemProfile returns a profile of memory allocated and freed per allocation site.  MemProfile returns n, the number of records in the current memory profile. If len\(p\) \>= n, MemProfile copies the profile into p and returns n, true. If len\(p\) \< n, MemProfile does not change p and returns n, false.  If inuseZero is true, the profile includes allocation records where r.AllocBytes \> 0 but r.AllocBytes == r.FreeBytes. These are sites where memory was allocated, but it has all been released back to the runtime.  The returned profile may be up to two garbage collection cycles old. This is to avoid skewing the profile toward allocations; because allocations happen in real time but frees are delayed until the garbage collector performs sweeping, the profile only accounts for allocations that have had a chance to be freed by the garbage collector.  Most clients should use the runtime/pprof package or the testing package's \-test.memprofile flag instead of calling MemProfile directly. 


[\(view code\)](<./Runtime.hx#L1141>)


## function mutexProfile


```haxe
function mutexProfile(_p:stdgo.Slice<stdgo.runtime.BlockProfileRecord>):{_1:Bool, _0:stdgo.GoInt}
```


MutexProfile returns n, the number of records in the current mutex profile. If len\(p\) \>= n, MutexProfile copies the profile into p and returns n, true. Otherwise, MutexProfile does not change p, and returns n, false.  Most clients should use the runtime/pprof package instead of calling MutexProfile directly. 


[\(view code\)](<./Runtime.hx#L1164>)


## function numCPU


```haxe
function numCPU():stdgo.GoInt
```


NumCPU returns the number of logical CPUs usable by the current process.  The set of available CPUs is checked by querying the operating system at process startup. Changes to operating system CPU allocation after process startup are not reflected. 


[\(view code\)](<./Runtime.hx#L911>)


## function numCgoCall


```haxe
function numCgoCall():stdgo.GoInt64
```


NumCgoCall returns the number of cgo calls made by the current process. 


[\(view code\)](<./Runtime.hx#L917>)


## function numGoroutine


```haxe
function numGoroutine():stdgo.GoInt
```


NumGoroutine returns the number of goroutines that currently exist. 


[\(view code\)](<./Runtime.hx#L923>)


## function readMemStats


```haxe
function readMemStats(_m:stdgo.Ref<stdgo.runtime.MemStats>):Void
```


ReadMemStats populates m with memory allocator statistics.  The returned memory allocator statistics are up to date as of the call to ReadMemStats. This is in contrast with a heap profile, which is a snapshot as of the most recently completed garbage collection cycle. 


[\(view code\)](<./Runtime.hx#L1206>)


## function readTrace


```haxe
function readTrace():stdgo.Slice<stdgo.GoByte>
```


ReadTrace returns the next chunk of binary tracing data, blocking until data is available. If tracing is turned off and all the data accumulated while it was on has been returned, ReadTrace returns nil. The caller must copy the returned data before calling ReadTrace again. ReadTrace must be called from one goroutine at a time. 


[\(view code\)](<./Runtime.hx#L1314>)


## function setBlockProfileRate


```haxe
function setBlockProfileRate(_rate:stdgo.GoInt):Void
```


SetBlockProfileRate controls the fraction of goroutine blocking events that are reported in the blocking profile. The profiler aims to sample an average of one blocking event per rate nanoseconds spent blocked.  To include every blocking event in the profile, pass rate = 1. To turn off profiling entirely, pass rate \<= 0. 


[\(view code\)](<./Runtime.hx#L1103>)


## function setCPUProfileRate


```haxe
function setCPUProfileRate(_hz:stdgo.GoInt):Void
```


SetCPUProfileRate sets the CPU profiling rate to hz samples per second. If hz \<= 0, SetCPUProfileRate turns off profiling. If the profiler is on, the rate cannot be changed without first turning it off.  Most clients should use the runtime/pprof package or the testing package's \-test.cpuprofile flag instead of calling SetCPUProfileRate directly. 


[\(view code\)](<./Runtime.hx#L878>)


## function setCgoTraceback


```haxe
function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo.unsafe.UnsafePointer, _context:stdgo.unsafe.UnsafePointer, _symbolizer:stdgo.unsafe.UnsafePointer):Void
```


SetCgoTraceback records three C functions to use to gather traceback information from C code and to convert that traceback information into symbolic information. These are used when printing stack traces for a program that uses cgo.  The traceback and context functions may be called from a signal handler, and must therefore use only async\-signal safe functions. The symbolizer function may be called while the program is crashing, and so must be cautious about using memory.  None of the functions may call back into Go.  The context function will be called with a single argument, a pointer to a struct:  struct \{ Context uintptr \}  In C syntax, this struct will be  struct \{ uintptr\_t Context; \};  If the Context field is 0, the context function is being called to record the current traceback context. It should record in the Context field whatever information is needed about the current point of execution to later produce a stack trace, probably the stack pointer and PC. In this case the context function will be called from C code.  If the Context field is not 0, then it is a value returned by a previous call to the context function. This case is called when the context is no longer needed; that is, when the Go code is returning to its C code caller. This permits the context function to release any associated resources.  While it would be correct for the context function to record a complete a stack trace whenever it is called, and simply copy that out in the traceback function, in a typical program the context function will be called many times without ever recording a traceback for that context. Recording a complete stack trace in a call to the context function is likely to be inefficient.  The traceback function will be called with a single argument, a pointer to a struct:  struct \{ Context    uintptr SigContext uintptr Buf        \*uintptr Max        uintptr \}  In C syntax, this struct will be  struct \{ uintptr\_t  Context; uintptr\_t  SigContext; uintptr\_t\* Buf; uintptr\_t  Max; \};  The Context field will be zero to gather a traceback from the current program execution point. In this case, the traceback function will be called from C code.  Otherwise Context will be a value previously returned by a call to the context function. The traceback function should gather a stack trace from that saved point in the program execution. The traceback function may be called from an execution thread other than the one that recorded the context, but only when the context is known to be valid and unchanging. The traceback function may also be called deeper in the call stack on the same thread that recorded the context. The traceback function may be called multiple times with the same Context value; it will usually be appropriate to cache the result, if possible, the first time this is called for a specific context value.  If the traceback function is called from a signal handler on a Unix system, SigContext will be the signal context argument passed to the signal handler \(a C ucontext\_t\* cast to uintptr\_t\). This may be used to start tracing at the point where the signal occurred. If the traceback function is not called from a signal handler, SigContext will be zero.  Buf is where the traceback information should be stored. It should be PC values, such that Buf\[0\] is the PC of the caller, Buf\[1\] is the PC of that function's caller, and so on.  Max is the maximum number of entries to store.  The function should store a zero to indicate the top of the stack, or that the caller is on a different stack, presumably a Go stack.  Unlike runtime.Callers, the PC values returned should, when passed to the symbolizer function, return the file/line of the call instruction.  No additional subtraction is required or appropriate.  On all platforms, the traceback function is invoked when a call from Go to C to Go requests a stack trace. On linux/amd64, linux/ppc64le, linux/arm64, and freebsd/amd64, the traceback function is also invoked when a signal is received by a thread that is executing a cgo call. The traceback function should not make assumptions about when it is called, as future versions of Go may make additional calls.  The symbolizer function will be called with a single argument, a pointer to a struct:  struct \{ PC      uintptr // program counter to fetch information for File    \*byte   // file name \(NUL terminated\) Lineno  uintptr // line number Func    \*byte   // function name \(NUL terminated\) Entry   uintptr // function entry point More    uintptr // set non\-zero if more info for this PC Data    uintptr // unused by runtime, available for function \}  In C syntax, this struct will be  struct \{ uintptr\_t PC; char\*     File; uintptr\_t Lineno; char\*     Func; uintptr\_t Entry; uintptr\_t More; uintptr\_t Data; \};  The PC field will be a value returned by a call to the traceback function.  The first time the function is called for a particular traceback, all the fields except PC will be 0. The function should fill in the other fields if possible, setting them to 0/nil if the information is not available. The Data field may be used to store any useful information across calls. The More field should be set to non\-zero if there is more information for this PC, zero otherwise. If More is set non\-zero, the function will be called again with the same PC, and may return different information \(this is intended for use with inlined functions\). If More is zero, the function will be called with the next PC value in the traceback. When the traceback is complete, the function will be called once more with PC set to zero; this may be used to free any information. Each call will leave the fields of the struct set to the same values they had upon return, except for the PC field when the More field is zero. The function must not keep a copy of the struct pointer between calls.  When calling SetCgoTraceback, the version argument is the version number of the structs that the functions expect to receive. Currently this must be zero.  The symbolizer function may be nil, in which case the results of the traceback function will be displayed as numbers. If the traceback function is nil, the symbolizer function will never be called. The context function may be nil, in which case the traceback function will only be called with the context field set to zero.  If the context function is nil, then calls from Go to C to Go will not show a traceback for the C portion of the call stack.  SetCgoTraceback should be called only once, ideally from an init function. 


[\(view code\)](<./Runtime.hx#L1481>)


## function setFinalizer


```haxe
function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void
```


SetFinalizer sets the finalizer associated with obj to the provided finalizer function. When the garbage collector finds an unreachable block with an associated finalizer, it clears the association and runs finalizer\(obj\) in a separate goroutine. This makes obj reachable again, but now without an associated finalizer. Assuming that SetFinalizer is not called again, the next time the garbage collector sees that obj is unreachable, it will free obj.  SetFinalizer\(obj, nil\) clears any finalizer associated with obj.  The argument obj must be a pointer to an object allocated by calling new, by taking the address of a composite literal, or by taking the address of a local variable. The argument finalizer must be a function that takes a single argument to which obj's type can be assigned, and can have arbitrary ignored return values. If either of these is not true, SetFinalizer may abort the program.  Finalizers are run in dependency order: if A points at B, both have finalizers, and they are otherwise unreachable, only the finalizer for A runs; once A is freed, the finalizer for B can run. If a cyclic structure includes a block with a finalizer, that cycle is not guaranteed to be garbage collected and the finalizer is not guaranteed to run, because there is no ordering that respects the dependencies.  The finalizer is scheduled to run at some arbitrary time after the program can no longer reach the object to which obj points. There is no guarantee that finalizers will run before a program exits, so typically they are useful only for releasing non\-memory resources associated with an object during a long\-running program. For example, an os.File object could use a finalizer to close the associated operating system file descriptor when a program discards an os.File without calling Close, but it would be a mistake to depend on a finalizer to flush an in\-memory I/O buffer such as a bufio.Writer, because the buffer would not be flushed at program exit.  It is not guaranteed that a finalizer will run if the size of \*obj is zero bytes.  It is not guaranteed that a finalizer will run for objects allocated in initializers for package\-level variables. Such objects may be linker\-allocated, not heap\-allocated.  A finalizer may run as soon as an object becomes unreachable. In order to use finalizers correctly, the program must ensure that the object is reachable until it is no longer required. Objects stored in global variables, or that can be found by tracing pointers from a global variable, are reachable. For other objects, pass the object to a call of the KeepAlive function to mark the last point in the function where the object must be reachable.  For example, if p points to a struct, such as os.File, that contains a file descriptor d, and p has a finalizer that closes that file descriptor, and if the last use of p in a function is a call to syscall.Write\(p.d, buf, size\), then p may be unreachable as soon as the program enters syscall.Write. The finalizer may run at that moment, closing p.d, causing syscall.Write to fail because it is writing to a closed file descriptor \(or, worse, to an entirely different file descriptor opened by a different goroutine\). To avoid this problem, call KeepAlive\(p\) after the call to syscall.Write.  A single goroutine runs all finalizers for a program, sequentially. If a finalizer must run for a long time, it should do so by starting a new goroutine.  In the terminology of the Go memory model, a call SetFinalizer\(x, f\) “synchronizes before” the finalization call f\(x\). However, there is no guarantee that KeepAlive\(x\) or any other use of x “synchronizes before” f\(x\), so in general a finalizer should use a mutex or other synchronization mechanism if it needs to access mutable state in x. For example, consider a finalizer that inspects a mutable field in x that is modified from time to time in the main program before x becomes unreachable and the finalizer is invoked. The modifications in the main program and the inspection in the finalizer need to use appropriate synchronization, such as mutexes or atomic updates, to avoid read\-write races. 


[\(view code\)](<./Runtime.hx#L1055>)


## function setMutexProfileFraction


```haxe
function setMutexProfileFraction(_rate:stdgo.GoInt):stdgo.GoInt
```


SetMutexProfileFraction controls the fraction of mutex contention events that are reported in the mutex profile. On average 1/rate events are reported. The previous rate is returned.  To turn off profiling entirely, pass rate 0. To just read the current rate, pass rate \< 0. \(For n\>1 the details of sampling may change.\) 


[\(view code\)](<./Runtime.hx#L1115>)


## function stack


```haxe
function stack(_buf:stdgo.Slice<stdgo.GoByte>, _all:Bool):stdgo.GoInt
```


Stack formats a stack trace of the calling goroutine into buf and returns the number of bytes written to buf. If all is true, Stack formats stack traces of all other goroutines into buf after the trace for the current goroutine. 


[\(view code\)](<./Runtime.hx#L1195>)


## function startTrace


```haxe
function startTrace():stdgo.Error
```


StartTrace enables tracing for the current process. While tracing, the data will be buffered and available via ReadTrace. StartTrace returns an error if tracing is already enabled. Most clients should use the runtime/trace package or the testing package's \-test.trace flag instead of calling StartTrace directly. 


[\(view code\)](<./Runtime.hx#L1297>)


## function stopTrace


```haxe
function stopTrace():Void
```


StopTrace stops tracing, if it was previously enabled. StopTrace only returns after all the reads for the trace have completed. 


[\(view code\)](<./Runtime.hx#L1304>)


## function threadCreateProfile


```haxe
function threadCreateProfile(_p:stdgo.Slice<stdgo.runtime.StackRecord>):{_1:Bool, _0:stdgo.GoInt}
```


ThreadCreateProfile returns n, the number of records in the thread creation profile. If len\(p\) \>= n, ThreadCreateProfile copies the profile into p and returns n, true. If len\(p\) \< n, ThreadCreateProfile does not change p and returns n, false.  Most clients should use the runtime/pprof package instead of calling ThreadCreateProfile directly. 


[\(view code\)](<./Runtime.hx#L1175>)


## function unlockOSThread


```haxe
function unlockOSThread():Void
```


UnlockOSThread undoes an earlier call to LockOSThread. If this drops the number of active LockOSThread calls on the calling goroutine to zero, it unwires the calling goroutine from its fixed operating system thread. If there are no active LockOSThread calls, this is a no\-op.  Before calling UnlockOSThread, the caller must ensure that the OS thread is suitable for running other goroutines. If the caller made any permanent changes to the state of the thread that would affect other goroutines, it should not call this function and thus leave the goroutine locked to the OS thread until the goroutine \(and hence the thread\) exits. 


[\(view code\)](<./Runtime.hx#L1268>)


## function version


```haxe
function version():stdgo.GoString
```


Version returns the Go tree's version string. It is either the commit hash and date at the time of the build or, when possible, a release tag like "go1.3". 


[\(view code\)](<./Runtime.hx#L973>)


# Classes


```haxe
import stdgo.runtime.*
```


## class BlockProfileRecord


BlockProfileRecord describes blocking events originated at a particular call sequence \(stack trace\). 


```haxe
var count:stdgo.GoInt64
```


```haxe
var cycles:stdgo.GoInt64
```


```haxe
var stackRecord:stdgo.runtime.StackRecord
```


### BlockProfileRecord function new


```haxe
function new(?count:stdgo.GoInt64, ?cycles:stdgo.GoInt64, ?stackRecord:stdgo.runtime.StackRecord):Void
```


 


[\(view code\)](<./Runtime.hx#L361>)


### BlockProfileRecord function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


 


[\(view code\)](<./Runtime.hx#L372>)


### BlockProfileRecord function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


 


[\(view code\)](<./Runtime.hx#L1628>)


## class BlockProfileRecord\_static\_extension


 


### BlockProfileRecord\_static\_extension function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


 


[\(view code\)](<./Runtime.hx#L1628>)


## class Frame


Frame is the information returned by Frames for each call frame. 


```haxe
var entry:stdgo.GoUIntptr
```


Entry point program counter for the function; may be zero if not known. If Func is not nil then Entry == Func.Entry\(\). 


```haxe
var file:stdgo.GoString
```


File and Line are the file name and line number of the location in this frame. For non\-leaf frames, this will be the location of a call. These may be the empty string and zero, respectively, if not known. 


```haxe
var func:stdgo.Ref<stdgo.runtime.Func>
```


Func is the Func value of this call frame. This may be nil for non\-Go code or fully inlined functions. 


```haxe
var function_:stdgo.GoString
```


Function is the package path\-qualified function name of this call frame. If non\-empty, this string uniquely identifies a single function in the program. This may be the empty string if not known. If Func is not nil then Function == Func.Name\(\). 


```haxe
var line:stdgo.GoInt
```


```haxe
var pc:stdgo.GoUIntptr
```


PC is the program counter for the location in this frame. For a frame that calls another frame, this will be the program counter of a call instruction. Because of inlining, multiple frames may have the same PC value, but different symbolic information. 


### Frame function new


```haxe
function new(?pc:stdgo.GoUIntptr, ?func:stdgo.Ref<stdgo.runtime.Func>, ?function_:stdgo.GoString, ?file:stdgo.GoString, ?line:Null<stdgo.GoInt>, ?entry:stdgo.GoUIntptr):Void
```


 


[\(view code\)](<./Runtime.hx#L809>)


## class Frames


Frames may be used to get function/file/line information for a slice of PC values returned by Callers. 


### Frames function new


```haxe
function new():Void
```


 


[\(view code\)](<./Runtime.hx#L754>)


### Frames function next


```haxe
function next():{_1:Bool, _0:stdgo.runtime.Frame}
```


Next returns a Frame representing the next call frame in the slice of PC values. If it has already returned all call frames, Next returns a zero Frame.  The more result indicates whether the next call to Next will return a valid Frame. It does not necessarily indicate whether this call returned one.  See the Frames example for idiomatic usage. 


[\(view code\)](<./Runtime.hx#L1674>)


## class Frames\_static\_extension


 


### Frames\_static\_extension function next


```haxe
function next():{_1:Bool, _0:stdgo.runtime.Frame}
```


Next returns a Frame representing the next call frame in the slice of PC values. If it has already returned all call frames, Next returns a zero Frame.  The more result indicates whether the next call to Next will return a valid Frame. It does not necessarily indicate whether this call returned one.  See the Frames example for idiomatic usage. 


[\(view code\)](<./Runtime.hx#L1674>)


## class Func


A Func represents a Go function in the running binary. 


### Func function new


```haxe
function new():Void
```


 


[\(view code\)](<./Runtime.hx#L836>)


### Func function entry


```haxe
function entry():stdgo.GoUIntptr
```


Entry returns the entry address of the function. 


[\(view code\)](<./Runtime.hx#L1731>)


### Func function fileLine


```haxe
function fileLine( _pc:stdgo.GoUIntptr):{_1:stdgo.GoInt, _0:stdgo.GoString}
```


FileLine returns the file name and line number of the source code corresponding to the program counter pc. The result will not be accurate if pc is not a program counter within f. 


[\(view code\)](<./Runtime.hx#L1724>)


### Func function name


```haxe
function name():stdgo.GoString
```


Name returns the name of the function. 


[\(view code\)](<./Runtime.hx#L1738>)


## class Func\_static\_extension


 


### Func\_static\_extension function entry


```haxe
function entry():stdgo.GoUIntptr
```


Entry returns the entry address of the function. 


[\(view code\)](<./Runtime.hx#L1731>)


### Func\_static\_extension function fileLine


```haxe
function fileLine( _pc:stdgo.GoUIntptr):{_1:stdgo.GoInt, _0:stdgo.GoString}
```


FileLine returns the file name and line number of the source code corresponding to the program counter pc. The result will not be accurate if pc is not a program counter within f. 


[\(view code\)](<./Runtime.hx#L1724>)


### Func\_static\_extension function name


```haxe
function name():stdgo.GoString
```


Name returns the name of the function. 


[\(view code\)](<./Runtime.hx#L1738>)


## class MemProfileRecord


A MemProfileRecord describes the live objects allocated by a particular call sequence \(stack trace\). 


```haxe
var allocBytes:stdgo.GoInt64
```


number of bytes allocated, freed 


```haxe
var allocObjects:stdgo.GoInt64
```


stack trace for this record; ends at first 0 entry 


```haxe
var freeBytes:stdgo.GoInt64
```


number of objects allocated, freed 


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


 


[\(view code\)](<./Runtime.hx#L330>)


### MemProfileRecord function inUseBytes


```haxe
function inUseBytes():stdgo.GoInt64
```


InUseBytes returns the number of bytes in use \(AllocBytes \- FreeBytes\). 


[\(view code\)](<./Runtime.hx#L1604>)


### MemProfileRecord function inUseObjects


```haxe
function inUseObjects():stdgo.GoInt64
```


InUseObjects returns the number of objects in use \(AllocObjects \- FreeObjects\). 


[\(view code\)](<./Runtime.hx#L1597>)


### MemProfileRecord function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


Stack returns the stack trace associated with the record, a prefix of r.Stack0. 


[\(view code\)](<./Runtime.hx#L1590>)


## class MemProfileRecord\_static\_extension


 


### MemProfileRecord\_static\_extension function inUseBytes


```haxe
function inUseBytes():stdgo.GoInt64
```


InUseBytes returns the number of bytes in use \(AllocBytes \- FreeBytes\). 


[\(view code\)](<./Runtime.hx#L1604>)


### MemProfileRecord\_static\_extension function inUseObjects


```haxe
function inUseObjects():stdgo.GoInt64
```


InUseObjects returns the number of objects in use \(AllocObjects \- FreeObjects\). 


[\(view code\)](<./Runtime.hx#L1597>)


### MemProfileRecord\_static\_extension function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


Stack returns the stack trace associated with the record, a prefix of r.Stack0. 


[\(view code\)](<./Runtime.hx#L1590>)


## class MemStats


A MemStats records statistics about the memory allocator. 


```haxe
var alloc:stdgo.GoUInt64
```


Alloc is bytes of allocated heap objects.  This is the same as HeapAlloc \(see below\). 


```haxe
var buckHashSys:stdgo.GoUInt64
```


BuckHashSys is bytes of memory in profiling bucket hash tables. 


```haxe
var bySize:stdgo.GoArray<{size:stdgo.GoUInt32, mallocs:stdgo.GoUInt64, frees:stdgo.GoUInt64}>
```


BySize reports per\-size class allocation statistics.  BySize\[N\] gives statistics for allocations of size S where BySize\[N\-1\].Size \< S ≤ BySize\[N\].Size.  This does not report allocations larger than BySize\[60\].Size. 


```haxe
var debugGC:Bool
```


DebugGC is currently unused. 


```haxe
var enableGC:Bool
```


EnableGC indicates that GC is enabled. It is always true, even if GOGC=off. 


```haxe
var frees:stdgo.GoUInt64
```


Frees is the cumulative count of heap objects freed. 


```haxe
var gccpufraction:stdgo.GoFloat64
```


GCCPUFraction is the fraction of this program's available CPU time used by the GC since the program started.  GCCPUFraction is expressed as a number between 0 and 1, where 0 means GC has consumed none of this program's CPU. A program's available CPU time is defined as the integral of GOMAXPROCS since the program started. That is, if GOMAXPROCS is 2 and a program has been running for 10 seconds, its "available CPU" is 20 seconds. GCCPUFraction does not include CPU time used for write barrier activity.  This is the same as the fraction of CPU reported by GODEBUG=gctrace=1. 


```haxe
var gcsys:stdgo.GoUInt64
```


GCSys is bytes of memory in garbage collection metadata. 


```haxe
var heapAlloc:stdgo.GoUInt64
```


HeapAlloc is bytes of allocated heap objects.  "Allocated" heap objects include all reachable objects, as well as unreachable objects that the garbage collector has not yet freed. Specifically, HeapAlloc increases as heap objects are allocated and decreases as the heap is swept and unreachable objects are freed. Sweeping occurs incrementally between GC cycles, so these two processes occur simultaneously, and as a result HeapAlloc tends to change smoothly \(in contrast with the sawtooth that is typical of stop\-the\-world garbage collectors\). 


```haxe
var heapIdle:stdgo.GoUInt64
```


HeapIdle is bytes in idle \(unused\) spans.  Idle spans have no objects in them. These spans could be \(and may already have been\) returned to the OS, or they can be reused for heap allocations, or they can be reused as stack memory.  HeapIdle minus HeapReleased estimates the amount of memory that could be returned to the OS, but is being retained by the runtime so it can grow the heap without requesting more memory from the OS. If this difference is significantly larger than the heap size, it indicates there was a recent transient spike in live heap size. 


```haxe
var heapInuse:stdgo.GoUInt64
```


HeapInuse is bytes in in\-use spans.  In\-use spans have at least one object in them. These spans can only be used for other objects of roughly the same size.  HeapInuse minus HeapAlloc estimates the amount of memory that has been dedicated to particular size classes, but is not currently being used. This is an upper bound on fragmentation, but in general this memory can be reused efficiently. 


```haxe
var heapObjects:stdgo.GoUInt64
```


HeapObjects is the number of allocated heap objects.  Like HeapAlloc, this increases as objects are allocated and decreases as the heap is swept and unreachable objects are freed. 


```haxe
var heapReleased:stdgo.GoUInt64
```


HeapReleased is bytes of physical memory returned to the OS.  This counts heap memory from idle spans that was returned to the OS and has not yet been reacquired for the heap. 


```haxe
var heapSys:stdgo.GoUInt64
```


HeapSys is bytes of heap memory obtained from the OS.  HeapSys measures the amount of virtual address space reserved for the heap. This includes virtual address space that has been reserved but not yet used, which consumes no physical memory, but tends to be small, as well as virtual address space for which the physical memory has been returned to the OS after it became unused \(see HeapReleased for a measure of the latter\).  HeapSys estimates the largest size the heap has had. 


```haxe
var lastGC:stdgo.GoUInt64
```


LastGC is the time the last garbage collection finished, as nanoseconds since 1970 \(the UNIX epoch\). 


```haxe
var lookups:stdgo.GoUInt64
```


Lookups is the number of pointer lookups performed by the runtime.  This is primarily useful for debugging runtime internals. 


```haxe
var mallocs:stdgo.GoUInt64
```


Mallocs is the cumulative count of heap objects allocated. The number of live objects is Mallocs \- Frees. 


```haxe
var mcacheInuse:stdgo.GoUInt64
```


MCacheInuse is bytes of allocated mcache structures. 


```haxe
var mcacheSys:stdgo.GoUInt64
```


MCacheSys is bytes of memory obtained from the OS for mcache structures. 


```haxe
var mspanInuse:stdgo.GoUInt64
```


MSpanInuse is bytes of allocated mspan structures. 


```haxe
var mspanSys:stdgo.GoUInt64
```


MSpanSys is bytes of memory obtained from the OS for mspan structures. 


```haxe
var nextGC:stdgo.GoUInt64
```


NextGC is the target heap size of the next GC cycle.  The garbage collector's goal is to keep HeapAlloc ≤ NextGC. At the end of each GC cycle, the target for the next cycle is computed based on the amount of reachable data and the value of GOGC. 


```haxe
var numForcedGC:stdgo.GoUInt32
```


NumForcedGC is the number of GC cycles that were forced by the application calling the GC function. 


```haxe
var numGC:stdgo.GoUInt32
```


NumGC is the number of completed GC cycles. 


```haxe
var otherSys:stdgo.GoUInt64
```


OtherSys is bytes of memory in miscellaneous off\-heap runtime allocations. 


```haxe
var pauseEnd:stdgo.GoArray<stdgo.GoUInt64>
```


PauseEnd is a circular buffer of recent GC pause end times, as nanoseconds since 1970 \(the UNIX epoch\).  This buffer is filled the same way as PauseNs. There may be multiple pauses per GC cycle; this records the end of the last pause in a cycle. 


```haxe
var pauseNs:stdgo.GoArray<stdgo.GoUInt64>
```


PauseNs is a circular buffer of recent GC stop\-the\-world pause times in nanoseconds.  The most recent pause is at PauseNs\[\(NumGC\+255\)%256\]. In general, PauseNs\[N%256\] records the time paused in the most recent N%256th GC cycle. There may be multiple pauses per GC cycle; this is the sum of all pauses during a cycle. 


```haxe
var pauseTotalNs:stdgo.GoUInt64
```


PauseTotalNs is the cumulative nanoseconds in GC stop\-the\-world pauses since the program started.  During a stop\-the\-world pause, all goroutines are paused and only the garbage collector can run. 


```haxe
var stackInuse:stdgo.GoUInt64
```


StackInuse is bytes in stack spans.  In\-use stack spans have at least one stack in them. These spans can only be used for other stacks of the same size.  There is no StackIdle because unused stack spans are returned to the heap \(and hence counted toward HeapIdle\). 


```haxe
var stackSys:stdgo.GoUInt64
```


StackSys is bytes of stack memory obtained from the OS.  StackSys is StackInuse, plus any memory obtained directly from the OS for OS thread stacks \(which should be minimal\). 


```haxe
var sys:stdgo.GoUInt64
```


Sys is the total bytes of memory obtained from the OS.  Sys is the sum of the XSys fields below. Sys measures the virtual address space reserved by the Go runtime for the heap, stacks, and other internal data structures. It's likely that not all of the virtual address space is backed by physical memory at any given moment, though in general it all was at some point. 


```haxe
var totalAlloc:stdgo.GoUInt64
```


TotalAlloc is cumulative bytes allocated for heap objects.  TotalAlloc increases as heap objects are allocated, but unlike Alloc and HeapAlloc, it does not decrease when objects are freed. 


### MemStats function new


```haxe
function new(?alloc:stdgo.GoUInt64, ?totalAlloc:stdgo.GoUInt64, ?sys:stdgo.GoUInt64, ?lookups:stdgo.GoUInt64, ?mallocs:stdgo.GoUInt64, ?frees:stdgo.GoUInt64, ?heapAlloc:stdgo.GoUInt64, ?heapSys:stdgo.GoUInt64, ?heapIdle:stdgo.GoUInt64, ?heapInuse:stdgo.GoUInt64, ?heapReleased:stdgo.GoUInt64, ?heapObjects:stdgo.GoUInt64, ?stackInuse:stdgo.GoUInt64, ?stackSys:stdgo.GoUInt64, ?mspanInuse:stdgo.GoUInt64, ?mspanSys:stdgo.GoUInt64, ?mcacheInuse:stdgo.GoUInt64, ?mcacheSys:stdgo.GoUInt64, ?buckHashSys:stdgo.GoUInt64, ?gcsys:stdgo.GoUInt64, ?otherSys:stdgo.GoUInt64, ?nextGC:stdgo.GoUInt64, ?lastGC:stdgo.GoUInt64, ?pauseTotalNs:stdgo.GoUInt64, ?pauseNs:stdgo.GoArray<stdgo.GoUInt64>, ?pauseEnd:stdgo.GoArray<stdgo.GoUInt64>, ?numGC:stdgo.GoUInt32, ?numForcedGC:stdgo.GoUInt32, ?gccpufraction:stdgo.GoFloat64, ?enableGC:Bool, ?debugGC:Bool, ?bySize:stdgo.GoArray<{size:stdgo.GoUInt32, mallocs:stdgo.GoUInt64, frees:stdgo.GoUInt64}>):Void
```


 


[\(view code\)](<./Runtime.hx#L666>)


## class StackRecord


A StackRecord describes a single execution stack. 


```haxe
var stack0:stdgo.GoArray<stdgo.GoUIntptr>
```


stack trace for this record; ends at first 0 entry 


### StackRecord function new


```haxe
function new(?stack0:stdgo.GoArray<stdgo.GoUIntptr>):Void
```


 


[\(view code\)](<./Runtime.hx#L294>)


### StackRecord function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


Stack returns the stack trace associated with the record, a prefix of r.Stack0. 


[\(view code\)](<./Runtime.hx#L1544>)


## class StackRecord\_static\_extension


 


### StackRecord\_static\_extension function stack


```haxe
function stack():stdgo.Slice<stdgo.GoUIntptr>
```


Stack returns the stack trace associated with the record, a prefix of r.Stack0. 


[\(view code\)](<./Runtime.hx#L1544>)


## class TypeAssertionError


A TypeAssertionError explains a failed type assertion. 


### TypeAssertionError function new


```haxe
function new():Void
```


 


[\(view code\)](<./Runtime.hx#L275>)


### TypeAssertionError function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Runtime.hx#L1508>)


### TypeAssertionError function runtimeError


```haxe
function runtimeError():Void
```


 


[\(view code\)](<./Runtime.hx#L1512>)


## class TypeAssertionError\_static\_extension


 


### TypeAssertionError\_static\_extension function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Runtime.hx#L1508>)


### TypeAssertionError\_static\_extension function runtimeError


```haxe
function runtimeError():Void
```


 


[\(view code\)](<./Runtime.hx#L1512>)


# Typedefs


```haxe
import stdgo.runtime.*
```


## typedef T\_error


```haxe
typedef T_error = var a:{<__underlying__> | ():Void | {<haxe_doc>} | ():stdgo.GoString | ():stdgo.AnyInterface}
```


The Error interface identifies a run time error. 


