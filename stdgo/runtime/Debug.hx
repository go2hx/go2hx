package stdgo.runtime;
/**
    Package debug contains facilities for programs to debug themselves while
    they are running.
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract GCStats(stdgo._internal.runtime.debug.Debug.GCStats) from stdgo._internal.runtime.debug.Debug.GCStats to stdgo._internal.runtime.debug.Debug.GCStats {

}
@:forward @:forward.new abstract BuildInfo(stdgo._internal.runtime.debug.Debug.BuildInfo) from stdgo._internal.runtime.debug.Debug.BuildInfo to stdgo._internal.runtime.debug.Debug.BuildInfo {

}
@:forward @:forward.new abstract Module(stdgo._internal.runtime.debug.Debug.Module) from stdgo._internal.runtime.debug.Debug.Module to stdgo._internal.runtime.debug.Debug.Module {

}
@:forward @:forward.new abstract BuildSetting(stdgo._internal.runtime.debug.Debug.BuildSetting) from stdgo._internal.runtime.debug.Debug.BuildSetting to stdgo._internal.runtime.debug.Debug.BuildSetting {

}
/**
    ReadGCStats reads statistics about garbage collection into stats.
    The number of entries in the pause history is system-dependent;
    stats.Pause slice will be reused if large enough, reallocated otherwise.
    ReadGCStats may use the full capacity of the stats.Pause slice.
    If stats.PauseQuantiles is non-empty, ReadGCStats fills it with quantiles
    summarizing the distribution of pause time. For example, if
    len(stats.PauseQuantiles) is 5, it will be filled with the minimum,
    25%, 50%, 75%, and maximum pause times.
**/
function readGCStats(stats:GCStats):Void {
        stdgo._internal.runtime.debug.Debug.readGCStats(stats);
    }
/**
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
**/
function setGCPercent(percent:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.debug.Debug.setGCPercent(percent);
    }
/**
    FreeOSMemory forces a garbage collection followed by an
    attempt to return as much memory to the operating system
    as possible. (Even if this is not called, the runtime gradually
    returns memory to the operating system in a background task.)
**/
function freeOSMemory():Void {
        stdgo._internal.runtime.debug.Debug.freeOSMemory();
    }
/**
    SetMaxStack sets the maximum amount of memory that
    can be used by a single goroutine stack.
    If any goroutine exceeds this limit while growing its stack,
    the program crashes.
    SetMaxStack returns the previous setting.
    The initial setting is 1 GB on 64-bit systems, 250 MB on 32-bit systems.
    There may be a system-imposed maximum stack limit regardless
    of the value provided to SetMaxStack.
    
    SetMaxStack is useful mainly for limiting the damage done by
    goroutines that enter an infinite recursion. It only limits future
    stack growth.
**/
function setMaxStack(bytes:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.debug.Debug.setMaxStack(bytes);
    }
/**
    SetMaxThreads sets the maximum number of operating system
    threads that the Go program can use. If it attempts to use more than
    this many, the program crashes.
    SetMaxThreads returns the previous setting.
    The initial setting is 10,000 threads.
    
    The limit controls the number of operating system threads, not the number
    of goroutines. A Go program creates a new thread only when a goroutine
    is ready to run but all the existing threads are blocked in system calls, cgo calls,
    or are locked to other goroutines due to use of runtime.LockOSThread.
    
    SetMaxThreads is useful mainly for limiting the damage done by
    programs that create an unbounded number of threads. The idea is
    to take down the program before it takes down the operating system.
**/
function setMaxThreads(threads:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.debug.Debug.setMaxThreads(threads);
    }
/**
    SetPanicOnFault controls the runtime's behavior when a program faults
    at an unexpected (non-nil) address. Such faults are typically caused by
    bugs such as runtime memory corruption, so the default response is to crash
    the program. Programs working with memory-mapped files or unsafe
    manipulation of memory may cause faults at non-nil addresses in less
    dramatic situations; SetPanicOnFault allows such programs to request
    that the runtime trigger only a panic, not a crash.
    The runtime.Error that the runtime panics with may have an additional method:
    
    	Addr() uintptr
    
    If that method exists, it returns the memory address which triggered the fault.
    The results of Addr are best-effort and the veracity of the result
    may depend on the platform.
    SetPanicOnFault applies only to the current goroutine.
    It returns the previous setting.
**/
function setPanicOnFault(enabled:Bool):Bool {
        return stdgo._internal.runtime.debug.Debug.setPanicOnFault(enabled);
    }
