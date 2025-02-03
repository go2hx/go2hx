package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.Sym_static_extension) abstract Sym(stdgo._internal.debug.gosym.Gosym_Sym.Sym) from stdgo._internal.debug.gosym.Gosym_Sym.Sym to stdgo._internal.debug.gosym.Gosym_Sym.Sym {
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var goType(get, set) : haxe.UInt64;
    function get_goType():haxe.UInt64 return this.goType;
    function set_goType(v:haxe.UInt64):haxe.UInt64 {
        this.goType = (v : stdgo.GoUInt64);
        return v;
    }
    public var func(get, set) : Func;
    function get_func():Func return this.func;
    function set_func(v:Func):Func {
        this.func = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
        return v;
    }
    public var _goVersion(get, set) : T_version;
    function get__goVersion():T_version return this._goVersion;
    function set__goVersion(v:T_version):T_version {
        this._goVersion = v;
        return v;
    }
    public function new(?value:haxe.UInt64, ?type:std.UInt, ?name:String, ?goType:haxe.UInt64, ?func:Func, ?_goVersion:T_version) this = new stdgo._internal.debug.gosym.Gosym_Sym.Sym((value : stdgo.GoUInt64), (type : stdgo.GoUInt8), (name : stdgo.GoString), (goType : stdgo.GoUInt64), (func : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>), _goVersion);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
