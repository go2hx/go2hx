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
@:structInit @:using(stdgo._internal.debug.macho.Macho_FileHeader_static_extension.FileHeader_static_extension) class FileHeader {
    public var magic : stdgo.GoUInt32 = 0;
    public var cpu : stdgo._internal.debug.macho.Macho_Cpu.Cpu = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_Cpu.Cpu);
    public var subCpu : stdgo.GoUInt32 = 0;
    public var type : stdgo._internal.debug.macho.Macho_Type_.Type_ = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_Type_.Type_);
    public var ncmd : stdgo.GoUInt32 = 0;
    public var cmdsz : stdgo.GoUInt32 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public function new(?magic:stdgo.GoUInt32, ?cpu:stdgo._internal.debug.macho.Macho_Cpu.Cpu, ?subCpu:stdgo.GoUInt32, ?type:stdgo._internal.debug.macho.Macho_Type_.Type_, ?ncmd:stdgo.GoUInt32, ?cmdsz:stdgo.GoUInt32, ?flags:stdgo.GoUInt32) {
        if (magic != null) this.magic = magic;
        if (cpu != null) this.cpu = cpu;
        if (subCpu != null) this.subCpu = subCpu;
        if (type != null) this.type = type;
        if (ncmd != null) this.ncmd = ncmd;
        if (cmdsz != null) this.cmdsz = cmdsz;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(magic, cpu, subCpu, type, ncmd, cmdsz, flags);
    }
}
