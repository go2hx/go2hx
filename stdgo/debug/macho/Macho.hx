package stdgo.debug.macho;
final magic32 : std.UInt = stdgo._internal.debug.macho.Macho_magic32.magic32;
final magic64 : std.UInt = stdgo._internal.debug.macho.Macho_magic64.magic64;
final magicFat : std.UInt = stdgo._internal.debug.macho.Macho_magicFat.magicFat;
final typeObj : Type_ = stdgo._internal.debug.macho.Macho_typeObj.typeObj;
final typeExec : Type_ = stdgo._internal.debug.macho.Macho_typeExec.typeExec;
final typeDylib : Type_ = stdgo._internal.debug.macho.Macho_typeDylib.typeDylib;
final typeBundle : Type_ = stdgo._internal.debug.macho.Macho_typeBundle.typeBundle;
final cpu386 : Cpu = stdgo._internal.debug.macho.Macho_cpu386.cpu386;
final cpuAmd64 : Cpu = stdgo._internal.debug.macho.Macho_cpuAmd64.cpuAmd64;
final cpuArm : Cpu = stdgo._internal.debug.macho.Macho_cpuArm.cpuArm;
final cpuArm64 : Cpu = stdgo._internal.debug.macho.Macho_cpuArm64.cpuArm64;
final cpuPpc : Cpu = stdgo._internal.debug.macho.Macho_cpuPpc.cpuPpc;
final cpuPpc64 : Cpu = stdgo._internal.debug.macho.Macho_cpuPpc64.cpuPpc64;
final loadCmdSegment : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdSegment.loadCmdSegment;
final loadCmdSymtab : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdSymtab.loadCmdSymtab;
final loadCmdThread : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdThread.loadCmdThread;
final loadCmdUnixThread : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdUnixThread.loadCmdUnixThread;
final loadCmdDysymtab : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdDysymtab.loadCmdDysymtab;
final loadCmdDylib : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdDylib.loadCmdDylib;
final loadCmdDylinker : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdDylinker.loadCmdDylinker;
final loadCmdSegment64 : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdSegment64.loadCmdSegment64;
final loadCmdRpath : LoadCmd = stdgo._internal.debug.macho.Macho_loadCmdRpath.loadCmdRpath;
final flagNoUndefs : std.UInt = stdgo._internal.debug.macho.Macho_flagNoUndefs.flagNoUndefs;
final flagIncrLink : std.UInt = stdgo._internal.debug.macho.Macho_flagIncrLink.flagIncrLink;
final flagDyldLink : std.UInt = stdgo._internal.debug.macho.Macho_flagDyldLink.flagDyldLink;
final flagBindAtLoad : std.UInt = stdgo._internal.debug.macho.Macho_flagBindAtLoad.flagBindAtLoad;
final flagPrebound : std.UInt = stdgo._internal.debug.macho.Macho_flagPrebound.flagPrebound;
final flagSplitSegs : std.UInt = stdgo._internal.debug.macho.Macho_flagSplitSegs.flagSplitSegs;
final flagLazyInit : std.UInt = stdgo._internal.debug.macho.Macho_flagLazyInit.flagLazyInit;
final flagTwoLevel : std.UInt = stdgo._internal.debug.macho.Macho_flagTwoLevel.flagTwoLevel;
final flagForceFlat : std.UInt = stdgo._internal.debug.macho.Macho_flagForceFlat.flagForceFlat;
final flagNoMultiDefs : std.UInt = stdgo._internal.debug.macho.Macho_flagNoMultiDefs.flagNoMultiDefs;
final flagNoFixPrebinding : std.UInt = stdgo._internal.debug.macho.Macho_flagNoFixPrebinding.flagNoFixPrebinding;
final flagPrebindable : std.UInt = stdgo._internal.debug.macho.Macho_flagPrebindable.flagPrebindable;
final flagAllModsBound : std.UInt = stdgo._internal.debug.macho.Macho_flagAllModsBound.flagAllModsBound;
final flagSubsectionsViaSymbols : std.UInt = stdgo._internal.debug.macho.Macho_flagSubsectionsViaSymbols.flagSubsectionsViaSymbols;
final flagCanonical : std.UInt = stdgo._internal.debug.macho.Macho_flagCanonical.flagCanonical;
final flagWeakDefines : std.UInt = stdgo._internal.debug.macho.Macho_flagWeakDefines.flagWeakDefines;
final flagBindsToWeak : std.UInt = stdgo._internal.debug.macho.Macho_flagBindsToWeak.flagBindsToWeak;
final flagAllowStackExecution : std.UInt = stdgo._internal.debug.macho.Macho_flagAllowStackExecution.flagAllowStackExecution;
final flagRootSafe : std.UInt = stdgo._internal.debug.macho.Macho_flagRootSafe.flagRootSafe;
final flagSetuidSafe : std.UInt = stdgo._internal.debug.macho.Macho_flagSetuidSafe.flagSetuidSafe;
final flagNoReexportedDylibs : std.UInt = stdgo._internal.debug.macho.Macho_flagNoReexportedDylibs.flagNoReexportedDylibs;
final flagPIE : std.UInt = stdgo._internal.debug.macho.Macho_flagPIE.flagPIE;
final flagDeadStrippableDylib : std.UInt = stdgo._internal.debug.macho.Macho_flagDeadStrippableDylib.flagDeadStrippableDylib;
final flagHasTLVDescriptors : std.UInt = stdgo._internal.debug.macho.Macho_flagHasTLVDescriptors.flagHasTLVDescriptors;
final flagNoHeapExecution : std.UInt = stdgo._internal.debug.macho.Macho_flagNoHeapExecution.flagNoHeapExecution;
final flagAppExtensionSafe : std.UInt = stdgo._internal.debug.macho.Macho_flagAppExtensionSafe.flagAppExtensionSafe;
final gENERIC_RELOC_VANILLA : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_gENERIC_RELOC_VANILLA.gENERIC_RELOC_VANILLA;
final gENERIC_RELOC_PAIR : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_gENERIC_RELOC_PAIR.gENERIC_RELOC_PAIR;
final gENERIC_RELOC_SECTDIFF : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_gENERIC_RELOC_SECTDIFF.gENERIC_RELOC_SECTDIFF;
final gENERIC_RELOC_PB_LA_PTR : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_gENERIC_RELOC_PB_LA_PTR.gENERIC_RELOC_PB_LA_PTR;
final gENERIC_RELOC_LOCAL_SECTDIFF : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_gENERIC_RELOC_LOCAL_SECTDIFF.gENERIC_RELOC_LOCAL_SECTDIFF;
final gENERIC_RELOC_TLV : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_gENERIC_RELOC_TLV.gENERIC_RELOC_TLV;
final x86_64_RELOC_UNSIGNED : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_UNSIGNED.x86_64_RELOC_UNSIGNED;
final x86_64_RELOC_SIGNED : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SIGNED.x86_64_RELOC_SIGNED;
final x86_64_RELOC_BRANCH : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_BRANCH.x86_64_RELOC_BRANCH;
final x86_64_RELOC_GOT_LOAD : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_GOT_LOAD.x86_64_RELOC_GOT_LOAD;
final x86_64_RELOC_GOT : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_GOT.x86_64_RELOC_GOT;
final x86_64_RELOC_SUBTRACTOR : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SUBTRACTOR.x86_64_RELOC_SUBTRACTOR;
final x86_64_RELOC_SIGNED_1 : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SIGNED_1.x86_64_RELOC_SIGNED_1;
final x86_64_RELOC_SIGNED_2 : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SIGNED_2.x86_64_RELOC_SIGNED_2;
final x86_64_RELOC_SIGNED_4 : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_SIGNED_4.x86_64_RELOC_SIGNED_4;
final x86_64_RELOC_TLV : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_RELOC_TLV.x86_64_RELOC_TLV;
final aRM_RELOC_VANILLA : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_RELOC_VANILLA.aRM_RELOC_VANILLA;
final aRM_RELOC_PAIR : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_RELOC_PAIR.aRM_RELOC_PAIR;
final aRM_RELOC_SECTDIFF : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_RELOC_SECTDIFF.aRM_RELOC_SECTDIFF;
final aRM_RELOC_LOCAL_SECTDIFF : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_RELOC_LOCAL_SECTDIFF.aRM_RELOC_LOCAL_SECTDIFF;
final aRM_RELOC_PB_LA_PTR : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_RELOC_PB_LA_PTR.aRM_RELOC_PB_LA_PTR;
final aRM_RELOC_BR24 : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_RELOC_BR24.aRM_RELOC_BR24;
final aRM_THUMB_RELOC_BR22 : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_THUMB_RELOC_BR22.aRM_THUMB_RELOC_BR22;
final aRM_THUMB_32BIT_BRANCH : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_THUMB_32BIT_BRANCH.aRM_THUMB_32BIT_BRANCH;
final aRM_RELOC_HALF : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_RELOC_HALF.aRM_RELOC_HALF;
final aRM_RELOC_HALF_SECTDIFF : RelocTypeARM = stdgo._internal.debug.macho.Macho_aRM_RELOC_HALF_SECTDIFF.aRM_RELOC_HALF_SECTDIFF;
final aRM64_RELOC_UNSIGNED : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_UNSIGNED.aRM64_RELOC_UNSIGNED;
final aRM64_RELOC_SUBTRACTOR : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_SUBTRACTOR.aRM64_RELOC_SUBTRACTOR;
final aRM64_RELOC_BRANCH26 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_BRANCH26.aRM64_RELOC_BRANCH26;
final aRM64_RELOC_PAGE21 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_PAGE21.aRM64_RELOC_PAGE21;
final aRM64_RELOC_PAGEOFF12 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_PAGEOFF12.aRM64_RELOC_PAGEOFF12;
final aRM64_RELOC_GOT_LOAD_PAGE21 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_GOT_LOAD_PAGE21.aRM64_RELOC_GOT_LOAD_PAGE21;
final aRM64_RELOC_GOT_LOAD_PAGEOFF12 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_GOT_LOAD_PAGEOFF12.aRM64_RELOC_GOT_LOAD_PAGEOFF12;
final aRM64_RELOC_POINTER_TO_GOT : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_POINTER_TO_GOT.aRM64_RELOC_POINTER_TO_GOT;
final aRM64_RELOC_TLVP_LOAD_PAGE21 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_TLVP_LOAD_PAGE21.aRM64_RELOC_TLVP_LOAD_PAGE21;
final aRM64_RELOC_TLVP_LOAD_PAGEOFF12 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_TLVP_LOAD_PAGEOFF12.aRM64_RELOC_TLVP_LOAD_PAGEOFF12;
final aRM64_RELOC_ADDEND : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_aRM64_RELOC_ADDEND.aRM64_RELOC_ADDEND;
var errNotFat(get, set) : FormatError;
private function get_errNotFat():FormatError return stdgo._internal.debug.macho.Macho_errNotFat.errNotFat;
private function set_errNotFat(v:FormatError):FormatError {
        stdgo._internal.debug.macho.Macho_errNotFat.errNotFat = v;
        return v;
    }
