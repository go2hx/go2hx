package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_DecodeError_static_extension.DecodeError_static_extension) class DecodeError {
    public var name : stdgo.GoString = "";
    public var offset : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
    public var err : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?offset:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, ?err:stdgo.GoString) {
        if (name != null) this.name = name;
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DecodeError(name, offset, err);
    }
}
