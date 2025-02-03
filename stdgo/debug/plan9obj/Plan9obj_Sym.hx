package stdgo.debug.plan9obj;
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.Sym_static_extension) abstract Sym(stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym) from stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym to stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym {
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var type(get, set) : StdTypes.Int;
    function get_type():StdTypes.Int return this.type;
    function set_type(v:StdTypes.Int):StdTypes.Int {
        this.type = (v : stdgo.GoInt32);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?value:haxe.UInt64, ?type:StdTypes.Int, ?name:String) this = new stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym((value : stdgo.GoUInt64), (type : stdgo.GoInt32), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
