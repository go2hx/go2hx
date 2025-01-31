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
var _stbStrings : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName> = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>(7, 7, ...[(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((0u32 : stdgo.GoUInt32), ("STB_LOCAL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName), (new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1u32 : stdgo.GoUInt32), ("STB_GLOBAL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName), (new stdgo._internal.debug.elf.Elf_T_intName.T_intName((2u32 : stdgo.GoUInt32), ("STB_WEAK" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName), (new stdgo._internal.debug.elf.Elf_T_intName.T_intName((10u32 : stdgo.GoUInt32), ("STB_LOOS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName), (new stdgo._internal.debug.elf.Elf_T_intName.T_intName((12u32 : stdgo.GoUInt32), ("STB_HIOS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName), (new stdgo._internal.debug.elf.Elf_T_intName.T_intName((13u32 : stdgo.GoUInt32), ("STB_LOPROC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName), (new stdgo._internal.debug.elf.Elf_T_intName.T_intName((15u32 : stdgo.GoUInt32), ("STB_HIPROC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_T_intName.T_intName)])) : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>);