/**
    WriteHeapDump writes a description of the heap and the objects in
    it to the given file descriptor.
    
    WriteHeapDump suspends the execution of all goroutines until the heap
    dump is completely written.  Thus, the file descriptor must not be
    connected to a pipe or socket whose other end is in the same Go
    process; instead, use a temporary file or network socket.
    
    The heap dump format is defined at https://golang.org/s/go15heapdump.
**/
function writeHeapDump(fd:stdgo.GoUIntptr):Void {
        stdgo._internal.runtime.debug.Debug.writeHeapDump(fd);
    }
/**
    SetTraceback sets the amount of detail printed by the runtime in
    the traceback it prints before exiting due to an unrecovered panic
    or an internal runtime error.
    The level argument takes the same values as the GOTRACEBACK
    environment variable. For example, SetTraceback("all") ensure
    that the program prints all goroutines when it crashes.
    See the package runtime documentation for details.
    If SetTraceback is called with a level lower than that of the
    environment variable, the call is ignored.
**/
function setTraceback(level:String):Void {
        stdgo._internal.runtime.debug.Debug.setTraceback(level);
    }
/**
    SetMemoryLimit provides the runtime with a soft memory limit.
    
    The runtime undertakes several processes to try to respect this
    memory limit, including adjustments to the frequency of garbage
    collections and returning memory to the underlying system more
    aggressively. This limit will be respected even if GOGC=off (or,
    if SetGCPercent(-1) is executed).
    
    The input limit is provided as bytes, and includes all memory
    mapped, managed, and not released by the Go runtime. Notably, it
    does not account for space used by the Go binary and memory
    external to Go, such as memory managed by the underlying system
    on behalf of the process, or memory managed by non-Go code inside
    the same process. Examples of excluded memory sources include: OS
    kernel memory held on behalf of the process, memory allocated by
    C code, and memory mapped by syscall.Mmap (because it is not
    managed by the Go runtime).
    
    More specifically, the following expression accurately reflects
    the value the runtime attempts to maintain as the limit:
    
    	runtime.MemStats.Sys - runtime.MemStats.HeapReleased
    
    or in terms of the runtime/metrics package:
    
    	/memory/classes/total:bytes - /memory/classes/heap/released:bytes
    
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
    use-cases and scenarios.
    
    The initial setting is math.MaxInt64 unless the GOMEMLIMIT
    environment variable is set, in which case it provides the initial
    setting. GOMEMLIMIT is a numeric value in bytes with an optional
    unit suffix. The supported suffixes include B, KiB, MiB, GiB, and
    TiB. These suffixes represent quantities of bytes as defined by
    the IEC 80000-13 standard. That is, they are based on powers of
    two: KiB means 2^10 bytes, MiB means 2^20 bytes, and so on.
    
    SetMemoryLimit returns the previously set memory limit.
    A negative input does not adjust the limit, and allows for
    retrieval of the currently set memory limit.
**/
function setMemoryLimit(limit:haxe.Int64):haxe.Int64 {
        return stdgo._internal.runtime.debug.Debug.setMemoryLimit(limit);
    }
/**
    ReadBuildInfo returns the build information embedded
    in the running binary. The information is available only
    in binaries built with module support.
**/
function readBuildInfo():stdgo.Tuple<BuildInfo, Bool> {
        return {
            final obj = stdgo._internal.runtime.debug.Debug.readBuildInfo();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function parseBuildInfo(data:String):stdgo.Tuple<BuildInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.runtime.debug.Debug.parseBuildInfo(data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    PrintStack prints to standard error the stack trace returned by runtime.Stack.
**/
function printStack():Void {
        stdgo._internal.runtime.debug.Debug.printStack();
    }
/**
    Stack returns a formatted stack trace of the goroutine that calls it.
    It calls runtime.Stack with a large enough buffer to capture the entire trace.
**/
function stack():Array<StdTypes.Int> {
        return [for (i in stdgo._internal.runtime.debug.Debug.stack()) i];
    }
@:forward @:forward.new abstract BuildInfo_asInterface(stdgo._internal.runtime.debug.Debug.BuildInfo_asInterface) from stdgo._internal.runtime.debug.Debug.BuildInfo_asInterface to stdgo._internal.runtime.debug.Debug.BuildInfo_asInterface {

}
@:forward @:forward.new abstract BuildInfo_static_extension(stdgo._internal.runtime.debug.Debug.BuildInfo_static_extension) from stdgo._internal.runtime.debug.Debug.BuildInfo_static_extension to stdgo._internal.runtime.debug.Debug.BuildInfo_static_extension {

}
