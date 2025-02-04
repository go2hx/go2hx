package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_unsupportedtype_static_extension.UnsupportedType_static_extension) class UnsupportedType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType);
    public var tag : stdgo._internal.debug.dwarf.Dwarf_tag.Tag = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType, ?tag:stdgo._internal.debug.dwarf.Dwarf_tag.Tag) {
        if (commonType != null) this.commonType = commonType;
        if (tag != null) this.tag = tag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:check32 this.commonType.common;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check32 this.commonType.size;
    public function __copy__() {
        return new UnsupportedType(commonType, tag);
    }
}
