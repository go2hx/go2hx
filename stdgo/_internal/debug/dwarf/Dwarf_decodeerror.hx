package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_decodeerror_static_extension.DecodeError_static_extension) class DecodeError {
    public var name : stdgo.GoString = "";
    public var offset : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var err : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?offset:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?err:stdgo.GoString) {
        if (name != null) this.name = name;
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DecodeError(name, offset, err);
    }
}
