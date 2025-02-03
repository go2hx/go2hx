package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Reloc_static_extension) abstract Reloc(stdgo._internal.debug.macho.Macho_Reloc.Reloc) from stdgo._internal.debug.macho.Macho_Reloc.Reloc to stdgo._internal.debug.macho.Macho_Reloc.Reloc {
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt8);
        return v;
    }
    public var pcrel(get, set) : Bool;
    function get_pcrel():Bool return this.pcrel;
    function set_pcrel(v:Bool):Bool {
        this.pcrel = v;
        return v;
    }
    public var extern_(get, set) : Bool;
    function get_extern_():Bool return this.extern_;
    function set_extern_(v:Bool):Bool {
        this.extern_ = v;
        return v;
    }
    public var scattered(get, set) : Bool;
    function get_scattered():Bool return this.scattered;
    function set_scattered(v:Bool):Bool {
        this.scattered = v;
        return v;
    }
    public function new(?addr:std.UInt, ?value:std.UInt, ?type:std.UInt, ?len:std.UInt, ?pcrel:Bool, ?extern_:Bool, ?scattered:Bool) this = new stdgo._internal.debug.macho.Macho_Reloc.Reloc((addr : stdgo.GoUInt32), (value : stdgo.GoUInt32), (type : stdgo.GoUInt8), (len : stdgo.GoUInt8), pcrel, extern_, scattered);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
