package stdgo._internal.debug.elf;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.internal.zstd.Zstd;
@:structInit @:using(stdgo._internal.debug.elf.Elf_SectionHeader_static_extension.SectionHeader_static_extension) class SectionHeader {
    public var name : stdgo.GoString = "";
    public var type : stdgo._internal.debug.elf.Elf_SectionType.SectionType = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_SectionType.SectionType);
    public var flags : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag);
    public var addr : stdgo.GoUInt64 = 0;
    public var offset : stdgo.GoUInt64 = 0;
    public var size : stdgo.GoUInt64 = 0;
    public var link : stdgo.GoUInt32 = 0;
    public var info : stdgo.GoUInt32 = 0;
    public var addralign : stdgo.GoUInt64 = 0;
    public var entsize : stdgo.GoUInt64 = 0;
    public var fileSize : stdgo.GoUInt64 = 0;
    public function new(?name:stdgo.GoString, ?type:stdgo._internal.debug.elf.Elf_SectionType.SectionType, ?flags:stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag, ?addr:stdgo.GoUInt64, ?offset:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?link:stdgo.GoUInt32, ?info:stdgo.GoUInt32, ?addralign:stdgo.GoUInt64, ?entsize:stdgo.GoUInt64, ?fileSize:stdgo.GoUInt64) {
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (flags != null) this.flags = flags;
        if (addr != null) this.addr = addr;
        if (offset != null) this.offset = offset;
        if (size != null) this.size = size;
        if (link != null) this.link = link;
        if (info != null) this.info = info;
        if (addralign != null) this.addralign = addralign;
        if (entsize != null) this.entsize = entsize;
        if (fileSize != null) this.fileSize = fileSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader(
name,
type,
flags,
addr,
offset,
size,
link,
info,
addralign,
entsize,
fileSize);
    }
}
