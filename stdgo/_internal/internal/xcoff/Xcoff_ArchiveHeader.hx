package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_ArchiveHeader_static_extension.ArchiveHeader_static_extension) class ArchiveHeader {
    public var _magic : stdgo.GoString = "";
    public function new(?_magic:stdgo.GoString) {
        if (_magic != null) this._magic = _magic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ArchiveHeader(_magic);
    }
}
