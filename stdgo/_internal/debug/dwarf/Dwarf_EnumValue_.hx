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
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_EnumValue__static_extension.EnumValue__static_extension) class EnumValue_ {
    public var name : stdgo.GoString = "";
    public var val : stdgo.GoInt64 = 0;
    public function new(?name:stdgo.GoString, ?val:stdgo.GoInt64) {
        if (name != null) this.name = name;
        if (val != null) this.val = val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EnumValue_(name, val);
    }
}
