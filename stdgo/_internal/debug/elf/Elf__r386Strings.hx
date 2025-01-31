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
var _r386Strings : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName> = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>(42, 42, ...[
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((0u32 : stdgo.GoUInt32), ("R_386_NONE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1u32 : stdgo.GoUInt32), ("R_386_32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((2u32 : stdgo.GoUInt32), ("R_386_PC32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((3u32 : stdgo.GoUInt32), ("R_386_GOT32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((4u32 : stdgo.GoUInt32), ("R_386_PLT32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((5u32 : stdgo.GoUInt32), ("R_386_COPY" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((6u32 : stdgo.GoUInt32), ("R_386_GLOB_DAT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((7u32 : stdgo.GoUInt32), ("R_386_JMP_SLOT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((8u32 : stdgo.GoUInt32), ("R_386_RELATIVE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((9u32 : stdgo.GoUInt32), ("R_386_GOTOFF" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((10u32 : stdgo.GoUInt32), ("R_386_GOTPC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((11u32 : stdgo.GoUInt32), ("R_386_32PLT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((14u32 : stdgo.GoUInt32), ("R_386_TLS_TPOFF" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((15u32 : stdgo.GoUInt32), ("R_386_TLS_IE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((16u32 : stdgo.GoUInt32), ("R_386_TLS_GOTIE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((17u32 : stdgo.GoUInt32), ("R_386_TLS_LE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((18u32 : stdgo.GoUInt32), ("R_386_TLS_GD" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((19u32 : stdgo.GoUInt32), ("R_386_TLS_LDM" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((20u32 : stdgo.GoUInt32), ("R_386_16" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((21u32 : stdgo.GoUInt32), ("R_386_PC16" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((22u32 : stdgo.GoUInt32), ("R_386_8" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((23u32 : stdgo.GoUInt32), ("R_386_PC8" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((24u32 : stdgo.GoUInt32), ("R_386_TLS_GD_32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((25u32 : stdgo.GoUInt32), ("R_386_TLS_GD_PUSH" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((26u32 : stdgo.GoUInt32), ("R_386_TLS_GD_CALL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((27u32 : stdgo.GoUInt32), ("R_386_TLS_GD_POP" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((28u32 : stdgo.GoUInt32), ("R_386_TLS_LDM_32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((29u32 : stdgo.GoUInt32), ("R_386_TLS_LDM_PUSH" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((30u32 : stdgo.GoUInt32), ("R_386_TLS_LDM_CALL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((31u32 : stdgo.GoUInt32), ("R_386_TLS_LDM_POP" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((32u32 : stdgo.GoUInt32), ("R_386_TLS_LDO_32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((33u32 : stdgo.GoUInt32), ("R_386_TLS_IE_32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((34u32 : stdgo.GoUInt32), ("R_386_TLS_LE_32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((35u32 : stdgo.GoUInt32), ("R_386_TLS_DTPMOD32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((36u32 : stdgo.GoUInt32), ("R_386_TLS_DTPOFF32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((37u32 : stdgo.GoUInt32), ("R_386_TLS_TPOFF32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((38u32 : stdgo.GoUInt32), ("R_386_SIZE32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((39u32 : stdgo.GoUInt32), ("R_386_TLS_GOTDESC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((40u32 : stdgo.GoUInt32), ("R_386_TLS_DESC_CALL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((41u32 : stdgo.GoUInt32), ("R_386_TLS_DESC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((42u32 : stdgo.GoUInt32), ("R_386_IRELATIVE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((43u32 : stdgo.GoUInt32), ("R_386_GOT32X" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName)].concat([for (i in 42 ... (42 > 42 ? 42 : 42 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_T_intName.T_intName)])) : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>);
