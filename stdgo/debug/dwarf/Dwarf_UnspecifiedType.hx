package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.UnspecifiedType_static_extension) abstract UnspecifiedType(stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType) from stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType to stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType {
    public var basicType(get, set) : BasicType;
    function get_basicType():BasicType return this.basicType;
    function set_basicType(v:BasicType):BasicType {
        this.basicType = v;
        return v;
    }
    public function new(?basicType:BasicType) this = new stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType(basicType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
