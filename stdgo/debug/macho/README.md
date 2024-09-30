# Module: `stdgo.debug.macho`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Macho](<#class-macho>)

  - [`function newFatFile(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.debug.macho.FatFile, stdgo.Error>`](<#macho-function-newfatfile>)

  - [`function newFile(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.debug.macho.File, stdgo.Error>`](<#macho-function-newfile>)

  - [`function open(_name:String):stdgo.Tuple<stdgo.debug.macho.File, stdgo.Error>`](<#macho-function-open>)

  - [`function openFat(_name:String):stdgo.Tuple<stdgo.debug.macho.FatFile, stdgo.Error>`](<#macho-function-openfat>)

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

- [abstract FatFile](<#abstract-fatfile>)

- [abstract FatArchHeader](<#abstract-fatarchheader>)

- [abstract FatArch](<#abstract-fatarch>)

- [abstract File](<#abstract-file>)

- [abstract SegmentHeader](<#abstract-segmentheader>)

- [abstract Segment](<#abstract-segment>)

- [abstract SectionHeader](<#abstract-sectionheader>)

- [abstract Reloc](<#abstract-reloc>)

- [abstract Section](<#abstract-section>)

- [abstract Dylib](<#abstract-dylib>)

- [abstract Symtab](<#abstract-symtab>)

- [abstract Dysymtab](<#abstract-dysymtab>)

- [abstract Rpath](<#abstract-rpath>)

- [abstract Symbol](<#abstract-symbol>)

- [abstract FormatError](<#abstract-formaterror>)

- [abstract T\_relocInfo](<#abstract-t_relocinfo>)

- [abstract FileHeader](<#abstract-fileheader>)

- [abstract Segment32](<#abstract-segment32>)

- [abstract Segment64](<#abstract-segment64>)

- [abstract SymtabCmd](<#abstract-symtabcmd>)

- [abstract DysymtabCmd](<#abstract-dysymtabcmd>)

- [abstract DylibCmd](<#abstract-dylibcmd>)

- [abstract RpathCmd](<#abstract-rpathcmd>)

- [abstract Thread](<#abstract-thread>)

- [abstract Section32](<#abstract-section32>)

- [abstract Section64](<#abstract-section64>)

- [abstract Nlist32](<#abstract-nlist32>)

- [abstract Nlist64](<#abstract-nlist64>)

- [abstract Regs386](<#abstract-regs386>)

- [abstract RegsAMD64](<#abstract-regsamd64>)

- [abstract T\_intName](<#abstract-t_intname>)

# Constants


```haxe
import stdgo.debug.macho.Macho
```


```haxe
final arm64_RELOC_ADDEND:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_ADDEND.arm64_RELOC_ADDEND
```


```haxe
final arm64_RELOC_BRANCH26:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_BRANCH26.arm64_RELOC_BRANCH26
```


```haxe
final arm64_RELOC_GOT_LOAD_PAGE21:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_GOT_LOAD_PAGE21.arm64_RELOC_GOT_LOAD_PAGE21
```


```haxe
final arm64_RELOC_GOT_LOAD_PAGEOFF12:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_GOT_LOAD_PAGEOFF12.arm64_RELOC_GOT_LOAD_PAGEOFF12
```


```haxe
final arm64_RELOC_PAGE21:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_PAGE21.arm64_RELOC_PAGE21
```


```haxe
final arm64_RELOC_PAGEOFF12:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_PAGEOFF12.arm64_RELOC_PAGEOFF12
```


```haxe
final arm64_RELOC_POINTER_TO_GOT:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_POINTER_TO_GOT.arm64_RELOC_POINTER_TO_GOT
```


```haxe
final arm64_RELOC_SUBTRACTOR:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_SUBTRACTOR.arm64_RELOC_SUBTRACTOR
```


```haxe
final arm64_RELOC_TLVP_LOAD_PAGE21:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_TLVP_LOAD_PAGE21.arm64_RELOC_TLVP_LOAD_PAGE21
```


```haxe
final arm64_RELOC_TLVP_LOAD_PAGEOFF12:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_TLVP_LOAD_PAGEOFF12.arm64_RELOC_TLVP_LOAD_PAGEOFF12
```


```haxe
final arm64_RELOC_UNSIGNED:stdgo.debug.macho.RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_RELOC_UNSIGNED.arm64_RELOC_UNSIGNED
```


```haxe
final arm_RELOC_BR24:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_RELOC_BR24.arm_RELOC_BR24
```


```haxe
final arm_RELOC_HALF:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_RELOC_HALF.arm_RELOC_HALF
```


```haxe
final arm_RELOC_HALF_SECTDIFF:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_RELOC_HALF_SECTDIFF.arm_RELOC_HALF_SECTDIFF
```


```haxe
final arm_RELOC_LOCAL_SECTDIFF:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_RELOC_LOCAL_SECTDIFF.arm_RELOC_LOCAL_SECTDIFF
```


```haxe
final arm_RELOC_PAIR:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_RELOC_PAIR.arm_RELOC_PAIR
```


```haxe
final arm_RELOC_PB_LA_PTR:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_RELOC_PB_LA_PTR.arm_RELOC_PB_LA_PTR
```


```haxe
final arm_RELOC_SECTDIFF:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_RELOC_SECTDIFF.arm_RELOC_SECTDIFF
```


```haxe
final arm_RELOC_VANILLA:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_RELOC_VANILLA.arm_RELOC_VANILLA
```


```haxe
final arm_THUMB_32BIT_BRANCH:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_THUMB_32BIT_BRANCH.arm_THUMB_32BIT_BRANCH
```


```haxe
final arm_THUMB_RELOC_BR22:stdgo.debug.macho.RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_THUMB_RELOC_BR22.arm_THUMB_RELOC_BR22
```


```haxe
final cpu386:stdgo.debug.macho.Cpu = stdgo._internal.debug.macho.Macho_cpu386.cpu386
```


```haxe
final cpuAmd64:stdgo.debug.macho.Cpu = stdgo._internal.debug.macho.Macho_cpuAmd64.cpuAmd64
```


```haxe
final cpuArm:stdgo.debug.macho.Cpu = stdgo._internal.debug.macho.Macho_cpuArm.cpuArm
```


```haxe
final cpuArm64:stdgo.debug.macho.Cpu = stdgo._internal.debug.macho.Macho_cpuArm64.cpuArm64
```


```haxe
final cpuPpc:stdgo.debug.macho.Cpu = stdgo._internal.debug.macho.Macho_cpuPpc.cpuPpc
```


```haxe
final cpuPpc64:stdgo.debug.macho.Cpu = stdgo._internal.debug.macho.Macho_cpuPpc64.cpuPpc64
```


```haxe
final flagAllModsBound:UInt = stdgo._internal.debug.macho.Macho_flagAllModsBound.flagAllModsBound
```


```haxe
final flagAllowStackExecution:UInt = stdgo._internal.debug.macho.Macho_flagAllowStackExecution.flagAllowStackExecution
```


```haxe
final flagAppExtensionSafe:UInt = stdgo._internal.debug.macho.Macho_flagAppExtensionSafe.flagAppExtensionSafe
```


```haxe
final flagBindAtLoad:UInt = stdgo._internal.debug.macho.Macho_flagBindAtLoad.flagBindAtLoad
```


```haxe
final flagBindsToWeak:UInt = stdgo._internal.debug.macho.Macho_flagBindsToWeak.flagBindsToWeak
```


```haxe
final flagCanonical:UInt = stdgo._internal.debug.macho.Macho_flagCanonical.flagCanonical
```


```haxe
final flagDeadStrippableDylib:UInt = stdgo._internal.debug.macho.Macho_flagDeadStrippableDylib.flagDeadStrippableDylib
```


```haxe
final flagDyldLink:UInt = stdgo._internal.debug.macho.Macho_flagDyldLink.flagDyldLink
```


```haxe
final flagForceFlat:UInt = stdgo._internal.debug.macho.Macho_flagForceFlat.flagForceFlat
```


```haxe
final flagHasTLVDescriptors:UInt = stdgo._internal.debug.macho.Macho_flagHasTLVDescriptors.flagHasTLVDescriptors
```


```haxe
final flagIncrLink:UInt = stdgo._internal.debug.macho.Macho_flagIncrLink.flagIncrLink
```


```haxe
final flagLazyInit:UInt = stdgo._internal.debug.macho.Macho_flagLazyInit.flagLazyInit
```


```haxe
final flagNoFixPrebinding:UInt = stdgo._internal.debug.macho.Macho_flagNoFixPrebinding.flagNoFixPrebinding
```


```haxe
final flagNoHeapExecution:UInt = stdgo._internal.debug.macho.Macho_flagNoHeapExecution.flagNoHeapExecution
```


```haxe
final flagNoMultiDefs:UInt = stdgo._internal.debug.macho.Macho_flagNoMultiDefs.flagNoMultiDefs
```


```haxe
final flagNoReexportedDylibs:UInt = stdgo._internal.debug.macho.Macho_flagNoReexportedDylibs.flagNoReexportedDylibs
```


```haxe
final flagNoUndefs:UInt = stdgo._internal.debug.macho.Macho_flagNoUndefs.flagNoUndefs
```


```haxe
final flagPIE:UInt = stdgo._internal.debug.macho.Macho_flagPIE.flagPIE
```


```haxe
final flagPrebindable:UInt = stdgo._internal.debug.macho.Macho_flagPrebindable.flagPrebindable
```


```haxe
final flagPrebound:UInt = stdgo._internal.debug.macho.Macho_flagPrebound.flagPrebound
```


```haxe
final flagRootSafe:UInt = stdgo._internal.debug.macho.Macho_flagRootSafe.flagRootSafe
```


```haxe
final flagSetuidSafe:UInt = stdgo._internal.debug.macho.Macho_flagSetuidSafe.flagSetuidSafe
```


```haxe
final flagSplitSegs:UInt = stdgo._internal.debug.macho.Macho_flagSplitSegs.flagSplitSegs
```


```haxe
final flagSubsectionsViaSymbols:UInt = stdgo._internal.debug.macho.Macho_flagSubsectionsViaSymbols.flagSubsectionsViaSymbols
```


```haxe
final flagTwoLevel:UInt = stdgo._internal.debug.macho.Macho_flagTwoLevel.flagTwoLevel
```


```haxe
final flagWeakDefines:UInt = stdgo._internal.debug.macho.Macho_flagWeakDefines.flagWeakDefines
```


```haxe
final generic_RELOC_LOCAL_SECTDIFF:stdgo.debug.macho.RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_RELOC_LOCAL_SECTDIFF.generic_RELOC_LOCAL_SECTDIFF
```


```haxe
final generic_RELOC_PAIR:stdgo.debug.macho.RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_RELOC_PAIR.generic_RELOC_PAIR
```


```haxe
final generic_RELOC_PB_LA_PTR:stdgo.debug.macho.RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_RELOC_PB_LA_PTR.generic_RELOC_PB_LA_PTR
```


```haxe
final generic_RELOC_SECTDIFF:stdgo.debug.macho.RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_RELOC_SECTDIFF.generic_RELOC_SECTDIFF
```


```haxe
final generic_RELOC_TLV:stdgo.debug.macho.RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_RELOC_TLV.generic_RELOC_TLV
```


```haxe
final generic_RELOC_VANILLA:stdgo.debug.macho.RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_RELOC_VANILLA.generic_RELOC_VANILLA
```


```haxe
final loadCmdDylib:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdDylib.loadCmdDylib
```


```haxe
final loadCmdDylinker:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdDylinker.loadCmdDylinker
```


```haxe
final loadCmdDysymtab:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdDysymtab.loadCmdDysymtab
```


```haxe
final loadCmdRpath:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdRpath.loadCmdRpath
```


```haxe
final loadCmdSegment:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdSegment.loadCmdSegment
```


```haxe
final loadCmdSegment64:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdSegment64.loadCmdSegment64
```


```haxe
final loadCmdSymtab:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdSymtab.loadCmdSymtab
```


```haxe
final loadCmdThread:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdThread.loadCmdThread
```


```haxe
final loadCmdUnixThread:stdgo.debug.macho.LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdUnixThread.loadCmdUnixThread
```


```haxe
final magic32:UInt = stdgo._internal.debug.macho.Macho_magic32.magic32
```


```haxe
final magic64:UInt = stdgo._internal.debug.macho.Macho_magic64.magic64
```


```haxe
final magicFat:UInt = stdgo._internal.debug.macho.Macho_magicFat.magicFat
```


```haxe
final typeBundle:stdgo.debug.macho.Type_ = stdgo._internal.debug.macho.Macho_typeBundle.typeBundle
```


```haxe
final typeDylib:stdgo.debug.macho.Type_ = stdgo._internal.debug.macho.Macho_typeDylib.typeDylib
```


```haxe
final typeExec:stdgo.debug.macho.Type_ = stdgo._internal.debug.macho.Macho_typeExec.typeExec
```


```haxe
final typeObj:stdgo.debug.macho.Type_ = stdgo._internal.debug.macho.Macho_typeObj.typeObj
```


```haxe
final x86_64_RELOC_BRANCH:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_BRANCH.x86_64_RELOC_BRANCH
```


```haxe
final x86_64_RELOC_GOT:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_GOT.x86_64_RELOC_GOT
```


```haxe
final x86_64_RELOC_GOT_LOAD:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_GOT_LOAD.x86_64_RELOC_GOT_LOAD
```


```haxe
final x86_64_RELOC_SIGNED:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SIGNED.x86_64_RELOC_SIGNED
```


```haxe
final x86_64_RELOC_SIGNED_1:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SIGNED_1.x86_64_RELOC_SIGNED_1
```


```haxe
final x86_64_RELOC_SIGNED_2:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SIGNED_2.x86_64_RELOC_SIGNED_2
```


```haxe
final x86_64_RELOC_SIGNED_4:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SIGNED_4.x86_64_RELOC_SIGNED_4
```


```haxe
final x86_64_RELOC_SUBTRACTOR:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SUBTRACTOR.x86_64_RELOC_SUBTRACTOR
```


```haxe
final x86_64_RELOC_TLV:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_TLV.x86_64_RELOC_TLV
```


```haxe
final x86_64_RELOC_UNSIGNED:stdgo.debug.macho.RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_UNSIGNED.x86_64_RELOC_UNSIGNED
```


# Variables


```haxe
import stdgo.debug.macho.Macho
```


```haxe
var errNotFat:stdgo.debug.macho.FormatError
```


# Classes


```haxe
import stdgo.debug.macho.*
```


## class Macho



Package macho implements access to Mach\-O object files.  

### Security



This package is not designed to be hardened against adversarial inputs, and is
outside the scope of https://go.dev/security/policy. In particular, only basic
validation is done when parsing object files. As such, care should be taken when
parsing untrusted inputs, as parsing malformed files may consume significant
resources, or cause panics.  

### Macho function newFatFile


```haxe
function newFatFile(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.debug.macho.FatFile, stdgo.Error>
```


```
NewFatFile creates a new FatFile for accessing all the Mach-O images in a
        universal binary. The Mach-O binary is expected to start at position 0 in
        the ReaderAt.
```
[\(view code\)](<./Macho.hx#L1900>)


### Macho function newFile


```haxe
function newFile(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.debug.macho.File, stdgo.Error>
```


```
NewFile creates a new File for accessing a Mach-O binary in an underlying reader.
        The Mach-O binary is expected to start at position 0 in the ReaderAt.
```
[\(view code\)](<./Macho.hx#L1929>)


### Macho function open


```haxe
function open(_name:String):stdgo.Tuple<stdgo.debug.macho.File, stdgo.Error>
```



Open opens the named file using os.Open and prepares it for use as a Mach\-O binary.  

[\(view code\)](<./Macho.hx#L1919>)


### Macho function openFat


```haxe
function openFat(_name:String):stdgo.Tuple<stdgo.debug.macho.FatFile, stdgo.Error>
```


```
OpenFat opens the named file using os.Open and prepares it for use as a Mach-O
        universal binary.
```
[\(view code\)](<./Macho.hx#L1910>)


# Typedefs


```haxe
import stdgo.debug.macho.*
```


## typedef Cpu


```haxe
typedef Cpu = stdgo._internal.debug.macho.Cpu;
```


## typedef Load


```haxe
typedef Load = stdgo._internal.debug.macho.Load;
```


## typedef LoadBytes


```haxe
typedef LoadBytes = stdgo._internal.debug.macho.LoadBytes;
```


## typedef LoadCmd


```haxe
typedef LoadCmd = stdgo._internal.debug.macho.LoadCmd;
```


## typedef RelocTypeARM


```haxe
typedef RelocTypeARM = stdgo._internal.debug.macho.RelocTypeARM;
```


## typedef RelocTypeARM64


```haxe
typedef RelocTypeARM64 = stdgo._internal.debug.macho.RelocTypeARM64;
```


## typedef RelocTypeGeneric


```haxe
typedef RelocTypeGeneric = stdgo._internal.debug.macho.RelocTypeGeneric;
```


## typedef RelocTypeX86\_64


```haxe
typedef RelocTypeX86_64 = stdgo._internal.debug.macho.RelocTypeX86_64;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.debug.macho.T__struct_0;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.debug.macho.Type_;
```


# Abstracts


## abstract FatFile


[\(view file containing code\)](<./Macho.hx>)


## abstract FatArchHeader


[\(view file containing code\)](<./Macho.hx>)


## abstract FatArch


[\(view file containing code\)](<./Macho.hx>)


## abstract File


[\(view file containing code\)](<./Macho.hx>)


## abstract SegmentHeader


[\(view file containing code\)](<./Macho.hx>)


## abstract Segment


[\(view file containing code\)](<./Macho.hx>)


## abstract SectionHeader


[\(view file containing code\)](<./Macho.hx>)


## abstract Reloc


[\(view file containing code\)](<./Macho.hx>)


## abstract Section


[\(view file containing code\)](<./Macho.hx>)


## abstract Dylib


[\(view file containing code\)](<./Macho.hx>)


## abstract Symtab


[\(view file containing code\)](<./Macho.hx>)


## abstract Dysymtab


[\(view file containing code\)](<./Macho.hx>)


## abstract Rpath


[\(view file containing code\)](<./Macho.hx>)


## abstract Symbol


[\(view file containing code\)](<./Macho.hx>)


## abstract FormatError


[\(view file containing code\)](<./Macho.hx>)


## abstract T\_relocInfo


[\(view file containing code\)](<./Macho.hx>)


## abstract FileHeader


[\(view file containing code\)](<./Macho.hx>)


## abstract Segment32


[\(view file containing code\)](<./Macho.hx>)


## abstract Segment64


[\(view file containing code\)](<./Macho.hx>)


## abstract SymtabCmd


[\(view file containing code\)](<./Macho.hx>)


## abstract DysymtabCmd


[\(view file containing code\)](<./Macho.hx>)


## abstract DylibCmd


[\(view file containing code\)](<./Macho.hx>)


## abstract RpathCmd


[\(view file containing code\)](<./Macho.hx>)


## abstract Thread


[\(view file containing code\)](<./Macho.hx>)


## abstract Section32


[\(view file containing code\)](<./Macho.hx>)


## abstract Section64


[\(view file containing code\)](<./Macho.hx>)


## abstract Nlist32


[\(view file containing code\)](<./Macho.hx>)


## abstract Nlist64


[\(view file containing code\)](<./Macho.hx>)


## abstract Regs386


[\(view file containing code\)](<./Macho.hx>)


## abstract RegsAMD64


[\(view file containing code\)](<./Macho.hx>)


## abstract T\_intName


[\(view file containing code\)](<./Macho.hx>)


