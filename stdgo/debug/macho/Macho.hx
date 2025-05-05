package stdgo.debug.macho;
var magic32 : stdgo.GoUInt32 = 4277009102i64;
var magic64 : stdgo.GoUInt32 = 4277009103i64;
var magicFat : stdgo.GoUInt32 = 3405691582i64;
var typeObj : Type_ = 1i64;
var typeExec : Type_ = 2i64;
var typeDylib : Type_ = 6i64;
var typeBundle : Type_ = 8i64;
var cpu386 : Cpu = 7i64;
var cpuAmd64 : Cpu = 16777223i64;
var cpuArm : Cpu = 12i64;
var cpuArm64 : Cpu = 16777228i64;
var cpuPpc : Cpu = 18i64;
var cpuPpc64 : Cpu = 16777234i64;
var loadCmdSegment : LoadCmd = 1i64;
var loadCmdSymtab : LoadCmd = 2i64;
var loadCmdThread : LoadCmd = 4i64;
var loadCmdUnixThread : LoadCmd = 5i64;
var loadCmdDysymtab : LoadCmd = 11i64;
var loadCmdDylib : LoadCmd = 12i64;
var loadCmdDylinker : LoadCmd = 15i64;
var loadCmdSegment64 : LoadCmd = 25i64;
var loadCmdRpath : LoadCmd = 2147483676i64;
var flagNoUndefs : stdgo.GoUInt32 = 1i64;
var flagIncrLink : stdgo.GoUInt32 = 2i64;
var flagDyldLink : stdgo.GoUInt32 = 4i64;
var flagBindAtLoad : stdgo.GoUInt32 = 8i64;
var flagPrebound : stdgo.GoUInt32 = 16i64;
var flagSplitSegs : stdgo.GoUInt32 = 32i64;
var flagLazyInit : stdgo.GoUInt32 = 64i64;
var flagTwoLevel : stdgo.GoUInt32 = 128i64;
var flagForceFlat : stdgo.GoUInt32 = 256i64;
var flagNoMultiDefs : stdgo.GoUInt32 = 512i64;
var flagNoFixPrebinding : stdgo.GoUInt32 = 1024i64;
var flagPrebindable : stdgo.GoUInt32 = 2048i64;
var flagAllModsBound : stdgo.GoUInt32 = 4096i64;
var flagSubsectionsViaSymbols : stdgo.GoUInt32 = 8192i64;
var flagCanonical : stdgo.GoUInt32 = 16384i64;
var flagWeakDefines : stdgo.GoUInt32 = 32768i64;
var flagBindsToWeak : stdgo.GoUInt32 = 65536i64;
var flagAllowStackExecution : stdgo.GoUInt32 = 131072i64;
var flagRootSafe : stdgo.GoUInt32 = 262144i64;
var flagSetuidSafe : stdgo.GoUInt32 = 524288i64;
var flagNoReexportedDylibs : stdgo.GoUInt32 = 1048576i64;
var flagPIE : stdgo.GoUInt32 = 2097152i64;
var flagDeadStrippableDylib : stdgo.GoUInt32 = 4194304i64;
var flagHasTLVDescriptors : stdgo.GoUInt32 = 8388608i64;
var flagNoHeapExecution : stdgo.GoUInt32 = 16777216i64;
var flagAppExtensionSafe : stdgo.GoUInt32 = 33554432i64;
var gENERIC_RELOC_VANILLA : RelocTypeGeneric = 0i64;
var gENERIC_RELOC_PAIR : RelocTypeGeneric = 1i64;
var gENERIC_RELOC_SECTDIFF : RelocTypeGeneric = 2i64;
var gENERIC_RELOC_PB_LA_PTR : RelocTypeGeneric = 3i64;
var gENERIC_RELOC_LOCAL_SECTDIFF : RelocTypeGeneric = 4i64;
var gENERIC_RELOC_TLV : RelocTypeGeneric = 5i64;
var x86_64_RELOC_UNSIGNED : RelocTypeX86_64 = 0i64;
var x86_64_RELOC_SIGNED : RelocTypeX86_64 = 1i64;
var x86_64_RELOC_BRANCH : RelocTypeX86_64 = 2i64;
var x86_64_RELOC_GOT_LOAD : RelocTypeX86_64 = 3i64;
var x86_64_RELOC_GOT : RelocTypeX86_64 = 4i64;
var x86_64_RELOC_SUBTRACTOR : RelocTypeX86_64 = 5i64;
var x86_64_RELOC_SIGNED_1 : RelocTypeX86_64 = 6i64;
var x86_64_RELOC_SIGNED_2 : RelocTypeX86_64 = 7i64;
var x86_64_RELOC_SIGNED_4 : RelocTypeX86_64 = 8i64;
var x86_64_RELOC_TLV : RelocTypeX86_64 = 9i64;
var aRM_RELOC_VANILLA : RelocTypeARM = 0i64;
var aRM_RELOC_PAIR : RelocTypeARM = 1i64;
var aRM_RELOC_SECTDIFF : RelocTypeARM = 2i64;
var aRM_RELOC_LOCAL_SECTDIFF : RelocTypeARM = 3i64;
var aRM_RELOC_PB_LA_PTR : RelocTypeARM = 4i64;
var aRM_RELOC_BR24 : RelocTypeARM = 5i64;
var aRM_THUMB_RELOC_BR22 : RelocTypeARM = 6i64;
var aRM_THUMB_32BIT_BRANCH : RelocTypeARM = 7i64;
var aRM_RELOC_HALF : RelocTypeARM = 8i64;
var aRM_RELOC_HALF_SECTDIFF : RelocTypeARM = 9i64;
var aRM64_RELOC_UNSIGNED : RelocTypeARM64 = 0i64;
var aRM64_RELOC_SUBTRACTOR : RelocTypeARM64 = 1i64;
var aRM64_RELOC_BRANCH26 : RelocTypeARM64 = 2i64;
var aRM64_RELOC_PAGE21 : RelocTypeARM64 = 3i64;
var aRM64_RELOC_PAGEOFF12 : RelocTypeARM64 = 4i64;
var aRM64_RELOC_GOT_LOAD_PAGE21 : RelocTypeARM64 = 5i64;
var aRM64_RELOC_GOT_LOAD_PAGEOFF12 : RelocTypeARM64 = 6i64;
var aRM64_RELOC_POINTER_TO_GOT : RelocTypeARM64 = 7i64;
var aRM64_RELOC_TLVP_LOAD_PAGE21 : RelocTypeARM64 = 8i64;
var aRM64_RELOC_TLVP_LOAD_PAGEOFF12 : RelocTypeARM64 = 9i64;
var aRM64_RELOC_ADDEND : RelocTypeARM64 = 10i64;
var errNotFat(get, set) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>;
private function get_errNotFat():stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError> return stdgo._internal.debug.macho.Macho_errnotfat.errNotFat;
private function set_errNotFat(v:stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>):stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError> {
        stdgo._internal.debug.macho.Macho_errnotfat.errNotFat = v;
        return v;
    }
