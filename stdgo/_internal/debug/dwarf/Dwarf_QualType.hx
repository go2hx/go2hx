package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_QualType_static_extension.QualType_static_extension) class QualType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var qual : stdgo.GoString = "";
    public var type : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?qual:stdgo.GoString, ?type:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_) {
        if (commonType != null) this.commonType = commonType;
        if (qual != null) this.qual = qual;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:check3 this.commonType.common;
    public function __copy__() {
        return new QualType(commonType, qual, type);
    }
}
