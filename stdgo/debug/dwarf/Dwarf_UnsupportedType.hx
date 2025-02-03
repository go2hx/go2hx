package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.UnsupportedType_static_extension) abstract UnsupportedType(stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType) from stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType to stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var tag(get, set) : Tag;
    function get_tag():Tag return this.tag;
    function set_tag(v:Tag):Tag {
        this.tag = v;
        return v;
    }
    public function new(?commonType:CommonType, ?tag:Tag) this = new stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType(commonType, tag);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
