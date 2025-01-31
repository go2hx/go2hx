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
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_CommonType_static_extension.CommonType_static_extension) class CommonType {
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
