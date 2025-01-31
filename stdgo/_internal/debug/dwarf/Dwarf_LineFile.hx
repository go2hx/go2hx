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
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_LineFile_static_extension.LineFile_static_extension) class LineFile {
    public var name : stdgo.GoString = "";
    public var mtime : stdgo.GoUInt64 = 0;
    public var length_ : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?mtime:stdgo.GoUInt64, ?length_:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (mtime != null) this.mtime = mtime;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LineFile(name, mtime, length_);
    }
}
