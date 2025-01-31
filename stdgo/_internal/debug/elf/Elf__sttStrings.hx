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
var _sttStrings : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName> = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>(11, 11, ...[
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((0u32 : stdgo.GoUInt32), ("STT_NOTYPE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1u32 : stdgo.GoUInt32), ("STT_OBJECT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((2u32 : stdgo.GoUInt32), ("STT_FUNC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((3u32 : stdgo.GoUInt32), ("STT_SECTION" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((4u32 : stdgo.GoUInt32), ("STT_FILE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((5u32 : stdgo.GoUInt32), ("STT_COMMON" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((6u32 : stdgo.GoUInt32), ("STT_TLS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((10u32 : stdgo.GoUInt32), ("STT_LOOS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((12u32 : stdgo.GoUInt32), ("STT_HIOS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((13u32 : stdgo.GoUInt32), ("STT_LOPROC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((15u32 : stdgo.GoUInt32), ("STT_HIPROC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_T_intName.T_intName)])) : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>);
