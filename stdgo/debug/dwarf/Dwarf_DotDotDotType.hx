package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.DotDotDotType_static_extension) abstract DotDotDotType(stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType) from stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType to stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public function new(?commonType:CommonType) this = new stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType(commonType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
