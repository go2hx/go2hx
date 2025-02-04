package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_typedeftype_static_extension.TypedefType_static_extension) class TypedefType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType);
    public var type : stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType, ?type:stdgo._internal.debug.dwarf.Dwarf_type_.Type_) {
        if (commonType != null) this.commonType = commonType;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:check32 this.commonType.common;
    public function __copy__() {
        return new TypedefType(commonType, type);
    }
}
