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
@:structInit @:using(stdgo._internal.debug.macho.Macho_FatArchHeader_static_extension.FatArchHeader_static_extension) class FatArchHeader {
    public var cpu : stdgo._internal.debug.macho.Macho_Cpu.Cpu = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_Cpu.Cpu);
    public var subCpu : stdgo.GoUInt32 = 0;
    public var offset : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public var align : stdgo.GoUInt32 = 0;
    public function new(?cpu:stdgo._internal.debug.macho.Macho_Cpu.Cpu, ?subCpu:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?align:stdgo.GoUInt32) {
        if (cpu != null) this.cpu = cpu;
        if (subCpu != null) this.subCpu = subCpu;
        if (offset != null) this.offset = offset;
        if (size != null) this.size = size;
        if (align != null) this.align = align;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FatArchHeader(cpu, subCpu, offset, size, align);
    }
}
