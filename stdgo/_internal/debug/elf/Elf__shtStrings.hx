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
var _shtStrings : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName> = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>(29, 29, ...[
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((0u32 : stdgo.GoUInt32), ("SHT_NULL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1u32 : stdgo.GoUInt32), ("SHT_PROGBITS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((2u32 : stdgo.GoUInt32), ("SHT_SYMTAB" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((3u32 : stdgo.GoUInt32), ("SHT_STRTAB" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((4u32 : stdgo.GoUInt32), ("SHT_RELA" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((5u32 : stdgo.GoUInt32), ("SHT_HASH" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((6u32 : stdgo.GoUInt32), ("SHT_DYNAMIC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((7u32 : stdgo.GoUInt32), ("SHT_NOTE" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((8u32 : stdgo.GoUInt32), ("SHT_NOBITS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((9u32 : stdgo.GoUInt32), ("SHT_REL" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((10u32 : stdgo.GoUInt32), ("SHT_SHLIB" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((11u32 : stdgo.GoUInt32), ("SHT_DYNSYM" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((14u32 : stdgo.GoUInt32), ("SHT_INIT_ARRAY" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((15u32 : stdgo.GoUInt32), ("SHT_FINI_ARRAY" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((16u32 : stdgo.GoUInt32), ("SHT_PREINIT_ARRAY" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((17u32 : stdgo.GoUInt32), ("SHT_GROUP" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((18u32 : stdgo.GoUInt32), ("SHT_SYMTAB_SHNDX" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1610612736u32 : stdgo.GoUInt32), ("SHT_LOOS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1879048181u32 : stdgo.GoUInt32), ("SHT_GNU_ATTRIBUTES" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1879048182u32 : stdgo.GoUInt32), ("SHT_GNU_HASH" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1879048183u32 : stdgo.GoUInt32), ("SHT_GNU_LIBLIST" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1879048189u32 : stdgo.GoUInt32), ("SHT_GNU_VERDEF" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1879048190u32 : stdgo.GoUInt32), ("SHT_GNU_VERNEED" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1879048191u32 : stdgo.GoUInt32), ("SHT_GNU_VERSYM" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1879048192u32 : stdgo.GoUInt32), ("SHT_LOPROC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((1879048234u32 : stdgo.GoUInt32), ("SHT_MIPS_ABIFLAGS" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((2147483647u32 : stdgo.GoUInt32), ("SHT_HIPROC" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((-2147483648u32 : stdgo.GoUInt32), ("SHT_LOUSER" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName),
(new stdgo._internal.debug.elf.Elf_T_intName.T_intName((-1u32 : stdgo.GoUInt32), ("SHT_HIUSER" : stdgo.GoString)) : stdgo._internal.debug.elf.Elf_T_intName.T_intName)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_T_intName.T_intName)])) : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>);
