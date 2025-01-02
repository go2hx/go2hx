package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_EnumType_static_extension.EnumType_static_extension) class EnumType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var enumName : stdgo.GoString = "";
    public var val : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?enumName:stdgo.GoString, ?val:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>) {
        if (commonType != null) this.commonType = commonType;
        if (enumName != null) this.enumName = enumName;
        if (val != null) this.val = val;
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
        return new EnumType(commonType, enumName, val);
    }
}
