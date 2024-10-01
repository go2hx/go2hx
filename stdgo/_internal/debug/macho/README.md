# Module: `stdgo._internal.debug.macho`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString`](<#function-_cstring>)

- [`function _stringName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.macho.T_intName>, _goSyntax:Bool):stdgo.GoString`](<#function-_stringname>)

- [`function newFatFile(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.FatFile>;
}`](<#function-newfatfile>)

- [`function newFile(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.File>;
}`](<#function-newfile>)

- [`function open(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.File>;
}`](<#function-open>)

- [`function openFat(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.FatFile>;
}`](<#function-openfat>)

- [class Dylib](<#class-dylib>)

  - [`function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?name:stdgo.GoString, ?time:stdgo.GoUInt32, ?currentVersion:stdgo.GoUInt32, ?compatVersion:stdgo.GoUInt32):Void`](<#dylib-function-new>)

  - [`function raw():stdgo.Slice<stdgo.GoUInt8>`](<#dylib-function-raw>)

- [class DylibCmd](<#class-dylibcmd>)

  - [`function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?name:stdgo.GoUInt32, ?time:stdgo.GoUInt32, ?currentVersion:stdgo.GoUInt32, ?compatVersion:stdgo.GoUInt32):Void`](<#dylibcmd-function-new>)

- [class Dysymtab](<#class-dysymtab>)

  - [`function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?dysymtabCmd:stdgo._internal.debug.macho.DysymtabCmd, ?indirectSyms:stdgo.Slice<stdgo.GoUInt32>):Void`](<#dysymtab-function-new>)

  - [`function raw():stdgo.Slice<stdgo.GoUInt8>`](<#dysymtab-function-raw>)

- [class DysymtabCmd](<#class-dysymtabcmd>)

  - [`function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?ilocalsym:stdgo.GoUInt32, ?nlocalsym:stdgo.GoUInt32, ?iextdefsym:stdgo.GoUInt32, ?nextdefsym:stdgo.GoUInt32, ?iundefsym:stdgo.GoUInt32, ?nundefsym:stdgo.GoUInt32, ?tocoffset:stdgo.GoUInt32, ?ntoc:stdgo.GoUInt32, ?modtaboff:stdgo.GoUInt32, ?nmodtab:stdgo.GoUInt32, ?extrefsymoff:stdgo.GoUInt32, ?nextrefsyms:stdgo.GoUInt32, ?indirectsymoff:stdgo.GoUInt32, ?nindirectsyms:stdgo.GoUInt32, ?extreloff:stdgo.GoUInt32, ?nextrel:stdgo.GoUInt32, ?locreloff:stdgo.GoUInt32, ?nlocrel:stdgo.GoUInt32):Void`](<#dysymtabcmd-function-new>)

- [class FatArch](<#class-fatarch>)

  - [`function _parseSymtab(_symdat:stdgo.Slice<stdgo.GoUInt8>, _strtab:stdgo.Slice<stdgo.GoUInt8>, _cmddat:stdgo.Slice<stdgo.GoUInt8>, _hdr:stdgo.Ref<stdgo._internal.debug.macho.SymtabCmd>, _offset:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.Ref<stdgo._internal.debug.macho.Symtab>;}`](<#fatarch-function-_parsesymtab>)

  - [`function _pushSection(_sh:stdgo.Ref<stdgo._internal.debug.macho.Section>, _r:stdgo._internal.io.ReaderAt):stdgo.Error`](<#fatarch-function-_pushsection>)

  - [`function close():stdgo.Error`](<#fatarch-function-close>)

  - [`function dwarf():{ _1:stdgo.Error; _0:stdgo.Ref<stdgo._internal.debug.dwarf.Data>;}`](<#fatarch-function-dwarf>)

  - [`function importedLibraries():{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoString>;}`](<#fatarch-function-importedlibraries>)

  - [`function importedSymbols():{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoString>;}`](<#fatarch-function-importedsymbols>)

  - [`function new(?fatArchHeader:stdgo._internal.debug.macho.FatArchHeader, ?file:stdgo.Ref<stdgo._internal.debug.macho.File>):Void`](<#fatarch-function-new>)

  - [`function section(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Section>`](<#fatarch-function-section>)

  - [`function segment(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Segment>`](<#fatarch-function-segment>)

- [class FatArchHeader](<#class-fatarchheader>)

  - [`function new(?cpu:Null<stdgo._internal.debug.macho.Cpu>, ?subCpu:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?align:stdgo.GoUInt32):Void`](<#fatarchheader-function-new>)

- [class FatFile](<#class-fatfile>)

  - [`function new(?magic:stdgo.GoUInt32, ?arches:stdgo.Slice<stdgo._internal.debug.macho.FatArch>, ?_closer:Null<stdgo._internal.io.Closer>):Void`](<#fatfile-function-new>)

- [class File](<#class-file>)

  - [`function new(?fileHeader:stdgo._internal.debug.macho.FileHeader, ?byteOrder:Null<stdgo._internal.encoding.binary.ByteOrder>, ?loads:stdgo.Slice<stdgo._internal.debug.macho.Load>, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Section>>, ?symtab:stdgo.Ref<stdgo._internal.debug.macho.Symtab>, ?dysymtab:stdgo.Ref<stdgo._internal.debug.macho.Dysymtab>, ?_closer:Null<stdgo._internal.io.Closer>):Void`](<#file-function-new>)

- [class FileHeader](<#class-fileheader>)

  - [`function new(?magic:stdgo.GoUInt32, ?cpu:Null<stdgo._internal.debug.macho.Cpu>, ?subCpu:stdgo.GoUInt32, ?type:Null<stdgo._internal.debug.macho.Type_>, ?ncmd:stdgo.GoUInt32, ?cmdsz:stdgo.GoUInt32, ?flags:stdgo.GoUInt32):Void`](<#fileheader-function-new>)

- [class FormatError](<#class-formaterror>)

  - [`function new(?_off:stdgo.GoInt64, ?_msg:stdgo.GoString, ?_val:stdgo.AnyInterface):Void`](<#formaterror-function-new>)

- [class Nlist32](<#class-nlist32>)

  - [`function new(?name:stdgo.GoUInt32, ?type:stdgo.GoUInt8, ?sect:stdgo.GoUInt8, ?desc:stdgo.GoUInt16, ?value:stdgo.GoUInt32):Void`](<#nlist32-function-new>)

- [class Nlist64](<#class-nlist64>)

  - [`function new(?name:stdgo.GoUInt32, ?type:stdgo.GoUInt8, ?sect:stdgo.GoUInt8, ?desc:stdgo.GoUInt16, ?value:stdgo.GoUInt64):Void`](<#nlist64-function-new>)

- [class Regs386](<#class-regs386>)

  - [`function new(?ax:stdgo.GoUInt32, ?bx:stdgo.GoUInt32, ?cx:stdgo.GoUInt32, ?dx:stdgo.GoUInt32, ?di:stdgo.GoUInt32, ?si:stdgo.GoUInt32, ?bp:stdgo.GoUInt32, ?sp:stdgo.GoUInt32, ?ss:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?ip:stdgo.GoUInt32, ?cs:stdgo.GoUInt32, ?ds:stdgo.GoUInt32, ?es:stdgo.GoUInt32, ?fs:stdgo.GoUInt32, ?gs:stdgo.GoUInt32):Void`](<#regs386-function-new>)

- [class RegsAMD64](<#class-regsamd64>)

  - [`function new(?ax:stdgo.GoUInt64, ?bx:stdgo.GoUInt64, ?cx:stdgo.GoUInt64, ?dx:stdgo.GoUInt64, ?di:stdgo.GoUInt64, ?si:stdgo.GoUInt64, ?bp:stdgo.GoUInt64, ?sp:stdgo.GoUInt64, ?r8:stdgo.GoUInt64, ?r9:stdgo.GoUInt64, ?r10:stdgo.GoUInt64, ?r11:stdgo.GoUInt64, ?r12:stdgo.GoUInt64, ?r13:stdgo.GoUInt64, ?r14:stdgo.GoUInt64, ?r15:stdgo.GoUInt64, ?ip:stdgo.GoUInt64, ?flags:stdgo.GoUInt64, ?cs:stdgo.GoUInt64, ?fs:stdgo.GoUInt64, ?gs:stdgo.GoUInt64):Void`](<#regsamd64-function-new>)

- [class Reloc](<#class-reloc>)

  - [`function new(?addr:stdgo.GoUInt32, ?value:stdgo.GoUInt32, ?type:stdgo.GoUInt8, ?len:stdgo.GoUInt8, ?pcrel:Bool, ?extern_:Bool, ?scattered:Bool):Void`](<#reloc-function-new>)

- [class Rpath](<#class-rpath>)

  - [`function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?path:stdgo.GoString):Void`](<#rpath-function-new>)

  - [`function raw():stdgo.Slice<stdgo.GoUInt8>`](<#rpath-function-raw>)

- [class RpathCmd](<#class-rpathcmd>)

  - [`function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?path:stdgo.GoUInt32):Void`](<#rpathcmd-function-new>)

- [class Section](<#class-section>)

  - [`function new(?sectionHeader:stdgo._internal.debug.macho.SectionHeader, ?relocs:stdgo.Slice<stdgo._internal.debug.macho.Reloc>, ?readerAt:Null<stdgo._internal.io.ReaderAt>, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void`](<#section-function-new>)

  - [`function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#section-function-readat>)

- [class Section32](<#class-section32>)

  - [`function new(?name:stdgo.GoArray<stdgo.GoUInt8>, ?seg:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?align:stdgo.GoUInt32, ?reloff:stdgo.GoUInt32, ?nreloc:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?reserve1:stdgo.GoUInt32, ?reserve2:stdgo.GoUInt32):Void`](<#section32-function-new>)

- [class Section64](<#class-section64>)

  - [`function new(?name:stdgo.GoArray<stdgo.GoUInt8>, ?seg:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?offset:stdgo.GoUInt32, ?align:stdgo.GoUInt32, ?reloff:stdgo.GoUInt32, ?nreloc:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?reserve1:stdgo.GoUInt32, ?reserve2:stdgo.GoUInt32, ?reserve3:stdgo.GoUInt32):Void`](<#section64-function-new>)

- [class SectionHeader](<#class-sectionheader>)

  - [`function new(?name:stdgo.GoString, ?seg:stdgo.GoString, ?addr:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?offset:stdgo.GoUInt32, ?align:stdgo.GoUInt32, ?reloff:stdgo.GoUInt32, ?nreloc:stdgo.GoUInt32, ?flags:stdgo.GoUInt32):Void`](<#sectionheader-function-new>)

- [class Segment](<#class-segment>)

  - [`function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?segmentHeader:stdgo._internal.debug.macho.SegmentHeader, ?readerAt:Null<stdgo._internal.io.ReaderAt>, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void`](<#segment-function-new>)

  - [`function raw():stdgo.Slice<stdgo.GoUInt8>`](<#segment-function-raw>)

  - [`function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#segment-function-readat>)

- [class Segment32](<#class-segment32>)

  - [`function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?name:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt32, ?memsz:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?filesz:stdgo.GoUInt32, ?maxprot:stdgo.GoUInt32, ?prot:stdgo.GoUInt32, ?nsect:stdgo.GoUInt32, ?flag:stdgo.GoUInt32):Void`](<#segment32-function-new>)

- [class Segment64](<#class-segment64>)

  - [`function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?name:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt64, ?memsz:stdgo.GoUInt64, ?offset:stdgo.GoUInt64, ?filesz:stdgo.GoUInt64, ?maxprot:stdgo.GoUInt32, ?prot:stdgo.GoUInt32, ?nsect:stdgo.GoUInt32, ?flag:stdgo.GoUInt32):Void`](<#segment64-function-new>)

- [class SegmentHeader](<#class-segmentheader>)

  - [`function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?name:stdgo.GoString, ?addr:stdgo.GoUInt64, ?memsz:stdgo.GoUInt64, ?offset:stdgo.GoUInt64, ?filesz:stdgo.GoUInt64, ?maxprot:stdgo.GoUInt32, ?prot:stdgo.GoUInt32, ?nsect:stdgo.GoUInt32, ?flag:stdgo.GoUInt32):Void`](<#segmentheader-function-new>)

- [class Symbol](<#class-symbol>)

  - [`function new(?name:stdgo.GoString, ?type:stdgo.GoUInt8, ?sect:stdgo.GoUInt8, ?desc:stdgo.GoUInt16, ?value:stdgo.GoUInt64):Void`](<#symbol-function-new>)

- [class Symtab](<#class-symtab>)

  - [`function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?symtabCmd:stdgo._internal.debug.macho.SymtabCmd, ?syms:stdgo.Slice<stdgo._internal.debug.macho.Symbol>):Void`](<#symtab-function-new>)

  - [`function raw():stdgo.Slice<stdgo.GoUInt8>`](<#symtab-function-raw>)

- [class SymtabCmd](<#class-symtabcmd>)

  - [`function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?symoff:stdgo.GoUInt32, ?nsyms:stdgo.GoUInt32, ?stroff:stdgo.GoUInt32, ?strsize:stdgo.GoUInt32):Void`](<#symtabcmd-function-new>)

- [class T\_intName](<#class-t_intname>)

  - [`function new(?_i:stdgo.GoUInt32, ?_s:stdgo.GoString):Void`](<#t_intname-function-new>)

- [class T\_relocInfo](<#class-t_relocinfo>)

  - [`function new(?addr:stdgo.GoUInt32, ?symnum:stdgo.GoUInt32):Void`](<#t_relocinfo-function-new>)

- [class Thread](<#class-thread>)

  - [`function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?type:stdgo.GoUInt32, ?data:stdgo.Slice<stdgo.GoUInt32>):Void`](<#thread-function-new>)

- [typedef Cpu](<#typedef-cpu>)

- [typedef Load](<#typedef-load>)

- [typedef LoadBytes](<#typedef-loadbytes>)

- [typedef LoadCmd](<#typedef-loadcmd>)

- [typedef RelocTypeARM](<#typedef-reloctypearm>)

- [typedef RelocTypeARM64](<#typedef-reloctypearm64>)

- [typedef RelocTypeGeneric](<#typedef-reloctypegeneric>)

- [typedef RelocTypeX86\_64](<#typedef-reloctypex86_64>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef Type\_](<#typedef-type_>)

# Constants


```haxe
import stdgo._internal.debug.macho.Macho_x86_64_RELOC_UNSIGNED
```


```haxe
final __RelocTypeARM64_name:stdgo.GoString = (("ARM64_RELOC_UNSIGNEDARM64_RELOC_SUBTRACTORARM64_RELOC_BRANCH26ARM64_RELOC_PAGE21ARM64_RELOC_PAGEOFF12ARM64_RELOC_GOT_LOAD_PAGE21ARM64_RELOC_GOT_LOAD_PAGEOFF12ARM64_RELOC_POINTER_TO_GOTARM64_RELOC_TLVP_LOAD_PAGE21ARM64_RELOC_TLVP_LOAD_PAGEOFF12ARM64_RELOC_ADDEND" : stdgo.GoString))
```


```haxe
final __RelocTypeARM_name:stdgo.GoString = (("ARM_RELOC_VANILLAARM_RELOC_PAIRARM_RELOC_SECTDIFFARM_RELOC_LOCAL_SECTDIFFARM_RELOC_PB_LA_PTRARM_RELOC_BR24ARM_THUMB_RELOC_BR22ARM_THUMB_32BIT_BRANCHARM_RELOC_HALFARM_RELOC_HALF_SECTDIFF" : stdgo.GoString))
```


```haxe
final __RelocTypeGeneric_name:stdgo.GoString = (("GENERIC_RELOC_VANILLAGENERIC_RELOC_PAIRGENERIC_RELOC_SECTDIFFGENERIC_RELOC_PB_LA_PTRGENERIC_RELOC_LOCAL_SECTDIFFGENERIC_RELOC_TLV" : stdgo.GoString))
```


```haxe
final __RelocTypeX86_64_name:stdgo.GoString = (("X86_64_RELOC_UNSIGNEDX86_64_RELOC_SIGNEDX86_64_RELOC_BRANCHX86_64_RELOC_GOT_LOADX86_64_RELOC_GOTX86_64_RELOC_SUBTRACTORX86_64_RELOC_SIGNED_1X86_64_RELOC_SIGNED_2X86_64_RELOC_SIGNED_4X86_64_RELOC_TLV" : stdgo.GoString))
```


```haxe
final _cpuArch64:stdgo.GoUInt64 = ((16777216i64 : stdgo.GoUInt64))
```


```haxe
final _fatArchHeaderSize:stdgo.GoUInt64 = ((20i64 : stdgo.GoUInt64))
```


```haxe
final _fileHeaderSize32:stdgo.GoUInt64 = ((28i64 : stdgo.GoUInt64))
```


```haxe
final _fileHeaderSize64:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final arm64_RELOC_ADDEND:stdgo._internal.debug.macho.RelocTypeARM64 = ((10 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_BRANCH26:stdgo._internal.debug.macho.RelocTypeARM64 = ((2 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_GOT_LOAD_PAGE21:stdgo._internal.debug.macho.RelocTypeARM64 = ((5 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_GOT_LOAD_PAGEOFF12:stdgo._internal.debug.macho.RelocTypeARM64 = ((6 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_PAGE21:stdgo._internal.debug.macho.RelocTypeARM64 = ((3 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_PAGEOFF12:stdgo._internal.debug.macho.RelocTypeARM64 = ((4 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_POINTER_TO_GOT:stdgo._internal.debug.macho.RelocTypeARM64 = ((7 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_SUBTRACTOR:stdgo._internal.debug.macho.RelocTypeARM64 = ((1 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_TLVP_LOAD_PAGE21:stdgo._internal.debug.macho.RelocTypeARM64 = ((8 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_TLVP_LOAD_PAGEOFF12:stdgo._internal.debug.macho.RelocTypeARM64 = ((9 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm64_RELOC_UNSIGNED:stdgo._internal.debug.macho.RelocTypeARM64 = ((0 : stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64))
```


```haxe
final arm_RELOC_BR24:stdgo._internal.debug.macho.RelocTypeARM = ((5 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_RELOC_HALF:stdgo._internal.debug.macho.RelocTypeARM = ((8 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_RELOC_HALF_SECTDIFF:stdgo._internal.debug.macho.RelocTypeARM = ((9 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_RELOC_LOCAL_SECTDIFF:stdgo._internal.debug.macho.RelocTypeARM = ((3 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_RELOC_PAIR:stdgo._internal.debug.macho.RelocTypeARM = ((1 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_RELOC_PB_LA_PTR:stdgo._internal.debug.macho.RelocTypeARM = ((4 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_RELOC_SECTDIFF:stdgo._internal.debug.macho.RelocTypeARM = ((2 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_RELOC_VANILLA:stdgo._internal.debug.macho.RelocTypeARM = ((0 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_THUMB_32BIT_BRANCH:stdgo._internal.debug.macho.RelocTypeARM = ((7 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final arm_THUMB_RELOC_BR22:stdgo._internal.debug.macho.RelocTypeARM = ((6 : stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM))
```


```haxe
final cpu386:stdgo._internal.debug.macho.Cpu = ((7u32 : stdgo._internal.debug.macho.Macho_Cpu.Cpu))
```


```haxe
final cpuAmd64:stdgo._internal.debug.macho.Cpu = ((16777223u32 : stdgo._internal.debug.macho.Macho_Cpu.Cpu))
```


```haxe
final cpuArm:stdgo._internal.debug.macho.Cpu = ((12u32 : stdgo._internal.debug.macho.Macho_Cpu.Cpu))
```


```haxe
final cpuArm64:stdgo._internal.debug.macho.Cpu = ((16777228u32 : stdgo._internal.debug.macho.Macho_Cpu.Cpu))
```


```haxe
final cpuPpc:stdgo._internal.debug.macho.Cpu = ((18u32 : stdgo._internal.debug.macho.Macho_Cpu.Cpu))
```


```haxe
final cpuPpc64:stdgo._internal.debug.macho.Cpu = ((16777234u32 : stdgo._internal.debug.macho.Macho_Cpu.Cpu))
```


```haxe
final flagAllModsBound:stdgo.GoUInt32 = ((4096u32 : stdgo.GoUInt32))
```


```haxe
final flagAllowStackExecution:stdgo.GoUInt32 = ((131072u32 : stdgo.GoUInt32))
```


```haxe
final flagAppExtensionSafe:stdgo.GoUInt32 = ((33554432u32 : stdgo.GoUInt32))
```


```haxe
final flagBindAtLoad:stdgo.GoUInt32 = ((8u32 : stdgo.GoUInt32))
```


```haxe
final flagBindsToWeak:stdgo.GoUInt32 = ((65536u32 : stdgo.GoUInt32))
```


```haxe
final flagCanonical:stdgo.GoUInt32 = ((16384u32 : stdgo.GoUInt32))
```


```haxe
final flagDeadStrippableDylib:stdgo.GoUInt32 = ((4194304u32 : stdgo.GoUInt32))
```


```haxe
final flagDyldLink:stdgo.GoUInt32 = ((4u32 : stdgo.GoUInt32))
```


```haxe
final flagForceFlat:stdgo.GoUInt32 = ((256u32 : stdgo.GoUInt32))
```


```haxe
final flagHasTLVDescriptors:stdgo.GoUInt32 = ((8388608u32 : stdgo.GoUInt32))
```


```haxe
final flagIncrLink:stdgo.GoUInt32 = ((2u32 : stdgo.GoUInt32))
```


```haxe
final flagLazyInit:stdgo.GoUInt32 = ((64u32 : stdgo.GoUInt32))
```


```haxe
final flagNoFixPrebinding:stdgo.GoUInt32 = ((1024u32 : stdgo.GoUInt32))
```


```haxe
final flagNoHeapExecution:stdgo.GoUInt32 = ((16777216u32 : stdgo.GoUInt32))
```


```haxe
final flagNoMultiDefs:stdgo.GoUInt32 = ((512u32 : stdgo.GoUInt32))
```


```haxe
final flagNoReexportedDylibs:stdgo.GoUInt32 = ((1048576u32 : stdgo.GoUInt32))
```


```haxe
final flagNoUndefs:stdgo.GoUInt32 = ((1u32 : stdgo.GoUInt32))
```


```haxe
final flagPIE:stdgo.GoUInt32 = ((2097152u32 : stdgo.GoUInt32))
```


```haxe
final flagPrebindable:stdgo.GoUInt32 = ((2048u32 : stdgo.GoUInt32))
```


```haxe
final flagPrebound:stdgo.GoUInt32 = ((16u32 : stdgo.GoUInt32))
```


```haxe
final flagRootSafe:stdgo.GoUInt32 = ((262144u32 : stdgo.GoUInt32))
```


```haxe
final flagSetuidSafe:stdgo.GoUInt32 = ((524288u32 : stdgo.GoUInt32))
```


```haxe
final flagSplitSegs:stdgo.GoUInt32 = ((32u32 : stdgo.GoUInt32))
```


```haxe
final flagSubsectionsViaSymbols:stdgo.GoUInt32 = ((8192u32 : stdgo.GoUInt32))
```


```haxe
final flagTwoLevel:stdgo.GoUInt32 = ((128u32 : stdgo.GoUInt32))
```


```haxe
final flagWeakDefines:stdgo.GoUInt32 = ((32768u32 : stdgo.GoUInt32))
```


```haxe
final generic_RELOC_LOCAL_SECTDIFF:stdgo._internal.debug.macho.RelocTypeGeneric = ((4 : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric))
```


```haxe
final generic_RELOC_PAIR:stdgo._internal.debug.macho.RelocTypeGeneric = ((1 : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric))
```


```haxe
final generic_RELOC_PB_LA_PTR:stdgo._internal.debug.macho.RelocTypeGeneric = ((3 : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric))
```


```haxe
final generic_RELOC_SECTDIFF:stdgo._internal.debug.macho.RelocTypeGeneric = ((2 : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric))
```


```haxe
final generic_RELOC_TLV:stdgo._internal.debug.macho.RelocTypeGeneric = ((5 : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric))
```


```haxe
final generic_RELOC_VANILLA:stdgo._internal.debug.macho.RelocTypeGeneric = ((0 : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric))
```


```haxe
final loadCmdDylib:stdgo._internal.debug.macho.LoadCmd = ((12u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final loadCmdDylinker:stdgo._internal.debug.macho.LoadCmd = ((15u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final loadCmdDysymtab:stdgo._internal.debug.macho.LoadCmd = ((11u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final loadCmdRpath:stdgo._internal.debug.macho.LoadCmd = ((-2147483620u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final loadCmdSegment:stdgo._internal.debug.macho.LoadCmd = ((1u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final loadCmdSegment64:stdgo._internal.debug.macho.LoadCmd = ((25u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final loadCmdSymtab:stdgo._internal.debug.macho.LoadCmd = ((2u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final loadCmdThread:stdgo._internal.debug.macho.LoadCmd = ((4u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final loadCmdUnixThread:stdgo._internal.debug.macho.LoadCmd = ((5u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))
```


```haxe
final magic32:stdgo.GoUInt32 = ((-17958194u32 : stdgo.GoUInt32))
```


```haxe
final magic64:stdgo.GoUInt32 = ((-17958193u32 : stdgo.GoUInt32))
```


```haxe
final magicFat:stdgo.GoUInt32 = ((-889275714u32 : stdgo.GoUInt32))
```


```haxe
final typeBundle:stdgo._internal.debug.macho.Type_ = ((8u32 : stdgo._internal.debug.macho.Macho_Type_.Type_))
```


```haxe
final typeDylib:stdgo._internal.debug.macho.Type_ = ((6u32 : stdgo._internal.debug.macho.Macho_Type_.Type_))
```


```haxe
final typeExec:stdgo._internal.debug.macho.Type_ = ((2u32 : stdgo._internal.debug.macho.Macho_Type_.Type_))
```


```haxe
final typeObj:stdgo._internal.debug.macho.Type_ = ((1u32 : stdgo._internal.debug.macho.Macho_Type_.Type_))
```


```haxe
final x86_64_RELOC_BRANCH:stdgo._internal.debug.macho.RelocTypeX86_64 = ((2 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_GOT:stdgo._internal.debug.macho.RelocTypeX86_64 = ((4 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_GOT_LOAD:stdgo._internal.debug.macho.RelocTypeX86_64 = ((3 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_SIGNED:stdgo._internal.debug.macho.RelocTypeX86_64 = ((1 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_SIGNED_1:stdgo._internal.debug.macho.RelocTypeX86_64 = ((6 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_SIGNED_2:stdgo._internal.debug.macho.RelocTypeX86_64 = ((7 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_SIGNED_4:stdgo._internal.debug.macho.RelocTypeX86_64 = ((8 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_SUBTRACTOR:stdgo._internal.debug.macho.RelocTypeX86_64 = ((5 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_TLV:stdgo._internal.debug.macho.RelocTypeX86_64 = ((9 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


```haxe
final x86_64_RELOC_UNSIGNED:stdgo._internal.debug.macho.RelocTypeX86_64 = ((0 : stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64))
```


# Variables


```haxe
import stdgo._internal.debug.macho.Macho_x86_64_RELOC_UNSIGNED
```


```haxe
var errNotFat:stdgo.Ref<stdgo._internal.debug.macho.FormatError>
```


```haxe
var _typeStrings:stdgo.Slice<stdgo._internal.debug.macho.T_intName>
```


```haxe
var _cpuStrings:stdgo.Slice<stdgo._internal.debug.macho.T_intName>
```


```haxe
var _cmdStrings:stdgo.Slice<stdgo._internal.debug.macho.T_intName>
```


```haxe
var __RelocTypeGeneric_index:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var __RelocTypeX86_64_index:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var __RelocTypeARM_index:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var __RelocTypeARM64_index:stdgo.GoArray<stdgo.GoUInt16>
```


# Functions


```haxe
import stdgo._internal.debug.macho.Macho_x86_64_RELOC_UNSIGNED
```


## function \_cstring


```haxe
function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString
```


[\(view code\)](<./Macho_x86_64_RELOC_UNSIGNED.hx#L2>)


## function \_stringName


```haxe
function _stringName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.macho.T_intName>, _goSyntax:Bool):stdgo.GoString
```


[\(view code\)](<./Macho_x86_64_RELOC_UNSIGNED.hx#L2>)


## function newFatFile


```haxe
function newFatFile(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.FatFile>;
}
```


[\(view code\)](<./Macho_x86_64_RELOC_UNSIGNED.hx#L2>)


## function newFile


```haxe
function newFile(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.File>;
}
```


[\(view code\)](<./Macho_x86_64_RELOC_UNSIGNED.hx#L2>)


## function open


```haxe
function open(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.File>;
}
```


[\(view code\)](<./Macho_x86_64_RELOC_UNSIGNED.hx#L2>)


## function openFat


```haxe
function openFat(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.FatFile>;
}
```


[\(view code\)](<./Macho_x86_64_RELOC_UNSIGNED.hx#L2>)


# Classes


```haxe
import stdgo._internal.debug.macho.*
```


## class Dylib


```haxe
var compatVersion:stdgo.GoUInt32
```


```haxe
var currentVersion:stdgo.GoUInt32
```


```haxe
var loadBytes:stdgo._internal.debug.macho.LoadBytes
```


```haxe
var name:stdgo.GoString
```


```haxe
var time:stdgo.GoUInt32
```


### Dylib function new


```haxe
function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?name:stdgo.GoString, ?time:stdgo.GoUInt32, ?currentVersion:stdgo.GoUInt32, ?compatVersion:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_Dylib.hx#L9>)


### Dylib function raw


```haxe
function raw():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Macho_Dylib.hx#L18>)


## class DylibCmd


```haxe
var cmd:stdgo._internal.debug.macho.LoadCmd
```


```haxe
var compatVersion:stdgo.GoUInt32
```


```haxe
var currentVersion:stdgo.GoUInt32
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var name:stdgo.GoUInt32
```


```haxe
var time:stdgo.GoUInt32
```


### DylibCmd function new


```haxe
function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?name:stdgo.GoUInt32, ?time:stdgo.GoUInt32, ?currentVersion:stdgo.GoUInt32, ?compatVersion:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_DylibCmd.hx#L9>)


## class Dysymtab


```haxe
var dysymtabCmd:stdgo._internal.debug.macho.DysymtabCmd
```


```haxe
var indirectSyms:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var loadBytes:stdgo._internal.debug.macho.LoadBytes
```


### Dysymtab function new


```haxe
function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?dysymtabCmd:stdgo._internal.debug.macho.DysymtabCmd, ?indirectSyms:stdgo.Slice<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Macho_Dysymtab.hx#L8>)


### Dysymtab function raw


```haxe
function raw():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Macho_Dysymtab.hx#L15>)


## class DysymtabCmd


```haxe
var cmd:stdgo._internal.debug.macho.LoadCmd
```


```haxe
var extrefsymoff:stdgo.GoUInt32
```


```haxe
var extreloff:stdgo.GoUInt32
```


```haxe
var iextdefsym:stdgo.GoUInt32
```


```haxe
var ilocalsym:stdgo.GoUInt32
```


```haxe
var indirectsymoff:stdgo.GoUInt32
```


```haxe
var iundefsym:stdgo.GoUInt32
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var locreloff:stdgo.GoUInt32
```


```haxe
var modtaboff:stdgo.GoUInt32
```


```haxe
var nextdefsym:stdgo.GoUInt32
```


```haxe
var nextrefsyms:stdgo.GoUInt32
```


```haxe
var nextrel:stdgo.GoUInt32
```


```haxe
var nindirectsyms:stdgo.GoUInt32
```


```haxe
var nlocalsym:stdgo.GoUInt32
```


```haxe
var nlocrel:stdgo.GoUInt32
```


```haxe
var nmodtab:stdgo.GoUInt32
```


```haxe
var ntoc:stdgo.GoUInt32
```


```haxe
var nundefsym:stdgo.GoUInt32
```


```haxe
var tocoffset:stdgo.GoUInt32
```


### DysymtabCmd function new


```haxe
function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?ilocalsym:stdgo.GoUInt32, ?nlocalsym:stdgo.GoUInt32, ?iextdefsym:stdgo.GoUInt32, ?nextdefsym:stdgo.GoUInt32, ?iundefsym:stdgo.GoUInt32, ?nundefsym:stdgo.GoUInt32, ?tocoffset:stdgo.GoUInt32, ?ntoc:stdgo.GoUInt32, ?modtaboff:stdgo.GoUInt32, ?nmodtab:stdgo.GoUInt32, ?extrefsymoff:stdgo.GoUInt32, ?nextrefsyms:stdgo.GoUInt32, ?indirectsymoff:stdgo.GoUInt32, ?nindirectsyms:stdgo.GoUInt32, ?extreloff:stdgo.GoUInt32, ?nextrel:stdgo.GoUInt32, ?locreloff:stdgo.GoUInt32, ?nlocrel:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_DysymtabCmd.hx#L23>)


## class FatArch


```haxe
var fatArchHeader:stdgo._internal.debug.macho.FatArchHeader
```


```haxe
var file:stdgo.Ref<stdgo._internal.debug.macho.File>
```


### FatArch function \_parseSymtab


```haxe
function _parseSymtab(_symdat:stdgo.Slice<stdgo.GoUInt8>, _strtab:stdgo.Slice<stdgo.GoUInt8>, _cmddat:stdgo.Slice<stdgo.GoUInt8>, _hdr:stdgo.Ref<stdgo._internal.debug.macho.SymtabCmd>, _offset:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.macho.Symtab>;
}
```


[\(view code\)](<./Macho_FatArch.hx#L25>)


### FatArch function \_pushSection


```haxe
function _pushSection(_sh:stdgo.Ref<stdgo._internal.debug.macho.Section>, _r:stdgo._internal.io.ReaderAt):stdgo.Error
```


[\(view code\)](<./Macho_FatArch.hx#L27>)


### FatArch function close


```haxe
function close():stdgo.Error
```


[\(view code\)](<./Macho_FatArch.hx#L13>)


### FatArch function dwarf


```haxe
function dwarf():{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.dwarf.Data>;
}
```


[\(view code\)](<./Macho_FatArch.hx#L15>)


### FatArch function importedLibraries


```haxe
function importedLibraries():{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}
```


[\(view code\)](<./Macho_FatArch.hx#L17>)


### FatArch function importedSymbols


```haxe
function importedSymbols():{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}
```


[\(view code\)](<./Macho_FatArch.hx#L19>)


### FatArch function new


```haxe
function new(?fatArchHeader:stdgo._internal.debug.macho.FatArchHeader, ?file:stdgo.Ref<stdgo._internal.debug.macho.File>):Void
```


[\(view code\)](<./Macho_FatArch.hx#L7>)


### FatArch function section


```haxe
function section(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Section>
```


[\(view code\)](<./Macho_FatArch.hx#L21>)


### FatArch function segment


```haxe
function segment(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Segment>
```


[\(view code\)](<./Macho_FatArch.hx#L23>)


## class FatArchHeader


```haxe
var align:stdgo.GoUInt32
```


```haxe
var cpu:stdgo._internal.debug.macho.Cpu
```


```haxe
var offset:stdgo.GoUInt32
```


```haxe
var size:stdgo.GoUInt32
```


```haxe
var subCpu:stdgo.GoUInt32
```


### FatArchHeader function new


```haxe
function new(?cpu:Null<stdgo._internal.debug.macho.Cpu>, ?subCpu:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?align:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_FatArchHeader.hx#L8>)


## class FatFile


```haxe
var _closer:stdgo._internal.io.Closer
```


```haxe
var arches:stdgo.Slice<stdgo._internal.debug.macho.FatArch>
```


```haxe
var magic:stdgo.GoUInt32
```


### FatFile function new


```haxe
function new(?magic:stdgo.GoUInt32, ?arches:stdgo.Slice<stdgo._internal.debug.macho.FatArch>, ?_closer:Null<stdgo._internal.io.Closer>):Void
```


[\(view code\)](<./Macho_FatFile.hx#L6>)


## class File


```haxe
var _closer:stdgo._internal.io.Closer
```


```haxe
var byteOrder:stdgo._internal.encoding.binary.ByteOrder
```


```haxe
var dysymtab:stdgo.Ref<stdgo._internal.debug.macho.Dysymtab>
```


```haxe
var fileHeader:stdgo._internal.debug.macho.FileHeader
```


```haxe
var loads:stdgo.Slice<stdgo._internal.debug.macho.Load>
```


```haxe
var sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Section>>
```


```haxe
var symtab:stdgo.Ref<stdgo._internal.debug.macho.Symtab>
```


### File function new


```haxe
function new(?fileHeader:stdgo._internal.debug.macho.FileHeader, ?byteOrder:Null<stdgo._internal.encoding.binary.ByteOrder>, ?loads:stdgo.Slice<stdgo._internal.debug.macho.Load>, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Section>>, ?symtab:stdgo.Ref<stdgo._internal.debug.macho.Symtab>, ?dysymtab:stdgo.Ref<stdgo._internal.debug.macho.Dysymtab>, ?_closer:Null<stdgo._internal.io.Closer>):Void
```


[\(view code\)](<./Macho_File.hx#L11>)


## class FileHeader


```haxe
var cmdsz:stdgo.GoUInt32
```


```haxe
var cpu:stdgo._internal.debug.macho.Cpu
```


```haxe
var flags:stdgo.GoUInt32
```


```haxe
var magic:stdgo.GoUInt32
```


```haxe
var ncmd:stdgo.GoUInt32
```


```haxe
var subCpu:stdgo.GoUInt32
```


```haxe
var type:stdgo._internal.debug.macho.Type_
```


### FileHeader function new


```haxe
function new(?magic:stdgo.GoUInt32, ?cpu:Null<stdgo._internal.debug.macho.Cpu>, ?subCpu:stdgo.GoUInt32, ?type:Null<stdgo._internal.debug.macho.Type_>, ?ncmd:stdgo.GoUInt32, ?cmdsz:stdgo.GoUInt32, ?flags:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_FileHeader.hx#L10>)


## class FormatError


```haxe
var _msg:stdgo.GoString
```


```haxe
var _off:stdgo.GoInt64
```


```haxe
var _val:stdgo.AnyInterface
```


### FormatError function new


```haxe
function new(?_off:stdgo.GoInt64, ?_msg:stdgo.GoString, ?_val:stdgo.AnyInterface):Void
```


[\(view code\)](<./Macho_FormatError.hx#L6>)


## class Nlist32


```haxe
var desc:stdgo.GoUInt16
```


```haxe
var name:stdgo.GoUInt32
```


```haxe
var sect:stdgo.GoUInt8
```


```haxe
var type:stdgo.GoUInt8
```


```haxe
var value:stdgo.GoUInt32
```


### Nlist32 function new


```haxe
function new(?name:stdgo.GoUInt32, ?type:stdgo.GoUInt8, ?sect:stdgo.GoUInt8, ?desc:stdgo.GoUInt16, ?value:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_Nlist32.hx#L8>)


## class Nlist64


```haxe
var desc:stdgo.GoUInt16
```


```haxe
var name:stdgo.GoUInt32
```


```haxe
var sect:stdgo.GoUInt8
```


```haxe
var type:stdgo.GoUInt8
```


```haxe
var value:stdgo.GoUInt64
```


### Nlist64 function new


```haxe
function new(?name:stdgo.GoUInt32, ?type:stdgo.GoUInt8, ?sect:stdgo.GoUInt8, ?desc:stdgo.GoUInt16, ?value:stdgo.GoUInt64):Void
```


[\(view code\)](<./Macho_Nlist64.hx#L8>)


## class Regs386


```haxe
var ax:stdgo.GoUInt32
```


```haxe
var bp:stdgo.GoUInt32
```


```haxe
var bx:stdgo.GoUInt32
```


```haxe
var cs:stdgo.GoUInt32
```


```haxe
var cx:stdgo.GoUInt32
```


```haxe
var di:stdgo.GoUInt32
```


```haxe
var ds:stdgo.GoUInt32
```


```haxe
var dx:stdgo.GoUInt32
```


```haxe
var es:stdgo.GoUInt32
```


```haxe
var flags:stdgo.GoUInt32
```


```haxe
var fs:stdgo.GoUInt32
```


```haxe
var gs:stdgo.GoUInt32
```


```haxe
var ip:stdgo.GoUInt32
```


```haxe
var si:stdgo.GoUInt32
```


```haxe
var sp:stdgo.GoUInt32
```


```haxe
var ss:stdgo.GoUInt32
```


### Regs386 function new


```haxe
function new(?ax:stdgo.GoUInt32, ?bx:stdgo.GoUInt32, ?cx:stdgo.GoUInt32, ?dx:stdgo.GoUInt32, ?di:stdgo.GoUInt32, ?si:stdgo.GoUInt32, ?bp:stdgo.GoUInt32, ?sp:stdgo.GoUInt32, ?ss:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?ip:stdgo.GoUInt32, ?cs:stdgo.GoUInt32, ?ds:stdgo.GoUInt32, ?es:stdgo.GoUInt32, ?fs:stdgo.GoUInt32, ?gs:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_Regs386.hx#L19>)


## class RegsAMD64


```haxe
var ax:stdgo.GoUInt64
```


```haxe
var bp:stdgo.GoUInt64
```


```haxe
var bx:stdgo.GoUInt64
```


```haxe
var cs:stdgo.GoUInt64
```


```haxe
var cx:stdgo.GoUInt64
```


```haxe
var di:stdgo.GoUInt64
```


```haxe
var dx:stdgo.GoUInt64
```


```haxe
var flags:stdgo.GoUInt64
```


```haxe
var fs:stdgo.GoUInt64
```


```haxe
var gs:stdgo.GoUInt64
```


```haxe
var ip:stdgo.GoUInt64
```


```haxe
var r10:stdgo.GoUInt64
```


```haxe
var r11:stdgo.GoUInt64
```


```haxe
var r12:stdgo.GoUInt64
```


```haxe
var r13:stdgo.GoUInt64
```


```haxe
var r14:stdgo.GoUInt64
```


```haxe
var r15:stdgo.GoUInt64
```


```haxe
var r8:stdgo.GoUInt64
```


```haxe
var r9:stdgo.GoUInt64
```


```haxe
var si:stdgo.GoUInt64
```


```haxe
var sp:stdgo.GoUInt64
```


### RegsAMD64 function new


```haxe
function new(?ax:stdgo.GoUInt64, ?bx:stdgo.GoUInt64, ?cx:stdgo.GoUInt64, ?dx:stdgo.GoUInt64, ?di:stdgo.GoUInt64, ?si:stdgo.GoUInt64, ?bp:stdgo.GoUInt64, ?sp:stdgo.GoUInt64, ?r8:stdgo.GoUInt64, ?r9:stdgo.GoUInt64, ?r10:stdgo.GoUInt64, ?r11:stdgo.GoUInt64, ?r12:stdgo.GoUInt64, ?r13:stdgo.GoUInt64, ?r14:stdgo.GoUInt64, ?r15:stdgo.GoUInt64, ?ip:stdgo.GoUInt64, ?flags:stdgo.GoUInt64, ?cs:stdgo.GoUInt64, ?fs:stdgo.GoUInt64, ?gs:stdgo.GoUInt64):Void
```


[\(view code\)](<./Macho_RegsAMD64.hx#L24>)


## class Reloc


```haxe
var addr:stdgo.GoUInt32
```


```haxe
var extern_:Bool
```


```haxe
var len:stdgo.GoUInt8
```


```haxe
var pcrel:Bool
```


```haxe
var scattered:Bool
```


```haxe
var type:stdgo.GoUInt8
```


```haxe
var value:stdgo.GoUInt32
```


### Reloc function new


```haxe
function new(?addr:stdgo.GoUInt32, ?value:stdgo.GoUInt32, ?type:stdgo.GoUInt8, ?len:stdgo.GoUInt8, ?pcrel:Bool, ?extern_:Bool, ?scattered:Bool):Void
```


[\(view code\)](<./Macho_Reloc.hx#L10>)


## class Rpath


```haxe
var loadBytes:stdgo._internal.debug.macho.LoadBytes
```


```haxe
var path:stdgo.GoString
```


### Rpath function new


```haxe
function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?path:stdgo.GoString):Void
```


[\(view code\)](<./Macho_Rpath.hx#L6>)


### Rpath function raw


```haxe
function raw():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Macho_Rpath.hx#L12>)


## class RpathCmd


```haxe
var cmd:stdgo._internal.debug.macho.LoadCmd
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var path:stdgo.GoUInt32
```


### RpathCmd function new


```haxe
function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?path:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_RpathCmd.hx#L6>)


## class Section


```haxe
var _sr:stdgo.Ref<stdgo._internal.io.SectionReader>
```


```haxe
var readerAt:stdgo._internal.io.ReaderAt
```


```haxe
var relocs:stdgo.Slice<stdgo._internal.debug.macho.Reloc>
```


```haxe
var sectionHeader:stdgo._internal.debug.macho.SectionHeader
```


### Section function new


```haxe
function new(?sectionHeader:stdgo._internal.debug.macho.SectionHeader, ?relocs:stdgo.Slice<stdgo._internal.debug.macho.Reloc>, ?readerAt:Null<stdgo._internal.io.ReaderAt>, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void
```


[\(view code\)](<./Macho_Section.hx#L9>)


### Section function readAt


```haxe
function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Macho_Section.hx#L17>)


## class Section32


```haxe
var addr:stdgo.GoUInt32
```


```haxe
var align:stdgo.GoUInt32
```


```haxe
var flags:stdgo.GoUInt32
```


```haxe
var name:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var nreloc:stdgo.GoUInt32
```


```haxe
var offset:stdgo.GoUInt32
```


```haxe
var reloff:stdgo.GoUInt32
```


```haxe
var reserve1:stdgo.GoUInt32
```


```haxe
var reserve2:stdgo.GoUInt32
```


```haxe
var seg:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var size:stdgo.GoUInt32
```


### Section32 function new


```haxe
function new(?name:stdgo.GoArray<stdgo.GoUInt8>, ?seg:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?align:stdgo.GoUInt32, ?reloff:stdgo.GoUInt32, ?nreloc:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?reserve1:stdgo.GoUInt32, ?reserve2:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_Section32.hx#L14>)


## class Section64


```haxe
var addr:stdgo.GoUInt64
```


```haxe
var align:stdgo.GoUInt32
```


```haxe
var flags:stdgo.GoUInt32
```


```haxe
var name:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var nreloc:stdgo.GoUInt32
```


```haxe
var offset:stdgo.GoUInt32
```


```haxe
var reloff:stdgo.GoUInt32
```


```haxe
var reserve1:stdgo.GoUInt32
```


```haxe
var reserve2:stdgo.GoUInt32
```


```haxe
var reserve3:stdgo.GoUInt32
```


```haxe
var seg:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var size:stdgo.GoUInt64
```


### Section64 function new


```haxe
function new(?name:stdgo.GoArray<stdgo.GoUInt8>, ?seg:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?offset:stdgo.GoUInt32, ?align:stdgo.GoUInt32, ?reloff:stdgo.GoUInt32, ?nreloc:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?reserve1:stdgo.GoUInt32, ?reserve2:stdgo.GoUInt32, ?reserve3:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_Section64.hx#L15>)


## class SectionHeader


```haxe
var addr:stdgo.GoUInt64
```


```haxe
var align:stdgo.GoUInt32
```


```haxe
var flags:stdgo.GoUInt32
```


```haxe
var name:stdgo.GoString
```


```haxe
var nreloc:stdgo.GoUInt32
```


```haxe
var offset:stdgo.GoUInt32
```


```haxe
var reloff:stdgo.GoUInt32
```


```haxe
var seg:stdgo.GoString
```


```haxe
var size:stdgo.GoUInt64
```


### SectionHeader function new


```haxe
function new(?name:stdgo.GoString, ?seg:stdgo.GoString, ?addr:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?offset:stdgo.GoUInt32, ?align:stdgo.GoUInt32, ?reloff:stdgo.GoUInt32, ?nreloc:stdgo.GoUInt32, ?flags:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_SectionHeader.hx#L12>)


## class Segment


```haxe
var _sr:stdgo.Ref<stdgo._internal.io.SectionReader>
```


```haxe
var loadBytes:stdgo._internal.debug.macho.LoadBytes
```


```haxe
var readerAt:stdgo._internal.io.ReaderAt
```


```haxe
var segmentHeader:stdgo._internal.debug.macho.SegmentHeader
```


### Segment function new


```haxe
function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?segmentHeader:stdgo._internal.debug.macho.SegmentHeader, ?readerAt:Null<stdgo._internal.io.ReaderAt>, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void
```


[\(view code\)](<./Macho_Segment.hx#L10>)


### Segment function raw


```haxe
function raw():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Macho_Segment.hx#L18>)


### Segment function readAt


```haxe
function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Macho_Segment.hx#L20>)


## class Segment32


```haxe
var addr:stdgo.GoUInt32
```


```haxe
var cmd:stdgo._internal.debug.macho.LoadCmd
```


```haxe
var filesz:stdgo.GoUInt32
```


```haxe
var flag:stdgo.GoUInt32
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var maxprot:stdgo.GoUInt32
```


```haxe
var memsz:stdgo.GoUInt32
```


```haxe
var name:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var nsect:stdgo.GoUInt32
```


```haxe
var offset:stdgo.GoUInt32
```


```haxe
var prot:stdgo.GoUInt32
```


### Segment32 function new


```haxe
function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?name:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt32, ?memsz:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?filesz:stdgo.GoUInt32, ?maxprot:stdgo.GoUInt32, ?prot:stdgo.GoUInt32, ?nsect:stdgo.GoUInt32, ?flag:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_Segment32.hx#L14>)


## class Segment64


```haxe
var addr:stdgo.GoUInt64
```


```haxe
var cmd:stdgo._internal.debug.macho.LoadCmd
```


```haxe
var filesz:stdgo.GoUInt64
```


```haxe
var flag:stdgo.GoUInt32
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var maxprot:stdgo.GoUInt32
```


```haxe
var memsz:stdgo.GoUInt64
```


```haxe
var name:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var nsect:stdgo.GoUInt32
```


```haxe
var offset:stdgo.GoUInt64
```


```haxe
var prot:stdgo.GoUInt32
```


### Segment64 function new


```haxe
function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?name:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt64, ?memsz:stdgo.GoUInt64, ?offset:stdgo.GoUInt64, ?filesz:stdgo.GoUInt64, ?maxprot:stdgo.GoUInt32, ?prot:stdgo.GoUInt32, ?nsect:stdgo.GoUInt32, ?flag:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_Segment64.hx#L14>)


## class SegmentHeader


```haxe
var addr:stdgo.GoUInt64
```


```haxe
var cmd:stdgo._internal.debug.macho.LoadCmd
```


```haxe
var filesz:stdgo.GoUInt64
```


```haxe
var flag:stdgo.GoUInt32
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var maxprot:stdgo.GoUInt32
```


```haxe
var memsz:stdgo.GoUInt64
```


```haxe
var name:stdgo.GoString
```


```haxe
var nsect:stdgo.GoUInt32
```


```haxe
var offset:stdgo.GoUInt64
```


```haxe
var prot:stdgo.GoUInt32
```


### SegmentHeader function new


```haxe
function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?name:stdgo.GoString, ?addr:stdgo.GoUInt64, ?memsz:stdgo.GoUInt64, ?offset:stdgo.GoUInt64, ?filesz:stdgo.GoUInt64, ?maxprot:stdgo.GoUInt32, ?prot:stdgo.GoUInt32, ?nsect:stdgo.GoUInt32, ?flag:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_SegmentHeader.hx#L14>)


## class Symbol


```haxe
var desc:stdgo.GoUInt16
```


```haxe
var name:stdgo.GoString
```


```haxe
var sect:stdgo.GoUInt8
```


```haxe
var type:stdgo.GoUInt8
```


```haxe
var value:stdgo.GoUInt64
```


### Symbol function new


```haxe
function new(?name:stdgo.GoString, ?type:stdgo.GoUInt8, ?sect:stdgo.GoUInt8, ?desc:stdgo.GoUInt16, ?value:stdgo.GoUInt64):Void
```


[\(view code\)](<./Macho_Symbol.hx#L8>)


## class Symtab


```haxe
var loadBytes:stdgo._internal.debug.macho.LoadBytes
```


```haxe
var syms:stdgo.Slice<stdgo._internal.debug.macho.Symbol>
```


```haxe
var symtabCmd:stdgo._internal.debug.macho.SymtabCmd
```


### Symtab function new


```haxe
function new(?loadBytes:Null<stdgo._internal.debug.macho.LoadBytes>, ?symtabCmd:stdgo._internal.debug.macho.SymtabCmd, ?syms:stdgo.Slice<stdgo._internal.debug.macho.Symbol>):Void
```


[\(view code\)](<./Macho_Symtab.hx#L8>)


### Symtab function raw


```haxe
function raw():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Macho_Symtab.hx#L15>)


## class SymtabCmd


```haxe
var cmd:stdgo._internal.debug.macho.LoadCmd
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var nsyms:stdgo.GoUInt32
```


```haxe
var stroff:stdgo.GoUInt32
```


```haxe
var strsize:stdgo.GoUInt32
```


```haxe
var symoff:stdgo.GoUInt32
```


### SymtabCmd function new


```haxe
function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?symoff:stdgo.GoUInt32, ?nsyms:stdgo.GoUInt32, ?stroff:stdgo.GoUInt32, ?strsize:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_SymtabCmd.hx#L9>)


## class T\_intName


```haxe
var _i:stdgo.GoUInt32
```


```haxe
var _s:stdgo.GoString
```


### T\_intName function new


```haxe
function new(?_i:stdgo.GoUInt32, ?_s:stdgo.GoString):Void
```


[\(view code\)](<./Macho_T_intName.hx#L5>)


## class T\_relocInfo


```haxe
var addr:stdgo.GoUInt32
```


```haxe
var symnum:stdgo.GoUInt32
```


### T\_relocInfo function new


```haxe
function new(?addr:stdgo.GoUInt32, ?symnum:stdgo.GoUInt32):Void
```


[\(view code\)](<./Macho_T_relocInfo.hx#L5>)


## class Thread


```haxe
var cmd:stdgo._internal.debug.macho.LoadCmd
```


```haxe
var data:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var type:stdgo.GoUInt32
```


### Thread function new


```haxe
function new(?cmd:Null<stdgo._internal.debug.macho.LoadCmd>, ?len:stdgo.GoUInt32, ?type:stdgo.GoUInt32, ?data:stdgo.Slice<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Macho_Thread.hx#L7>)


# Typedefs


```haxe
import stdgo._internal.debug.macho.*
```


## typedef Cpu


```haxe
typedef Cpu = stdgo.GoUInt32;
```


## typedef Load


```haxe
typedef Load = {
	public function raw():stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef LoadBytes


```haxe
typedef LoadBytes = stdgo.Slice<stdgo.GoUInt8>;
```


## typedef LoadCmd


```haxe
typedef LoadCmd = stdgo.GoUInt32;
```


## typedef RelocTypeARM


```haxe
typedef RelocTypeARM = stdgo.GoInt;
```


## typedef RelocTypeARM64


```haxe
typedef RelocTypeARM64 = stdgo.GoInt;
```


## typedef RelocTypeGeneric


```haxe
typedef RelocTypeGeneric = stdgo.GoInt;
```


## typedef RelocTypeX86\_64


```haxe
typedef RelocTypeX86_64 = stdgo.GoInt;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
};
```


## typedef Type\_


```haxe
typedef Type_ = stdgo.GoUInt32;
```


