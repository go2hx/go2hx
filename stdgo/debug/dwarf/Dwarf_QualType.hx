package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.QualType_static_extension) abstract QualType(stdgo._internal.debug.dwarf.Dwarf_QualType.QualType) from stdgo._internal.debug.dwarf.Dwarf_QualType.QualType to stdgo._internal.debug.dwarf.Dwarf_QualType.QualType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var qual(get, set) : String;
    function get_qual():String return this.qual;
    function set_qual(v:String):String {
        this.qual = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public function new(?commonType:CommonType, ?qual:String, ?type:Type_) this = new stdgo._internal.debug.dwarf.Dwarf_QualType.QualType(commonType, (qual : stdgo.GoString), type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
