package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_structtype_static_extension.StructType_static_extension) class StructType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType);
    public var structName : stdgo.GoString = "";
    public var kind : stdgo.GoString = "";
    public var field : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>);
    public var incomplete : Bool = false;
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType, ?structName:stdgo.GoString, ?kind:stdgo.GoString, ?field:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>, ?incomplete:Bool) {
        if (commonType != null) this.commonType = commonType;
        if (structName != null) this.structName = structName;
        if (kind != null) this.kind = kind;
        if (field != null) this.field = field;
        if (incomplete != null) this.incomplete = incomplete;
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
        return new StructType(commonType, structName, kind, field, incomplete);
    }
}
