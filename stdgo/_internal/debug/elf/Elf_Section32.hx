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
@:structInit @:using(stdgo._internal.debug.elf.Elf_Section32_static_extension.Section32_static_extension) class Section32 {
    public var name : stdgo.GoUInt32 = 0;
    public var type : stdgo.GoUInt32 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public var addr : stdgo.GoUInt32 = 0;
    public var off : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public var link : stdgo.GoUInt32 = 0;
    public var info : stdgo.GoUInt32 = 0;
    public var addralign : stdgo.GoUInt32 = 0;
    public var entsize : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoUInt32, ?type:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?addr:stdgo.GoUInt32, ?off:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?link:stdgo.GoUInt32, ?info:stdgo.GoUInt32, ?addralign:stdgo.GoUInt32, ?entsize:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (flags != null) this.flags = flags;
        if (addr != null) this.addr = addr;
        if (off != null) this.off = off;
        if (size != null) this.size = size;
        if (link != null) this.link = link;
        if (info != null) this.info = info;
        if (addralign != null) this.addralign = addralign;
        if (entsize != null) this.entsize = entsize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Section32(name, type, flags, addr, off, size, link, info, addralign, entsize);
    }
}