typedef Load = stdgo._internal.debug.macho.Macho_load.Load;
typedef FatFile = stdgo._internal.debug.macho.Macho_fatfile.FatFile;
typedef FatArchHeader = stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader;
typedef FatArch = stdgo._internal.debug.macho.Macho_fatarch.FatArch;
typedef File = stdgo._internal.debug.macho.Macho_file.File;
typedef SegmentHeader = stdgo._internal.debug.macho.Macho_segmentheader.SegmentHeader;
typedef Segment = stdgo._internal.debug.macho.Macho_segment.Segment;
typedef SectionHeader = stdgo._internal.debug.macho.Macho_sectionheader.SectionHeader;
typedef Reloc = stdgo._internal.debug.macho.Macho_reloc.Reloc;
typedef Section = stdgo._internal.debug.macho.Macho_section.Section;
typedef Dylib = stdgo._internal.debug.macho.Macho_dylib.Dylib;
typedef Symtab = stdgo._internal.debug.macho.Macho_symtab.Symtab;
typedef Dysymtab = stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab;
typedef Rpath = stdgo._internal.debug.macho.Macho_rpath.Rpath;
typedef Symbol = stdgo._internal.debug.macho.Macho_symbol.Symbol;
typedef FormatError = stdgo._internal.debug.macho.Macho_formaterror.FormatError;
typedef FileHeader = stdgo._internal.debug.macho.Macho_fileheader.FileHeader;
typedef Segment32 = stdgo._internal.debug.macho.Macho_segment32.Segment32;
typedef Segment64 = stdgo._internal.debug.macho.Macho_segment64.Segment64;
typedef SymtabCmd = stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd;
typedef DysymtabCmd = stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd;
typedef DylibCmd = stdgo._internal.debug.macho.Macho_dylibcmd.DylibCmd;
typedef RpathCmd = stdgo._internal.debug.macho.Macho_rpathcmd.RpathCmd;
typedef Thread = stdgo._internal.debug.macho.Macho_thread.Thread;
typedef Section32 = stdgo._internal.debug.macho.Macho_section32.Section32;
typedef Section64 = stdgo._internal.debug.macho.Macho_section64.Section64;
typedef Nlist32 = stdgo._internal.debug.macho.Macho_nlist32.Nlist32;
typedef Nlist64 = stdgo._internal.debug.macho.Macho_nlist64.Nlist64;
typedef Regs386 = stdgo._internal.debug.macho.Macho_regs386.Regs386;
typedef RegsAMD64 = stdgo._internal.debug.macho.Macho_regsamd64.RegsAMD64;
typedef LoadBytes = stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes;
typedef Type_ = stdgo._internal.debug.macho.Macho_type_.Type_;
typedef Cpu = stdgo._internal.debug.macho.Macho_cpu.Cpu;
typedef LoadCmd = stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd;
typedef RelocTypeGeneric = stdgo._internal.debug.macho.Macho_reloctypegeneric.RelocTypeGeneric;
typedef RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64;
typedef RelocTypeARM = stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM;
typedef RelocTypeARM64 = stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64;
typedef FatFilePointer = stdgo._internal.debug.macho.Macho_fatfilepointer.FatFilePointer;
typedef FatArchHeaderPointer = stdgo._internal.debug.macho.Macho_fatarchheaderpointer.FatArchHeaderPointer;
typedef FatArchPointer = stdgo._internal.debug.macho.Macho_fatarchpointer.FatArchPointer;
typedef FilePointer = stdgo._internal.debug.macho.Macho_filepointer.FilePointer;
typedef SegmentHeaderPointer = stdgo._internal.debug.macho.Macho_segmentheaderpointer.SegmentHeaderPointer;
typedef SegmentPointer = stdgo._internal.debug.macho.Macho_segmentpointer.SegmentPointer;
typedef SectionHeaderPointer = stdgo._internal.debug.macho.Macho_sectionheaderpointer.SectionHeaderPointer;
typedef RelocPointer = stdgo._internal.debug.macho.Macho_relocpointer.RelocPointer;
typedef SectionPointer = stdgo._internal.debug.macho.Macho_sectionpointer.SectionPointer;
typedef DylibPointer = stdgo._internal.debug.macho.Macho_dylibpointer.DylibPointer;
typedef SymtabPointer = stdgo._internal.debug.macho.Macho_symtabpointer.SymtabPointer;
typedef DysymtabPointer = stdgo._internal.debug.macho.Macho_dysymtabpointer.DysymtabPointer;
typedef RpathPointer = stdgo._internal.debug.macho.Macho_rpathpointer.RpathPointer;
typedef SymbolPointer = stdgo._internal.debug.macho.Macho_symbolpointer.SymbolPointer;
typedef FormatErrorPointer = stdgo._internal.debug.macho.Macho_formaterrorpointer.FormatErrorPointer;
typedef FileHeaderPointer = stdgo._internal.debug.macho.Macho_fileheaderpointer.FileHeaderPointer;
typedef Segment32Pointer = stdgo._internal.debug.macho.Macho_segment32pointer.Segment32Pointer;
typedef Segment64Pointer = stdgo._internal.debug.macho.Macho_segment64pointer.Segment64Pointer;
typedef SymtabCmdPointer = stdgo._internal.debug.macho.Macho_symtabcmdpointer.SymtabCmdPointer;
typedef DysymtabCmdPointer = stdgo._internal.debug.macho.Macho_dysymtabcmdpointer.DysymtabCmdPointer;
typedef DylibCmdPointer = stdgo._internal.debug.macho.Macho_dylibcmdpointer.DylibCmdPointer;
typedef RpathCmdPointer = stdgo._internal.debug.macho.Macho_rpathcmdpointer.RpathCmdPointer;
typedef ThreadPointer = stdgo._internal.debug.macho.Macho_threadpointer.ThreadPointer;
typedef Section32Pointer = stdgo._internal.debug.macho.Macho_section32pointer.Section32Pointer;
typedef Section64Pointer = stdgo._internal.debug.macho.Macho_section64pointer.Section64Pointer;
typedef Nlist32Pointer = stdgo._internal.debug.macho.Macho_nlist32pointer.Nlist32Pointer;
typedef Nlist64Pointer = stdgo._internal.debug.macho.Macho_nlist64pointer.Nlist64Pointer;
typedef Regs386Pointer = stdgo._internal.debug.macho.Macho_regs386pointer.Regs386Pointer;
typedef RegsAMD64Pointer = stdgo._internal.debug.macho.Macho_regsamd64pointer.RegsAMD64Pointer;
typedef LoadBytesPointer = stdgo._internal.debug.macho.Macho_loadbytespointer.LoadBytesPointer;
typedef Type_Pointer = stdgo._internal.debug.macho.Macho_type_pointer.Type_Pointer;
typedef CpuPointer = stdgo._internal.debug.macho.Macho_cpupointer.CpuPointer;
typedef LoadCmdPointer = stdgo._internal.debug.macho.Macho_loadcmdpointer.LoadCmdPointer;
typedef RelocTypeGenericPointer = stdgo._internal.debug.macho.Macho_reloctypegenericpointer.RelocTypeGenericPointer;
typedef RelocTypeX86_64Pointer = stdgo._internal.debug.macho.Macho_reloctypex86_64pointer.RelocTypeX86_64Pointer;
typedef RelocTypeARMPointer = stdgo._internal.debug.macho.Macho_reloctypearmpointer.RelocTypeARMPointer;
typedef RelocTypeARM64Pointer = stdgo._internal.debug.macho.Macho_reloctypearm64pointer.RelocTypeARM64Pointer;
/**
    * 
    * Package macho implements access to Mach-O object files.
    * 
    * # Security
    * 
    * This package is not designed to be hardened against adversarial inputs, and is
    * outside the scope of https://go.dev/security/policy. In particular, only basic
    * validation is done when parsing object files. As such, care should be taken when
    * parsing untrusted inputs, as parsing malformed files may consume significant
    * resources, or cause panics.
    * 
**/
class Macho {
    /**
        * NewFatFile creates a new FatFile for accessing all the Mach-O images in a
        * universal binary. The Mach-O binary is expected to start at position 0 in
        * the ReaderAt.
    **/
    static public inline function newFatFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile>; var _1 : stdgo.Error; } return stdgo._internal.debug.macho.Macho_newfatfile.newFatFile(_r);
    /**
        * OpenFat opens the named file using os.Open and prepares it for use as a Mach-O
        * universal binary.
    **/
    static public inline function openFat(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile>; var _1 : stdgo.Error; } return stdgo._internal.debug.macho.Macho_openfat.openFat(_name);
    /**
        * Open opens the named file using os.Open and prepares it for use as a Mach-O binary.
    **/
    static public inline function open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>; var _1 : stdgo.Error; } return stdgo._internal.debug.macho.Macho_open.open(_name);
    /**
        * NewFile creates a new File for accessing a Mach-O binary in an underlying reader.
        * The Mach-O binary is expected to start at position 0 in the ReaderAt.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>; var _1 : stdgo.Error; } return stdgo._internal.debug.macho.Macho_newfile.newFile(_r);
}
