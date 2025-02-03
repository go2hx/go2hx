package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Symbol_static_extension) abstract Symbol(stdgo._internal.debug.macho.Macho_Symbol.Symbol) from stdgo._internal.debug.macho.Macho_Symbol.Symbol to stdgo._internal.debug.macho.Macho_Symbol.Symbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var sect(get, set) : std.UInt;
    function get_sect():std.UInt return this.sect;
    function set_sect(v:std.UInt):std.UInt {
        this.sect = (v : stdgo.GoUInt8);
        return v;
    }
    public var desc(get, set) : std.UInt;
    function get_desc():std.UInt return this.desc;
    function set_desc(v:std.UInt):std.UInt {
        this.desc = (v : stdgo.GoUInt16);
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:String, ?type:std.UInt, ?sect:std.UInt, ?desc:std.UInt, ?value:haxe.UInt64) this = new stdgo._internal.debug.macho.Macho_Symbol.Symbol((name : stdgo.GoString), (type : stdgo.GoUInt8), (sect : stdgo.GoUInt8), (desc : stdgo.GoUInt16), (value : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
