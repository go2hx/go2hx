package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.VoidType_static_extension) abstract VoidType(stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType) from stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType to stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public function new(?commonType:CommonType) this = new stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType(commonType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
