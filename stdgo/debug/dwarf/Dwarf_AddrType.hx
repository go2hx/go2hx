package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.AddrType_static_extension) abstract AddrType(stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType) from stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType to stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType {
    public var basicType(get, set) : BasicType;
    function get_basicType():BasicType return this.basicType;
    function set_basicType(v:BasicType):BasicType {
        this.basicType = v;
        return v;
    }
    public function new(?basicType:BasicType) this = new stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType(basicType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
