package stdgo.runtime.pprof;
typedef LabelSet = stdgo._internal.runtime.pprof.Pprof_labelset.LabelSet;
typedef Profile = stdgo._internal.runtime.pprof.Pprof_profile.Profile;
typedef LabelSetPointer = stdgo._internal.runtime.pprof.Pprof_labelsetpointer.LabelSetPointer;
typedef ProfilePointer = stdgo._internal.runtime.pprof.Pprof_profilepointer.ProfilePointer;
/**
    * Package pprof writes runtime profiling data in the format expected
    * by the pprof visualization tool.
    * 
    * # Profiling a Go program
    * 
    * The first step to profiling a Go program is to enable profiling.
    * Support for profiling benchmarks built with the standard testing
    * package is built into go test. For example, the following command
    * runs benchmarks in the current directory and writes the CPU and
    * memory profiles to cpu.prof and mem.prof:
    * 
    * 	go test -cpuprofile cpu.prof -memprofile mem.prof -bench .
    * 
    * To add equivalent profiling support to a standalone program, add
    * code like the following to your main function:
    * 
    * 	var cpuprofile = flag.String("cpuprofile", "", "write cpu profile to `file`")
    * 	var memprofile = flag.String("memprofile", "", "write memory profile to `file`")
    * 
    * 	func main() {
    * 	    flag.Parse()
    * 	    if *cpuprofile != "" {
    * 	        f, err := os.Create(*cpuprofile)
    * 	        if err != nil {
    * 	            log.Fatal("could not create CPU profile: ", err)
    * 	        }
    * 	        defer f.Close() // error handling omitted for example
    * 	        if err := pprof.StartCPUProfile(f); err != nil {
    * 	            log.Fatal("could not start CPU profile: ", err)
    * 	        }
    * 	        defer pprof.StopCPUProfile()
    * 	    }
    * 
    * 	    // ... rest of the program ...
    * 
    * 	    if *memprofile != "" {
    * 	        f, err := os.Create(*memprofile)
    * 	        if err != nil {
    * 	            log.Fatal("could not create memory profile: ", err)
    * 	        }
    * 	        defer f.Close() // error handling omitted for example
    * 	        runtime.GC() // get up-to-date statistics
    * 	        if err := pprof.WriteHeapProfile(f); err != nil {
    * 	            log.Fatal("could not write memory profile: ", err)
    * 	        }
    * 	    }
    * 	}
    * 
    * There is also a standard HTTP interface to profiling data. Adding
    * the following line will install handlers under the /debug/pprof/
    * URL to download live profiles:
    * 
    * 	import _ "net/http/pprof"
    * 
    * See the net/http/pprof package for more details.
    * 
    * Profiles can then be visualized with the pprof tool:
    * 
    * 	go tool pprof cpu.prof
    * 
    * There are many commands available from the pprof command line.
    * Commonly used commands include "top", which prints a summary of the
    * top program hot-spots, and "web", which opens an interactive graph
    * of hot-spots and their call graphs. Use "help" for information on
    * all pprof commands.
    * 
    * For more information about pprof, see
    * https://github.com/google/pprof/blob/master/doc/README.md.
**/
class Pprof {
    /**
        * WithLabels returns a new context.Context with the given labels added.
        * A label overwrites a prior label with the same key.
    **/
    static public inline function withLabels(_ctx:stdgo._internal.context.Context_context.Context, _labels:LabelSet):stdgo._internal.context.Context_context.Context return stdgo._internal.runtime.pprof.Pprof_withlabels.withLabels(_ctx, _labels);
    /**
        * Labels takes an even number of strings representing key-value pairs
        * and makes a LabelSet containing them.
        * A label overwrites a prior label with the same key.
        * Currently only the CPU and goroutine profiles utilize any labels
        * information.
        * See https://golang.org/issue/23458 for details.
    **/
    static public inline function labels(_args:haxe.Rest<stdgo.GoString>):stdgo._internal.runtime.pprof.Pprof_labelset.LabelSet return stdgo._internal.runtime.pprof.Pprof_labels.labels(...[for (i in _args) i]);
    /**
        * Label returns the value of the label with the given key on ctx, and a boolean indicating
        * whether that label exists.
    **/
    static public inline function label(_ctx:stdgo._internal.context.Context_context.Context, _key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return stdgo._internal.runtime.pprof.Pprof_label.label(_ctx, _key);
    /**
        * ForLabels invokes f with each label set on the context.
        * The function f should return true to continue iteration or false to stop iteration early.
    **/
    static public inline function forLabels(_ctx:stdgo._internal.context.Context_context.Context, _f:(stdgo.GoString, stdgo.GoString) -> Bool):Void stdgo._internal.runtime.pprof.Pprof_forlabels.forLabels(_ctx, _f);
    /**
        * NewProfile creates a new profile with the given name.
        * If a profile with that name already exists, NewProfile panics.
        * The convention is to use a 'import/path.' prefix to create
        * separate name spaces for each package.
        * For compatibility with various tools that read pprof data,
        * profile names should not contain spaces.
    **/
    static public inline function newProfile(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> return stdgo._internal.runtime.pprof.Pprof_newprofile.newProfile(_name);
    /**
        * Lookup returns the profile with the given name, or nil if no such profile exists.
    **/
    static public inline function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> return stdgo._internal.runtime.pprof.Pprof_lookup.lookup(_name);
    /**
        * Profiles returns a slice of all the known profiles, sorted by name.
    **/
    static public inline function profiles():stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>> return stdgo._internal.runtime.pprof.Pprof_profiles.profiles();
    /**
        * WriteHeapProfile is shorthand for Lookup("heap").WriteTo(w, 0).
        * It is preserved for backwards compatibility.
    **/
    static public inline function writeHeapProfile(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return stdgo._internal.runtime.pprof.Pprof_writeheapprofile.writeHeapProfile(_w);
    /**
        * StartCPUProfile enables CPU profiling for the current process.
        * While profiling, the profile will be buffered and written to w.
        * StartCPUProfile returns an error if profiling is already enabled.
        * 
        * On Unix-like systems, StartCPUProfile does not work by default for
        * Go code built with -buildmode=c-archive or -buildmode=c-shared.
        * StartCPUProfile relies on the SIGPROF signal, but that signal will
        * be delivered to the main program's SIGPROF signal handler (if any)
        * not to the one used by Go. To make it work, call os/signal.Notify
        * for syscall.SIGPROF, but note that doing so may break any profiling
        * being done by the main program.
    **/
    static public inline function startCPUProfile(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return stdgo._internal.runtime.pprof.Pprof_startcpuprofile.startCPUProfile(_w);
    /**
        * StopCPUProfile stops the current CPU profile, if any.
        * StopCPUProfile only returns after all the writes for the
        * profile have completed.
    **/
    static public inline function stopCPUProfile():Void stdgo._internal.runtime.pprof.Pprof_stopcpuprofile.stopCPUProfile();
    /**
        * SetGoroutineLabels sets the current goroutine's labels to match ctx.
        * A new goroutine inherits the labels of the goroutine that created it.
        * This is a lower-level API than Do, which should be used instead when possible.
    **/
    static public inline function setGoroutineLabels(_ctx:stdgo._internal.context.Context_context.Context):Void stdgo._internal.runtime.pprof.Pprof_setgoroutinelabels.setGoroutineLabels(_ctx);
    /**
        * Do calls f with a copy of the parent context with the
        * given labels added to the parent's label map.
        * Goroutines spawned while executing f will inherit the augmented label-set.
        * Each key/value pair in labels is inserted into the label map in the
        * order provided, overriding any previous value for the same key.
        * The augmented label map will be set for the duration of the call to f
        * and restored once f returns.
    **/
    static public inline function do_(_ctx:stdgo._internal.context.Context_context.Context, _labels:LabelSet, _f:stdgo._internal.context.Context_context.Context -> Void):Void stdgo._internal.runtime.pprof.Pprof_do_.do_(_ctx, _labels, _f);
}
