package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_UnsupportedType_static_extension.UnsupportedType_static_extension) class UnsupportedType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var tag : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?tag:stdgo._internal.debug.dwarf.Dwarf_Tag.Tag) {
        if (commonType != null) this.commonType = commonType;
        if (tag != null) this.tag = tag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:check3 (this.commonType ?? throw "null pointer derefrence").common;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check3 (this.commonType ?? throw "null pointer derefrence").size;
    public function __copy__() {
        return new UnsupportedType(commonType, tag);
    }
}
