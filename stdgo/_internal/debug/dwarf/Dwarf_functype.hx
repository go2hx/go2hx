package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_functype_static_extension.FuncType_static_extension) class FuncType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType);
    public var returnType : stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
    public var paramType : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType, ?returnType:stdgo._internal.debug.dwarf.Dwarf_type_.Type_, ?paramType:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>) {
        if (commonType != null) this.commonType = commonType;
        if (returnType != null) this.returnType = returnType;
        if (paramType != null) this.paramType = paramType;
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
        return new FuncType(commonType, returnType, paramType);
    }
}
