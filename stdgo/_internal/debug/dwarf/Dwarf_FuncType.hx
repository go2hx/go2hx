package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_FuncType_static_extension.FuncType_static_extension) class FuncType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var returnType : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
    public var paramType : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?returnType:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_, ?paramType:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>) {
        if (commonType != null) this.commonType = commonType;
        if (returnType != null) this.returnType = returnType;
        if (paramType != null) this.paramType = paramType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return this.commonType.common();
    @:embedded
    public function size():stdgo.GoInt64 return this.commonType.size();
    public function __copy__() {
        return new FuncType(commonType, returnType, paramType);
    }
}
