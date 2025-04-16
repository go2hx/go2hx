package stdgo.expvar;
typedef Var = stdgo._internal.expvar.Expvar_var.Var;
typedef Int_ = stdgo._internal.expvar.Expvar_int_.Int_;
typedef Float_ = stdgo._internal.expvar.Expvar_float_.Float_;
typedef Map_ = stdgo._internal.expvar.Expvar_map_.Map_;
typedef KeyValue = stdgo._internal.expvar.Expvar_keyvalue.KeyValue;
typedef String_ = stdgo._internal.expvar.Expvar_string_.String_;
typedef Func = stdgo._internal.expvar.Expvar_func.Func;
typedef Int_Pointer = stdgo._internal.expvar.Expvar_int_pointer.Int_Pointer;
typedef Float_Pointer = stdgo._internal.expvar.Expvar_float_pointer.Float_Pointer;
typedef Map_Pointer = stdgo._internal.expvar.Expvar_map_pointer.Map_Pointer;
typedef KeyValuePointer = stdgo._internal.expvar.Expvar_keyvaluepointer.KeyValuePointer;
typedef String_Pointer = stdgo._internal.expvar.Expvar_string_pointer.String_Pointer;
typedef FuncPointer = stdgo._internal.expvar.Expvar_funcpointer.FuncPointer;
/**
    * Package expvar provides a standardized interface to public variables, such
    * as operation counters in servers. It exposes these variables via HTTP at
    * /debug/vars in JSON format.
    * 
    * Operations to set or modify these public variables are atomic.
    * 
    * In addition to adding the HTTP handler, this package registers the
    * following variables:
    * 
    * 	cmdline   os.Args
    * 	memstats  runtime.Memstats
    * 
    * The package is sometimes only imported for the side effect of
    * registering its HTTP handler and the above variables. To use it
    * this way, link this package into your program:
    * 
    * 	import _ "expvar"
**/
class Expvar {
    /**
        * Publish declares a named exported variable. This should be called from a
        * package's init function when it creates its Vars. If the name is already
        * registered then this will log.Panic.
    **/
    static public inline function publish(_name:stdgo.GoString, _v:Var):Void stdgo._internal.expvar.Expvar_publish.publish(_name, _v);
    /**
        * Get retrieves a named exported variable. It returns nil if the name has
        * not been registered.
    **/
    static public inline function get(_name:stdgo.GoString):stdgo._internal.expvar.Expvar_var.Var return stdgo._internal.expvar.Expvar_get.get(_name);
    static public inline function newInt(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_> return stdgo._internal.expvar.Expvar_newint.newInt(_name);
    static public inline function newFloat(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_> return stdgo._internal.expvar.Expvar_newfloat.newFloat(_name);
    static public inline function newMap(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> return stdgo._internal.expvar.Expvar_newmap.newMap(_name);
    static public inline function newString(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_> return stdgo._internal.expvar.Expvar_newstring.newString(_name);
    /**
        * Do calls f for each exported variable.
        * The global variable map is locked during the iteration,
        * but existing entries may be concurrently updated.
    **/
    static public inline function do_(_f:KeyValue -> Void):Void stdgo._internal.expvar.Expvar_do_.do_(_f);
    /**
        * Handler returns the expvar HTTP Handler.
        * 
        * This is only needed to install the handler in a non-standard location.
    **/
    static public inline function handler():stdgo._internal.net.http.Http_handler.Handler return stdgo._internal.expvar.Expvar_handler.handler();
}
