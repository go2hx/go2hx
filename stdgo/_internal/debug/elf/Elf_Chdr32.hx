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
@:structInit @:using(stdgo._internal.debug.elf.Elf_Chdr32_static_extension.Chdr32_static_extension) class Chdr32 {
    public var type : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public var addralign : stdgo.GoUInt32 = 0;
    public function new(?type:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?addralign:stdgo.GoUInt32) {
        if (type != null) this.type = type;
        if (size != null) this.size = size;
        if (addralign != null) this.addralign = addralign;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Chdr32(type, size, addralign);
    }
}
