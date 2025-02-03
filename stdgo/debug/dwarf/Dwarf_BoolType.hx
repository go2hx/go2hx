package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.BoolType_static_extension) abstract BoolType(stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType) from stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType to stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType {
    public var basicType(get, set) : BasicType;
    function get_basicType():BasicType return this.basicType;
    function set_basicType(v:BasicType):BasicType {
        this.basicType = v;
        return v;
    }
    public function new(?basicType:BasicType) this = new stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType(basicType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
