package stdgo.runtime.debug;
/**
    // Package debug contains facilities for programs to debug themselves while
    // they are running.
**/
private var __go2hxdoc__package : Bool;
/**
    // GCStats collect information about recent garbage collections.
    
    
**/
@:structInit class GCStats {
    public var lastGC : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public var numGC : stdgo.GoInt64 = 0;
    public var pauseTotal : stdgo.time.Time.Duration = ((0 : stdgo.GoInt64) : stdgo.time.Time.Duration);
    public var pause : stdgo.Slice<stdgo.time.Time.Duration> = (null : stdgo.Slice<stdgo.time.Time.Duration>);
    public var pauseEnd : stdgo.Slice<stdgo.time.Time.Time> = (null : stdgo.Slice<stdgo.time.Time.Time>);
    public var pauseQuantiles : stdgo.Slice<stdgo.time.Time.Duration> = (null : stdgo.Slice<stdgo.time.Time.Duration>);
    public function new(?lastGC:stdgo.time.Time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:stdgo.time.Time.Duration, ?pause:stdgo.Slice<stdgo.time.Time.Duration>, ?pauseEnd:stdgo.Slice<stdgo.time.Time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo.time.Time.Duration>) {
        if (lastGC != null) this.lastGC = lastGC;
        if (numGC != null) this.numGC = numGC;
        if (pauseTotal != null) this.pauseTotal = pauseTotal;
        if (pause != null) this.pause = pause;
        if (pauseEnd != null) this.pauseEnd = pauseEnd;
        if (pauseQuantiles != null) this.pauseQuantiles = pauseQuantiles;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GCStats(lastGC, numGC, pauseTotal, pause, pauseEnd, pauseQuantiles);
    }
}
/**
    // BuildInfo represents the build information read from a Go binary.
    
    
**/
@:structInit @:using(stdgo.runtime.debug.Debug.BuildInfo_static_extension) class BuildInfo {
    /**
        // GoVersion is the version of the Go toolchain that built the binary
        // (for example, "go1.19.2").
    **/
    public var goVersion : stdgo.GoString = "";
    /**
        // Path is the package path of the main package for the binary
        // (for example, "golang.org/x/tools/cmd/stringer").
    **/
    public var path : stdgo.GoString = "";
    /**
        // Main describes the module that contains the main package for the binary.
    **/
    public var _Main : stdgo.runtime.debug.Debug.Module = ({} : stdgo.runtime.debug.Debug.Module);
    /**
        // Deps describes all the dependency modules, both direct and indirect,
        // that contributed packages to the build of this binary.
    **/
    public var deps : stdgo.Slice<stdgo.Ref<stdgo.runtime.debug.Debug.Module>> = (null : stdgo.Slice<stdgo.Ref<stdgo.runtime.debug.Debug.Module>>);
    /**
        // Settings describes the build settings used to build the binary.
    **/
    public var settings : stdgo.Slice<stdgo.runtime.debug.Debug.BuildSetting> = (null : stdgo.Slice<stdgo.runtime.debug.Debug.BuildSetting>);
    public function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?_Main:stdgo.runtime.debug.Debug.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo.runtime.debug.Debug.Module>>, ?settings:stdgo.Slice<stdgo.runtime.debug.Debug.BuildSetting>) {
        if (goVersion != null) this.goVersion = goVersion;
        if (path != null) this.path = path;
        if (_Main != null) this._Main = _Main;
        if (deps != null) this.deps = deps;
        if (settings != null) this.settings = settings;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BuildInfo(goVersion, path, _Main, deps, settings);
    }
}
/**
    // A Module describes a single module included in a build.
    
    
**/
@:structInit class Module {
    public var path : stdgo.GoString = "";
    public var version : stdgo.GoString = "";
    public var sum : stdgo.GoString = "";
    public var replace : stdgo.Ref<stdgo.runtime.debug.Debug.Module> = (null : stdgo.Ref<stdgo.runtime.debug.Debug.Module>);
    public function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo.runtime.debug.Debug.Module>) {
        if (path != null) this.path = path;
        if (version != null) this.version = version;
        if (sum != null) this.sum = sum;
        if (replace != null) this.replace = replace;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Module(path, version, sum, replace);
    }
}
/**
    // A BuildSetting is a key-value pair describing one setting that influenced a build.
    //
    // Defined keys include:
    //
    //   - -buildmode: the buildmode flag used (typically "exe")
    //   - -compiler: the compiler toolchain flag used (typically "gc")
    //   - CGO_ENABLED: the effective CGO_ENABLED environment variable
    //   - CGO_CFLAGS: the effective CGO_CFLAGS environment variable
    //   - CGO_CPPFLAGS: the effective CGO_CPPFLAGS environment variable
    //   - CGO_CXXFLAGS:  the effective CGO_CPPFLAGS environment variable
    //   - CGO_LDFLAGS: the effective CGO_CPPFLAGS environment variable
    //   - GOARCH: the architecture target
    //   - GOAMD64/GOARM/GO386/etc: the architecture feature level for GOARCH
    //   - GOOS: the operating system target
    //   - vcs: the version control system for the source tree where the build ran
    //   - vcs.revision: the revision identifier for the current commit or checkout
    //   - vcs.time: the modification time associated with vcs.revision, in RFC3339 format
    //   - vcs.modified: true or false indicating whether the source tree had local modifications
    
    
**/
@:structInit class BuildSetting {
    /**
        // Key and Value describe the build setting.
        // Key must not contain an equals sign, space, tab, or newline.
        // Value must not contain newlines ('\n').
    **/
    public var key : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public function new(?key:stdgo.GoString, ?value:stdgo.GoString) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BuildSetting(key, value);
    }
}
/**
    // ReadGCStats reads statistics about garbage collection into stats.
    // The number of entries in the pause history is system-dependent;
    // stats.Pause slice will be reused if large enough, reallocated otherwise.
    // ReadGCStats may use the full capacity of the stats.Pause slice.
    // If stats.PauseQuantiles is non-empty, ReadGCStats fills it with quantiles
    // summarizing the distribution of pause time. For example, if
    // len(stats.PauseQuantiles) is 5, it will be filled with the minimum,
    // 25%, 50%, 75%, and maximum pause times.
**/
function readGCStats(_stats:stdgo.Ref<GCStats>):Void throw ":runtime.debug.readGCStats is not yet implemented";
/**
    // SetGCPercent sets the garbage collection target percentage:
    // a collection is triggered when the ratio of freshly allocated data
    // to live data remaining after the previous collection reaches this percentage.
    // SetGCPercent returns the previous setting.
    // The initial setting is the value of the GOGC environment variable
    // at startup, or 100 if the variable is not set.
    // This setting may be effectively reduced in order to maintain a memory
    // limit.
    // A negative percentage effectively disables garbage collection, unless
    // the memory limit is reached.
    // See SetMemoryLimit for more details.
**/
function setGCPercent(_percent:stdgo.GoInt):stdgo.GoInt throw ":runtime.debug.setGCPercent is not yet implemented";
/**
    // FreeOSMemory forces a garbage collection followed by an
    // attempt to return as much memory to the operating system
    // as possible. (Even if this is not called, the runtime gradually
    // returns memory to the operating system in a background task.)
**/
function freeOSMemory():Void throw ":runtime.debug.freeOSMemory is not yet implemented";
/**
    // SetMaxStack sets the maximum amount of memory that
    // can be used by a single goroutine stack.
    // If any goroutine exceeds this limit while growing its stack,
    // the program crashes.
    // SetMaxStack returns the previous setting.
    // The initial setting is 1 GB on 64-bit systems, 250 MB on 32-bit systems.
    // There may be a system-imposed maximum stack limit regardless
    // of the value provided to SetMaxStack.
    //
    // SetMaxStack is useful mainly for limiting the damage done by
    // goroutines that enter an infinite recursion. It only limits future
    // stack growth.
**/
function setMaxStack(_bytes:stdgo.GoInt):stdgo.GoInt throw ":runtime.debug.setMaxStack is not yet implemented";
/**
    // SetMaxThreads sets the maximum number of operating system
    // threads that the Go program can use. If it attempts to use more than
    // this many, the program crashes.
    // SetMaxThreads returns the previous setting.
    // The initial setting is 10,000 threads.
    //
    // The limit controls the number of operating system threads, not the number
    // of goroutines. A Go program creates a new thread only when a goroutine
    // is ready to run but all the existing threads are blocked in system calls, cgo calls,
    // or are locked to other goroutines due to use of runtime.LockOSThread.
    //
    // SetMaxThreads is useful mainly for limiting the damage done by
    // programs that create an unbounded number of threads. The idea is
    // to take down the program before it takes down the operating system.
**/
function setMaxThreads(_threads:stdgo.GoInt):stdgo.GoInt throw ":runtime.debug.setMaxThreads is not yet implemented";
/**
    // SetPanicOnFault controls the runtime's behavior when a program faults
    // at an unexpected (non-nil) address. Such faults are typically caused by
    // bugs such as runtime memory corruption, so the default response is to crash
    // the program. Programs working with memory-mapped files or unsafe
    // manipulation of memory may cause faults at non-nil addresses in less
    // dramatic situations; SetPanicOnFault allows such programs to request
    // that the runtime trigger only a panic, not a crash.
    // The runtime.Error that the runtime panics with may have an additional method:
    //
    //	Addr() uintptr
    //
    // If that method exists, it returns the memory address which triggered the fault.
    // The results of Addr are best-effort and the veracity of the result
    // may depend on the platform.
    // SetPanicOnFault applies only to the current goroutine.
    // It returns the previous setting.
**/
function setPanicOnFault(_enabled:Bool):Bool throw ":runtime.debug.setPanicOnFault is not yet implemented";
/**
    // WriteHeapDump writes a description of the heap and the objects in
    // it to the given file descriptor.
    //
    // WriteHeapDump suspends the execution of all goroutines until the heap
    // dump is completely written.  Thus, the file descriptor must not be
    // connected to a pipe or socket whose other end is in the same Go
    // process; instead, use a temporary file or network socket.
    //
    // The heap dump format is defined at https://golang.org/s/go15heapdump.
**/
function writeHeapDump(_fd:stdgo.GoUIntptr):Void throw ":runtime.debug.writeHeapDump is not yet implemented";
/**
    // SetTraceback sets the amount of detail printed by the runtime in
    // the traceback it prints before exiting due to an unrecovered panic
    // or an internal runtime error.
    // The level argument takes the same values as the GOTRACEBACK
    // environment variable. For example, SetTraceback("all") ensure
    // that the program prints all goroutines when it crashes.
    // See the package runtime documentation for details.
    // If SetTraceback is called with a level lower than that of the
    // environment variable, the call is ignored.
**/
function setTraceback(_level:stdgo.GoString):Void throw ":runtime.debug.setTraceback is not yet implemented";
/**
    // SetMemoryLimit provides the runtime with a soft memory limit.
    //
    // The runtime undertakes several processes to try to respect this
    // memory limit, including adjustments to the frequency of garbage
    // collections and returning memory to the underlying system more
    // aggressively. This limit will be respected even if GOGC=off (or,
    // if SetGCPercent(-1) is executed).
    //
    // The input limit is provided as bytes, and includes all memory
    // mapped, managed, and not released by the Go runtime. Notably, it
    // does not account for space used by the Go binary and memory
    // external to Go, such as memory managed by the underlying system
    // on behalf of the process, or memory managed by non-Go code inside
    // the same process. Examples of excluded memory sources include: OS
    // kernel memory held on behalf of the process, memory allocated by
    // C code, and memory mapped by syscall.Mmap (because it is not
    // managed by the Go runtime).
    //
    // More specifically, the following expression accurately reflects
    // the value the runtime attempts to maintain as the limit:
    //
    //	runtime.MemStats.Sys - runtime.MemStats.HeapReleased
    //
    // or in terms of the runtime/metrics package:
    //
    //	/memory/classes/total:bytes - /memory/classes/heap/released:bytes
    //
    // A zero limit or a limit that's lower than the amount of memory
    // used by the Go runtime may cause the garbage collector to run
    // nearly continuously. However, the application may still make
    // progress.
    //
    // The memory limit is always respected by the Go runtime, so to
    // effectively disable this behavior, set the limit very high.
    // math.MaxInt64 is the canonical value for disabling the limit,
    // but values much greater than the available memory on the underlying
    // system work just as well.
    //
    // See https://go.dev/doc/gc-guide for a detailed guide explaining
    // the soft memory limit in more detail, as well as a variety of common
    // use-cases and scenarios.
    //
    // The initial setting is math.MaxInt64 unless the GOMEMLIMIT
    // environment variable is set, in which case it provides the initial
    // setting. GOMEMLIMIT is a numeric value in bytes with an optional
    // unit suffix. The supported suffixes include B, KiB, MiB, GiB, and
    // TiB. These suffixes represent quantities of bytes as defined by
    // the IEC 80000-13 standard. That is, they are based on powers of
    // two: KiB means 2^10 bytes, MiB means 2^20 bytes, and so on.
    //
    // SetMemoryLimit returns the previously set memory limit.
    // A negative input does not adjust the limit, and allows for
    // retrieval of the currently set memory limit.
**/
function setMemoryLimit(_limit:stdgo.GoInt64):stdgo.GoInt64 throw ":runtime.debug.setMemoryLimit is not yet implemented";
/**
    // ReadBuildInfo returns the build information embedded
    // in the running binary. The information is available only
    // in binaries built with module support.
**/
function readBuildInfo():{ var _0 : stdgo.Ref<BuildInfo>; var _1 : Bool; } throw ":runtime.debug.readBuildInfo is not yet implemented";
function parseBuildInfo(_data:stdgo.GoString):{ var _0 : stdgo.Ref<BuildInfo>; var _1 : stdgo.Error; } throw ":runtime.debug.parseBuildInfo is not yet implemented";
/**
    // PrintStack prints to standard error the stack trace returned by runtime.Stack.
**/
function printStack():Void throw ":runtime.debug.printStack is not yet implemented";
/**
    // Stack returns a formatted stack trace of the goroutine that calls it.
    // It calls runtime.Stack with a large enough buffer to capture the entire trace.
**/
function stack():stdgo.Slice<stdgo.GoByte> throw ":runtime.debug.stack is not yet implemented";
class BuildInfo_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BuildInfo>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.runtime.debug.Debug.BuildInfo_asInterface) class BuildInfo_static_extension {
    @:keep
    static public function string( _bi:stdgo.Ref<BuildInfo>):stdgo.GoString throw "BuildInfo:runtime.debug.string is not yet implemented";
}
