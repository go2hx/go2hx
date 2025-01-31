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
var _ralphaStrings : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName> = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>(28, 28, ...[
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((0u32 : stdgo.GoUInt32), ("R_ALPHA_NONE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1u32 : stdgo.GoUInt32), ("R_ALPHA_REFLONG" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((2u32 : stdgo.GoUInt32), ("R_ALPHA_REFQUAD" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((3u32 : stdgo.GoUInt32), ("R_ALPHA_GPREL32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((4u32 : stdgo.GoUInt32), ("R_ALPHA_LITERAL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((5u32 : stdgo.GoUInt32), ("R_ALPHA_LITUSE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((6u32 : stdgo.GoUInt32), ("R_ALPHA_GPDISP" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((7u32 : stdgo.GoUInt32), ("R_ALPHA_BRADDR" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((8u32 : stdgo.GoUInt32), ("R_ALPHA_HINT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((9u32 : stdgo.GoUInt32), ("R_ALPHA_SREL16" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((10u32 : stdgo.GoUInt32), ("R_ALPHA_SREL32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((11u32 : stdgo.GoUInt32), ("R_ALPHA_SREL64" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((12u32 : stdgo.GoUInt32), ("R_ALPHA_OP_PUSH" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((13u32 : stdgo.GoUInt32), ("R_ALPHA_OP_STORE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((14u32 : stdgo.GoUInt32), ("R_ALPHA_OP_PSUB" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((15u32 : stdgo.GoUInt32), ("R_ALPHA_OP_PRSHIFT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((16u32 : stdgo.GoUInt32), ("R_ALPHA_GPVALUE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((17u32 : stdgo.GoUInt32), ("R_ALPHA_GPRELHIGH" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((18u32 : stdgo.GoUInt32), ("R_ALPHA_GPRELLOW" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((19u32 : stdgo.GoUInt32), ("R_ALPHA_IMMED_GP_16" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((20u32 : stdgo.GoUInt32), ("R_ALPHA_IMMED_GP_HI32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((21u32 : stdgo.GoUInt32), ("R_ALPHA_IMMED_SCN_HI32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((22u32 : stdgo.GoUInt32), ("R_ALPHA_IMMED_BR_HI32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((23u32 : stdgo.GoUInt32), ("R_ALPHA_IMMED_LO32" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((24u32 : stdgo.GoUInt32), ("R_ALPHA_COPY" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((25u32 : stdgo.GoUInt32), ("R_ALPHA_GLOB_DAT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((26u32 : stdgo.GoUInt32), ("R_ALPHA_JMP_SLOT" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((27u32 : stdgo.GoUInt32), ("R_ALPHA_RELATIVE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName)].concat([for (i in 28 ... (28 > 28 ? 28 : 28 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_T_intName.T_intName)])) : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>);
