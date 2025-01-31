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
function sT_INFO(_bind:stdgo._internal.debug.elf.Elf_SymBind.SymBind, _typ:stdgo._internal.debug.elf.Elf_SymType.SymType):stdgo.GoUInt8 {
        return (((_bind : stdgo.GoUInt8) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | ((_typ : stdgo.GoUInt8) & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
    }
