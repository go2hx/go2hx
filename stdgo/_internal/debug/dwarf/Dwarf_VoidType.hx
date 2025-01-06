package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_VoidType_static_extension.VoidType_static_extension) class VoidType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType) {
        if (commonType != null) this.commonType = commonType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:check3 this.commonType.common;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check3 this.commonType.size;
    public function __copy__() {
        return new VoidType(commonType);
    }
}
