package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_FileHeader_static_extension.FileHeader_static_extension) class FileHeader {
    public var targetMachine : stdgo.GoUInt16 = 0;
    public function new(?targetMachine:stdgo.GoUInt16) {
        if (targetMachine != null) this.targetMachine = targetMachine;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(targetMachine);
    }
}
