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
@:structInit @:using(stdgo._internal.debug.elf.Elf_Rel32_static_extension.Rel32_static_extension) class Rel32 {
    public var off : stdgo.GoUInt32 = 0;
    public var info : stdgo.GoUInt32 = 0;
    public function new(?off:stdgo.GoUInt32, ?info:stdgo.GoUInt32) {
        if (off != null) this.off = off;
        if (info != null) this.info = info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rel32(off, info);
    }
}