class Load_static_extension {
    static public function raw(t:stdgo._internal.debug.macho.Macho_Load.Load):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_Load_static_extension.Load_static_extension.raw(t)) i];
    }
}
typedef Load = stdgo._internal.debug.macho.Macho_Load.Load;
@:structInit @:using(stdgo.debug.macho.Macho.FatFile_static_extension) abstract FatFile(stdgo._internal.debug.macho.Macho_FatFile.FatFile) from stdgo._internal.debug.macho.Macho_FatFile.FatFile to stdgo._internal.debug.macho.Macho_FatFile.FatFile {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = v;
        return v;
    }
    public var arches(get, set) : Array<FatArch>;
    function get_arches():Array<FatArch> return [for (i in this.arches) i];
    function set_arches(v:Array<FatArch>):Array<FatArch> {
        this.arches = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?magic:std.UInt, ?arches:Array<FatArch>, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.debug.macho.Macho_FatFile.FatFile(magic, ([for (i in arches) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract FatArchHeader(stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader) from stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader to stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader {
    public var cpu(get, set) : Cpu;
    function get_cpu():Cpu return this.cpu;
    function set_cpu(v:Cpu):Cpu {
        this.cpu = v;
        return v;
    }
    public var subCpu(get, set) : std.UInt;
    function get_subCpu():std.UInt return this.subCpu;
    function set_subCpu(v:std.UInt):std.UInt {
        this.subCpu = v;
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = v;
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = v;
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = v;
        return v;
    }
    public function new(?cpu:Cpu, ?subCpu:std.UInt, ?offset:std.UInt, ?size:std.UInt, ?align:std.UInt) this = new stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader(cpu, subCpu, offset, size, align);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.FatArch_static_extension) abstract FatArch(stdgo._internal.debug.macho.Macho_FatArch.FatArch) from stdgo._internal.debug.macho.Macho_FatArch.FatArch to stdgo._internal.debug.macho.Macho_FatArch.FatArch {
    public var fatArchHeader(get, set) : FatArchHeader;
    function get_fatArchHeader():FatArchHeader return this.fatArchHeader;
    function set_fatArchHeader(v:FatArchHeader):FatArchHeader {
        this.fatArchHeader = v;
        return v;
    }
    public var file(get, set) : File;
    function get_file():File return this.file;
    function set_file(v:File):File {
        this.file = v;
        return v;
    }
    public function new(?fatArchHeader:FatArchHeader, ?file:File) this = new stdgo._internal.debug.macho.Macho_FatArch.FatArch(fatArchHeader, file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.File_static_extension) abstract File(stdgo._internal.debug.macho.Macho_File.File) from stdgo._internal.debug.macho.Macho_File.File to stdgo._internal.debug.macho.Macho_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var byteOrder(get, set) : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder;
    function get_byteOrder():stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder return this.byteOrder;
    function set_byteOrder(v:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        this.byteOrder = v;
        return v;
    }
    public var loads(get, set) : Array<Load>;
    function get_loads():Array<Load> return [for (i in this.loads) i];
    function set_loads(v:Array<Load>):Array<Load> {
        this.loads = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load>);
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>>);
        return v;
    }
    public var symtab(get, set) : Symtab;
    function get_symtab():Symtab return this.symtab;
    function set_symtab(v:Symtab):Symtab {
        this.symtab = v;
        return v;
    }
    public var dysymtab(get, set) : Dysymtab;
    function get_dysymtab():Dysymtab return this.dysymtab;
    function set_dysymtab(v:Dysymtab):Dysymtab {
        this.dysymtab = v;
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?byteOrder:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?loads:Array<Load>, ?sections:Array<Section>, ?symtab:Symtab, ?dysymtab:Dysymtab, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.debug.macho.Macho_File.File(fileHeader, byteOrder, ([for (i in loads) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load>), ([for (i in sections) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>>), symtab, dysymtab, _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SegmentHeader(stdgo._internal.debug.macho.Macho_SegmentHeader.SegmentHeader) from stdgo._internal.debug.macho.Macho_SegmentHeader.SegmentHeader to stdgo._internal.debug.macho.Macho_SegmentHeader.SegmentHeader {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = v;
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = v;
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = v;
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = v;
        return v;
    }
    public var maxprot(get, set) : std.UInt;
    function get_maxprot():std.UInt return this.maxprot;
    function set_maxprot(v:std.UInt):std.UInt {
        this.maxprot = v;
        return v;
    }
    public var prot(get, set) : std.UInt;
    function get_prot():std.UInt return this.prot;
    function set_prot(v:std.UInt):std.UInt {
        this.prot = v;
        return v;
    }
    public var nsect(get, set) : std.UInt;
    function get_nsect():std.UInt return this.nsect;
    function set_nsect(v:std.UInt):std.UInt {
        this.nsect = v;
        return v;
    }
    public var flag(get, set) : std.UInt;
    function get_flag():std.UInt return this.flag;
    function set_flag(v:std.UInt):std.UInt {
        this.flag = v;
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:String, ?addr:haxe.UInt64, ?memsz:haxe.UInt64, ?offset:haxe.UInt64, ?filesz:haxe.UInt64, ?maxprot:std.UInt, ?prot:std.UInt, ?nsect:std.UInt, ?flag:std.UInt) this = new stdgo._internal.debug.macho.Macho_SegmentHeader.SegmentHeader(
cmd,
len,
name,
addr,
memsz,
offset,
filesz,
maxprot,
prot,
nsect,
flag);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Segment_static_extension) abstract Segment(stdgo._internal.debug.macho.Macho_Segment.Segment) from stdgo._internal.debug.macho.Macho_Segment.Segment to stdgo._internal.debug.macho.Macho_Segment.Segment {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var segmentHeader(get, set) : SegmentHeader;
    function get_segmentHeader():SegmentHeader return this.segmentHeader;
    function set_segmentHeader(v:SegmentHeader):SegmentHeader {
        this.segmentHeader = v;
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_ReaderAt.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get__sr():stdgo._internal.io.Io_SectionReader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this._sr = v;
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?segmentHeader:SegmentHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader) this = new stdgo._internal.debug.macho.Macho_Segment.Segment(loadBytes, segmentHeader, readerAt, _sr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SectionHeader(stdgo._internal.debug.macho.Macho_SectionHeader.SectionHeader) from stdgo._internal.debug.macho.Macho_SectionHeader.SectionHeader to stdgo._internal.debug.macho.Macho_SectionHeader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var seg(get, set) : String;
    function get_seg():String return this.seg;
    function set_seg(v:String):String {
        this.seg = v;
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = v;
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = v;
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = v;
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = v;
        return v;
    }
    public var reloff(get, set) : std.UInt;
    function get_reloff():std.UInt return this.reloff;
    function set_reloff(v:std.UInt):std.UInt {
        this.reloff = v;
        return v;
    }
    public var nreloc(get, set) : std.UInt;
    function get_nreloc():std.UInt return this.nreloc;
    function set_nreloc(v:std.UInt):std.UInt {
        this.nreloc = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public function new(?name:String, ?seg:String, ?addr:haxe.UInt64, ?size:haxe.UInt64, ?offset:std.UInt, ?align:std.UInt, ?reloff:std.UInt, ?nreloc:std.UInt, ?flags:std.UInt) this = new stdgo._internal.debug.macho.Macho_SectionHeader.SectionHeader(name, seg, addr, size, offset, align, reloff, nreloc, flags);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Reloc(stdgo._internal.debug.macho.Macho_Reloc.Reloc) from stdgo._internal.debug.macho.Macho_Reloc.Reloc to stdgo._internal.debug.macho.Macho_Reloc.Reloc {
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = v;
        return v;
    }
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = v;
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var pcrel(get, set) : Bool;
    function get_pcrel():Bool return this.pcrel;
    function set_pcrel(v:Bool):Bool {
        this.pcrel = v;
        return v;
    }
    public var extern_(get, set) : Bool;
    function get_extern_():Bool return this.extern_;
    function set_extern_(v:Bool):Bool {
        this.extern_ = v;
        return v;
    }
    public var scattered(get, set) : Bool;
    function get_scattered():Bool return this.scattered;
    function set_scattered(v:Bool):Bool {
        this.scattered = v;
        return v;
    }
    public function new(?addr:std.UInt, ?value:std.UInt, ?type:std.UInt, ?len:std.UInt, ?pcrel:Bool, ?extern_:Bool, ?scattered:Bool) this = new stdgo._internal.debug.macho.Macho_Reloc.Reloc(addr, value, type, len, pcrel, extern_, scattered);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Section_static_extension) abstract Section(stdgo._internal.debug.macho.Macho_Section.Section) from stdgo._internal.debug.macho.Macho_Section.Section to stdgo._internal.debug.macho.Macho_Section.Section {
    public var sectionHeader(get, set) : SectionHeader;
    function get_sectionHeader():SectionHeader return this.sectionHeader;
    function set_sectionHeader(v:SectionHeader):SectionHeader {
        this.sectionHeader = v;
        return v;
    }
    public var relocs(get, set) : Array<Reloc>;
    function get_relocs():Array<Reloc> return [for (i in this.relocs) i];
    function set_relocs(v:Array<Reloc>):Array<Reloc> {
        this.relocs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Reloc.Reloc>);
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_ReaderAt.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get__sr():stdgo._internal.io.Io_SectionReader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this._sr = v;
        return v;
    }
    public function new(?sectionHeader:SectionHeader, ?relocs:Array<Reloc>, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader) this = new stdgo._internal.debug.macho.Macho_Section.Section(sectionHeader, ([for (i in relocs) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Reloc.Reloc>), readerAt, _sr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Dylib_static_extension) abstract Dylib(stdgo._internal.debug.macho.Macho_Dylib.Dylib) from stdgo._internal.debug.macho.Macho_Dylib.Dylib to stdgo._internal.debug.macho.Macho_Dylib.Dylib {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var time(get, set) : std.UInt;
    function get_time():std.UInt return this.time;
    function set_time(v:std.UInt):std.UInt {
        this.time = v;
        return v;
    }
    public var currentVersion(get, set) : std.UInt;
    function get_currentVersion():std.UInt return this.currentVersion;
    function set_currentVersion(v:std.UInt):std.UInt {
        this.currentVersion = v;
        return v;
    }
    public var compatVersion(get, set) : std.UInt;
    function get_compatVersion():std.UInt return this.compatVersion;
    function set_compatVersion(v:std.UInt):std.UInt {
        this.compatVersion = v;
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?name:String, ?time:std.UInt, ?currentVersion:std.UInt, ?compatVersion:std.UInt) this = new stdgo._internal.debug.macho.Macho_Dylib.Dylib(loadBytes, name, time, currentVersion, compatVersion);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Symtab_static_extension) abstract Symtab(stdgo._internal.debug.macho.Macho_Symtab.Symtab) from stdgo._internal.debug.macho.Macho_Symtab.Symtab to stdgo._internal.debug.macho.Macho_Symtab.Symtab {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var symtabCmd(get, set) : SymtabCmd;
    function get_symtabCmd():SymtabCmd return this.symtabCmd;
    function set_symtabCmd(v:SymtabCmd):SymtabCmd {
        this.symtabCmd = v;
        return v;
    }
    public var syms(get, set) : Array<Symbol>;
    function get_syms():Array<Symbol> return [for (i in this.syms) i];
    function set_syms(v:Array<Symbol>):Array<Symbol> {
        this.syms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Symbol.Symbol>);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?symtabCmd:SymtabCmd, ?syms:Array<Symbol>) this = new stdgo._internal.debug.macho.Macho_Symtab.Symtab(loadBytes, symtabCmd, ([for (i in syms) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Symbol.Symbol>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Dysymtab_static_extension) abstract Dysymtab(stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab) from stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab to stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var dysymtabCmd(get, set) : DysymtabCmd;
    function get_dysymtabCmd():DysymtabCmd return this.dysymtabCmd;
    function set_dysymtabCmd(v:DysymtabCmd):DysymtabCmd {
        this.dysymtabCmd = v;
        return v;
    }
    public var indirectSyms(get, set) : Array<std.UInt>;
    function get_indirectSyms():Array<std.UInt> return [for (i in this.indirectSyms) i];
    function set_indirectSyms(v:Array<std.UInt>):Array<std.UInt> {
        this.indirectSyms = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?dysymtabCmd:DysymtabCmd, ?indirectSyms:Array<std.UInt>) this = new stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab(loadBytes, dysymtabCmd, ([for (i in indirectSyms) i] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Rpath_static_extension) abstract Rpath(stdgo._internal.debug.macho.Macho_Rpath.Rpath) from stdgo._internal.debug.macho.Macho_Rpath.Rpath to stdgo._internal.debug.macho.Macho_Rpath.Rpath {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = v;
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?path:String) this = new stdgo._internal.debug.macho.Macho_Rpath.Rpath(loadBytes, path);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Symbol(stdgo._internal.debug.macho.Macho_Symbol.Symbol) from stdgo._internal.debug.macho.Macho_Symbol.Symbol to stdgo._internal.debug.macho.Macho_Symbol.Symbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var sect(get, set) : std.UInt;
    function get_sect():std.UInt return this.sect;
    function set_sect(v:std.UInt):std.UInt {
        this.sect = v;
        return v;
    }
    public var desc(get, set) : std.UInt;
    function get_desc():std.UInt return this.desc;
    function set_desc(v:std.UInt):std.UInt {
        this.desc = v;
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = v;
        return v;
    }
    public function new(?name:String, ?type:std.UInt, ?sect:std.UInt, ?desc:std.UInt, ?value:haxe.UInt64) this = new stdgo._internal.debug.macho.Macho_Symbol.Symbol(name, type, sect, desc, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.FormatError_static_extension) abstract FormatError(stdgo._internal.debug.macho.Macho_FormatError.FormatError) from stdgo._internal.debug.macho.Macho_FormatError.FormatError to stdgo._internal.debug.macho.Macho_FormatError.FormatError {
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = v;
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = v;
        return v;
    }
    public function new(?_off:haxe.Int64, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_off, _msg, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_relocInfo(stdgo._internal.debug.macho.Macho_T_relocInfo.T_relocInfo) from stdgo._internal.debug.macho.Macho_T_relocInfo.T_relocInfo to stdgo._internal.debug.macho.Macho_T_relocInfo.T_relocInfo {
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = v;
        return v;
    }
    public var symnum(get, set) : std.UInt;
    function get_symnum():std.UInt return this.symnum;
    function set_symnum(v:std.UInt):std.UInt {
        this.symnum = v;
        return v;
    }
    public function new(?addr:std.UInt, ?symnum:std.UInt) this = new stdgo._internal.debug.macho.Macho_T_relocInfo.T_relocInfo(addr, symnum);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract FileHeader(stdgo._internal.debug.macho.Macho_FileHeader.FileHeader) from stdgo._internal.debug.macho.Macho_FileHeader.FileHeader to stdgo._internal.debug.macho.Macho_FileHeader.FileHeader {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = v;
        return v;
    }
    public var cpu(get, set) : Cpu;
    function get_cpu():Cpu return this.cpu;
    function set_cpu(v:Cpu):Cpu {
        this.cpu = v;
        return v;
    }
    public var subCpu(get, set) : std.UInt;
    function get_subCpu():std.UInt return this.subCpu;
    function set_subCpu(v:std.UInt):std.UInt {
        this.subCpu = v;
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var ncmd(get, set) : std.UInt;
    function get_ncmd():std.UInt return this.ncmd;
    function set_ncmd(v:std.UInt):std.UInt {
        this.ncmd = v;
        return v;
    }
    public var cmdsz(get, set) : std.UInt;
    function get_cmdsz():std.UInt return this.cmdsz;
    function set_cmdsz(v:std.UInt):std.UInt {
        this.cmdsz = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public function new(?magic:std.UInt, ?cpu:Cpu, ?subCpu:std.UInt, ?type:Type_, ?ncmd:std.UInt, ?cmdsz:std.UInt, ?flags:std.UInt) this = new stdgo._internal.debug.macho.Macho_FileHeader.FileHeader(magic, cpu, subCpu, type, ncmd, cmdsz, flags);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Segment32(stdgo._internal.debug.macho.Macho_Segment32.Segment32) from stdgo._internal.debug.macho.Macho_Segment32.Segment32 to stdgo._internal.debug.macho.Macho_Segment32.Segment32 {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = v;
        return v;
    }
    public var memsz(get, set) : std.UInt;
    function get_memsz():std.UInt return this.memsz;
    function set_memsz(v:std.UInt):std.UInt {
        this.memsz = v;
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = v;
        return v;
    }
    public var filesz(get, set) : std.UInt;
    function get_filesz():std.UInt return this.filesz;
    function set_filesz(v:std.UInt):std.UInt {
        this.filesz = v;
        return v;
    }
    public var maxprot(get, set) : std.UInt;
    function get_maxprot():std.UInt return this.maxprot;
    function set_maxprot(v:std.UInt):std.UInt {
        this.maxprot = v;
        return v;
    }
    public var prot(get, set) : std.UInt;
    function get_prot():std.UInt return this.prot;
    function set_prot(v:std.UInt):std.UInt {
        this.prot = v;
        return v;
    }
    public var nsect(get, set) : std.UInt;
    function get_nsect():std.UInt return this.nsect;
    function set_nsect(v:std.UInt):std.UInt {
        this.nsect = v;
        return v;
    }
    public var flag(get, set) : std.UInt;
    function get_flag():std.UInt return this.flag;
    function set_flag(v:std.UInt):std.UInt {
        this.flag = v;
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:haxe.ds.Vector<std.UInt>, ?addr:std.UInt, ?memsz:std.UInt, ?offset:std.UInt, ?filesz:std.UInt, ?maxprot:std.UInt, ?prot:std.UInt, ?nsect:std.UInt, ?flag:std.UInt) this = new stdgo._internal.debug.macho.Macho_Segment32.Segment32(
cmd,
len,
([for (i in name) i] : stdgo.GoArray<stdgo.GoUInt8>),
addr,
memsz,
offset,
filesz,
maxprot,
prot,
nsect,
flag);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Segment64(stdgo._internal.debug.macho.Macho_Segment64.Segment64) from stdgo._internal.debug.macho.Macho_Segment64.Segment64 to stdgo._internal.debug.macho.Macho_Segment64.Segment64 {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = v;
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = v;
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = v;
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = v;
        return v;
    }
    public var maxprot(get, set) : std.UInt;
    function get_maxprot():std.UInt return this.maxprot;
    function set_maxprot(v:std.UInt):std.UInt {
        this.maxprot = v;
        return v;
    }
    public var prot(get, set) : std.UInt;
    function get_prot():std.UInt return this.prot;
    function set_prot(v:std.UInt):std.UInt {
        this.prot = v;
        return v;
    }
    public var nsect(get, set) : std.UInt;
    function get_nsect():std.UInt return this.nsect;
    function set_nsect(v:std.UInt):std.UInt {
        this.nsect = v;
        return v;
    }
    public var flag(get, set) : std.UInt;
    function get_flag():std.UInt return this.flag;
    function set_flag(v:std.UInt):std.UInt {
        this.flag = v;
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:haxe.ds.Vector<std.UInt>, ?addr:haxe.UInt64, ?memsz:haxe.UInt64, ?offset:haxe.UInt64, ?filesz:haxe.UInt64, ?maxprot:std.UInt, ?prot:std.UInt, ?nsect:std.UInt, ?flag:std.UInt) this = new stdgo._internal.debug.macho.Macho_Segment64.Segment64(
cmd,
len,
([for (i in name) i] : stdgo.GoArray<stdgo.GoUInt8>),
addr,
memsz,
offset,
filesz,
maxprot,
prot,
nsect,
flag);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SymtabCmd(stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd) from stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd to stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var symoff(get, set) : std.UInt;
    function get_symoff():std.UInt return this.symoff;
    function set_symoff(v:std.UInt):std.UInt {
        this.symoff = v;
        return v;
    }
    public var nsyms(get, set) : std.UInt;
    function get_nsyms():std.UInt return this.nsyms;
    function set_nsyms(v:std.UInt):std.UInt {
        this.nsyms = v;
        return v;
    }
    public var stroff(get, set) : std.UInt;
    function get_stroff():std.UInt return this.stroff;
    function set_stroff(v:std.UInt):std.UInt {
        this.stroff = v;
        return v;
    }
    public var strsize(get, set) : std.UInt;
    function get_strsize():std.UInt return this.strsize;
    function set_strsize(v:std.UInt):std.UInt {
        this.strsize = v;
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?symoff:std.UInt, ?nsyms:std.UInt, ?stroff:std.UInt, ?strsize:std.UInt) this = new stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd(cmd, len, symoff, nsyms, stroff, strsize);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract DysymtabCmd(stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd) from stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd to stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var ilocalsym(get, set) : std.UInt;
    function get_ilocalsym():std.UInt return this.ilocalsym;
    function set_ilocalsym(v:std.UInt):std.UInt {
        this.ilocalsym = v;
        return v;
    }
    public var nlocalsym(get, set) : std.UInt;
    function get_nlocalsym():std.UInt return this.nlocalsym;
    function set_nlocalsym(v:std.UInt):std.UInt {
        this.nlocalsym = v;
        return v;
    }
    public var iextdefsym(get, set) : std.UInt;
    function get_iextdefsym():std.UInt return this.iextdefsym;
    function set_iextdefsym(v:std.UInt):std.UInt {
        this.iextdefsym = v;
        return v;
    }
    public var nextdefsym(get, set) : std.UInt;
    function get_nextdefsym():std.UInt return this.nextdefsym;
    function set_nextdefsym(v:std.UInt):std.UInt {
        this.nextdefsym = v;
        return v;
    }
    public var iundefsym(get, set) : std.UInt;
    function get_iundefsym():std.UInt return this.iundefsym;
    function set_iundefsym(v:std.UInt):std.UInt {
        this.iundefsym = v;
        return v;
    }
    public var nundefsym(get, set) : std.UInt;
    function get_nundefsym():std.UInt return this.nundefsym;
    function set_nundefsym(v:std.UInt):std.UInt {
        this.nundefsym = v;
        return v;
    }
    public var tocoffset(get, set) : std.UInt;
    function get_tocoffset():std.UInt return this.tocoffset;
    function set_tocoffset(v:std.UInt):std.UInt {
        this.tocoffset = v;
        return v;
    }
    public var ntoc(get, set) : std.UInt;
    function get_ntoc():std.UInt return this.ntoc;
    function set_ntoc(v:std.UInt):std.UInt {
        this.ntoc = v;
        return v;
    }
    public var modtaboff(get, set) : std.UInt;
    function get_modtaboff():std.UInt return this.modtaboff;
    function set_modtaboff(v:std.UInt):std.UInt {
        this.modtaboff = v;
        return v;
    }
    public var nmodtab(get, set) : std.UInt;
    function get_nmodtab():std.UInt return this.nmodtab;
    function set_nmodtab(v:std.UInt):std.UInt {
        this.nmodtab = v;
        return v;
    }
    public var extrefsymoff(get, set) : std.UInt;
    function get_extrefsymoff():std.UInt return this.extrefsymoff;
    function set_extrefsymoff(v:std.UInt):std.UInt {
        this.extrefsymoff = v;
        return v;
    }
    public var nextrefsyms(get, set) : std.UInt;
    function get_nextrefsyms():std.UInt return this.nextrefsyms;
    function set_nextrefsyms(v:std.UInt):std.UInt {
        this.nextrefsyms = v;
        return v;
    }
    public var indirectsymoff(get, set) : std.UInt;
    function get_indirectsymoff():std.UInt return this.indirectsymoff;
    function set_indirectsymoff(v:std.UInt):std.UInt {
        this.indirectsymoff = v;
        return v;
    }
    public var nindirectsyms(get, set) : std.UInt;
    function get_nindirectsyms():std.UInt return this.nindirectsyms;
    function set_nindirectsyms(v:std.UInt):std.UInt {
        this.nindirectsyms = v;
        return v;
    }
    public var extreloff(get, set) : std.UInt;
    function get_extreloff():std.UInt return this.extreloff;
    function set_extreloff(v:std.UInt):std.UInt {
        this.extreloff = v;
        return v;
    }
    public var nextrel(get, set) : std.UInt;
    function get_nextrel():std.UInt return this.nextrel;
    function set_nextrel(v:std.UInt):std.UInt {
        this.nextrel = v;
        return v;
    }
    public var locreloff(get, set) : std.UInt;
    function get_locreloff():std.UInt return this.locreloff;
    function set_locreloff(v:std.UInt):std.UInt {
        this.locreloff = v;
        return v;
    }
    public var nlocrel(get, set) : std.UInt;
    function get_nlocrel():std.UInt return this.nlocrel;
    function set_nlocrel(v:std.UInt):std.UInt {
        this.nlocrel = v;
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?ilocalsym:std.UInt, ?nlocalsym:std.UInt, ?iextdefsym:std.UInt, ?nextdefsym:std.UInt, ?iundefsym:std.UInt, ?nundefsym:std.UInt, ?tocoffset:std.UInt, ?ntoc:std.UInt, ?modtaboff:std.UInt, ?nmodtab:std.UInt, ?extrefsymoff:std.UInt, ?nextrefsyms:std.UInt, ?indirectsymoff:std.UInt, ?nindirectsyms:std.UInt, ?extreloff:std.UInt, ?nextrel:std.UInt, ?locreloff:std.UInt, ?nlocrel:std.UInt) this = new stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd(
cmd,
len,
ilocalsym,
nlocalsym,
iextdefsym,
nextdefsym,
iundefsym,
nundefsym,
tocoffset,
ntoc,
modtaboff,
nmodtab,
extrefsymoff,
nextrefsyms,
indirectsymoff,
nindirectsyms,
extreloff,
nextrel,
locreloff,
nlocrel);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract DylibCmd(stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd) from stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd to stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = v;
        return v;
    }
    public var time(get, set) : std.UInt;
    function get_time():std.UInt return this.time;
    function set_time(v:std.UInt):std.UInt {
        this.time = v;
        return v;
    }
    public var currentVersion(get, set) : std.UInt;
    function get_currentVersion():std.UInt return this.currentVersion;
    function set_currentVersion(v:std.UInt):std.UInt {
        this.currentVersion = v;
        return v;
    }
    public var compatVersion(get, set) : std.UInt;
    function get_compatVersion():std.UInt return this.compatVersion;
    function set_compatVersion(v:std.UInt):std.UInt {
        this.compatVersion = v;
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:std.UInt, ?time:std.UInt, ?currentVersion:std.UInt, ?compatVersion:std.UInt) this = new stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd(cmd, len, name, time, currentVersion, compatVersion);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract RpathCmd(stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd) from stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd to stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var path(get, set) : std.UInt;
    function get_path():std.UInt return this.path;
    function set_path(v:std.UInt):std.UInt {
        this.path = v;
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?path:std.UInt) this = new stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd(cmd, len, path);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Thread(stdgo._internal.debug.macho.Macho_Thread.Thread) from stdgo._internal.debug.macho.Macho_Thread.Thread to stdgo._internal.debug.macho.Macho_Thread.Thread {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = v;
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?type:std.UInt, ?data:Array<std.UInt>) this = new stdgo._internal.debug.macho.Macho_Thread.Thread(cmd, len, type, ([for (i in data) i] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Section32(stdgo._internal.debug.macho.Macho_Section32.Section32) from stdgo._internal.debug.macho.Macho_Section32.Section32 to stdgo._internal.debug.macho.Macho_Section32.Section32 {
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var seg(get, set) : haxe.ds.Vector<std.UInt>;
    function get_seg():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.seg) i]);
    function set_seg(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.seg = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = v;
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = v;
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = v;
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = v;
        return v;
    }
    public var reloff(get, set) : std.UInt;
    function get_reloff():std.UInt return this.reloff;
    function set_reloff(v:std.UInt):std.UInt {
        this.reloff = v;
        return v;
    }
    public var nreloc(get, set) : std.UInt;
    function get_nreloc():std.UInt return this.nreloc;
    function set_nreloc(v:std.UInt):std.UInt {
        this.nreloc = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public var reserve1(get, set) : std.UInt;
    function get_reserve1():std.UInt return this.reserve1;
    function set_reserve1(v:std.UInt):std.UInt {
        this.reserve1 = v;
        return v;
    }
    public var reserve2(get, set) : std.UInt;
    function get_reserve2():std.UInt return this.reserve2;
    function set_reserve2(v:std.UInt):std.UInt {
        this.reserve2 = v;
        return v;
    }
    public function new(?name:haxe.ds.Vector<std.UInt>, ?seg:haxe.ds.Vector<std.UInt>, ?addr:std.UInt, ?size:std.UInt, ?offset:std.UInt, ?align:std.UInt, ?reloff:std.UInt, ?nreloc:std.UInt, ?flags:std.UInt, ?reserve1:std.UInt, ?reserve2:std.UInt) this = new stdgo._internal.debug.macho.Macho_Section32.Section32(
([for (i in name) i] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in seg) i] : stdgo.GoArray<stdgo.GoUInt8>),
addr,
size,
offset,
align,
reloff,
nreloc,
flags,
reserve1,
reserve2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Section64(stdgo._internal.debug.macho.Macho_Section64.Section64) from stdgo._internal.debug.macho.Macho_Section64.Section64 to stdgo._internal.debug.macho.Macho_Section64.Section64 {
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var seg(get, set) : haxe.ds.Vector<std.UInt>;
    function get_seg():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.seg) i]);
    function set_seg(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.seg = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = v;
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = v;
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = v;
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = v;
        return v;
    }
    public var reloff(get, set) : std.UInt;
    function get_reloff():std.UInt return this.reloff;
    function set_reloff(v:std.UInt):std.UInt {
        this.reloff = v;
        return v;
    }
    public var nreloc(get, set) : std.UInt;
    function get_nreloc():std.UInt return this.nreloc;
    function set_nreloc(v:std.UInt):std.UInt {
        this.nreloc = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public var reserve1(get, set) : std.UInt;
    function get_reserve1():std.UInt return this.reserve1;
    function set_reserve1(v:std.UInt):std.UInt {
        this.reserve1 = v;
        return v;
    }
    public var reserve2(get, set) : std.UInt;
    function get_reserve2():std.UInt return this.reserve2;
    function set_reserve2(v:std.UInt):std.UInt {
        this.reserve2 = v;
        return v;
    }
    public var reserve3(get, set) : std.UInt;
    function get_reserve3():std.UInt return this.reserve3;
    function set_reserve3(v:std.UInt):std.UInt {
        this.reserve3 = v;
        return v;
    }
    public function new(?name:haxe.ds.Vector<std.UInt>, ?seg:haxe.ds.Vector<std.UInt>, ?addr:haxe.UInt64, ?size:haxe.UInt64, ?offset:std.UInt, ?align:std.UInt, ?reloff:std.UInt, ?nreloc:std.UInt, ?flags:std.UInt, ?reserve1:std.UInt, ?reserve2:std.UInt, ?reserve3:std.UInt) this = new stdgo._internal.debug.macho.Macho_Section64.Section64(
([for (i in name) i] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in seg) i] : stdgo.GoArray<stdgo.GoUInt8>),
addr,
size,
offset,
align,
reloff,
nreloc,
flags,
reserve1,
reserve2,
reserve3);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Nlist32(stdgo._internal.debug.macho.Macho_Nlist32.Nlist32) from stdgo._internal.debug.macho.Macho_Nlist32.Nlist32 to stdgo._internal.debug.macho.Macho_Nlist32.Nlist32 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = v;
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var sect(get, set) : std.UInt;
    function get_sect():std.UInt return this.sect;
    function set_sect(v:std.UInt):std.UInt {
        this.sect = v;
        return v;
    }
    public var desc(get, set) : std.UInt;
    function get_desc():std.UInt return this.desc;
    function set_desc(v:std.UInt):std.UInt {
        this.desc = v;
        return v;
    }
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = v;
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?sect:std.UInt, ?desc:std.UInt, ?value:std.UInt) this = new stdgo._internal.debug.macho.Macho_Nlist32.Nlist32(name, type, sect, desc, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Nlist64(stdgo._internal.debug.macho.Macho_Nlist64.Nlist64) from stdgo._internal.debug.macho.Macho_Nlist64.Nlist64 to stdgo._internal.debug.macho.Macho_Nlist64.Nlist64 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = v;
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var sect(get, set) : std.UInt;
    function get_sect():std.UInt return this.sect;
    function set_sect(v:std.UInt):std.UInt {
        this.sect = v;
        return v;
    }
    public var desc(get, set) : std.UInt;
    function get_desc():std.UInt return this.desc;
    function set_desc(v:std.UInt):std.UInt {
        this.desc = v;
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = v;
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?sect:std.UInt, ?desc:std.UInt, ?value:haxe.UInt64) this = new stdgo._internal.debug.macho.Macho_Nlist64.Nlist64(name, type, sect, desc, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Regs386(stdgo._internal.debug.macho.Macho_Regs386.Regs386) from stdgo._internal.debug.macho.Macho_Regs386.Regs386 to stdgo._internal.debug.macho.Macho_Regs386.Regs386 {
    public var aX(get, set) : std.UInt;
    function get_aX():std.UInt return this.aX;
    function set_aX(v:std.UInt):std.UInt {
        this.aX = v;
        return v;
    }
    public var bX(get, set) : std.UInt;
    function get_bX():std.UInt return this.bX;
    function set_bX(v:std.UInt):std.UInt {
        this.bX = v;
        return v;
    }
    public var cX(get, set) : std.UInt;
    function get_cX():std.UInt return this.cX;
    function set_cX(v:std.UInt):std.UInt {
        this.cX = v;
        return v;
    }
    public var dX(get, set) : std.UInt;
    function get_dX():std.UInt return this.dX;
    function set_dX(v:std.UInt):std.UInt {
        this.dX = v;
        return v;
    }
    public var dI(get, set) : std.UInt;
    function get_dI():std.UInt return this.dI;
    function set_dI(v:std.UInt):std.UInt {
        this.dI = v;
        return v;
    }
    public var sI(get, set) : std.UInt;
    function get_sI():std.UInt return this.sI;
    function set_sI(v:std.UInt):std.UInt {
        this.sI = v;
        return v;
    }
    public var bP(get, set) : std.UInt;
    function get_bP():std.UInt return this.bP;
    function set_bP(v:std.UInt):std.UInt {
        this.bP = v;
        return v;
    }
    public var sP(get, set) : std.UInt;
    function get_sP():std.UInt return this.sP;
    function set_sP(v:std.UInt):std.UInt {
        this.sP = v;
        return v;
    }
    public var sS(get, set) : std.UInt;
    function get_sS():std.UInt return this.sS;
    function set_sS(v:std.UInt):std.UInt {
        this.sS = v;
        return v;
    }
    public var fLAGS(get, set) : std.UInt;
    function get_fLAGS():std.UInt return this.fLAGS;
    function set_fLAGS(v:std.UInt):std.UInt {
        this.fLAGS = v;
        return v;
    }
    public var iP(get, set) : std.UInt;
    function get_iP():std.UInt return this.iP;
    function set_iP(v:std.UInt):std.UInt {
        this.iP = v;
        return v;
    }
    public var cS(get, set) : std.UInt;
    function get_cS():std.UInt return this.cS;
    function set_cS(v:std.UInt):std.UInt {
        this.cS = v;
        return v;
    }
    public var dS(get, set) : std.UInt;
    function get_dS():std.UInt return this.dS;
    function set_dS(v:std.UInt):std.UInt {
        this.dS = v;
        return v;
    }
    public var eS(get, set) : std.UInt;
    function get_eS():std.UInt return this.eS;
    function set_eS(v:std.UInt):std.UInt {
        this.eS = v;
        return v;
    }
    public var fS(get, set) : std.UInt;
    function get_fS():std.UInt return this.fS;
    function set_fS(v:std.UInt):std.UInt {
        this.fS = v;
        return v;
    }
    public var gS(get, set) : std.UInt;
    function get_gS():std.UInt return this.gS;
    function set_gS(v:std.UInt):std.UInt {
        this.gS = v;
        return v;
    }
    public function new(?aX:std.UInt, ?bX:std.UInt, ?cX:std.UInt, ?dX:std.UInt, ?dI:std.UInt, ?sI:std.UInt, ?bP:std.UInt, ?sP:std.UInt, ?sS:std.UInt, ?fLAGS:std.UInt, ?iP:std.UInt, ?cS:std.UInt, ?dS:std.UInt, ?eS:std.UInt, ?fS:std.UInt, ?gS:std.UInt) this = new stdgo._internal.debug.macho.Macho_Regs386.Regs386(
aX,
bX,
cX,
dX,
dI,
sI,
bP,
sP,
sS,
fLAGS,
iP,
cS,
dS,
eS,
fS,
gS);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract RegsAMD64(stdgo._internal.debug.macho.Macho_RegsAMD64.RegsAMD64) from stdgo._internal.debug.macho.Macho_RegsAMD64.RegsAMD64 to stdgo._internal.debug.macho.Macho_RegsAMD64.RegsAMD64 {
    public var aX(get, set) : haxe.UInt64;
    function get_aX():haxe.UInt64 return this.aX;
    function set_aX(v:haxe.UInt64):haxe.UInt64 {
        this.aX = v;
        return v;
    }
    public var bX(get, set) : haxe.UInt64;
    function get_bX():haxe.UInt64 return this.bX;
    function set_bX(v:haxe.UInt64):haxe.UInt64 {
        this.bX = v;
        return v;
    }
    public var cX(get, set) : haxe.UInt64;
    function get_cX():haxe.UInt64 return this.cX;
    function set_cX(v:haxe.UInt64):haxe.UInt64 {
        this.cX = v;
        return v;
    }
    public var dX(get, set) : haxe.UInt64;
    function get_dX():haxe.UInt64 return this.dX;
    function set_dX(v:haxe.UInt64):haxe.UInt64 {
        this.dX = v;
        return v;
    }
    public var dI(get, set) : haxe.UInt64;
    function get_dI():haxe.UInt64 return this.dI;
    function set_dI(v:haxe.UInt64):haxe.UInt64 {
        this.dI = v;
        return v;
    }
    public var sI(get, set) : haxe.UInt64;
    function get_sI():haxe.UInt64 return this.sI;
    function set_sI(v:haxe.UInt64):haxe.UInt64 {
        this.sI = v;
        return v;
    }
    public var bP(get, set) : haxe.UInt64;
    function get_bP():haxe.UInt64 return this.bP;
    function set_bP(v:haxe.UInt64):haxe.UInt64 {
        this.bP = v;
        return v;
    }
    public var sP(get, set) : haxe.UInt64;
    function get_sP():haxe.UInt64 return this.sP;
    function set_sP(v:haxe.UInt64):haxe.UInt64 {
        this.sP = v;
        return v;
    }
    public var r8(get, set) : haxe.UInt64;
    function get_r8():haxe.UInt64 return this.r8;
    function set_r8(v:haxe.UInt64):haxe.UInt64 {
        this.r8 = v;
        return v;
    }
    public var r9(get, set) : haxe.UInt64;
    function get_r9():haxe.UInt64 return this.r9;
    function set_r9(v:haxe.UInt64):haxe.UInt64 {
        this.r9 = v;
        return v;
    }
    public var r10(get, set) : haxe.UInt64;
    function get_r10():haxe.UInt64 return this.r10;
    function set_r10(v:haxe.UInt64):haxe.UInt64 {
        this.r10 = v;
        return v;
    }
    public var r11(get, set) : haxe.UInt64;
    function get_r11():haxe.UInt64 return this.r11;
    function set_r11(v:haxe.UInt64):haxe.UInt64 {
        this.r11 = v;
        return v;
    }
    public var r12(get, set) : haxe.UInt64;
    function get_r12():haxe.UInt64 return this.r12;
    function set_r12(v:haxe.UInt64):haxe.UInt64 {
        this.r12 = v;
        return v;
    }
    public var r13(get, set) : haxe.UInt64;
    function get_r13():haxe.UInt64 return this.r13;
    function set_r13(v:haxe.UInt64):haxe.UInt64 {
        this.r13 = v;
        return v;
    }
    public var r14(get, set) : haxe.UInt64;
    function get_r14():haxe.UInt64 return this.r14;
    function set_r14(v:haxe.UInt64):haxe.UInt64 {
        this.r14 = v;
        return v;
    }
    public var r15(get, set) : haxe.UInt64;
    function get_r15():haxe.UInt64 return this.r15;
    function set_r15(v:haxe.UInt64):haxe.UInt64 {
        this.r15 = v;
        return v;
    }
    public var iP(get, set) : haxe.UInt64;
    function get_iP():haxe.UInt64 return this.iP;
    function set_iP(v:haxe.UInt64):haxe.UInt64 {
        this.iP = v;
        return v;
    }
    public var fLAGS(get, set) : haxe.UInt64;
    function get_fLAGS():haxe.UInt64 return this.fLAGS;
    function set_fLAGS(v:haxe.UInt64):haxe.UInt64 {
        this.fLAGS = v;
        return v;
    }
    public var cS(get, set) : haxe.UInt64;
    function get_cS():haxe.UInt64 return this.cS;
    function set_cS(v:haxe.UInt64):haxe.UInt64 {
        this.cS = v;
        return v;
    }
    public var fS(get, set) : haxe.UInt64;
    function get_fS():haxe.UInt64 return this.fS;
    function set_fS(v:haxe.UInt64):haxe.UInt64 {
        this.fS = v;
        return v;
    }
    public var gS(get, set) : haxe.UInt64;
    function get_gS():haxe.UInt64 return this.gS;
    function set_gS(v:haxe.UInt64):haxe.UInt64 {
        this.gS = v;
        return v;
    }
    public function new(?aX:haxe.UInt64, ?bX:haxe.UInt64, ?cX:haxe.UInt64, ?dX:haxe.UInt64, ?dI:haxe.UInt64, ?sI:haxe.UInt64, ?bP:haxe.UInt64, ?sP:haxe.UInt64, ?r8:haxe.UInt64, ?r9:haxe.UInt64, ?r10:haxe.UInt64, ?r11:haxe.UInt64, ?r12:haxe.UInt64, ?r13:haxe.UInt64, ?r14:haxe.UInt64, ?r15:haxe.UInt64, ?iP:haxe.UInt64, ?fLAGS:haxe.UInt64, ?cS:haxe.UInt64, ?fS:haxe.UInt64, ?gS:haxe.UInt64) this = new stdgo._internal.debug.macho.Macho_RegsAMD64.RegsAMD64(
aX,
bX,
cX,
dX,
dI,
sI,
bP,
sP,
r8,
r9,
r10,
r11,
r12,
r13,
r14,
r15,
iP,
fLAGS,
cS,
fS,
gS);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_intName(stdgo._internal.debug.macho.Macho_T_intName.T_intName) from stdgo._internal.debug.macho.Macho_T_intName.T_intName to stdgo._internal.debug.macho.Macho_T_intName.T_intName {
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = v;
        return v;
    }
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = v;
        return v;
    }
    public function new(?_i:std.UInt, ?_s:String) this = new stdgo._internal.debug.macho.Macho_T_intName.T_intName(_i, _s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.debug.macho.Macho_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.debug.macho.Macho_T__struct_0.T__struct_0;
typedef LoadBytes = stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes;
typedef Type_ = stdgo._internal.debug.macho.Macho_Type_.Type_;
typedef Cpu = stdgo._internal.debug.macho.Macho_Cpu.Cpu;
typedef LoadCmd = stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd;
typedef RelocTypeGeneric = stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric;
typedef RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_RelocTypeX86_64.RelocTypeX86_64;
typedef RelocTypeARM = stdgo._internal.debug.macho.Macho_RelocTypeARM.RelocTypeARM;
typedef RelocTypeARM64 = stdgo._internal.debug.macho.Macho_RelocTypeARM64.RelocTypeARM64;
typedef FatFilePointer = stdgo._internal.debug.macho.Macho_FatFilePointer.FatFilePointer;
class FatFile_static_extension {
    static public function close(_ff:FatFile):stdgo.Error {
        return stdgo._internal.debug.macho.Macho_FatFile_static_extension.FatFile_static_extension.close(_ff);
    }
}
typedef FatArchPointer = stdgo._internal.debug.macho.Macho_FatArchPointer.FatArchPointer;
class FatArch_static_extension {
    public static function _pushSection(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _0:Section, _1:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error {
        return stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension._pushSection(__self__, _0, _1);
    }
    public static function _parseSymtab(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:Array<std.UInt>, _3:SymtabCmd, _4:haxe.Int64):stdgo.Tuple<Symtab, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = ([for (i in _2) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension._parseSymtab(__self__, _0, _1, _2, _3, _4);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function segment(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _0:String):Segment {
        return stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.segment(__self__, _0);
    }
    public static function section(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _0:String):Section {
        return stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.section(__self__, _0);
    }
    public static function importedSymbols(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.importedSymbols(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function importedLibraries(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.importedLibraries(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function dWARF(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_Data.Data, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.dWARF(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Error {
        return stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.close(__self__);
    }
}
typedef FilePointer = stdgo._internal.debug.macho.Macho_FilePointer.FilePointer;
class File_static_extension {
    static public function importedLibraries(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.importedLibraries(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importedSymbols(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.importedSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dWARF(_f:File):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_Data.Data, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.dWARF(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function section(_f:File, _name:String):Section {
        return stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.section(_f, _name);
    }
    static public function segment(_f:File, _name:String):Segment {
        return stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.segment(_f, _name);
    }
    static public function _pushSection(_f:File, _sh:Section, _r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error {
        return stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension._pushSection(_f, _sh, _r);
    }
    static public function _parseSymtab(_f:File, _symdat:Array<std.UInt>, _strtab:Array<std.UInt>, _cmddat:Array<std.UInt>, _hdr:SymtabCmd, _offset:haxe.Int64):stdgo.Tuple<Symtab, stdgo.Error> {
        final _symdat = ([for (i in _symdat) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _strtab = ([for (i in _strtab) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _cmddat = ([for (i in _cmddat) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension._parseSymtab(_f, _symdat, _strtab, _cmddat, _hdr, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        return stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.close(_f);
    }
}
typedef SegmentPointer = stdgo._internal.debug.macho.Macho_SegmentPointer.SegmentPointer;
class Segment_static_extension {
    static public function open(_s:Segment):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        return stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension.open(_s);
    }
    static public function data(_s:Segment):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.macho.Macho_Segment.Segment, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_Segment.Segment):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension.raw(__self__)) i];
    }
}
typedef SectionPointer = stdgo._internal.debug.macho.Macho_SectionPointer.SectionPointer;
class Section_static_extension {
    static public function open(_s:Section):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        return stdgo._internal.debug.macho.Macho_Section_static_extension.Section_static_extension.open(_s);
    }
    static public function data(_s:Section):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_Section_static_extension.Section_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.macho.Macho_Section.Section, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_Section_static_extension.Section_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef DylibPointer = stdgo._internal.debug.macho.Macho_DylibPointer.DylibPointer;
class Dylib_static_extension {
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_Dylib.Dylib):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_Dylib_static_extension.Dylib_static_extension.raw(__self__)) i];
    }
}
typedef SymtabPointer = stdgo._internal.debug.macho.Macho_SymtabPointer.SymtabPointer;
class Symtab_static_extension {
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_Symtab.Symtab):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_Symtab_static_extension.Symtab_static_extension.raw(__self__)) i];
    }
}
typedef DysymtabPointer = stdgo._internal.debug.macho.Macho_DysymtabPointer.DysymtabPointer;
class Dysymtab_static_extension {
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_Dysymtab_static_extension.Dysymtab_static_extension.raw(__self__)) i];
    }
}
typedef RpathPointer = stdgo._internal.debug.macho.Macho_RpathPointer.RpathPointer;
class Rpath_static_extension {
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_Rpath.Rpath):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_Rpath_static_extension.Rpath_static_extension.raw(__self__)) i];
    }
}
typedef FormatErrorPointer = stdgo._internal.debug.macho.Macho_FormatErrorPointer.FormatErrorPointer;
class FormatError_static_extension {
    static public function error(_e:FormatError):String {
        return stdgo._internal.debug.macho.Macho_FormatError_static_extension.FormatError_static_extension.error(_e);
    }
}
typedef LoadBytesPointer = stdgo._internal.debug.macho.Macho_LoadBytesPointer.LoadBytesPointer;
class LoadBytes_static_extension {
    static public function raw(_b:LoadBytes):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_LoadBytes_static_extension.LoadBytes_static_extension.raw(_b)) i];
    }
}
typedef Type_Pointer = stdgo._internal.debug.macho.Macho_Type_Pointer.Type_Pointer;
class Type__static_extension {
    static public function goString(_t:Type_):String {
        return stdgo._internal.debug.macho.Macho_Type__static_extension.Type__static_extension.goString(_t);
    }
    static public function string(_t:Type_):String {
        return stdgo._internal.debug.macho.Macho_Type__static_extension.Type__static_extension.string(_t);
    }
}
typedef CpuPointer = stdgo._internal.debug.macho.Macho_CpuPointer.CpuPointer;
class Cpu_static_extension {
    static public function goString(_i:Cpu):String {
        return stdgo._internal.debug.macho.Macho_Cpu_static_extension.Cpu_static_extension.goString(_i);
    }
    static public function string(_i:Cpu):String {
        return stdgo._internal.debug.macho.Macho_Cpu_static_extension.Cpu_static_extension.string(_i);
    }
}
typedef LoadCmdPointer = stdgo._internal.debug.macho.Macho_LoadCmdPointer.LoadCmdPointer;
class LoadCmd_static_extension {
    static public function goString(_i:LoadCmd):String {
        return stdgo._internal.debug.macho.Macho_LoadCmd_static_extension.LoadCmd_static_extension.goString(_i);
    }
    static public function string(_i:LoadCmd):String {
        return stdgo._internal.debug.macho.Macho_LoadCmd_static_extension.LoadCmd_static_extension.string(_i);
    }
}
typedef RelocTypeGenericPointer = stdgo._internal.debug.macho.Macho_RelocTypeGenericPointer.RelocTypeGenericPointer;
class RelocTypeGeneric_static_extension {
    static public function string(_i:RelocTypeGeneric):String {
        return stdgo._internal.debug.macho.Macho_RelocTypeGeneric_static_extension.RelocTypeGeneric_static_extension.string(_i);
    }
    static public function goString(_r:RelocTypeGeneric):String {
        return stdgo._internal.debug.macho.Macho_RelocTypeGeneric_static_extension.RelocTypeGeneric_static_extension.goString(_r);
    }
}
typedef RelocTypeX86_64Pointer = stdgo._internal.debug.macho.Macho_RelocTypeX86_64Pointer.RelocTypeX86_64Pointer;
class RelocTypeX86_64_static_extension {
    static public function string(_i:RelocTypeX86_64):String {
        return stdgo._internal.debug.macho.Macho_RelocTypeX86_64_static_extension.RelocTypeX86_64_static_extension.string(_i);
    }
    static public function goString(_r:RelocTypeX86_64):String {
        return stdgo._internal.debug.macho.Macho_RelocTypeX86_64_static_extension.RelocTypeX86_64_static_extension.goString(_r);
    }
}
typedef RelocTypeARMPointer = stdgo._internal.debug.macho.Macho_RelocTypeARMPointer.RelocTypeARMPointer;
class RelocTypeARM_static_extension {
    static public function string(_i:RelocTypeARM):String {
        return stdgo._internal.debug.macho.Macho_RelocTypeARM_static_extension.RelocTypeARM_static_extension.string(_i);
    }
    static public function goString(_r:RelocTypeARM):String {
        return stdgo._internal.debug.macho.Macho_RelocTypeARM_static_extension.RelocTypeARM_static_extension.goString(_r);
    }
}
typedef RelocTypeARM64Pointer = stdgo._internal.debug.macho.Macho_RelocTypeARM64Pointer.RelocTypeARM64Pointer;
class RelocTypeARM64_static_extension {
    static public function string(_i:RelocTypeARM64):String {
        return stdgo._internal.debug.macho.Macho_RelocTypeARM64_static_extension.RelocTypeARM64_static_extension.string(_i);
    }
    static public function goString(_r:RelocTypeARM64):String {
        return stdgo._internal.debug.macho.Macho_RelocTypeARM64_static_extension.RelocTypeARM64_static_extension.goString(_r);
    }
}
/**
    /|*
    Package macho implements access to Mach-O object files.
    
    # Security
    
    This package is not designed to be hardened against adversarial inputs, and is
    outside the scope of https://go.dev/security/policy. In particular, only basic
    validation is done when parsing object files. As such, care should be taken when
    parsing untrusted inputs, as parsing malformed files may consume significant
    resources, or cause panics.
    *|/
**/
class Macho {
    /**
        NewFatFile creates a new FatFile for accessing all the Mach-O images in a
        universal binary. The Mach-O binary is expected to start at position 0 in
        the ReaderAt.
    **/
    static public function newFatFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<FatFile, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_newFatFile.newFatFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        OpenFat opens the named file using os.Open and prepares it for use as a Mach-O
        universal binary.
    **/
    static public function openFat(_name:String):stdgo.Tuple<FatFile, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_openFat.openFat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Open opens the named file using os.Open and prepares it for use as a Mach-O binary.
    **/
    static public function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewFile creates a new File for accessing a Mach-O binary in an underlying reader.
        The Mach-O binary is expected to start at position 0 in the ReaderAt.
    **/
    static public function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_newFile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
