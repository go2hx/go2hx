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
@:structInit @:using(stdgo._internal.debug.elf.Elf_Sym64_static_extension.Sym64_static_extension) class Sym64 {
    public var name : stdgo.GoUInt32 = 0;
    public var info : stdgo.GoUInt8 = 0;
    public var other : stdgo.GoUInt8 = 0;
    public var shndx : stdgo.GoUInt16 = 0;
    public var value : stdgo.GoUInt64 = 0;
    public var size : stdgo.GoUInt64 = 0;
    public function new(?name:stdgo.GoUInt32, ?info:stdgo.GoUInt8, ?other:stdgo.GoUInt8, ?shndx:stdgo.GoUInt16, ?value:stdgo.GoUInt64, ?size:stdgo.GoUInt64) {
        if (name != null) this.name = name;
        if (info != null) this.info = info;
        if (other != null) this.other = other;
        if (shndx != null) this.shndx = shndx;
        if (value != null) this.value = value;
        if (size != null) this.size = size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Sym64(name, info, other, shndx, value, size);
    }
}
