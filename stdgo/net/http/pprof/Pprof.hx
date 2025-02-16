package stdgo.net.http.pprof;
@:structInit @:using(stdgo.net.http.pprof.Pprof.T_profileEntry_static_extension) @:dox(hide) abstract T_profileEntry(stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry) from stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry to stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var href(get, set) : String;
    function get_href():String return this.href;
    function set_href(v:String):String {
        this.href = (v : stdgo.GoString);
        return v;
    }
    public var desc(get, set) : String;
    function get_desc():String return this.desc;
    function set_desc(v:String):String {
        this.desc = (v : stdgo.GoString);
        return v;
    }
    public var count(get, set) : StdTypes.Int;
    function get_count():StdTypes.Int return this.count;
    function set_count(v:StdTypes.Int):StdTypes.Int {
        this.count = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?href:String, ?desc:String, ?count:StdTypes.Int) this = new stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry((name : stdgo.GoString), (href : stdgo.GoString), (desc : stdgo.GoString), (count : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_handler = stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler;
@:dox(hide) typedef T_profileEntryPointer = stdgo._internal.net.http.pprof.Pprof_t_profileentrypointer.T_profileEntryPointer;
@:dox(hide) class T_profileEntry_static_extension {

}
@:dox(hide) typedef T_handlerPointer = stdgo._internal.net.http.pprof.Pprof_t_handlerpointer.T_handlerPointer;
@:dox(hide) class T_handler_static_extension {
    static public function _serveDeltaProfile(_name:T_handler, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo._internal.net.http.Http_request.Request, _p:stdgo._internal.runtime.pprof.Pprof_profile.Profile, _secStr:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
        final _secStr = (_secStr : stdgo.GoString);
        stdgo._internal.net.http.pprof.Pprof_t_handler_static_extension.T_handler_static_extension._serveDeltaProfile(_name, _w, _r, _p, _secStr);
    }
    static public function serveHTTP(_name:T_handler, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo._internal.net.http.Http_request.Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.pprof.Pprof_t_handler_static_extension.T_handler_static_extension.serveHTTP(_name, _w, _r);
    }
}
/**
    * Package pprof serves via its HTTP server runtime profiling data
    * in the format expected by the pprof visualization tool.
    * 
    * The package is typically only imported for the side effect of
    * registering its HTTP handlers.
    * The handled paths all begin with /debug/pprof/.
    * 
    * To use pprof, link this package into your program:
    * 
    * 	import _ "net/http/pprof"
    * 
    * If your application is not already running an http server, you
    * need to start one. Add "net/http" and "log" to your imports and
    * the following code to your main function:
    * 
    * 	go func() {
    * 		log.Println(http.ListenAndServe("localhost:6060", nil))
    * 	}()
    * 
    * By default, all the profiles listed in [runtime/pprof.Profile] are
    * available (via [Handler]), in addition to the [Cmdline], [Profile], [Symbol],
    * and [Trace] profiles defined in this package.
    * If you are not using DefaultServeMux, you will have to register handlers
    * with the mux you are using.
    * 
    * # Parameters
    * 
    * Parameters can be passed via GET query params:
    * 
    *   - debug=N (all profiles): response format: N = 0: binary (default), N > 0: plaintext
    *   - gc=N (heap profile): N > 0: run a garbage collection cycle before profiling
    *   - seconds=N (allocs, block, goroutine, heap, mutex, threadcreate profiles): return a delta profile
    *   - seconds=N (cpu (profile), trace profiles): profile for the given duration
    * 
    * # Usage examples
    * 
    * Use the pprof tool to look at the heap profile:
    * 
    * 	go tool pprof http://localhost:6060/debug/pprof/heap
    * 
    * Or to look at a 30-second CPU profile:
    * 
    * 	go tool pprof http://localhost:6060/debug/pprof/profile?seconds=30
    * 
    * Or to look at the goroutine blocking profile, after calling
    * runtime.SetBlockProfileRate in your program:
    * 
    * 	go tool pprof http://localhost:6060/debug/pprof/block
    * 
    * Or to look at the holders of contended mutexes, after calling
    * runtime.SetMutexProfileFraction in your program:
    * 
    * 	go tool pprof http://localhost:6060/debug/pprof/mutex
    * 
    * The package also exports a handler that serves execution trace data
    * for the "go tool trace" command. To collect a 5-second execution trace:
    * 
    * 	curl -o trace.out http://localhost:6060/debug/pprof/trace?seconds=5
    * 	go tool trace trace.out
    * 
    * To view all available profiles, open http://localhost:6060/debug/pprof/
    * in your browser.
    * 
    * For a study of the facility in action, visit
    * https://blog.golang.org/2011/06/profiling-go-programs.html.
**/
class Pprof {
    /**
        * Cmdline responds with the running program's
        * command line, with arguments separated by NUL bytes.
        * The package initialization registers it as /debug/pprof/cmdline.
    **/
    static public inline function cmdline(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo._internal.net.http.Http_request.Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.pprof.Pprof_cmdline.cmdline(_w, _r);
    }
    /**
        * Profile responds with the pprof-formatted cpu profile.
        * Profiling lasts for duration specified in seconds GET parameter, or for 30 seconds if not specified.
        * The package initialization registers it as /debug/pprof/profile.
    **/
    static public inline function profile(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo._internal.net.http.Http_request.Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.pprof.Pprof_profile.profile(_w, _r);
    }
    /**
        * Trace responds with the execution trace in binary form.
        * Tracing lasts for duration specified in seconds GET parameter, or for 1 second if not specified.
        * The package initialization registers it as /debug/pprof/trace.
    **/
    static public inline function trace_(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo._internal.net.http.Http_request.Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.pprof.Pprof_trace_.trace_(_w, _r);
    }
    /**
        * Symbol looks up the program counters listed in the request,
        * responding with a table mapping program counters to function names.
        * The package initialization registers it as /debug/pprof/symbol.
    **/
    static public inline function symbol(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo._internal.net.http.Http_request.Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.pprof.Pprof_symbol.symbol(_w, _r);
    }
    /**
        * Handler returns an HTTP handler that serves the named profile.
        * Available profiles can be found in [runtime/pprof.Profile].
    **/
    static public inline function handler(_name:String):stdgo._internal.net.http.Http_handler.Handler {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.net.http.pprof.Pprof_handler.handler(_name);
    }
    /**
        * Index responds with the pprof-formatted profile named by the request.
        * For example, "/debug/pprof/heap" serves the "heap" profile.
        * Index responds to a request for "/debug/pprof/" with an HTML page
        * listing the available profiles.
    **/
    static public inline function index(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo._internal.net.http.Http_request.Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.pprof.Pprof_index.index(_w, _r);
    }
}
