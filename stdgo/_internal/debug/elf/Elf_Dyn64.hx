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
@:structInit @:using(stdgo._internal.debug.elf.Elf_Dyn64_static_extension.Dyn64_static_extension) class Dyn64 {
    public var tag : stdgo.GoInt64 = 0;
    public var val : stdgo.GoUInt64 = 0;
    public function new(?tag:stdgo.GoInt64, ?val:stdgo.GoUInt64) {
        if (tag != null) this.tag = tag;
        if (val != null) this.val = val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dyn64(tag, val);
    }
}
