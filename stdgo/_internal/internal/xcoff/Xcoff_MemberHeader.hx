package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_MemberHeader_static_extension.MemberHeader_static_extension) class MemberHeader {
    public var name : stdgo.GoString = "";
    public var size : stdgo.GoUInt64 = 0;
    public function new(?name:stdgo.GoString, ?size:stdgo.GoUInt64) {
        if (name != null) this.name = name;
        if (size != null) this.size = size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MemberHeader(name, size);
    }
}
