package stdgo._internal.net.http.pprof;
var _profileDescriptions : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set(("allocs" : stdgo.GoString), ("A sampling of all past memory allocations" : stdgo.GoString));
x.set(("block" : stdgo.GoString), ("Stack traces that led to blocking on synchronization primitives" : stdgo.GoString));
x.set(("cmdline" : stdgo.GoString), ("The command line invocation of the current program" : stdgo.GoString));
x.set(("goroutine" : stdgo.GoString), ("Stack traces of all current goroutines. Use debug=2 as a query parameter to export in the same format as an unrecovered panic." : stdgo.GoString));
x.set(("heap" : stdgo.GoString), ("A sampling of memory allocations of live objects. You can specify the gc GET parameter to run GC before taking the heap sample." : stdgo.GoString));
x.set(("mutex" : stdgo.GoString), ("Stack traces of holders of contended mutexes" : stdgo.GoString));
x.set(("profile" : stdgo.GoString), ("CPU profile. You can specify the duration in the seconds GET parameter. After you get the profile file, use the go tool pprof command to investigate the profile." : stdgo.GoString));
x.set(("threadcreate" : stdgo.GoString), ("Stack traces that led to the creation of new OS threads" : stdgo.GoString));
x.set(("trace" : stdgo.GoString), ("A trace of execution of the current program. You can specify the duration in the seconds GET parameter. After you get the trace file, use the go tool trace command to investigate the trace." : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
