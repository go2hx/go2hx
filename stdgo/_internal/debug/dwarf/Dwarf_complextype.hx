package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_complextype_static_extension.ComplexType_static_extension) class ComplexType {
    @:embedded
    public var basicType : stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType = ({} : stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType);
    public function new(?basicType:stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType) {
        if (basicType != null) this.basicType = basicType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var basic(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_basic():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType> return @:check32 this.basicType.basic;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:check32 this.basicType.common;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check32 this.basicType.size;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this.basicType.string;
    public function __copy__() {
        return new ComplexType(basicType);
    }
}
