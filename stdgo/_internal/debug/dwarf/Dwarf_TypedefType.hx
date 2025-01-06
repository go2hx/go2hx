package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_TypedefType_static_extension.TypedefType_static_extension) class TypedefType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var type : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?type:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_) {
        if (commonType != null) this.commonType = commonType;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:check3 this.commonType.common;
    public function __copy__() {
        return new TypedefType(commonType, type);
    }
}
