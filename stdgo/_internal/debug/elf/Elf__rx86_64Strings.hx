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
var _rx86_64Strings : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName> = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>(43, 43, ...[
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((0u32 : stdgo.GoUInt32), ("R_X86_64_NONE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1u32 : stdgo.GoUInt32), ("R_X86_64_64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((2u32 : stdgo.GoUInt32), ("R_X86_64_PC32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((3u32 : stdgo.GoUInt32), ("R_X86_64_GOT32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((4u32 : stdgo.GoUInt32), ("R_X86_64_PLT32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((5u32 : stdgo.GoUInt32), ("R_X86_64_COPY" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((6u32 : stdgo.GoUInt32), ("R_X86_64_GLOB_DAT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((7u32 : stdgo.GoUInt32), ("R_X86_64_JMP_SLOT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((8u32 : stdgo.GoUInt32), ("R_X86_64_RELATIVE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((9u32 : stdgo.GoUInt32), ("R_X86_64_GOTPCREL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((10u32 : stdgo.GoUInt32), ("R_X86_64_32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((11u32 : stdgo.GoUInt32), ("R_X86_64_32S" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((12u32 : stdgo.GoUInt32), ("R_X86_64_16" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((13u32 : stdgo.GoUInt32), ("R_X86_64_PC16" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((14u32 : stdgo.GoUInt32), ("R_X86_64_8" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((15u32 : stdgo.GoUInt32), ("R_X86_64_PC8" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((16u32 : stdgo.GoUInt32), ("R_X86_64_DTPMOD64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((17u32 : stdgo.GoUInt32), ("R_X86_64_DTPOFF64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((18u32 : stdgo.GoUInt32), ("R_X86_64_TPOFF64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((19u32 : stdgo.GoUInt32), ("R_X86_64_TLSGD" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((20u32 : stdgo.GoUInt32), ("R_X86_64_TLSLD" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((21u32 : stdgo.GoUInt32), ("R_X86_64_DTPOFF32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((22u32 : stdgo.GoUInt32), ("R_X86_64_GOTTPOFF" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((23u32 : stdgo.GoUInt32), ("R_X86_64_TPOFF32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((24u32 : stdgo.GoUInt32), ("R_X86_64_PC64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((25u32 : stdgo.GoUInt32), ("R_X86_64_GOTOFF64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((26u32 : stdgo.GoUInt32), ("R_X86_64_GOTPC32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((27u32 : stdgo.GoUInt32), ("R_X86_64_GOT64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((28u32 : stdgo.GoUInt32), ("R_X86_64_GOTPCREL64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((29u32 : stdgo.GoUInt32), ("R_X86_64_GOTPC64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((30u32 : stdgo.GoUInt32), ("R_X86_64_GOTPLT64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((31u32 : stdgo.GoUInt32), ("R_X86_64_PLTOFF64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((32u32 : stdgo.GoUInt32), ("R_X86_64_SIZE32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((33u32 : stdgo.GoUInt32), ("R_X86_64_SIZE64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((34u32 : stdgo.GoUInt32), ("R_X86_64_GOTPC32_TLSDESC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((35u32 : stdgo.GoUInt32), ("R_X86_64_TLSDESC_CALL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((36u32 : stdgo.GoUInt32), ("R_X86_64_TLSDESC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((37u32 : stdgo.GoUInt32), ("R_X86_64_IRELATIVE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((38u32 : stdgo.GoUInt32), ("R_X86_64_RELATIVE64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((39u32 : stdgo.GoUInt32), ("R_X86_64_PC32_BND" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((40u32 : stdgo.GoUInt32), ("R_X86_64_PLT32_BND" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((41u32 : stdgo.GoUInt32), ("R_X86_64_GOTPCRELX" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((42u32 : stdgo.GoUInt32), ("R_X86_64_REX_GOTPCRELX" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName)].concat([for (i in 43 ... (43 > 43 ? 43 : 43 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_T_intName.T_intName)])) : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>);
