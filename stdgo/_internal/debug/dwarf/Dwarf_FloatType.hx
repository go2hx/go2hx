package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_FloatType_static_extension.FloatType_static_extension) class FloatType {
    @:embedded
    public var basicType : stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType = ({} : stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType);
    public function new(?basicType:stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType) {
        if (basicType != null) this.basicType = basicType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function basic():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> return this.basicType.basic();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return this.basicType.common();
    @:embedded
    public function size():stdgo.GoInt64 return this.basicType.size();
    @:embedded
    public function string():stdgo.GoString return this.basicType.string();
    public function __copy__() {
        return new FloatType(basicType);
    }
}
