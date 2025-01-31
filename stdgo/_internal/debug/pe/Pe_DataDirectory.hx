package stdgo._internal.debug.pe;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.debug.pe.Pe_DataDirectory_static_extension.DataDirectory_static_extension) class DataDirectory {
    public var virtualAddress : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public function new(?virtualAddress:stdgo.GoUInt32, ?size:stdgo.GoUInt32) {
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (size != null) this.size = size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DataDirectory(virtualAddress, size);
    }
}
