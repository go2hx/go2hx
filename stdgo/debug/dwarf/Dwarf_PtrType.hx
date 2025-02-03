package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.PtrType_static_extension) abstract PtrType(stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType) from stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType to stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public function new(?commonType:CommonType, ?type:Type_) this = new stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType(commonType, type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
