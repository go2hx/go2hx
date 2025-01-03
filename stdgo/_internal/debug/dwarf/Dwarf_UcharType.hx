package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_UcharType_static_extension.UcharType_static_extension) class UcharType {
    @:embedded
    public var basicType : stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType = ({} : stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType);
    public function new(?basicType:stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType) {
        if (basicType != null) this.basicType = basicType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var basic(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_basic():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> return @:check3 (this.basicType ?? throw "null pointer derefrence").basic;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:check3 (this.basicType ?? throw "null pointer derefrence").common;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check3 (this.basicType ?? throw "null pointer derefrence").size;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this.basicType ?? throw "null pointer derefrence").string;
    public function __copy__() {
        return new UcharType(basicType);
    }
}
