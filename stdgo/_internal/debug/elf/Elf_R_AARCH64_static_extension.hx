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
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_AARCH64_asInterface) class R_AARCH64_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_R_AARCH64.R_AARCH64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_AARCH64.R_AARCH64 = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__raarch64Strings._raarch64Strings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_R_AARCH64.R_AARCH64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_AARCH64.R_AARCH64 = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__raarch64Strings._raarch64Strings, false)?.__copy__();
    }
}
