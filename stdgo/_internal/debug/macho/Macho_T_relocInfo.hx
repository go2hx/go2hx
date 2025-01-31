package stdgo._internal.debug.macho;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.debug.macho.Macho_T_relocInfo_static_extension.T_relocInfo_static_extension) class T_relocInfo {
    public var addr : stdgo.GoUInt32 = 0;
    public var symnum : stdgo.GoUInt32 = 0;
    public function new(?addr:stdgo.GoUInt32, ?symnum:stdgo.GoUInt32) {
        if (addr != null) this.addr = addr;
        if (symnum != null) this.symnum = symnum;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_relocInfo(addr, symnum);
    }
}
