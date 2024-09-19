package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_ArrayType_static_extension.ArrayType_static_extension) class ArrayType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var type : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
    public var strideBitSize : stdgo.GoInt64 = 0;
    public var count : stdgo.GoInt64 = 0;
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?type:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_, ?strideBitSize:stdgo.GoInt64, ?count:stdgo.GoInt64) {
        if (commonType != null) this.commonType = commonType;
        if (type != null) this.type = type;
        if (strideBitSize != null) this.strideBitSize = strideBitSize;
        if (count != null) this.count = count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return this.commonType.common();
    public function __copy__() {
        return new ArrayType(commonType, type, strideBitSize, count);
    }
}
