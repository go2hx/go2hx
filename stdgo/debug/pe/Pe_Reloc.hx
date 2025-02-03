package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.Reloc_static_extension) abstract Reloc(stdgo._internal.debug.pe.Pe_Reloc.Reloc) from stdgo._internal.debug.pe.Pe_Reloc.Reloc to stdgo._internal.debug.pe.Pe_Reloc.Reloc {
    public var virtualAddress(get, set) : std.UInt;
    function get_virtualAddress():std.UInt return this.virtualAddress;
    function set_virtualAddress(v:std.UInt):std.UInt {
        this.virtualAddress = (v : stdgo.GoUInt32);
        return v;
    }
    public var symbolTableIndex(get, set) : std.UInt;
    function get_symbolTableIndex():std.UInt return this.symbolTableIndex;
    function set_symbolTableIndex(v:std.UInt):std.UInt {
        this.symbolTableIndex = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?virtualAddress:std.UInt, ?symbolTableIndex:std.UInt, ?type:std.UInt) this = new stdgo._internal.debug.pe.Pe_Reloc.Reloc((virtualAddress : stdgo.GoUInt32), (symbolTableIndex : stdgo.GoUInt32), (type : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
