package stdgo.expvar;
/**
    Package expvar provides a standardized interface to public variables, such
    as operation counters in servers. It exposes these variables via HTTP at
    /debug/vars in JSON format.
    
    Operations to set or modify these public variables are atomic.
    
    In addition to adding the HTTP handler, this package registers the
    following variables:
    
    	cmdline   os.Args
    	memstats  runtime.Memstats
    
    The package is sometimes only imported for the side effect of
    registering its HTTP handler and the above variables. To use it
    this way, link this package into your program:
    
    	import _ "expvar"
**/
class Expvar {
    /**
        Publish declares a named exported variable. This should be called from a
        package's init function when it creates its Vars. If the name is already
        registered then this will log.Panic.
    **/
    static public inline function publish(_name:String, _v:Var):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.expvar.Expvar_publish.publish(_name, _v);
    }
    /**
        Get retrieves a named exported variable. It returns nil if the name has
        not been registered.
    **/
    static public inline function get(_name:String):Var {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_get.get(_name);
    }
    static public inline function newInt(_name:String):Int_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_newInt.newInt(_name);
    }
    static public inline function newFloat(_name:String):Float_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_newFloat.newFloat(_name);
    }
    static public inline function newMap(_name:String):Map_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_newMap.newMap(_name);
    }
    static public inline function newString(_name:String):String_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_newString.newString(_name);
    }
    /**
        Do calls f for each exported variable.
        The global variable map is locked during the iteration,
        but existing entries may be concurrently updated.
    **/
    static public inline function do_(_f:stdgo._internal.expvar.Expvar_KeyValue.KeyValue -> Void):Void {
        final _f = _f;
        stdgo._internal.expvar.Expvar_do_.do_(_f);
    }
    /**
        Handler returns the expvar HTTP Handler.
        
        This is only needed to install the handler in a non-standard location.
    **/
    static public inline function handler():stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo._internal.expvar.Expvar_handler.handler();
    }
}
