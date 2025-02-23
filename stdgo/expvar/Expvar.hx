package stdgo.expvar;
class Var_static_extension {
    static public function string(t:stdgo._internal.expvar.Expvar_var.Var):String {
        return stdgo._internal.expvar.Expvar_var_static_extension.Var_static_extension.string(t);
    }
}
@:interface @:forward abstract Var(stdgo._internal.expvar.Expvar_var.Var) from stdgo._internal.expvar.Expvar_var.Var to stdgo._internal.expvar.Expvar_var.Var {
    @:from
    static function fromHaxeInterface(x:{ function string():String; }):Var {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Var = { string : () -> x.string(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.expvar.Expvar.Int__static_extension) abstract Int_(stdgo._internal.expvar.Expvar_int_.Int_) from stdgo._internal.expvar.Expvar_int_.Int_ to stdgo._internal.expvar.Expvar_int_.Int_ {
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_i:haxe.Int64) this = new stdgo._internal.expvar.Expvar_int_.Int_((_i : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.expvar.Expvar.Float__static_extension) abstract Float_(stdgo._internal.expvar.Expvar_float_.Float_) from stdgo._internal.expvar.Expvar_float_.Float_ to stdgo._internal.expvar.Expvar_float_.Float_ {
    public var _f(get, set) : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64;
    function get__f():stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 return this._f;
    function set__f(v:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 {
        this._f = v;
        return v;
    }
    public function new(?_f:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64) this = new stdgo._internal.expvar.Expvar_float_.Float_(_f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.expvar.Expvar.Map__static_extension) abstract Map_(stdgo._internal.expvar.Expvar_map_.Map_) from stdgo._internal.expvar.Expvar_map_.Map_ to stdgo._internal.expvar.Expvar_map_.Map_ {
    public var _m(get, set) : stdgo._internal.sync.Sync_map_.Map_;
    function get__m():stdgo._internal.sync.Sync_map_.Map_ return this._m;
    function set__m(v:stdgo._internal.sync.Sync_map_.Map_):stdgo._internal.sync.Sync_map_.Map_ {
        this._m = v;
        return v;
    }
    public var _keysMu(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
    function get__keysMu():stdgo._internal.sync.Sync_rwmutex.RWMutex return this._keysMu;
    function set__keysMu(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        this._keysMu = v;
        return v;
    }
    public var _keys(get, set) : Array<String>;
    function get__keys():Array<String> return [for (i in this._keys) i];
    function set__keys(v:Array<String>):Array<String> {
        this._keys = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_m:stdgo._internal.sync.Sync_map_.Map_, ?_keysMu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_keys:Array<String>) this = new stdgo._internal.expvar.Expvar_map_.Map_(_m, _keysMu, ([for (i in _keys) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.expvar.Expvar.KeyValue_static_extension) abstract KeyValue(stdgo._internal.expvar.Expvar_keyvalue.KeyValue) from stdgo._internal.expvar.Expvar_keyvalue.KeyValue to stdgo._internal.expvar.Expvar_keyvalue.KeyValue {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : Var;
    function get_value():Var return this.value;
    function set_value(v:Var):Var {
        this.value = v;
        return v;
    }
    public function new(?key:String, ?value:Var) this = new stdgo._internal.expvar.Expvar_keyvalue.KeyValue((key : stdgo.GoString), value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.expvar.Expvar.String__static_extension) abstract String_(stdgo._internal.expvar.Expvar_string_.String_) from stdgo._internal.expvar.Expvar_string_.String_ to stdgo._internal.expvar.Expvar_string_.String_ {
    public var _s(get, set) : stdgo._internal.sync.atomic_.Atomic__value.Value;
    function get__s():stdgo._internal.sync.atomic_.Atomic__value.Value return this._s;
    function set__s(v:stdgo._internal.sync.atomic_.Atomic__value.Value):stdgo._internal.sync.atomic_.Atomic__value.Value {
        this._s = v;
        return v;
    }
    public function new(?_s:stdgo._internal.sync.atomic_.Atomic__value.Value) this = new stdgo._internal.expvar.Expvar_string_.String_(_s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Func = stdgo._internal.expvar.Expvar_func.Func;
typedef Int_Pointer = stdgo._internal.expvar.Expvar_int_pointer.Int_Pointer;
class Int__static_extension {
    static public function set(_v:Int_, _value:haxe.Int64):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>);
        final _value = (_value : stdgo.GoInt64);
        stdgo._internal.expvar.Expvar_int__static_extension.Int__static_extension.set(_v, _value);
    }
    static public function add(_v:Int_, _delta:haxe.Int64):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>);
        final _delta = (_delta : stdgo.GoInt64);
        stdgo._internal.expvar.Expvar_int__static_extension.Int__static_extension.add(_v, _delta);
    }
    static public function string(_v:Int_):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>);
        return stdgo._internal.expvar.Expvar_int__static_extension.Int__static_extension.string(_v);
    }
    static public function value(_v:Int_):haxe.Int64 {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>);
        return stdgo._internal.expvar.Expvar_int__static_extension.Int__static_extension.value(_v);
    }
}
typedef Float_Pointer = stdgo._internal.expvar.Expvar_float_pointer.Float_Pointer;
class Float__static_extension {
    static public function set(_v:Float_, _value:StdTypes.Float):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>);
        final _value = (_value : stdgo.GoFloat64);
        stdgo._internal.expvar.Expvar_float__static_extension.Float__static_extension.set(_v, _value);
    }
    static public function add(_v:Float_, _delta:StdTypes.Float):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>);
        final _delta = (_delta : stdgo.GoFloat64);
        stdgo._internal.expvar.Expvar_float__static_extension.Float__static_extension.add(_v, _delta);
    }
    static public function string(_v:Float_):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>);
        return stdgo._internal.expvar.Expvar_float__static_extension.Float__static_extension.string(_v);
    }
    static public function value(_v:Float_):StdTypes.Float {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>);
        return stdgo._internal.expvar.Expvar_float__static_extension.Float__static_extension.value(_v);
    }
}
typedef Map_Pointer = stdgo._internal.expvar.Expvar_map_pointer.Map_Pointer;
class Map__static_extension {
    static public function do_(_v:Map_, _f:KeyValue -> Void):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        final _f = _f;
        stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension.do_(_v, _f);
    }
    static public function delete(_v:Map_, _key:String):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        final _key = (_key : stdgo.GoString);
        stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension.delete(_v, _key);
    }
    static public function addFloat(_v:Map_, _key:String, _delta:StdTypes.Float):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        final _key = (_key : stdgo.GoString);
        final _delta = (_delta : stdgo.GoFloat64);
        stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension.addFloat(_v, _key, _delta);
    }
    static public function add(_v:Map_, _key:String, _delta:haxe.Int64):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        final _key = (_key : stdgo.GoString);
        final _delta = (_delta : stdgo.GoInt64);
        stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension.add(_v, _key, _delta);
    }
    static public function set(_v:Map_, _key:String, _av:Var):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        final _key = (_key : stdgo.GoString);
        stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension.set(_v, _key, _av);
    }
    static public function get(_v:Map_, _key:String):Var {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension.get(_v, _key);
    }
    static public function _addKey(_v:Map_, _key:String):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        final _key = (_key : stdgo.GoString);
        stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension._addKey(_v, _key);
    }
    static public function init(_v:Map_):Map_ {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        return stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension.init(_v);
    }
    static public function string(_v:Map_):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
        return stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension.string(_v);
    }
}
typedef KeyValuePointer = stdgo._internal.expvar.Expvar_keyvaluepointer.KeyValuePointer;
class KeyValue_static_extension {

}
typedef String_Pointer = stdgo._internal.expvar.Expvar_string_pointer.String_Pointer;
class String__static_extension {
    static public function set(_v:String_, _value:String):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_>);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.expvar.Expvar_string__static_extension.String__static_extension.set(_v, _value);
    }
    static public function string(_v:String_):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_>);
        return stdgo._internal.expvar.Expvar_string__static_extension.String__static_extension.string(_v);
    }
    static public function value(_v:String_):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_>);
        return stdgo._internal.expvar.Expvar_string__static_extension.String__static_extension.value(_v);
    }
}
typedef FuncPointer = stdgo._internal.expvar.Expvar_funcpointer.FuncPointer;
class Func_static_extension {
    static public function string(_f:Func):String {
        return stdgo._internal.expvar.Expvar_func_static_extension.Func_static_extension.string(_f);
    }
    static public function value(_f:Func):stdgo.AnyInterface {
        return stdgo._internal.expvar.Expvar_func_static_extension.Func_static_extension.value(_f);
    }
}
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
    static public inline function publish(_name:String, _v:Var):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.expvar.Expvar_publish.publish(_name, _v);
    }
    /**
        * Get retrieves a named exported variable. It returns nil if the name has
        * not been registered.
    **/
    static public inline function get(_name:String):Var {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_get.get(_name);
    }
    static public inline function newInt(_name:String):Int_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_newint.newInt(_name);
    }
    static public inline function newFloat(_name:String):Float_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_newfloat.newFloat(_name);
    }
    static public inline function newMap(_name:String):Map_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_newmap.newMap(_name);
    }
    static public inline function newString(_name:String):String_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_newstring.newString(_name);
    }
    /**
        * Do calls f for each exported variable.
        * The global variable map is locked during the iteration,
        * but existing entries may be concurrently updated.
    **/
    static public inline function do_(_f:KeyValue -> Void):Void {
        final _f = _f;
        stdgo._internal.expvar.Expvar_do_.do_(_f);
    }
    /**
        * Handler returns the expvar HTTP Handler.
        * 
        * This is only needed to install the handler in a non-standard location.
    **/
    static public inline function handler():stdgo._internal.net.http.Http_handler.Handler {
        return stdgo._internal.expvar.Expvar_handler.handler();
    }
}
