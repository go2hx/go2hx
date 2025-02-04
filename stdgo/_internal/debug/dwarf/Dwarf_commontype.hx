package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_commontype_static_extension.CommonType_static_extension) class CommonType {
    public var byteSize : stdgo.GoInt64 = 0;
    public var name : stdgo.GoString = "";
    public function new(?byteSize:stdgo.GoInt64, ?name:stdgo.GoString) {
        if (byteSize != null) this.byteSize = byteSize;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommonType(byteSize, name);
    }
}
