package stdgo.runtime;
/**
    /|*
    Package runtime contains operations that interact with Go's runtime system,
    such as functions to control goroutines. It also includes the low-level type information
    used by the reflect package; see reflect's documentation for the programmable
    interface to the run-time type system.
    
    # Environment Variables
    
    The following environment variables ($name or %name%, depending on the host
    operating system) control the run-time behavior of Go programs. The meanings
    and use may change from release to release.
    
    The GOGC variable sets the initial garbage collection target percentage.
    A collection is triggered when the ratio of freshly allocated data to live data
    remaining after the previous collection reaches this percentage. The default
    is GOGC=100. Setting GOGC=off disables the garbage collector entirely.
    [runtime/debug.SetGCPercent] allows changing this percentage at run time.
    
    The GOMEMLIMIT variable sets a soft memory limit for the runtime. This memory limit
    includes the Go heap and all other memory managed by the runtime, and excludes
    external memory sources such as mappings of the binary itself, memory managed in
    other languages, and memory held by the operating system on behalf of the Go
    program. GOMEMLIMIT is a numeric value in bytes with an optional unit suffix.
    The supported suffixes include B, KiB, MiB, GiB, and TiB. These suffixes
    represent quantities of bytes as defined by the IEC 80000-13 standard. That is,
    they are based on powers of two: KiB means 2^10 bytes, MiB means 2^20 bytes,
    and so on. The default setting is math.MaxInt64, which effectively disables the
    memory limit. [runtime/debug.SetMemoryLimit] allows changing this limit at run
    time.
    
    The GODEBUG variable controls debugging variables within the runtime.
    It is a comma-separated list of name=val pairs setting these named variables:
    
    	allocfreetrace: setting allocfreetrace=1 causes every allocation to be
    	profiled and a stack trace printed on each object's allocation and free.
    
    	clobberfree: setting clobberfree=1 causes the garbage collector to
    	clobber the memory content of an object with bad content when it frees
    	the object.
    
    	cpu.*: cpu.all=off disables the use of all optional instruction set extensions.
    	cpu.extension=off disables use of instructions from the specified instruction set extension.
    	extension is the lower case name for the instruction set extension such as sse41 or avx
    	as listed in internal/cpu package. As an example cpu.avx=off disables runtime detection
    	and thereby use of AVX instructions.
    
    	cgocheck: setting cgocheck=0 disables all checks for packages
    	using cgo to incorrectly pass Go pointers to non-Go code.
    	Setting cgocheck=1 (the default) enables relatively cheap
    	checks that may miss some errors. A more complete, but slow,
    	cgocheck mode can be enabled using GOEXPERIMENT (which
    	requires a rebuild), see https://pkg.go.dev/internal/goexperiment for details.
    
    	dontfreezetheworld: by default, the start of a fatal panic or throw
    	"freezes the world", preempting all threads to stop all running
    	goroutines, which makes it possible to traceback all goroutines, and
    	keeps their state close to the point of panic. Setting
    	dontfreezetheworld=1 disables this preemption, allowing goroutines to
    	continue executing during panic processing. Note that goroutines that
    	naturally enter the scheduler will still stop. This can be useful when
    	debugging the runtime scheduler, as freezetheworld perturbs scheduler
    	state and thus may hide problems.
    
    	efence: setting efence=1 causes the allocator to run in a mode
    	where each object is allocated on a unique page and addresses are
    	never recycled.
    
    	gccheckmark: setting gccheckmark=1 enables verification of the
    	garbage collector's concurrent mark phase by performing a
    	second mark pass while the world is stopped.  If the second
    	pass finds a reachable object that was not found by concurrent
    	mark, the garbage collector will panic.
    
    	gcpacertrace: setting gcpacertrace=1 causes the garbage collector to
    	print information about the internal state of the concurrent pacer.
    
    	gcshrinkstackoff: setting gcshrinkstackoff=1 disables moving goroutines
    	onto smaller stacks. In this mode, a goroutine's stack can only grow.
    
    	gcstoptheworld: setting gcstoptheworld=1 disables concurrent garbage collection,
    	making every garbage collection a stop-the-world event. Setting gcstoptheworld=2
    	also disables concurrent sweeping after the garbage collection finishes.
    
    	gctrace: setting gctrace=1 causes the garbage collector to emit a single line to standard
    	error at each collection, summarizing the amount of memory collected and the
    	length of the pause. The format of this line is subject to change. Included in
    	the explanation below is also the relevant runtime/metrics metric for each field.
    	Currently, it is:
    		gc # @#s #%: #+#+# ms clock, #+#/#/#+# ms cpu, #->#-># MB, # MB goal, # MB stacks, #MB globals, # P
    	where the fields are as follows:
    		gc #         the GC number, incremented at each GC
    		@#s          time in seconds since program start
    		#%           percentage of time spent in GC since program start
    		#+...+#      wall-clock/CPU times for the phases of the GC
    		#->#-># MB   heap size at GC start, at GC end, and live heap, or /gc/scan/heap:bytes
    		# MB goal    goal heap size, or /gc/heap/goal:bytes
    		# MB stacks  estimated scannable stack size, or /gc/scan/stack:bytes
    		# MB globals scannable global size, or /gc/scan/globals:bytes
    		# P          number of processors used, or /sched/gomaxprocs:threads
    	The phases are stop-the-world (STW) sweep termination, concurrent
    	mark and scan, and STW mark termination. The CPU times
    	for mark/scan are broken down in to assist time (GC performed in
    	line with allocation), background GC time, and idle GC time.
    	If the line ends with "(forced)", this GC was forced by a
    	runtime.GC() call.
    
    	harddecommit: setting harddecommit=1 causes memory that is returned to the OS to
    	also have protections removed on it. This is the only mode of operation on Windows,
    	but is helpful in debugging scavenger-related issues on other platforms. Currently,
    	only supported on Linux.
    
    	inittrace: setting inittrace=1 causes the runtime to emit a single line to standard
    	error for each package with init work, summarizing the execution time and memory
    	allocation. No information is printed for inits executed as part of plugin loading
    	and for packages without both user defined and compiler generated init work.
    	The format of this line is subject to change. Currently, it is:
    		init # @#ms, # ms clock, # bytes, # allocs
    	where the fields are as follows:
    		init #      the package name
    		@# ms       time in milliseconds when the init started since program start
    		# clock     wall-clock time for package initialization work
    		# bytes     memory allocated on the heap
    		# allocs    number of heap allocations
    
    	madvdontneed: setting madvdontneed=0 will use MADV_FREE
    	instead of MADV_DONTNEED on Linux when returning memory to the
    	kernel. This is more efficient, but means RSS numbers will
    	drop only when the OS is under memory pressure. On the BSDs and
    	Illumos/Solaris, setting madvdontneed=1 will use MADV_DONTNEED instead
    	of MADV_FREE. This is less efficient, but causes RSS numbers to drop
    	more quickly.
    
    	memprofilerate: setting memprofilerate=X will update the value of runtime.MemProfileRate.
    	When set to 0 memory profiling is disabled.  Refer to the description of
    	MemProfileRate for the default value.
    
    	pagetrace: setting pagetrace=/path/to/file will write out a trace of page events
    	that can be viewed, analyzed, and visualized using the x/debug/cmd/pagetrace tool.
    	Build your program with GOEXPERIMENT=pagetrace to enable this functionality. Do not
    	enable this functionality if your program is a setuid binary as it introduces a security
    	risk in that scenario. Currently not supported on Windows, plan9 or js/wasm. Setting this
    	option for some applications can produce large traces, so use with care.
    
    	invalidptr: invalidptr=1 (the default) causes the garbage collector and stack
    	copier to crash the program if an invalid pointer value (for example, 1)
    	is found in a pointer-typed location. Setting invalidptr=0 disables this check.
    	This should only be used as a temporary workaround to diagnose buggy code.
    	The real fix is to not store integers in pointer-typed locations.
    
    	sbrk: setting sbrk=1 replaces the memory allocator and garbage collector
    	with a trivial allocator that obtains memory from the operating system and
    	never reclaims any memory.
    
    	scavtrace: setting scavtrace=1 causes the runtime to emit a single line to standard
    	error, roughly once per GC cycle, summarizing the amount of work done by the
    	scavenger as well as the total amount of memory returned to the operating system
    	and an estimate of physical memory utilization. The format of this line is subject
    	to change, but currently it is:
    		scav # KiB work (bg), # KiB work (eager), # KiB total, #% util
    	where the fields are as follows:
    		# KiB work (bg)    the amount of memory returned to the OS in the background since
    		                   the last line
    		# KiB work (eager) the amount of memory returned to the OS eagerly since the last line
    		# KiB now          the amount of address space currently returned to the OS
    		#% util            the fraction of all unscavenged heap memory which is in-use
    	If the line ends with "(forced)", then scavenging was forced by a
    	debug.FreeOSMemory() call.
    
    	scheddetail: setting schedtrace=X and scheddetail=1 causes the scheduler to emit
    	detailed multiline info every X milliseconds, describing state of the scheduler,
    	processors, threads and goroutines.
    
    	schedtrace: setting schedtrace=X causes the scheduler to emit a single line to standard
    	error every X milliseconds, summarizing the scheduler state.
    
    	tracebackancestors: setting tracebackancestors=N extends tracebacks with the stacks at
    	which goroutines were created, where N limits the number of ancestor goroutines to
    	report. This also extends the information returned by runtime.Stack. Ancestor's goroutine
    	IDs will refer to the ID of the goroutine at the time of creation; it's possible for this
    	ID to be reused for another goroutine. Setting N to 0 will report no ancestry information.
    
    	tracefpunwindoff: setting tracefpunwindoff=1 forces the execution tracer to
    	use the runtime's default stack unwinder instead of frame pointer unwinding.
    	This increases tracer overhead, but could be helpful as a workaround or for
    	debugging unexpected regressions caused by frame pointer unwinding.
    
    	asyncpreemptoff: asyncpreemptoff=1 disables signal-based
    	asynchronous goroutine preemption. This makes some loops
    	non-preemptible for long periods, which may delay GC and
    	goroutine scheduling. This is useful for debugging GC issues
    	because it also disables the conservative stack scanning used
    	for asynchronously preempted goroutines.
    
    The net and net/http packages also refer to debugging variables in GODEBUG.
    See the documentation for those packages for details.
    
    The GOMAXPROCS variable limits the number of operating system threads that
    can execute user-level Go code simultaneously. There is no limit to the number of threads
    that can be blocked in system calls on behalf of Go code; those do not count against
    the GOMAXPROCS limit. This package's GOMAXPROCS function queries and changes
    the limit.
    
    The GORACE variable configures the race detector, for programs built using -race.
    See https://golang.org/doc/articles/race_detector.html for details.
    
    The GOTRACEBACK variable controls the amount of output generated when a Go
    program fails due to an unrecovered panic or an unexpected runtime condition.
    By default, a failure prints a stack trace for the current goroutine,
    eliding functions internal to the run-time system, and then exits with exit code 2.
    The failure prints stack traces for all goroutines if there is no current goroutine
    or the failure is internal to the run-time.
    GOTRACEBACK=none omits the goroutine stack traces entirely.
    GOTRACEBACK=single (the default) behaves as described above.
    GOTRACEBACK=all adds stack traces for all user-created goroutines.
    GOTRACEBACK=system is like “all” but adds stack frames for run-time functions
    and shows goroutines created internally by the run-time.
    GOTRACEBACK=crash is like “system” but crashes in an operating system-specific
    manner instead of exiting. For example, on Unix systems, the crash raises
    SIGABRT to trigger a core dump.
    GOTRACEBACK=wer is like “crash” but doesn't disable Windows Error Reporting (WER).
    For historical reasons, the GOTRACEBACK settings 0, 1, and 2 are synonyms for
    none, all, and system, respectively.
    The runtime/debug package's SetTraceback function allows increasing the
    amount of output at run time, but it cannot reduce the amount below that
    specified by the environment variable.
    See https://golang.org/pkg/runtime/debug/#SetTraceback.
    
    The GOARCH, GOOS, GOPATH, and GOROOT environment variables complete
    the set of Go environment variables. They influence the building of Go programs
    (see https://golang.org/cmd/go and https://golang.org/pkg/go/build).
    GOARCH, GOOS, and GOROOT are recorded at compile time and made available by
    constants or functions in this package, but they do not influence the execution
    of the run-time system.
    
    # Security
    
    On Unix platforms, Go's runtime system behaves slightly differently when a
    binary is setuid/setgid or executed with setuid/setgid-like properties, in order
    to prevent dangerous behaviors. On Linux this is determined by checking for the
    AT_SECURE flag in the auxiliary vector, on the BSDs and Solaris/Illumos it is
    determined by checking the issetugid syscall, and on AIX it is determined by
    checking if the uid/gid match the effective uid/gid.
    
    When the runtime determines the binary is setuid/setgid-like, it does three main
    things:
      - The standard input/output file descriptors (0, 1, 2) are checked to be open.
        If any of them are closed, they are opened pointing at /dev/null.
      - The value of the GOTRACEBACK environment variable is set to 'none'.
      - When a signal is received that terminates the program, or the program
        encounters an unrecoverable panic that would otherwise override the value
        of GOTRACEBACK, the goroutine stack, registers, and other memory related
        information are omitted.
    *|/
**/
private var __go2hxdoc__package : Bool;
final compiler : String = stdgo._internal.runtime.Runtime.compiler;
final goos : String = stdgo._internal.runtime.Runtime.goos;
final goarch : String = stdgo._internal.runtime.Runtime.goarch;
var memProfileRate(get, set) : Int;
function get_memProfileRate():Int return stdgo._internal.runtime.Runtime.memProfileRate;
function set_memProfileRate(v:Int):Int return stdgo._internal.runtime.Runtime.memProfileRate = v;
@:invalid typedef Error_static_extension = Dynamic;
typedef Error = stdgo._internal.runtime.Runtime.Error;
@:invalid typedef TypeAssertionError = Dynamic;
@:invalid typedef StackRecord = Dynamic;
@:invalid typedef MemProfileRecord = Dynamic;
@:invalid typedef BlockProfileRecord = Dynamic;
@:invalid typedef MemStats = Dynamic;
@:invalid typedef PanicNilError = Dynamic;
@:invalid typedef Pinner = Dynamic;
@:invalid typedef Frames = Dynamic;
@:invalid typedef Frame = Dynamic;
@:invalid typedef Func = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.runtime.Runtime.T__struct_0;
/**
    // SetCPUProfileRate sets the CPU profiling rate to hz samples per second.
    // If hz <= 0, SetCPUProfileRate turns off profiling.
    // If the profiler is on, the rate cannot be changed without first turning it off.
    //
    // Most clients should use the runtime/pprof package or
    // the testing package's -test.cpuprofile flag instead of calling
    // SetCPUProfileRate directly.
**/
inline function setCPUProfileRate(hz:Int):Void throw "not implemented";
/**
    // CPUProfile panics.
    // It formerly provided raw access to chunks of
    // a pprof-format profile generated by the runtime.
    // The details of generating that format have changed,
    // so this functionality has been removed.
    //
    // Deprecated: Use the runtime/pprof package,
    // or the handlers in the net/http/pprof package,
    // or the testing package's -test.cpuprofile flag instead.
**/
inline function cpuprofile():Array<Int> throw "not implemented";
/**
    // GOMAXPROCS sets the maximum number of CPUs that can be executing
    // simultaneously and returns the previous setting. It defaults to
    // the value of runtime.NumCPU. If n < 1, it does not change the current setting.
    // This call will go away when the scheduler improves.
**/
inline function gomaxprocs(n:Int):Int throw "not implemented";
/**
    // NumCPU returns the number of logical CPUs usable by the current process.
    //
    // The set of available CPUs is checked by querying the operating system
    // at process startup. Changes to operating system CPU allocation after
    // process startup are not reflected.
**/
inline function numCPU():Int throw "not implemented";
/**
    // NumCgoCall returns the number of cgo calls made by the current process.
**/
inline function numCgoCall():haxe.Int64 throw "not implemented";
/**
    // NumGoroutine returns the number of goroutines that currently exist.
**/
inline function numGoroutine():Int throw "not implemented";
/**
    // Caller reports file and line number information about function invocations on
    // the calling goroutine's stack. The argument skip is the number of stack frames
    // to ascend, with 0 identifying the caller of Caller.  (For historical reasons the
    // meaning of skip differs between Caller and Callers.) The return values report the
    // program counter, file name, and line number within the file of the corresponding
    // call. The boolean ok is false if it was not possible to recover the information.
**/
inline function caller(skip:Int):stdgo.Tuple.Tuple4<stdgo.GoUIntptr, String, Int, Bool> throw "not implemented";
/**
    // Callers fills the slice pc with the return program counters of function invocations
    // on the calling goroutine's stack. The argument skip is the number of stack frames
    // to skip before recording in pc, with 0 identifying the frame for Callers itself and
    // 1 identifying the caller of Callers.
    // It returns the number of entries written to pc.
    //
    // To translate these PCs into symbolic information such as function
    // names and line numbers, use CallersFrames. CallersFrames accounts
    // for inlined functions and adjusts the return program counters into
    // call program counters. Iterating over the returned slice of PCs
    // directly is discouraged, as is using FuncForPC on any of the
    // returned PCs, since these cannot account for inlining or return
    // program counter adjustment.
**/
inline function callers(skip:Int, pc:Array<stdgo.GoUIntptr>):Int throw "not implemented";
/**
    // GOROOT returns the root of the Go tree. It uses the
    // GOROOT environment variable, if set at process start,
    // or else the root used during the Go build.
**/
inline function goroot():String throw "not implemented";
/**
    // Version returns the Go tree's version string.
    // It is either the commit hash and date at the time of the build or,
    // when possible, a release tag like "go1.3".
**/
inline function version():String throw "not implemented";
/**
    // SetFinalizer sets the finalizer associated with obj to the provided
    // finalizer function. When the garbage collector finds an unreachable block
    // with an associated finalizer, it clears the association and runs
    // finalizer(obj) in a separate goroutine. This makes obj reachable again,
    // but now without an associated finalizer. Assuming that SetFinalizer
    // is not called again, the next time the garbage collector sees
    // that obj is unreachable, it will free obj.
    //
    // SetFinalizer(obj, nil) clears any finalizer associated with obj.
    //
    // The argument obj must be a pointer to an object allocated by calling
    // new, by taking the address of a composite literal, or by taking the
    // address of a local variable.
    // The argument finalizer must be a function that takes a single argument
    // to which obj's type can be assigned, and can have arbitrary ignored return
    // values. If either of these is not true, SetFinalizer may abort the
    // program.
    //
    // Finalizers are run in dependency order: if A points at B, both have
    // finalizers, and they are otherwise unreachable, only the finalizer
    // for A runs; once A is freed, the finalizer for B can run.
    // If a cyclic structure includes a block with a finalizer, that
    // cycle is not guaranteed to be garbage collected and the finalizer
    // is not guaranteed to run, because there is no ordering that
    // respects the dependencies.
    //
    // The finalizer is scheduled to run at some arbitrary time after the
    // program can no longer reach the object to which obj points.
    // There is no guarantee that finalizers will run before a program exits,
    // so typically they are useful only for releasing non-memory resources
    // associated with an object during a long-running program.
    // For example, an os.File object could use a finalizer to close the
    // associated operating system file descriptor when a program discards
    // an os.File without calling Close, but it would be a mistake
    // to depend on a finalizer to flush an in-memory I/O buffer such as a
    // bufio.Writer, because the buffer would not be flushed at program exit.
    //
    // It is not guaranteed that a finalizer will run if the size of *obj is
    // zero bytes, because it may share same address with other zero-size
    // objects in memory. See https://go.dev/ref/spec#Size_and_alignment_guarantees.
    //
    // It is not guaranteed that a finalizer will run for objects allocated
    // in initializers for package-level variables. Such objects may be
    // linker-allocated, not heap-allocated.
    //
    // Note that because finalizers may execute arbitrarily far into the future
    // after an object is no longer referenced, the runtime is allowed to perform
    // a space-saving optimization that batches objects together in a single
    // allocation slot. The finalizer for an unreferenced object in such an
    // allocation may never run if it always exists in the same batch as a
    // referenced object. Typically, this batching only happens for tiny
    // (on the order of 16 bytes or less) and pointer-free objects.
    //
    // A finalizer may run as soon as an object becomes unreachable.
    // In order to use finalizers correctly, the program must ensure that
    // the object is reachable until it is no longer required.
    // Objects stored in global variables, or that can be found by tracing
    // pointers from a global variable, are reachable. For other objects,
    // pass the object to a call of the KeepAlive function to mark the
    // last point in the function where the object must be reachable.
    //
    // For example, if p points to a struct, such as os.File, that contains
    // a file descriptor d, and p has a finalizer that closes that file
    // descriptor, and if the last use of p in a function is a call to
    // syscall.Write(p.d, buf, size), then p may be unreachable as soon as
    // the program enters syscall.Write. The finalizer may run at that moment,
    // closing p.d, causing syscall.Write to fail because it is writing to
    // a closed file descriptor (or, worse, to an entirely different
    // file descriptor opened by a different goroutine). To avoid this problem,
    // call KeepAlive(p) after the call to syscall.Write.
    //
    // A single goroutine runs all finalizers for a program, sequentially.
    // If a finalizer must run for a long time, it should do so by starting
    // a new goroutine.
    //
    // In the terminology of the Go memory model, a call
    // SetFinalizer(x, f) “synchronizes before” the finalization call f(x).
    // However, there is no guarantee that KeepAlive(x) or any other use of x
    // “synchronizes before” f(x), so in general a finalizer should use a mutex
    // or other synchronization mechanism if it needs to access mutable state in x.
    // For example, consider a finalizer that inspects a mutable field in x
    // that is modified from time to time in the main program before x
    // becomes unreachable and the finalizer is invoked.
    // The modifications in the main program and the inspection in the finalizer
    // need to use appropriate synchronization, such as mutexes or atomic updates,
    // to avoid read-write races.
**/
inline function setFinalizer(obj:stdgo.AnyInterface, finalizer:stdgo.AnyInterface):Void throw "not implemented";
/**
    // KeepAlive marks its argument as currently reachable.
    // This ensures that the object is not freed, and its finalizer is not run,
    // before the point in the program where KeepAlive is called.
    //
    // A very simplified example showing where KeepAlive is required:
    //
    //	type File struct { d int }
    //	d, err := syscall.Open("/file/path", syscall.O_RDONLY, 0)
    //	// ... do something if err != nil ...
    //	p := &File{d}
    //	runtime.SetFinalizer(p, func(p *File) { syscall.Close(p.d) })
    //	var buf [10]byte
    //	n, err := syscall.Read(p.d, buf[:])
    //	// Ensure p is not finalized until Read returns.
    //	runtime.KeepAlive(p)
    //	// No more uses of p after this point.
    //
    // Without the KeepAlive call, the finalizer could run at the start of
    // syscall.Read, closing the file descriptor before syscall.Read makes
    // the actual system call.
    //
    // Note: KeepAlive should only be used to prevent finalizers from
    // running prematurely. In particular, when used with unsafe.Pointer,
    // the rules for valid uses of unsafe.Pointer still apply.
**/
inline function keepAlive(x:stdgo.AnyInterface):Void throw "not implemented";
/**
    // GC runs a garbage collection and blocks the caller until the
    // garbage collection is complete. It may also block the entire
    // program.
**/
inline function gc():Void throw "not implemented";
/**
    // SetBlockProfileRate controls the fraction of goroutine blocking events
    // that are reported in the blocking profile. The profiler aims to sample
    // an average of one blocking event per rate nanoseconds spent blocked.
    //
    // To include every blocking event in the profile, pass rate = 1.
    // To turn off profiling entirely, pass rate <= 0.
**/
inline function setBlockProfileRate(rate:Int):Void throw "not implemented";
/**
    // SetMutexProfileFraction controls the fraction of mutex contention events
    // that are reported in the mutex profile. On average 1/rate events are
    // reported. The previous rate is returned.
    //
    // To turn off profiling entirely, pass rate 0.
    // To just read the current rate, pass rate < 0.
    // (For n>1 the details of sampling may change.)
**/
inline function setMutexProfileFraction(rate:Int):Int throw "not implemented";
/**
    // MemProfile returns a profile of memory allocated and freed per allocation
    // site.
    //
    // MemProfile returns n, the number of records in the current memory profile.
    // If len(p) >= n, MemProfile copies the profile into p and returns n, true.
    // If len(p) < n, MemProfile does not change p and returns n, false.
    //
    // If inuseZero is true, the profile includes allocation records
    // where r.AllocBytes > 0 but r.AllocBytes == r.FreeBytes.
    // These are sites where memory was allocated, but it has all
    // been released back to the runtime.
    //
    // The returned profile may be up to two garbage collection cycles old.
    // This is to avoid skewing the profile toward allocations; because
    // allocations happen in real time but frees are delayed until the garbage
    // collector performs sweeping, the profile only accounts for allocations
    // that have had a chance to be freed by the garbage collector.
    //
    // Most clients should use the runtime/pprof package or
    // the testing package's -test.memprofile flag instead
    // of calling MemProfile directly.
**/
inline function memProfile(p:Array<MemProfileRecord>, inuseZero:Bool):stdgo.Tuple<Int, Bool> throw "not implemented";
/**
    // BlockProfile returns n, the number of records in the current blocking profile.
    // If len(p) >= n, BlockProfile copies the profile into p and returns n, true.
    // If len(p) < n, BlockProfile does not change p and returns n, false.
    //
    // Most clients should use the runtime/pprof package or
    // the testing package's -test.blockprofile flag instead
    // of calling BlockProfile directly.
**/
inline function blockProfile(p:Array<BlockProfileRecord>):stdgo.Tuple<Int, Bool> throw "not implemented";
/**
    // MutexProfile returns n, the number of records in the current mutex profile.
    // If len(p) >= n, MutexProfile copies the profile into p and returns n, true.
    // Otherwise, MutexProfile does not change p, and returns n, false.
    //
    // Most clients should use the runtime/pprof package
    // instead of calling MutexProfile directly.
**/
inline function mutexProfile(p:Array<BlockProfileRecord>):stdgo.Tuple<Int, Bool> throw "not implemented";
/**
    // ThreadCreateProfile returns n, the number of records in the thread creation profile.
    // If len(p) >= n, ThreadCreateProfile copies the profile into p and returns n, true.
    // If len(p) < n, ThreadCreateProfile does not change p and returns n, false.
    //
    // Most clients should use the runtime/pprof package instead
    // of calling ThreadCreateProfile directly.
**/
inline function threadCreateProfile(p:Array<StackRecord>):stdgo.Tuple<Int, Bool> throw "not implemented";
/**
    // GoroutineProfile returns n, the number of records in the active goroutine stack profile.
    // If len(p) >= n, GoroutineProfile copies the profile into p and returns n, true.
    // If len(p) < n, GoroutineProfile does not change p and returns n, false.
    //
    // Most clients should use the runtime/pprof package instead
    // of calling GoroutineProfile directly.
**/
inline function goroutineProfile(p:Array<StackRecord>):stdgo.Tuple<Int, Bool> throw "not implemented";
/**
    // Stack formats a stack trace of the calling goroutine into buf
    // and returns the number of bytes written to buf.
    // If all is true, Stack formats stack traces of all other goroutines
    // into buf after the trace for the current goroutine.
**/
inline function stack(buf:Array<Int>, all:Bool):Int throw "not implemented";
/**
    // ReadMemStats populates m with memory allocator statistics.
    //
    // The returned memory allocator statistics are up to date as of the
    // call to ReadMemStats. This is in contrast with a heap profile,
    // which is a snapshot as of the most recently completed garbage
    // collection cycle.
**/
inline function readMemStats(m:MemStats):Void throw "not implemented";
/**
    // Goexit terminates the goroutine that calls it. No other goroutine is affected.
    // Goexit runs all deferred calls before terminating the goroutine. Because Goexit
    // is not a panic, any recover calls in those deferred functions will return nil.
    //
    // Calling Goexit from the main goroutine terminates that goroutine
    // without func main returning. Since func main has not returned,
    // the program continues execution of other goroutines.
    // If all other goroutines exit, the program crashes.
**/
inline function goexit():Void throw "not implemented";
/**
    // Gosched yields the processor, allowing other goroutines to run. It does not
    // suspend the current goroutine, so execution resumes automatically.
    //
    //go:nosplit
**/
inline function gosched():Void throw "not implemented";
/**
    // Breakpoint executes a breakpoint trap.
**/
inline function breakpoint():Void throw "not implemented";
/**
    // LockOSThread wires the calling goroutine to its current operating system thread.
    // The calling goroutine will always execute in that thread,
    // and no other goroutine will execute in it,
    // until the calling goroutine has made as many calls to
    // UnlockOSThread as to LockOSThread.
    // If the calling goroutine exits without unlocking the thread,
    // the thread will be terminated.
    //
    // All init functions are run on the startup thread. Calling LockOSThread
    // from an init function will cause the main function to be invoked on
    // that thread.
    //
    // A goroutine should call LockOSThread before calling OS services or
    // non-Go library functions that depend on per-thread state.
    //
    //go:nosplit
**/
inline function lockOSThread():Void throw "not implemented";
/**
    // UnlockOSThread undoes an earlier call to LockOSThread.
    // If this drops the number of active LockOSThread calls on the
    // calling goroutine to zero, it unwires the calling goroutine from
    // its fixed operating system thread.
    // If there are no active LockOSThread calls, this is a no-op.
    //
    // Before calling UnlockOSThread, the caller must ensure that the OS
    // thread is suitable for running other goroutines. If the caller made
    // any permanent changes to the state of the thread that would affect
    // other goroutines, it should not call this function and thus leave
    // the goroutine locked to the OS thread until the goroutine (and
    // hence the thread) exits.
    //
    //go:nosplit
**/
inline function unlockOSThread():Void throw "not implemented";
/**
    // CallersFrames takes a slice of PC values returned by Callers and
    // prepares to return function/file/line information.
    // Do not change the slice until you are done with the Frames.
**/
inline function callersFrames(callers:Array<stdgo.GoUIntptr>):Frames throw "not implemented";
/**
    // FuncForPC returns a *Func describing the function that contains the
    // given program counter address, or else nil.
    //
    // If pc represents multiple functions because of inlining, it returns
    // the *Func describing the innermost function, but with an entry of
    // the outermost function.
**/
inline function funcForPC(pc:stdgo.GoUIntptr):Func throw "not implemented";
/**
    // StartTrace enables tracing for the current process.
    // While tracing, the data will be buffered and available via ReadTrace.
    // StartTrace returns an error if tracing is already enabled.
    // Most clients should use the runtime/trace package or the testing package's
    // -test.trace flag instead of calling StartTrace directly.
**/
inline function startTrace():stdgo.Error throw "not implemented";
/**
    // StopTrace stops tracing, if it was previously enabled.
    // StopTrace only returns after all the reads for the trace have completed.
**/
inline function stopTrace():Void throw "not implemented";
/**
    // ReadTrace returns the next chunk of binary tracing data, blocking until data
    // is available. If tracing is turned off and all the data accumulated while it
    // was on has been returned, ReadTrace returns nil. The caller must copy the
    // returned data before calling ReadTrace again.
    // ReadTrace must be called from one goroutine at a time.
**/
inline function readTrace():Array<Int> throw "not implemented";
/**
    // SetCgoTraceback records three C functions to use to gather
    // traceback information from C code and to convert that traceback
    // information into symbolic information. These are used when printing
    // stack traces for a program that uses cgo.
    //
    // The traceback and context functions may be called from a signal
    // handler, and must therefore use only async-signal safe functions.
    // The symbolizer function may be called while the program is
    // crashing, and so must be cautious about using memory.  None of the
    // functions may call back into Go.
    //
    // The context function will be called with a single argument, a
    // pointer to a struct:
    //
    //	struct {
    //		Context uintptr
    //	}
    //
    // In C syntax, this struct will be
    //
    //	struct {
    //		uintptr_t Context;
    //	};
    //
    // If the Context field is 0, the context function is being called to
    // record the current traceback context. It should record in the
    // Context field whatever information is needed about the current
    // point of execution to later produce a stack trace, probably the
    // stack pointer and PC. In this case the context function will be
    // called from C code.
    //
    // If the Context field is not 0, then it is a value returned by a
    // previous call to the context function. This case is called when the
    // context is no longer needed; that is, when the Go code is returning
    // to its C code caller. This permits the context function to release
    // any associated resources.
    //
    // While it would be correct for the context function to record a
    // complete a stack trace whenever it is called, and simply copy that
    // out in the traceback function, in a typical program the context
    // function will be called many times without ever recording a
    // traceback for that context. Recording a complete stack trace in a
    // call to the context function is likely to be inefficient.
    //
    // The traceback function will be called with a single argument, a
    // pointer to a struct:
    //
    //	struct {
    //		Context    uintptr
    //		SigContext uintptr
    //		Buf        *uintptr
    //		Max        uintptr
    //	}
    //
    // In C syntax, this struct will be
    //
    //	struct {
    //		uintptr_t  Context;
    //		uintptr_t  SigContext;
    //		uintptr_t* Buf;
    //		uintptr_t  Max;
    //	};
    //
    // The Context field will be zero to gather a traceback from the
    // current program execution point. In this case, the traceback
    // function will be called from C code.
    //
    // Otherwise Context will be a value previously returned by a call to
    // the context function. The traceback function should gather a stack
    // trace from that saved point in the program execution. The traceback
    // function may be called from an execution thread other than the one
    // that recorded the context, but only when the context is known to be
    // valid and unchanging. The traceback function may also be called
    // deeper in the call stack on the same thread that recorded the
    // context. The traceback function may be called multiple times with
    // the same Context value; it will usually be appropriate to cache the
    // result, if possible, the first time this is called for a specific
    // context value.
    //
    // If the traceback function is called from a signal handler on a Unix
    // system, SigContext will be the signal context argument passed to
    // the signal handler (a C ucontext_t* cast to uintptr_t). This may be
    // used to start tracing at the point where the signal occurred. If
    // the traceback function is not called from a signal handler,
    // SigContext will be zero.
    //
    // Buf is where the traceback information should be stored. It should
    // be PC values, such that Buf[0] is the PC of the caller, Buf[1] is
    // the PC of that function's caller, and so on.  Max is the maximum
    // number of entries to store.  The function should store a zero to
    // indicate the top of the stack, or that the caller is on a different
    // stack, presumably a Go stack.
    //
    // Unlike runtime.Callers, the PC values returned should, when passed
    // to the symbolizer function, return the file/line of the call
    // instruction.  No additional subtraction is required or appropriate.
    //
    // On all platforms, the traceback function is invoked when a call from
    // Go to C to Go requests a stack trace. On linux/amd64, linux/ppc64le,
    // linux/arm64, and freebsd/amd64, the traceback function is also invoked
    // when a signal is received by a thread that is executing a cgo call.
    // The traceback function should not make assumptions about when it is
    // called, as future versions of Go may make additional calls.
    //
    // The symbolizer function will be called with a single argument, a
    // pointer to a struct:
    //
    //	struct {
    //		PC      uintptr // program counter to fetch information for
    //		File    *byte   // file name (NUL terminated)
    //		Lineno  uintptr // line number
    //		Func    *byte   // function name (NUL terminated)
    //		Entry   uintptr // function entry point
    //		More    uintptr // set non-zero if more info for this PC
    //		Data    uintptr // unused by runtime, available for function
    //	}
    //
    // In C syntax, this struct will be
    //
    //	struct {
    //		uintptr_t PC;
    //		char*     File;
    //		uintptr_t Lineno;
    //		char*     Func;
    //		uintptr_t Entry;
    //		uintptr_t More;
    //		uintptr_t Data;
    //	};
    //
    // The PC field will be a value returned by a call to the traceback
    // function.
    //
    // The first time the function is called for a particular traceback,
    // all the fields except PC will be 0. The function should fill in the
    // other fields if possible, setting them to 0/nil if the information
    // is not available. The Data field may be used to store any useful
    // information across calls. The More field should be set to non-zero
    // if there is more information for this PC, zero otherwise. If More
    // is set non-zero, the function will be called again with the same
    // PC, and may return different information (this is intended for use
    // with inlined functions). If More is zero, the function will be
    // called with the next PC value in the traceback. When the traceback
    // is complete, the function will be called once more with PC set to
    // zero; this may be used to free any information. Each call will
    // leave the fields of the struct set to the same values they had upon
    // return, except for the PC field when the More field is zero. The
    // function must not keep a copy of the struct pointer between calls.
    //
    // When calling SetCgoTraceback, the version argument is the version
    // number of the structs that the functions expect to receive.
    // Currently this must be zero.
    //
    // The symbolizer function may be nil, in which case the results of
    // the traceback function will be displayed as numbers. If the
    // traceback function is nil, the symbolizer function will never be
    // called. The context function may be nil, in which case the
    // traceback function will only be called with the context field set
    // to zero.  If the context function is nil, then calls from Go to C
    // to Go will not show a traceback for the C portion of the call stack.
    //
    // SetCgoTraceback should be called only once, ideally from an init function.
**/
inline function setCgoTraceback(version:Int, traceback:stdgo._internal.unsafe.Unsafe.UnsafePointer, context:stdgo._internal.unsafe.Unsafe.UnsafePointer, symbolizer:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "not implemented";
@:invalid typedef TypeAssertionError_asInterface = Dynamic;
@:invalid typedef TypeAssertionError_static_extension = Dynamic;
@:invalid typedef StackRecord_asInterface = Dynamic;
@:invalid typedef StackRecord_static_extension = Dynamic;
@:invalid typedef MemProfileRecord_asInterface = Dynamic;
@:invalid typedef MemProfileRecord_static_extension = Dynamic;
@:invalid typedef BlockProfileRecord_asInterface = Dynamic;
@:invalid typedef BlockProfileRecord_static_extension = Dynamic;
@:invalid typedef PanicNilError_asInterface = Dynamic;
@:invalid typedef PanicNilError_static_extension = Dynamic;
@:invalid typedef Pinner_asInterface = Dynamic;
@:invalid typedef Pinner_static_extension = Dynamic;
@:invalid typedef Frames_asInterface = Dynamic;
@:invalid typedef Frames_static_extension = Dynamic;
@:invalid typedef Func_asInterface = Dynamic;
@:invalid typedef Func_static_extension = Dynamic;
