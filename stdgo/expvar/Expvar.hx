package stdgo.expvar;
class Var_static_extension {
    static public function string(t:stdgo._internal.expvar.Expvar_Var.Var):String {
        return stdgo._internal.expvar.Expvar_Var_static_extension.Var_static_extension.string(t);
    }
}
typedef Var = stdgo._internal.expvar.Expvar_Var.Var;
@:structInit @:using(stdgo.expvar.Expvar.Int__static_extension) abstract Int_(stdgo._internal.expvar.Expvar_Int_.Int_) from stdgo._internal.expvar.Expvar_Int_.Int_ to stdgo._internal.expvar.Expvar_Int_.Int_ {
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = v;
        return v;
    }
    public function new(?_i:haxe.Int64) this = new stdgo._internal.expvar.Expvar_Int_.Int_(_i);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.expvar.Expvar.Float__static_extension) abstract Float_(stdgo._internal.expvar.Expvar_Float_.Float_) from stdgo._internal.expvar.Expvar_Float_.Float_ to stdgo._internal.expvar.Expvar_Float_.Float_ {
    public var _f(get, set) : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64;
    function get__f():stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 return this._f;
    function set__f(v:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 {
        this._f = v;
        return v;
    }
    public function new(?_f:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64) this = new stdgo._internal.expvar.Expvar_Float_.Float_(_f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.expvar.Expvar.Map__static_extension) abstract Map_(stdgo._internal.expvar.Expvar_Map_.Map_) from stdgo._internal.expvar.Expvar_Map_.Map_ to stdgo._internal.expvar.Expvar_Map_.Map_ {
    public var _m(get, set) : stdgo._internal.sync.Sync_Map_.Map_;
    function get__m():stdgo._internal.sync.Sync_Map_.Map_ return this._m;
    function set__m(v:stdgo._internal.sync.Sync_Map_.Map_):stdgo._internal.sync.Sync_Map_.Map_ {
        this._m = v;
        return v;
    }
    public var _keysMu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__keysMu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._keysMu;
    function set__keysMu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._keysMu = v;
        return v;
    }
    public var _keys(get, set) : Array<String>;
    function get__keys():Array<String> return [for (i in this._keys) i];
    function set__keys(v:Array<String>):Array<String> {
        this._keys = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_m:stdgo._internal.sync.Sync_Map_.Map_, ?_keysMu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_keys:Array<String>) this = new stdgo._internal.expvar.Expvar_Map_.Map_(_m, _keysMu, ([for (i in _keys) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract KeyValue(stdgo._internal.expvar.Expvar_KeyValue.KeyValue) from stdgo._internal.expvar.Expvar_KeyValue.KeyValue to stdgo._internal.expvar.Expvar_KeyValue.KeyValue {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = v;
        return v;
    }
    public var value(get, set) : Var;
    function get_value():Var return this.value;
    function set_value(v:Var):Var {
        this.value = v;
        return v;
    }
    public function new(?key:String, ?value:Var) this = new stdgo._internal.expvar.Expvar_KeyValue.KeyValue(key, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.expvar.Expvar.String__static_extension) abstract String_(stdgo._internal.expvar.Expvar_String_.String_) from stdgo._internal.expvar.Expvar_String_.String_ to stdgo._internal.expvar.Expvar_String_.String_ {
    public var _s(get, set) : stdgo._internal.sync.atomic_.Atomic__Value.Value;
    function get__s():stdgo._internal.sync.atomic_.Atomic__Value.Value return this._s;
    function set__s(v:stdgo._internal.sync.atomic_.Atomic__Value.Value):stdgo._internal.sync.atomic_.Atomic__Value.Value {
        this._s = v;
        return v;
    }
    public function new(?_s:stdgo._internal.sync.atomic_.Atomic__Value.Value) this = new stdgo._internal.expvar.Expvar_String_.String_(_s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Func = stdgo._internal.expvar.Expvar_Func.Func;
class Int__static_extension {
    static public function set(_v:Int_, _value:haxe.Int64):Void {
        stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension.set(_v, _value);
    }
    static public function add(_v:Int_, _delta:haxe.Int64):Void {
        stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension.add(_v, _delta);
    }
    static public function string(_v:Int_):String {
        return stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension.string(_v);
    }
    static public function value(_v:Int_):haxe.Int64 {
        return stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension.value(_v);
    }
}
class Float__static_extension {
    static public function set(_v:Float_, _value:StdTypes.Float):Void {
        stdgo._internal.expvar.Expvar_Float__static_extension.Float__static_extension.set(_v, _value);
    }
    static public function add(_v:Float_, _delta:StdTypes.Float):Void {
        stdgo._internal.expvar.Expvar_Float__static_extension.Float__static_extension.add(_v, _delta);
    }
    static public function string(_v:Float_):String {
        return stdgo._internal.expvar.Expvar_Float__static_extension.Float__static_extension.string(_v);
    }
    static public function value(_v:Float_):StdTypes.Float {
        return stdgo._internal.expvar.Expvar_Float__static_extension.Float__static_extension.value(_v);
    }
}
class Map__static_extension {
    static public function do_(_v:Map_, _f:stdgo._internal.expvar.Expvar_KeyValue.KeyValue -> Void):Void {
        final _f = _f;
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.do_(_v, _f);
    }
    static public function delete(_v:Map_, _key:String):Void {
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.delete(_v, _key);
    }
    static public function addFloat(_v:Map_, _key:String, _delta:StdTypes.Float):Void {
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.addFloat(_v, _key, _delta);
    }
    static public function add(_v:Map_, _key:String, _delta:haxe.Int64):Void {
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.add(_v, _key, _delta);
    }
    static public function set(_v:Map_, _key:String, _av:Var):Void {
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.set(_v, _key, _av);
    }
    static public function get(_v:Map_, _key:String):Var {
        return stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.get(_v, _key);
    }
    static public function _addKey(_v:Map_, _key:String):Void {
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension._addKey(_v, _key);
    }
    static public function init(_v:Map_):Map_ {
        return stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.init(_v);
    }
    static public function string(_v:Map_):String {
        return stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.string(_v);
    }
}
class String__static_extension {
    static public function set(_v:String_, _value:String):Void {
        stdgo._internal.expvar.Expvar_String__static_extension.String__static_extension.set(_v, _value);
    }
    static public function string(_v:String_):String {
        return stdgo._internal.expvar.Expvar_String__static_extension.String__static_extension.string(_v);
    }
    static public function value(_v:String_):String {
        return stdgo._internal.expvar.Expvar_String__static_extension.String__static_extension.value(_v);
    }
}
class Func_static_extension {
    static public function string(_f:Func):String {
        return stdgo._internal.expvar.Expvar_Func_static_extension.Func_static_extension.string(_f);
    }
    static public function value(_f:Func):stdgo.AnyInterface {
        return stdgo._internal.expvar.Expvar_Func_static_extension.Func_static_extension.value(_f);
    }
}
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
    static public function publish(_name:String, _v:Var):Void {
        stdgo._internal.expvar.Expvar_publish.publish(_name, _v);
    }
    /**
        Get retrieves a named exported variable. It returns nil if the name has
        not been registered.
    **/
    static public function get(_name:String):Var {
        return stdgo._internal.expvar.Expvar_get.get(_name);
    }
    static public function newInt(_name:String):Int_ {
        return stdgo._internal.expvar.Expvar_newInt.newInt(_name);
    }
    static public function newFloat(_name:String):Float_ {
        return stdgo._internal.expvar.Expvar_newFloat.newFloat(_name);
    }
    static public function newMap(_name:String):Map_ {
        return stdgo._internal.expvar.Expvar_newMap.newMap(_name);
    }
    static public function newString(_name:String):String_ {
        return stdgo._internal.expvar.Expvar_newString.newString(_name);
    }
    /**
        Do calls f for each exported variable.
        The global variable map is locked during the iteration,
        but existing entries may be concurrently updated.
    **/
    static public function do_(_f:stdgo._internal.expvar.Expvar_KeyValue.KeyValue -> Void):Void {
        final _f = _f;
        stdgo._internal.expvar.Expvar_do_.do_(_f);
    }
    /**
        Handler returns the expvar HTTP Handler.
        
        This is only needed to install the handler in a non-standard location.
    **/
    static public function handler():stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo._internal.expvar.Expvar_handler.handler();
    }
}
