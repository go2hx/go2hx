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
@:structInit @:using(stdgo._internal.debug.macho.Macho_SegmentHeader_static_extension.SegmentHeader_static_extension) class SegmentHeader {
    public var cmd : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd);
    public var len : stdgo.GoUInt32 = 0;
    public var name : stdgo.GoString = "";
    public var addr : stdgo.GoUInt64 = 0;
    public var memsz : stdgo.GoUInt64 = 0;
    public var offset : stdgo.GoUInt64 = 0;
    public var filesz : stdgo.GoUInt64 = 0;
    public var maxprot : stdgo.GoUInt32 = 0;
    public var prot : stdgo.GoUInt32 = 0;
    public var nsect : stdgo.GoUInt32 = 0;
    public var flag : stdgo.GoUInt32 = 0;
    public function new(?cmd:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd, ?len:stdgo.GoUInt32, ?name:stdgo.GoString, ?addr:stdgo.GoUInt64, ?memsz:stdgo.GoUInt64, ?offset:stdgo.GoUInt64, ?filesz:stdgo.GoUInt64, ?maxprot:stdgo.GoUInt32, ?prot:stdgo.GoUInt32, ?nsect:stdgo.GoUInt32, ?flag:stdgo.GoUInt32) {
        if (cmd != null) this.cmd = cmd;
        if (len != null) this.len = len;
        if (name != null) this.name = name;
        if (addr != null) this.addr = addr;
        if (memsz != null) this.memsz = memsz;
        if (offset != null) this.offset = offset;
        if (filesz != null) this.filesz = filesz;
        if (maxprot != null) this.maxprot = maxprot;
        if (prot != null) this.prot = prot;
        if (nsect != null) this.nsect = nsect;
        if (flag != null) this.flag = flag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SegmentHeader(
cmd,
len,
name,
addr,
memsz,
offset,
filesz,
maxprot,
prot,
nsect,
flag);
    }
}
