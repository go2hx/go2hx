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
final pF_W : stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag = (2u32 : stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag);
