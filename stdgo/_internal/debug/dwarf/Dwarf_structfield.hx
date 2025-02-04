package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_structfield_static_extension.StructField_static_extension) class StructField {
    public var name : stdgo.GoString = "";
    public var type : stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
    public var byteOffset : stdgo.GoInt64 = 0;
    public var byteSize : stdgo.GoInt64 = 0;
    public var bitOffset : stdgo.GoInt64 = 0;
    public var dataBitOffset : stdgo.GoInt64 = 0;
    public var bitSize : stdgo.GoInt64 = 0;
    public function new(?name:stdgo.GoString, ?type:stdgo._internal.debug.dwarf.Dwarf_type_.Type_, ?byteOffset:stdgo.GoInt64, ?byteSize:stdgo.GoInt64, ?bitOffset:stdgo.GoInt64, ?dataBitOffset:stdgo.GoInt64, ?bitSize:stdgo.GoInt64) {
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (byteOffset != null) this.byteOffset = byteOffset;
        if (byteSize != null) this.byteSize = byteSize;
        if (bitOffset != null) this.bitOffset = bitOffset;
        if (dataBitOffset != null) this.dataBitOffset = dataBitOffset;
        if (bitSize != null) this.bitSize = bitSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, type, byteOffset, byteSize, bitOffset, dataBitOffset, bitSize);
    }
}
