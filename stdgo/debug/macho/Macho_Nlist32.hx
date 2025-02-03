package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Nlist32_static_extension) abstract Nlist32(stdgo._internal.debug.macho.Macho_Nlist32.Nlist32) from stdgo._internal.debug.macho.Macho_Nlist32.Nlist32 to stdgo._internal.debug.macho.Macho_Nlist32.Nlist32 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
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
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?sect:std.UInt, ?desc:std.UInt, ?value:std.UInt) this = new stdgo._internal.debug.macho.Macho_Nlist32.Nlist32((name : stdgo.GoUInt32), (type : stdgo.GoUInt8), (sect : stdgo.GoUInt8), (desc : stdgo.GoUInt16), (value : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
