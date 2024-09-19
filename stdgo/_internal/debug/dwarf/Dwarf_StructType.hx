package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_StructType_static_extension.StructType_static_extension) class StructType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var structName : stdgo.GoString = "";
    public var kind : stdgo.GoString = "";
    public var field : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>);
    public var incomplete : Bool = false;
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?structName:stdgo.GoString, ?kind:stdgo.GoString, ?field:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>, ?incomplete:Bool) {
        if (commonType != null) this.commonType = commonType;
        if (structName != null) this.structName = structName;
        if (kind != null) this.kind = kind;
        if (field != null) this.field = field;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return this.commonType.common();
    @:embedded
    public function size():stdgo.GoInt64 return this.commonType.size();
    public function __copy__() {
        return new StructType(commonType, structName, kind, field, incomplete);
    }
}
