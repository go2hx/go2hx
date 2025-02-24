package stdgo;
final magic32 : std.UInt = stdgo._internal.debug.macho.Macho_magic32.magic32;
final magic64 : std.UInt = stdgo._internal.debug.macho.Macho_magic64.magic64;
final magicFat : std.UInt = stdgo._internal.debug.macho.Macho_magicfat.magicFat;
final typeObj : Type_ = stdgo._internal.debug.macho.Macho_typeobj.typeObj;
final typeExec : Type_ = stdgo._internal.debug.macho.Macho_typeexec.typeExec;
final typeDylib : Type_ = stdgo._internal.debug.macho.Macho_typedylib.typeDylib;
final typeBundle : Type_ = stdgo._internal.debug.macho.Macho_typebundle.typeBundle;
final cpu386 : Cpu = stdgo._internal.debug.macho.Macho_cpu386.cpu386;
final cpuAmd64 : Cpu = stdgo._internal.debug.macho.Macho_cpuamd64.cpuAmd64;
final cpuArm : Cpu = stdgo._internal.debug.macho.Macho_cpuarm.cpuArm;
final cpuArm64 : Cpu = stdgo._internal.debug.macho.Macho_cpuarm64.cpuArm64;
final cpuPpc : Cpu = stdgo._internal.debug.macho.Macho_cpuppc.cpuPpc;
final cpuPpc64 : Cpu = stdgo._internal.debug.macho.Macho_cpuppc64.cpuPpc64;
final loadCmdSegment : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmdsegment.loadCmdSegment;
final loadCmdSymtab : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmdsymtab.loadCmdSymtab;
final loadCmdThread : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmdthread.loadCmdThread;
final loadCmdUnixThread : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmdunixthread.loadCmdUnixThread;
final loadCmdDysymtab : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmddysymtab.loadCmdDysymtab;
final loadCmdDylib : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmddylib.loadCmdDylib;
final loadCmdDylinker : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmddylinker.loadCmdDylinker;
final loadCmdSegment64 : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmdsegment64.loadCmdSegment64;
final loadCmdRpath : LoadCmd = stdgo._internal.debug.macho.Macho_loadcmdrpath.loadCmdRpath;
final flagNoUndefs : std.UInt = stdgo._internal.debug.macho.Macho_flagnoundefs.flagNoUndefs;
final flagIncrLink : std.UInt = stdgo._internal.debug.macho.Macho_flagincrlink.flagIncrLink;
final flagDyldLink : std.UInt = stdgo._internal.debug.macho.Macho_flagdyldlink.flagDyldLink;
final flagBindAtLoad : std.UInt = stdgo._internal.debug.macho.Macho_flagbindatload.flagBindAtLoad;
final flagPrebound : std.UInt = stdgo._internal.debug.macho.Macho_flagprebound.flagPrebound;
final flagSplitSegs : std.UInt = stdgo._internal.debug.macho.Macho_flagsplitsegs.flagSplitSegs;
final flagLazyInit : std.UInt = stdgo._internal.debug.macho.Macho_flaglazyinit.flagLazyInit;
final flagTwoLevel : std.UInt = stdgo._internal.debug.macho.Macho_flagtwolevel.flagTwoLevel;
final flagForceFlat : std.UInt = stdgo._internal.debug.macho.Macho_flagforceflat.flagForceFlat;
final flagNoMultiDefs : std.UInt = stdgo._internal.debug.macho.Macho_flagnomultidefs.flagNoMultiDefs;
final flagNoFixPrebinding : std.UInt = stdgo._internal.debug.macho.Macho_flagnofixprebinding.flagNoFixPrebinding;
final flagPrebindable : std.UInt = stdgo._internal.debug.macho.Macho_flagprebindable.flagPrebindable;
final flagAllModsBound : std.UInt = stdgo._internal.debug.macho.Macho_flagallmodsbound.flagAllModsBound;
final flagSubsectionsViaSymbols : std.UInt = stdgo._internal.debug.macho.Macho_flagsubsectionsviasymbols.flagSubsectionsViaSymbols;
final flagCanonical : std.UInt = stdgo._internal.debug.macho.Macho_flagcanonical.flagCanonical;
final flagWeakDefines : std.UInt = stdgo._internal.debug.macho.Macho_flagweakdefines.flagWeakDefines;
final flagBindsToWeak : std.UInt = stdgo._internal.debug.macho.Macho_flagbindstoweak.flagBindsToWeak;
final flagAllowStackExecution : std.UInt = stdgo._internal.debug.macho.Macho_flagallowstackexecution.flagAllowStackExecution;
final flagRootSafe : std.UInt = stdgo._internal.debug.macho.Macho_flagrootsafe.flagRootSafe;
final flagSetuidSafe : std.UInt = stdgo._internal.debug.macho.Macho_flagsetuidsafe.flagSetuidSafe;
final flagNoReexportedDylibs : std.UInt = stdgo._internal.debug.macho.Macho_flagnoreexporteddylibs.flagNoReexportedDylibs;
final flagPIE : std.UInt = stdgo._internal.debug.macho.Macho_flagpie.flagPIE;
final flagDeadStrippableDylib : std.UInt = stdgo._internal.debug.macho.Macho_flagdeadstrippabledylib.flagDeadStrippableDylib;
final flagHasTLVDescriptors : std.UInt = stdgo._internal.debug.macho.Macho_flaghastlvdescriptors.flagHasTLVDescriptors;
final flagNoHeapExecution : std.UInt = stdgo._internal.debug.macho.Macho_flagnoheapexecution.flagNoHeapExecution;
final flagAppExtensionSafe : std.UInt = stdgo._internal.debug.macho.Macho_flagappextensionsafe.flagAppExtensionSafe;
final gENERIC_RELOC_VANILLA : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_reloc_vanilla.gENERIC_RELOC_VANILLA;
final gENERIC_RELOC_PAIR : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_reloc_pair.gENERIC_RELOC_PAIR;
final gENERIC_RELOC_SECTDIFF : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_reloc_sectdiff.gENERIC_RELOC_SECTDIFF;
final gENERIC_RELOC_PB_LA_PTR : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_reloc_pb_la_ptr.gENERIC_RELOC_PB_LA_PTR;
final gENERIC_RELOC_LOCAL_SECTDIFF : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_reloc_local_sectdiff.gENERIC_RELOC_LOCAL_SECTDIFF;
final gENERIC_RELOC_TLV : RelocTypeGeneric = stdgo._internal.debug.macho.Macho_generic_reloc_tlv.gENERIC_RELOC_TLV;
final x86_64_RELOC_UNSIGNED : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_unsigned.x86_64_RELOC_UNSIGNED;
final x86_64_RELOC_SIGNED : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_signed.x86_64_RELOC_SIGNED;
final x86_64_RELOC_BRANCH : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_branch.x86_64_RELOC_BRANCH;
final x86_64_RELOC_GOT_LOAD : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_got_load.x86_64_RELOC_GOT_LOAD;
final x86_64_RELOC_GOT : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_got.x86_64_RELOC_GOT;
final x86_64_RELOC_SUBTRACTOR : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_subtractor.x86_64_RELOC_SUBTRACTOR;
final x86_64_RELOC_SIGNED_1 : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_signed_1.x86_64_RELOC_SIGNED_1;
final x86_64_RELOC_SIGNED_2 : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_signed_2.x86_64_RELOC_SIGNED_2;
final x86_64_RELOC_SIGNED_4 : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_signed_4.x86_64_RELOC_SIGNED_4;
final x86_64_RELOC_TLV : RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_x86_64_reloc_tlv.x86_64_RELOC_TLV;
final aRM_RELOC_VANILLA : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_reloc_vanilla.aRM_RELOC_VANILLA;
final aRM_RELOC_PAIR : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_reloc_pair.aRM_RELOC_PAIR;
final aRM_RELOC_SECTDIFF : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_reloc_sectdiff.aRM_RELOC_SECTDIFF;
final aRM_RELOC_LOCAL_SECTDIFF : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_reloc_local_sectdiff.aRM_RELOC_LOCAL_SECTDIFF;
final aRM_RELOC_PB_LA_PTR : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_reloc_pb_la_ptr.aRM_RELOC_PB_LA_PTR;
final aRM_RELOC_BR24 : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_reloc_br24.aRM_RELOC_BR24;
final aRM_THUMB_RELOC_BR22 : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_thumb_reloc_br22.aRM_THUMB_RELOC_BR22;
final aRM_THUMB_32BIT_BRANCH : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_thumb_32bit_branch.aRM_THUMB_32BIT_BRANCH;
final aRM_RELOC_HALF : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_reloc_half.aRM_RELOC_HALF;
final aRM_RELOC_HALF_SECTDIFF : RelocTypeARM = stdgo._internal.debug.macho.Macho_arm_reloc_half_sectdiff.aRM_RELOC_HALF_SECTDIFF;
final aRM64_RELOC_UNSIGNED : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_unsigned.aRM64_RELOC_UNSIGNED;
final aRM64_RELOC_SUBTRACTOR : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_subtractor.aRM64_RELOC_SUBTRACTOR;
final aRM64_RELOC_BRANCH26 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_branch26.aRM64_RELOC_BRANCH26;
final aRM64_RELOC_PAGE21 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_page21.aRM64_RELOC_PAGE21;
final aRM64_RELOC_PAGEOFF12 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_pageoff12.aRM64_RELOC_PAGEOFF12;
final aRM64_RELOC_GOT_LOAD_PAGE21 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_got_load_page21.aRM64_RELOC_GOT_LOAD_PAGE21;
final aRM64_RELOC_GOT_LOAD_PAGEOFF12 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_got_load_pageoff12.aRM64_RELOC_GOT_LOAD_PAGEOFF12;
final aRM64_RELOC_POINTER_TO_GOT : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_pointer_to_got.aRM64_RELOC_POINTER_TO_GOT;
final aRM64_RELOC_TLVP_LOAD_PAGE21 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_tlvp_load_page21.aRM64_RELOC_TLVP_LOAD_PAGE21;
final aRM64_RELOC_TLVP_LOAD_PAGEOFF12 : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_tlvp_load_pageoff12.aRM64_RELOC_TLVP_LOAD_PAGEOFF12;
final aRM64_RELOC_ADDEND : RelocTypeARM64 = stdgo._internal.debug.macho.Macho_arm64_reloc_addend.aRM64_RELOC_ADDEND;
var errNotFat(get, set) : FormatError;
private function get_errNotFat():FormatError return stdgo._internal.debug.macho.Macho_errnotfat.errNotFat;
private function set_errNotFat(v:FormatError):FormatError {
        stdgo._internal.debug.macho.Macho_errnotfat.errNotFat = (v : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>);
        return v;
    }
class Load_static_extension {
    static public function raw(t:stdgo._internal.debug.macho.Macho_load.Load):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_load_static_extension.Load_static_extension.raw(t)) i];
    }
}
@:forward abstract Load(stdgo._internal.debug.macho.Macho_load.Load) from stdgo._internal.debug.macho.Macho_load.Load to stdgo._internal.debug.macho.Macho_load.Load {
    @:from
    static function fromHaxeInterface(x:{ function raw():Array<std.UInt>; }):Load {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Load = { raw : () -> x.raw(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.debug.macho.Macho.FatFile_static_extension) abstract FatFile(stdgo._internal.debug.macho.Macho_fatfile.FatFile) from stdgo._internal.debug.macho.Macho_fatfile.FatFile to stdgo._internal.debug.macho.Macho_fatfile.FatFile {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt32);
        return v;
    }
    public var arches(get, set) : Array<FatArch>;
    function get_arches():Array<FatArch> return [for (i in this.arches) i];
    function set_arches(v:Array<FatArch>):Array<FatArch> {
        this.arches = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_fatarch.FatArch>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_closer.Closer;
    function get__closer():stdgo._internal.io.Io_closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_closer.Closer):stdgo._internal.io.Io_closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?magic:std.UInt, ?arches:Array<FatArch>, ?_closer:stdgo._internal.io.Io_closer.Closer) this = new stdgo._internal.debug.macho.Macho_fatfile.FatFile((magic : stdgo.GoUInt32), ([for (i in arches) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_fatarch.FatArch>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.FatArchHeader_static_extension) abstract FatArchHeader(stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader) from stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader to stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader {
    public var cpu(get, set) : Cpu;
    function get_cpu():Cpu return this.cpu;
    function set_cpu(v:Cpu):Cpu {
        this.cpu = v;
        return v;
    }
    public var subCpu(get, set) : std.UInt;
    function get_subCpu():std.UInt return this.subCpu;
    function set_subCpu(v:std.UInt):std.UInt {
        this.subCpu = (v : stdgo.GoUInt32);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cpu:Cpu, ?subCpu:std.UInt, ?offset:std.UInt, ?size:std.UInt, ?align:std.UInt) this = new stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader(cpu, (subCpu : stdgo.GoUInt32), (offset : stdgo.GoUInt32), (size : stdgo.GoUInt32), (align : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.FatArch_static_extension) abstract FatArch(stdgo._internal.debug.macho.Macho_fatarch.FatArch) from stdgo._internal.debug.macho.Macho_fatarch.FatArch to stdgo._internal.debug.macho.Macho_fatarch.FatArch {
    public var fatArchHeader(get, set) : FatArchHeader;
    function get_fatArchHeader():FatArchHeader return this.fatArchHeader;
    function set_fatArchHeader(v:FatArchHeader):FatArchHeader {
        this.fatArchHeader = v;
        return v;
    }
    public var file(get, set) : File;
    function get_file():File return this.file;
    function set_file(v:File):File {
        this.file = (v : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        return v;
    }
    public function new(?fatArchHeader:FatArchHeader, ?file:File) this = new stdgo._internal.debug.macho.Macho_fatarch.FatArch(fatArchHeader, (file : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.File_static_extension) abstract File(stdgo._internal.debug.macho.Macho_file.File) from stdgo._internal.debug.macho.Macho_file.File to stdgo._internal.debug.macho.Macho_file.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var byteOrder(get, set) : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder;
    function get_byteOrder():stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder return this.byteOrder;
    function set_byteOrder(v:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder):stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder {
        this.byteOrder = v;
        return v;
    }
    public var loads(get, set) : Array<Load>;
    function get_loads():Array<Load> return [for (i in this.loads) i];
    function set_loads(v:Array<Load>):Array<Load> {
        this.loads = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_load.Load>);
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>>);
        return v;
    }
    public var symtab(get, set) : Symtab;
    function get_symtab():Symtab return this.symtab;
    function set_symtab(v:Symtab):Symtab {
        this.symtab = (v : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>);
        return v;
    }
    public var dysymtab(get, set) : Dysymtab;
    function get_dysymtab():Dysymtab return this.dysymtab;
    function set_dysymtab(v:Dysymtab):Dysymtab {
        this.dysymtab = (v : stdgo.Ref<stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_closer.Closer;
    function get__closer():stdgo._internal.io.Io_closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_closer.Closer):stdgo._internal.io.Io_closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?byteOrder:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?loads:Array<Load>, ?sections:Array<Section>, ?symtab:Symtab, ?dysymtab:Dysymtab, ?_closer:stdgo._internal.io.Io_closer.Closer) this = new stdgo._internal.debug.macho.Macho_file.File(fileHeader, byteOrder, ([for (i in loads) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_load.Load>), ([for (i in sections) (i : stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>>), (symtab : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>), (dysymtab : stdgo.Ref<stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.SegmentHeader_static_extension) abstract SegmentHeader(stdgo._internal.debug.macho.Macho_segmentheader.SegmentHeader) from stdgo._internal.debug.macho.Macho_segmentheader.SegmentHeader to stdgo._internal.debug.macho.Macho_segmentheader.SegmentHeader {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = (v : stdgo.GoUInt64);
        return v;
    }
    public var maxprot(get, set) : std.UInt;
    function get_maxprot():std.UInt return this.maxprot;
    function set_maxprot(v:std.UInt):std.UInt {
        this.maxprot = (v : stdgo.GoUInt32);
        return v;
    }
    public var prot(get, set) : std.UInt;
    function get_prot():std.UInt return this.prot;
    function set_prot(v:std.UInt):std.UInt {
        this.prot = (v : stdgo.GoUInt32);
        return v;
    }
    public var nsect(get, set) : std.UInt;
    function get_nsect():std.UInt return this.nsect;
    function set_nsect(v:std.UInt):std.UInt {
        this.nsect = (v : stdgo.GoUInt32);
        return v;
    }
    public var flag(get, set) : std.UInt;
    function get_flag():std.UInt return this.flag;
    function set_flag(v:std.UInt):std.UInt {
        this.flag = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:String, ?addr:haxe.UInt64, ?memsz:haxe.UInt64, ?offset:haxe.UInt64, ?filesz:haxe.UInt64, ?maxprot:std.UInt, ?prot:std.UInt, ?nsect:std.UInt, ?flag:std.UInt) this = new stdgo._internal.debug.macho.Macho_segmentheader.SegmentHeader(
cmd,
(len : stdgo.GoUInt32),
(name : stdgo.GoString),
(addr : stdgo.GoUInt64),
(memsz : stdgo.GoUInt64),
(offset : stdgo.GoUInt64),
(filesz : stdgo.GoUInt64),
(maxprot : stdgo.GoUInt32),
(prot : stdgo.GoUInt32),
(nsect : stdgo.GoUInt32),
(flag : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Segment_static_extension) abstract Segment(stdgo._internal.debug.macho.Macho_segment.Segment) from stdgo._internal.debug.macho.Macho_segment.Segment to stdgo._internal.debug.macho.Macho_segment.Segment {
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
    public var readerAt(get, set) : stdgo._internal.io.Io_readerat.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_readerat.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_readerat.ReaderAt):stdgo._internal.io.Io_readerat.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_sectionreader.SectionReader;
    function get__sr():stdgo._internal.io.Io_sectionreader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_sectionreader.SectionReader):stdgo._internal.io.Io_sectionreader.SectionReader {
        this._sr = (v : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?segmentHeader:SegmentHeader, ?readerAt:stdgo._internal.io.Io_readerat.ReaderAt, ?_sr:stdgo._internal.io.Io_sectionreader.SectionReader) this = new stdgo._internal.debug.macho.Macho_segment.Segment(loadBytes, segmentHeader, readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.SectionHeader_static_extension) abstract SectionHeader(stdgo._internal.debug.macho.Macho_sectionheader.SectionHeader) from stdgo._internal.debug.macho.Macho_sectionheader.SectionHeader to stdgo._internal.debug.macho.Macho_sectionheader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var seg(get, set) : String;
    function get_seg():String return this.seg;
    function set_seg(v:String):String {
        this.seg = (v : stdgo.GoString);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = (v : stdgo.GoUInt32);
        return v;
    }
    public var reloff(get, set) : std.UInt;
    function get_reloff():std.UInt return this.reloff;
    function set_reloff(v:std.UInt):std.UInt {
        this.reloff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nreloc(get, set) : std.UInt;
    function get_nreloc():std.UInt return this.nreloc;
    function set_nreloc(v:std.UInt):std.UInt {
        this.nreloc = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:String, ?seg:String, ?addr:haxe.UInt64, ?size:haxe.UInt64, ?offset:std.UInt, ?align:std.UInt, ?reloff:std.UInt, ?nreloc:std.UInt, ?flags:std.UInt) this = new stdgo._internal.debug.macho.Macho_sectionheader.SectionHeader((name : stdgo.GoString), (seg : stdgo.GoString), (addr : stdgo.GoUInt64), (size : stdgo.GoUInt64), (offset : stdgo.GoUInt32), (align : stdgo.GoUInt32), (reloff : stdgo.GoUInt32), (nreloc : stdgo.GoUInt32), (flags : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Reloc_static_extension) abstract Reloc(stdgo._internal.debug.macho.Macho_reloc.Reloc) from stdgo._internal.debug.macho.Macho_reloc.Reloc to stdgo._internal.debug.macho.Macho_reloc.Reloc {
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt8);
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
    public function new(?addr:std.UInt, ?value:std.UInt, ?type:std.UInt, ?len:std.UInt, ?pcrel:Bool, ?extern_:Bool, ?scattered:Bool) this = new stdgo._internal.debug.macho.Macho_reloc.Reloc((addr : stdgo.GoUInt32), (value : stdgo.GoUInt32), (type : stdgo.GoUInt8), (len : stdgo.GoUInt8), pcrel, extern_, scattered);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Section_static_extension) abstract Section(stdgo._internal.debug.macho.Macho_section.Section) from stdgo._internal.debug.macho.Macho_section.Section to stdgo._internal.debug.macho.Macho_section.Section {
    public var sectionHeader(get, set) : SectionHeader;
    function get_sectionHeader():SectionHeader return this.sectionHeader;
    function set_sectionHeader(v:SectionHeader):SectionHeader {
        this.sectionHeader = v;
        return v;
    }
    public var relocs(get, set) : Array<Reloc>;
    function get_relocs():Array<Reloc> return [for (i in this.relocs) i];
    function set_relocs(v:Array<Reloc>):Array<Reloc> {
        this.relocs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_reloc.Reloc>);
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_readerat.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_readerat.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_readerat.ReaderAt):stdgo._internal.io.Io_readerat.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_sectionreader.SectionReader;
    function get__sr():stdgo._internal.io.Io_sectionreader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_sectionreader.SectionReader):stdgo._internal.io.Io_sectionreader.SectionReader {
        this._sr = (v : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        return v;
    }
    public function new(?sectionHeader:SectionHeader, ?relocs:Array<Reloc>, ?readerAt:stdgo._internal.io.Io_readerat.ReaderAt, ?_sr:stdgo._internal.io.Io_sectionreader.SectionReader) this = new stdgo._internal.debug.macho.Macho_section.Section(sectionHeader, ([for (i in relocs) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_reloc.Reloc>), readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Dylib_static_extension) abstract Dylib(stdgo._internal.debug.macho.Macho_dylib.Dylib) from stdgo._internal.debug.macho.Macho_dylib.Dylib to stdgo._internal.debug.macho.Macho_dylib.Dylib {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var time(get, set) : std.UInt;
    function get_time():std.UInt return this.time;
    function set_time(v:std.UInt):std.UInt {
        this.time = (v : stdgo.GoUInt32);
        return v;
    }
    public var currentVersion(get, set) : std.UInt;
    function get_currentVersion():std.UInt return this.currentVersion;
    function set_currentVersion(v:std.UInt):std.UInt {
        this.currentVersion = (v : stdgo.GoUInt32);
        return v;
    }
    public var compatVersion(get, set) : std.UInt;
    function get_compatVersion():std.UInt return this.compatVersion;
    function set_compatVersion(v:std.UInt):std.UInt {
        this.compatVersion = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?name:String, ?time:std.UInt, ?currentVersion:std.UInt, ?compatVersion:std.UInt) this = new stdgo._internal.debug.macho.Macho_dylib.Dylib(loadBytes, (name : stdgo.GoString), (time : stdgo.GoUInt32), (currentVersion : stdgo.GoUInt32), (compatVersion : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Symtab_static_extension) abstract Symtab(stdgo._internal.debug.macho.Macho_symtab.Symtab) from stdgo._internal.debug.macho.Macho_symtab.Symtab to stdgo._internal.debug.macho.Macho_symtab.Symtab {
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
        this.syms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_symbol.Symbol>);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?symtabCmd:SymtabCmd, ?syms:Array<Symbol>) this = new stdgo._internal.debug.macho.Macho_symtab.Symtab(loadBytes, symtabCmd, ([for (i in syms) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_symbol.Symbol>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Dysymtab_static_extension) abstract Dysymtab(stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab) from stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab to stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab {
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
        this.indirectSyms = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?dysymtabCmd:DysymtabCmd, ?indirectSyms:Array<std.UInt>) this = new stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab(loadBytes, dysymtabCmd, ([for (i in indirectSyms) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Rpath_static_extension) abstract Rpath(stdgo._internal.debug.macho.Macho_rpath.Rpath) from stdgo._internal.debug.macho.Macho_rpath.Rpath to stdgo._internal.debug.macho.Macho_rpath.Rpath {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?path:String) this = new stdgo._internal.debug.macho.Macho_rpath.Rpath(loadBytes, (path : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Symbol_static_extension) abstract Symbol(stdgo._internal.debug.macho.Macho_symbol.Symbol) from stdgo._internal.debug.macho.Macho_symbol.Symbol to stdgo._internal.debug.macho.Macho_symbol.Symbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var sect(get, set) : std.UInt;
    function get_sect():std.UInt return this.sect;
    function set_sect(v:std.UInt):std.UInt {
        this.sect = (v : stdgo.GoUInt8);
        return v;
    }
    public var desc(get, set) : std.UInt;
    function get_desc():std.UInt return this.desc;
    function set_desc(v:std.UInt):std.UInt {
        this.desc = (v : stdgo.GoUInt16);
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:String, ?type:std.UInt, ?sect:std.UInt, ?desc:std.UInt, ?value:haxe.UInt64) this = new stdgo._internal.debug.macho.Macho_symbol.Symbol((name : stdgo.GoString), (type : stdgo.GoUInt8), (sect : stdgo.GoUInt8), (desc : stdgo.GoUInt16), (value : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.FormatError_static_extension) abstract FormatError(stdgo._internal.debug.macho.Macho_formaterror.FormatError) from stdgo._internal.debug.macho.Macho_formaterror.FormatError to stdgo._internal.debug.macho.Macho_formaterror.FormatError {
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_off:haxe.Int64, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.macho.Macho_formaterror.FormatError((_off : stdgo.GoInt64), (_msg : stdgo.GoString), (_val : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.T_relocInfo_static_extension) @:dox(hide) abstract T_relocInfo(stdgo._internal.debug.macho.Macho_t_relocinfo.T_relocInfo) from stdgo._internal.debug.macho.Macho_t_relocinfo.T_relocInfo to stdgo._internal.debug.macho.Macho_t_relocinfo.T_relocInfo {
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var symnum(get, set) : std.UInt;
    function get_symnum():std.UInt return this.symnum;
    function set_symnum(v:std.UInt):std.UInt {
        this.symnum = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?addr:std.UInt, ?symnum:std.UInt) this = new stdgo._internal.debug.macho.Macho_t_relocinfo.T_relocInfo((addr : stdgo.GoUInt32), (symnum : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.FileHeader_static_extension) abstract FileHeader(stdgo._internal.debug.macho.Macho_fileheader.FileHeader) from stdgo._internal.debug.macho.Macho_fileheader.FileHeader to stdgo._internal.debug.macho.Macho_fileheader.FileHeader {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt32);
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
        this.subCpu = (v : stdgo.GoUInt32);
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
        this.ncmd = (v : stdgo.GoUInt32);
        return v;
    }
    public var cmdsz(get, set) : std.UInt;
    function get_cmdsz():std.UInt return this.cmdsz;
    function set_cmdsz(v:std.UInt):std.UInt {
        this.cmdsz = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?magic:std.UInt, ?cpu:Cpu, ?subCpu:std.UInt, ?type:Type_, ?ncmd:std.UInt, ?cmdsz:std.UInt, ?flags:std.UInt) this = new stdgo._internal.debug.macho.Macho_fileheader.FileHeader((magic : stdgo.GoUInt32), cpu, (subCpu : stdgo.GoUInt32), type, (ncmd : stdgo.GoUInt32), (cmdsz : stdgo.GoUInt32), (flags : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Segment32_static_extension) abstract Segment32(stdgo._internal.debug.macho.Macho_segment32.Segment32) from stdgo._internal.debug.macho.Macho_segment32.Segment32 to stdgo._internal.debug.macho.Macho_segment32.Segment32 {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var memsz(get, set) : std.UInt;
    function get_memsz():std.UInt return this.memsz;
    function set_memsz(v:std.UInt):std.UInt {
        this.memsz = (v : stdgo.GoUInt32);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public var filesz(get, set) : std.UInt;
    function get_filesz():std.UInt return this.filesz;
    function set_filesz(v:std.UInt):std.UInt {
        this.filesz = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxprot(get, set) : std.UInt;
    function get_maxprot():std.UInt return this.maxprot;
    function set_maxprot(v:std.UInt):std.UInt {
        this.maxprot = (v : stdgo.GoUInt32);
        return v;
    }
    public var prot(get, set) : std.UInt;
    function get_prot():std.UInt return this.prot;
    function set_prot(v:std.UInt):std.UInt {
        this.prot = (v : stdgo.GoUInt32);
        return v;
    }
    public var nsect(get, set) : std.UInt;
    function get_nsect():std.UInt return this.nsect;
    function set_nsect(v:std.UInt):std.UInt {
        this.nsect = (v : stdgo.GoUInt32);
        return v;
    }
    public var flag(get, set) : std.UInt;
    function get_flag():std.UInt return this.flag;
    function set_flag(v:std.UInt):std.UInt {
        this.flag = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:haxe.ds.Vector<std.UInt>, ?addr:std.UInt, ?memsz:std.UInt, ?offset:std.UInt, ?filesz:std.UInt, ?maxprot:std.UInt, ?prot:std.UInt, ?nsect:std.UInt, ?flag:std.UInt) this = new stdgo._internal.debug.macho.Macho_segment32.Segment32(
cmd,
(len : stdgo.GoUInt32),
([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(addr : stdgo.GoUInt32),
(memsz : stdgo.GoUInt32),
(offset : stdgo.GoUInt32),
(filesz : stdgo.GoUInt32),
(maxprot : stdgo.GoUInt32),
(prot : stdgo.GoUInt32),
(nsect : stdgo.GoUInt32),
(flag : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Segment64_static_extension) abstract Segment64(stdgo._internal.debug.macho.Macho_segment64.Segment64) from stdgo._internal.debug.macho.Macho_segment64.Segment64 to stdgo._internal.debug.macho.Macho_segment64.Segment64 {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = (v : stdgo.GoUInt64);
        return v;
    }
    public var maxprot(get, set) : std.UInt;
    function get_maxprot():std.UInt return this.maxprot;
    function set_maxprot(v:std.UInt):std.UInt {
        this.maxprot = (v : stdgo.GoUInt32);
        return v;
    }
    public var prot(get, set) : std.UInt;
    function get_prot():std.UInt return this.prot;
    function set_prot(v:std.UInt):std.UInt {
        this.prot = (v : stdgo.GoUInt32);
        return v;
    }
    public var nsect(get, set) : std.UInt;
    function get_nsect():std.UInt return this.nsect;
    function set_nsect(v:std.UInt):std.UInt {
        this.nsect = (v : stdgo.GoUInt32);
        return v;
    }
    public var flag(get, set) : std.UInt;
    function get_flag():std.UInt return this.flag;
    function set_flag(v:std.UInt):std.UInt {
        this.flag = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:haxe.ds.Vector<std.UInt>, ?addr:haxe.UInt64, ?memsz:haxe.UInt64, ?offset:haxe.UInt64, ?filesz:haxe.UInt64, ?maxprot:std.UInt, ?prot:std.UInt, ?nsect:std.UInt, ?flag:std.UInt) this = new stdgo._internal.debug.macho.Macho_segment64.Segment64(
cmd,
(len : stdgo.GoUInt32),
([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(addr : stdgo.GoUInt64),
(memsz : stdgo.GoUInt64),
(offset : stdgo.GoUInt64),
(filesz : stdgo.GoUInt64),
(maxprot : stdgo.GoUInt32),
(prot : stdgo.GoUInt32),
(nsect : stdgo.GoUInt32),
(flag : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.SymtabCmd_static_extension) abstract SymtabCmd(stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd) from stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd to stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var symoff(get, set) : std.UInt;
    function get_symoff():std.UInt return this.symoff;
    function set_symoff(v:std.UInt):std.UInt {
        this.symoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nsyms(get, set) : std.UInt;
    function get_nsyms():std.UInt return this.nsyms;
    function set_nsyms(v:std.UInt):std.UInt {
        this.nsyms = (v : stdgo.GoUInt32);
        return v;
    }
    public var stroff(get, set) : std.UInt;
    function get_stroff():std.UInt return this.stroff;
    function set_stroff(v:std.UInt):std.UInt {
        this.stroff = (v : stdgo.GoUInt32);
        return v;
    }
    public var strsize(get, set) : std.UInt;
    function get_strsize():std.UInt return this.strsize;
    function set_strsize(v:std.UInt):std.UInt {
        this.strsize = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?symoff:std.UInt, ?nsyms:std.UInt, ?stroff:std.UInt, ?strsize:std.UInt) this = new stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd(cmd, (len : stdgo.GoUInt32), (symoff : stdgo.GoUInt32), (nsyms : stdgo.GoUInt32), (stroff : stdgo.GoUInt32), (strsize : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.DysymtabCmd_static_extension) abstract DysymtabCmd(stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd) from stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd to stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var ilocalsym(get, set) : std.UInt;
    function get_ilocalsym():std.UInt return this.ilocalsym;
    function set_ilocalsym(v:std.UInt):std.UInt {
        this.ilocalsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var nlocalsym(get, set) : std.UInt;
    function get_nlocalsym():std.UInt return this.nlocalsym;
    function set_nlocalsym(v:std.UInt):std.UInt {
        this.nlocalsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var iextdefsym(get, set) : std.UInt;
    function get_iextdefsym():std.UInt return this.iextdefsym;
    function set_iextdefsym(v:std.UInt):std.UInt {
        this.iextdefsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var nextdefsym(get, set) : std.UInt;
    function get_nextdefsym():std.UInt return this.nextdefsym;
    function set_nextdefsym(v:std.UInt):std.UInt {
        this.nextdefsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var iundefsym(get, set) : std.UInt;
    function get_iundefsym():std.UInt return this.iundefsym;
    function set_iundefsym(v:std.UInt):std.UInt {
        this.iundefsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var nundefsym(get, set) : std.UInt;
    function get_nundefsym():std.UInt return this.nundefsym;
    function set_nundefsym(v:std.UInt):std.UInt {
        this.nundefsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var tocoffset(get, set) : std.UInt;
    function get_tocoffset():std.UInt return this.tocoffset;
    function set_tocoffset(v:std.UInt):std.UInt {
        this.tocoffset = (v : stdgo.GoUInt32);
        return v;
    }
    public var ntoc(get, set) : std.UInt;
    function get_ntoc():std.UInt return this.ntoc;
    function set_ntoc(v:std.UInt):std.UInt {
        this.ntoc = (v : stdgo.GoUInt32);
        return v;
    }
    public var modtaboff(get, set) : std.UInt;
    function get_modtaboff():std.UInt return this.modtaboff;
    function set_modtaboff(v:std.UInt):std.UInt {
        this.modtaboff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nmodtab(get, set) : std.UInt;
    function get_nmodtab():std.UInt return this.nmodtab;
    function set_nmodtab(v:std.UInt):std.UInt {
        this.nmodtab = (v : stdgo.GoUInt32);
        return v;
    }
    public var extrefsymoff(get, set) : std.UInt;
    function get_extrefsymoff():std.UInt return this.extrefsymoff;
    function set_extrefsymoff(v:std.UInt):std.UInt {
        this.extrefsymoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nextrefsyms(get, set) : std.UInt;
    function get_nextrefsyms():std.UInt return this.nextrefsyms;
    function set_nextrefsyms(v:std.UInt):std.UInt {
        this.nextrefsyms = (v : stdgo.GoUInt32);
        return v;
    }
    public var indirectsymoff(get, set) : std.UInt;
    function get_indirectsymoff():std.UInt return this.indirectsymoff;
    function set_indirectsymoff(v:std.UInt):std.UInt {
        this.indirectsymoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nindirectsyms(get, set) : std.UInt;
    function get_nindirectsyms():std.UInt return this.nindirectsyms;
    function set_nindirectsyms(v:std.UInt):std.UInt {
        this.nindirectsyms = (v : stdgo.GoUInt32);
        return v;
    }
    public var extreloff(get, set) : std.UInt;
    function get_extreloff():std.UInt return this.extreloff;
    function set_extreloff(v:std.UInt):std.UInt {
        this.extreloff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nextrel(get, set) : std.UInt;
    function get_nextrel():std.UInt return this.nextrel;
    function set_nextrel(v:std.UInt):std.UInt {
        this.nextrel = (v : stdgo.GoUInt32);
        return v;
    }
    public var locreloff(get, set) : std.UInt;
    function get_locreloff():std.UInt return this.locreloff;
    function set_locreloff(v:std.UInt):std.UInt {
        this.locreloff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nlocrel(get, set) : std.UInt;
    function get_nlocrel():std.UInt return this.nlocrel;
    function set_nlocrel(v:std.UInt):std.UInt {
        this.nlocrel = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?ilocalsym:std.UInt, ?nlocalsym:std.UInt, ?iextdefsym:std.UInt, ?nextdefsym:std.UInt, ?iundefsym:std.UInt, ?nundefsym:std.UInt, ?tocoffset:std.UInt, ?ntoc:std.UInt, ?modtaboff:std.UInt, ?nmodtab:std.UInt, ?extrefsymoff:std.UInt, ?nextrefsyms:std.UInt, ?indirectsymoff:std.UInt, ?nindirectsyms:std.UInt, ?extreloff:std.UInt, ?nextrel:std.UInt, ?locreloff:std.UInt, ?nlocrel:std.UInt) this = new stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd(
cmd,
(len : stdgo.GoUInt32),
(ilocalsym : stdgo.GoUInt32),
(nlocalsym : stdgo.GoUInt32),
(iextdefsym : stdgo.GoUInt32),
(nextdefsym : stdgo.GoUInt32),
(iundefsym : stdgo.GoUInt32),
(nundefsym : stdgo.GoUInt32),
(tocoffset : stdgo.GoUInt32),
(ntoc : stdgo.GoUInt32),
(modtaboff : stdgo.GoUInt32),
(nmodtab : stdgo.GoUInt32),
(extrefsymoff : stdgo.GoUInt32),
(nextrefsyms : stdgo.GoUInt32),
(indirectsymoff : stdgo.GoUInt32),
(nindirectsyms : stdgo.GoUInt32),
(extreloff : stdgo.GoUInt32),
(nextrel : stdgo.GoUInt32),
(locreloff : stdgo.GoUInt32),
(nlocrel : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.DylibCmd_static_extension) abstract DylibCmd(stdgo._internal.debug.macho.Macho_dylibcmd.DylibCmd) from stdgo._internal.debug.macho.Macho_dylibcmd.DylibCmd to stdgo._internal.debug.macho.Macho_dylibcmd.DylibCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var time(get, set) : std.UInt;
    function get_time():std.UInt return this.time;
    function set_time(v:std.UInt):std.UInt {
        this.time = (v : stdgo.GoUInt32);
        return v;
    }
    public var currentVersion(get, set) : std.UInt;
    function get_currentVersion():std.UInt return this.currentVersion;
    function set_currentVersion(v:std.UInt):std.UInt {
        this.currentVersion = (v : stdgo.GoUInt32);
        return v;
    }
    public var compatVersion(get, set) : std.UInt;
    function get_compatVersion():std.UInt return this.compatVersion;
    function set_compatVersion(v:std.UInt):std.UInt {
        this.compatVersion = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:std.UInt, ?time:std.UInt, ?currentVersion:std.UInt, ?compatVersion:std.UInt) this = new stdgo._internal.debug.macho.Macho_dylibcmd.DylibCmd(cmd, (len : stdgo.GoUInt32), (name : stdgo.GoUInt32), (time : stdgo.GoUInt32), (currentVersion : stdgo.GoUInt32), (compatVersion : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.RpathCmd_static_extension) abstract RpathCmd(stdgo._internal.debug.macho.Macho_rpathcmd.RpathCmd) from stdgo._internal.debug.macho.Macho_rpathcmd.RpathCmd to stdgo._internal.debug.macho.Macho_rpathcmd.RpathCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var path(get, set) : std.UInt;
    function get_path():std.UInt return this.path;
    function set_path(v:std.UInt):std.UInt {
        this.path = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?path:std.UInt) this = new stdgo._internal.debug.macho.Macho_rpathcmd.RpathCmd(cmd, (len : stdgo.GoUInt32), (path : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Thread_static_extension) abstract Thread(stdgo._internal.debug.macho.Macho_thread.Thread) from stdgo._internal.debug.macho.Macho_thread.Thread to stdgo._internal.debug.macho.Macho_thread.Thread {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?type:std.UInt, ?data:Array<std.UInt>) this = new stdgo._internal.debug.macho.Macho_thread.Thread(cmd, (len : stdgo.GoUInt32), (type : stdgo.GoUInt32), ([for (i in data) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Section32_static_extension) abstract Section32(stdgo._internal.debug.macho.Macho_section32.Section32) from stdgo._internal.debug.macho.Macho_section32.Section32 to stdgo._internal.debug.macho.Macho_section32.Section32 {
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var seg(get, set) : haxe.ds.Vector<std.UInt>;
    function get_seg():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.seg) i]);
    function set_seg(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.seg = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = (v : stdgo.GoUInt32);
        return v;
    }
    public var reloff(get, set) : std.UInt;
    function get_reloff():std.UInt return this.reloff;
    function set_reloff(v:std.UInt):std.UInt {
        this.reloff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nreloc(get, set) : std.UInt;
    function get_nreloc():std.UInt return this.nreloc;
    function set_nreloc(v:std.UInt):std.UInt {
        this.nreloc = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var reserve1(get, set) : std.UInt;
    function get_reserve1():std.UInt return this.reserve1;
    function set_reserve1(v:std.UInt):std.UInt {
        this.reserve1 = (v : stdgo.GoUInt32);
        return v;
    }
    public var reserve2(get, set) : std.UInt;
    function get_reserve2():std.UInt return this.reserve2;
    function set_reserve2(v:std.UInt):std.UInt {
        this.reserve2 = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:haxe.ds.Vector<std.UInt>, ?seg:haxe.ds.Vector<std.UInt>, ?addr:std.UInt, ?size:std.UInt, ?offset:std.UInt, ?align:std.UInt, ?reloff:std.UInt, ?nreloc:std.UInt, ?flags:std.UInt, ?reserve1:std.UInt, ?reserve2:std.UInt) this = new stdgo._internal.debug.macho.Macho_section32.Section32(
([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in seg) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(addr : stdgo.GoUInt32),
(size : stdgo.GoUInt32),
(offset : stdgo.GoUInt32),
(align : stdgo.GoUInt32),
(reloff : stdgo.GoUInt32),
(nreloc : stdgo.GoUInt32),
(flags : stdgo.GoUInt32),
(reserve1 : stdgo.GoUInt32),
(reserve2 : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Section64_static_extension) abstract Section64(stdgo._internal.debug.macho.Macho_section64.Section64) from stdgo._internal.debug.macho.Macho_section64.Section64 to stdgo._internal.debug.macho.Macho_section64.Section64 {
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var seg(get, set) : haxe.ds.Vector<std.UInt>;
    function get_seg():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.seg) i]);
    function set_seg(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.seg = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = (v : stdgo.GoUInt32);
        return v;
    }
    public var reloff(get, set) : std.UInt;
    function get_reloff():std.UInt return this.reloff;
    function set_reloff(v:std.UInt):std.UInt {
        this.reloff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nreloc(get, set) : std.UInt;
    function get_nreloc():std.UInt return this.nreloc;
    function set_nreloc(v:std.UInt):std.UInt {
        this.nreloc = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var reserve1(get, set) : std.UInt;
    function get_reserve1():std.UInt return this.reserve1;
    function set_reserve1(v:std.UInt):std.UInt {
        this.reserve1 = (v : stdgo.GoUInt32);
        return v;
    }
    public var reserve2(get, set) : std.UInt;
    function get_reserve2():std.UInt return this.reserve2;
    function set_reserve2(v:std.UInt):std.UInt {
        this.reserve2 = (v : stdgo.GoUInt32);
        return v;
    }
    public var reserve3(get, set) : std.UInt;
    function get_reserve3():std.UInt return this.reserve3;
    function set_reserve3(v:std.UInt):std.UInt {
        this.reserve3 = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:haxe.ds.Vector<std.UInt>, ?seg:haxe.ds.Vector<std.UInt>, ?addr:haxe.UInt64, ?size:haxe.UInt64, ?offset:std.UInt, ?align:std.UInt, ?reloff:std.UInt, ?nreloc:std.UInt, ?flags:std.UInt, ?reserve1:std.UInt, ?reserve2:std.UInt, ?reserve3:std.UInt) this = new stdgo._internal.debug.macho.Macho_section64.Section64(
([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in seg) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(addr : stdgo.GoUInt64),
(size : stdgo.GoUInt64),
(offset : stdgo.GoUInt32),
(align : stdgo.GoUInt32),
(reloff : stdgo.GoUInt32),
(nreloc : stdgo.GoUInt32),
(flags : stdgo.GoUInt32),
(reserve1 : stdgo.GoUInt32),
(reserve2 : stdgo.GoUInt32),
(reserve3 : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Nlist32_static_extension) abstract Nlist32(stdgo._internal.debug.macho.Macho_nlist32.Nlist32) from stdgo._internal.debug.macho.Macho_nlist32.Nlist32 to stdgo._internal.debug.macho.Macho_nlist32.Nlist32 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var sect(get, set) : std.UInt;
    function get_sect():std.UInt return this.sect;
    function set_sect(v:std.UInt):std.UInt {
        this.sect = (v : stdgo.GoUInt8);
        return v;
    }
    public var desc(get, set) : std.UInt;
    function get_desc():std.UInt return this.desc;
    function set_desc(v:std.UInt):std.UInt {
        this.desc = (v : stdgo.GoUInt16);
        return v;
    }
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?sect:std.UInt, ?desc:std.UInt, ?value:std.UInt) this = new stdgo._internal.debug.macho.Macho_nlist32.Nlist32((name : stdgo.GoUInt32), (type : stdgo.GoUInt8), (sect : stdgo.GoUInt8), (desc : stdgo.GoUInt16), (value : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Nlist64_static_extension) abstract Nlist64(stdgo._internal.debug.macho.Macho_nlist64.Nlist64) from stdgo._internal.debug.macho.Macho_nlist64.Nlist64 to stdgo._internal.debug.macho.Macho_nlist64.Nlist64 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var sect(get, set) : std.UInt;
    function get_sect():std.UInt return this.sect;
    function set_sect(v:std.UInt):std.UInt {
        this.sect = (v : stdgo.GoUInt8);
        return v;
    }
    public var desc(get, set) : std.UInt;
    function get_desc():std.UInt return this.desc;
    function set_desc(v:std.UInt):std.UInt {
        this.desc = (v : stdgo.GoUInt16);
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?sect:std.UInt, ?desc:std.UInt, ?value:haxe.UInt64) this = new stdgo._internal.debug.macho.Macho_nlist64.Nlist64((name : stdgo.GoUInt32), (type : stdgo.GoUInt8), (sect : stdgo.GoUInt8), (desc : stdgo.GoUInt16), (value : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.Regs386_static_extension) abstract Regs386(stdgo._internal.debug.macho.Macho_regs386.Regs386) from stdgo._internal.debug.macho.Macho_regs386.Regs386 to stdgo._internal.debug.macho.Macho_regs386.Regs386 {
    public var aX(get, set) : std.UInt;
    function get_aX():std.UInt return this.aX;
    function set_aX(v:std.UInt):std.UInt {
        this.aX = (v : stdgo.GoUInt32);
        return v;
    }
    public var bX(get, set) : std.UInt;
    function get_bX():std.UInt return this.bX;
    function set_bX(v:std.UInt):std.UInt {
        this.bX = (v : stdgo.GoUInt32);
        return v;
    }
    public var cX(get, set) : std.UInt;
    function get_cX():std.UInt return this.cX;
    function set_cX(v:std.UInt):std.UInt {
        this.cX = (v : stdgo.GoUInt32);
        return v;
    }
    public var dX(get, set) : std.UInt;
    function get_dX():std.UInt return this.dX;
    function set_dX(v:std.UInt):std.UInt {
        this.dX = (v : stdgo.GoUInt32);
        return v;
    }
    public var dI(get, set) : std.UInt;
    function get_dI():std.UInt return this.dI;
    function set_dI(v:std.UInt):std.UInt {
        this.dI = (v : stdgo.GoUInt32);
        return v;
    }
    public var sI(get, set) : std.UInt;
    function get_sI():std.UInt return this.sI;
    function set_sI(v:std.UInt):std.UInt {
        this.sI = (v : stdgo.GoUInt32);
        return v;
    }
    public var bP(get, set) : std.UInt;
    function get_bP():std.UInt return this.bP;
    function set_bP(v:std.UInt):std.UInt {
        this.bP = (v : stdgo.GoUInt32);
        return v;
    }
    public var sP(get, set) : std.UInt;
    function get_sP():std.UInt return this.sP;
    function set_sP(v:std.UInt):std.UInt {
        this.sP = (v : stdgo.GoUInt32);
        return v;
    }
    public var sS(get, set) : std.UInt;
    function get_sS():std.UInt return this.sS;
    function set_sS(v:std.UInt):std.UInt {
        this.sS = (v : stdgo.GoUInt32);
        return v;
    }
    public var fLAGS(get, set) : std.UInt;
    function get_fLAGS():std.UInt return this.fLAGS;
    function set_fLAGS(v:std.UInt):std.UInt {
        this.fLAGS = (v : stdgo.GoUInt32);
        return v;
    }
    public var iP(get, set) : std.UInt;
    function get_iP():std.UInt return this.iP;
    function set_iP(v:std.UInt):std.UInt {
        this.iP = (v : stdgo.GoUInt32);
        return v;
    }
    public var cS(get, set) : std.UInt;
    function get_cS():std.UInt return this.cS;
    function set_cS(v:std.UInt):std.UInt {
        this.cS = (v : stdgo.GoUInt32);
        return v;
    }
    public var dS(get, set) : std.UInt;
    function get_dS():std.UInt return this.dS;
    function set_dS(v:std.UInt):std.UInt {
        this.dS = (v : stdgo.GoUInt32);
        return v;
    }
    public var eS(get, set) : std.UInt;
    function get_eS():std.UInt return this.eS;
    function set_eS(v:std.UInt):std.UInt {
        this.eS = (v : stdgo.GoUInt32);
        return v;
    }
    public var fS(get, set) : std.UInt;
    function get_fS():std.UInt return this.fS;
    function set_fS(v:std.UInt):std.UInt {
        this.fS = (v : stdgo.GoUInt32);
        return v;
    }
    public var gS(get, set) : std.UInt;
    function get_gS():std.UInt return this.gS;
    function set_gS(v:std.UInt):std.UInt {
        this.gS = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?aX:std.UInt, ?bX:std.UInt, ?cX:std.UInt, ?dX:std.UInt, ?dI:std.UInt, ?sI:std.UInt, ?bP:std.UInt, ?sP:std.UInt, ?sS:std.UInt, ?fLAGS:std.UInt, ?iP:std.UInt, ?cS:std.UInt, ?dS:std.UInt, ?eS:std.UInt, ?fS:std.UInt, ?gS:std.UInt) this = new stdgo._internal.debug.macho.Macho_regs386.Regs386(
(aX : stdgo.GoUInt32),
(bX : stdgo.GoUInt32),
(cX : stdgo.GoUInt32),
(dX : stdgo.GoUInt32),
(dI : stdgo.GoUInt32),
(sI : stdgo.GoUInt32),
(bP : stdgo.GoUInt32),
(sP : stdgo.GoUInt32),
(sS : stdgo.GoUInt32),
(fLAGS : stdgo.GoUInt32),
(iP : stdgo.GoUInt32),
(cS : stdgo.GoUInt32),
(dS : stdgo.GoUInt32),
(eS : stdgo.GoUInt32),
(fS : stdgo.GoUInt32),
(gS : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.RegsAMD64_static_extension) abstract RegsAMD64(stdgo._internal.debug.macho.Macho_regsamd64.RegsAMD64) from stdgo._internal.debug.macho.Macho_regsamd64.RegsAMD64 to stdgo._internal.debug.macho.Macho_regsamd64.RegsAMD64 {
    public var aX(get, set) : haxe.UInt64;
    function get_aX():haxe.UInt64 return this.aX;
    function set_aX(v:haxe.UInt64):haxe.UInt64 {
        this.aX = (v : stdgo.GoUInt64);
        return v;
    }
    public var bX(get, set) : haxe.UInt64;
    function get_bX():haxe.UInt64 return this.bX;
    function set_bX(v:haxe.UInt64):haxe.UInt64 {
        this.bX = (v : stdgo.GoUInt64);
        return v;
    }
    public var cX(get, set) : haxe.UInt64;
    function get_cX():haxe.UInt64 return this.cX;
    function set_cX(v:haxe.UInt64):haxe.UInt64 {
        this.cX = (v : stdgo.GoUInt64);
        return v;
    }
    public var dX(get, set) : haxe.UInt64;
    function get_dX():haxe.UInt64 return this.dX;
    function set_dX(v:haxe.UInt64):haxe.UInt64 {
        this.dX = (v : stdgo.GoUInt64);
        return v;
    }
    public var dI(get, set) : haxe.UInt64;
    function get_dI():haxe.UInt64 return this.dI;
    function set_dI(v:haxe.UInt64):haxe.UInt64 {
        this.dI = (v : stdgo.GoUInt64);
        return v;
    }
    public var sI(get, set) : haxe.UInt64;
    function get_sI():haxe.UInt64 return this.sI;
    function set_sI(v:haxe.UInt64):haxe.UInt64 {
        this.sI = (v : stdgo.GoUInt64);
        return v;
    }
    public var bP(get, set) : haxe.UInt64;
    function get_bP():haxe.UInt64 return this.bP;
    function set_bP(v:haxe.UInt64):haxe.UInt64 {
        this.bP = (v : stdgo.GoUInt64);
        return v;
    }
    public var sP(get, set) : haxe.UInt64;
    function get_sP():haxe.UInt64 return this.sP;
    function set_sP(v:haxe.UInt64):haxe.UInt64 {
        this.sP = (v : stdgo.GoUInt64);
        return v;
    }
    public var r8(get, set) : haxe.UInt64;
    function get_r8():haxe.UInt64 return this.r8;
    function set_r8(v:haxe.UInt64):haxe.UInt64 {
        this.r8 = (v : stdgo.GoUInt64);
        return v;
    }
    public var r9(get, set) : haxe.UInt64;
    function get_r9():haxe.UInt64 return this.r9;
    function set_r9(v:haxe.UInt64):haxe.UInt64 {
        this.r9 = (v : stdgo.GoUInt64);
        return v;
    }
    public var r10(get, set) : haxe.UInt64;
    function get_r10():haxe.UInt64 return this.r10;
    function set_r10(v:haxe.UInt64):haxe.UInt64 {
        this.r10 = (v : stdgo.GoUInt64);
        return v;
    }
    public var r11(get, set) : haxe.UInt64;
    function get_r11():haxe.UInt64 return this.r11;
    function set_r11(v:haxe.UInt64):haxe.UInt64 {
        this.r11 = (v : stdgo.GoUInt64);
        return v;
    }
    public var r12(get, set) : haxe.UInt64;
    function get_r12():haxe.UInt64 return this.r12;
    function set_r12(v:haxe.UInt64):haxe.UInt64 {
        this.r12 = (v : stdgo.GoUInt64);
        return v;
    }
    public var r13(get, set) : haxe.UInt64;
    function get_r13():haxe.UInt64 return this.r13;
    function set_r13(v:haxe.UInt64):haxe.UInt64 {
        this.r13 = (v : stdgo.GoUInt64);
        return v;
    }
    public var r14(get, set) : haxe.UInt64;
    function get_r14():haxe.UInt64 return this.r14;
    function set_r14(v:haxe.UInt64):haxe.UInt64 {
        this.r14 = (v : stdgo.GoUInt64);
        return v;
    }
    public var r15(get, set) : haxe.UInt64;
    function get_r15():haxe.UInt64 return this.r15;
    function set_r15(v:haxe.UInt64):haxe.UInt64 {
        this.r15 = (v : stdgo.GoUInt64);
        return v;
    }
    public var iP(get, set) : haxe.UInt64;
    function get_iP():haxe.UInt64 return this.iP;
    function set_iP(v:haxe.UInt64):haxe.UInt64 {
        this.iP = (v : stdgo.GoUInt64);
        return v;
    }
    public var fLAGS(get, set) : haxe.UInt64;
    function get_fLAGS():haxe.UInt64 return this.fLAGS;
    function set_fLAGS(v:haxe.UInt64):haxe.UInt64 {
        this.fLAGS = (v : stdgo.GoUInt64);
        return v;
    }
    public var cS(get, set) : haxe.UInt64;
    function get_cS():haxe.UInt64 return this.cS;
    function set_cS(v:haxe.UInt64):haxe.UInt64 {
        this.cS = (v : stdgo.GoUInt64);
        return v;
    }
    public var fS(get, set) : haxe.UInt64;
    function get_fS():haxe.UInt64 return this.fS;
    function set_fS(v:haxe.UInt64):haxe.UInt64 {
        this.fS = (v : stdgo.GoUInt64);
        return v;
    }
    public var gS(get, set) : haxe.UInt64;
    function get_gS():haxe.UInt64 return this.gS;
    function set_gS(v:haxe.UInt64):haxe.UInt64 {
        this.gS = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?aX:haxe.UInt64, ?bX:haxe.UInt64, ?cX:haxe.UInt64, ?dX:haxe.UInt64, ?dI:haxe.UInt64, ?sI:haxe.UInt64, ?bP:haxe.UInt64, ?sP:haxe.UInt64, ?r8:haxe.UInt64, ?r9:haxe.UInt64, ?r10:haxe.UInt64, ?r11:haxe.UInt64, ?r12:haxe.UInt64, ?r13:haxe.UInt64, ?r14:haxe.UInt64, ?r15:haxe.UInt64, ?iP:haxe.UInt64, ?fLAGS:haxe.UInt64, ?cS:haxe.UInt64, ?fS:haxe.UInt64, ?gS:haxe.UInt64) this = new stdgo._internal.debug.macho.Macho_regsamd64.RegsAMD64(
(aX : stdgo.GoUInt64),
(bX : stdgo.GoUInt64),
(cX : stdgo.GoUInt64),
(dX : stdgo.GoUInt64),
(dI : stdgo.GoUInt64),
(sI : stdgo.GoUInt64),
(bP : stdgo.GoUInt64),
(sP : stdgo.GoUInt64),
(r8 : stdgo.GoUInt64),
(r9 : stdgo.GoUInt64),
(r10 : stdgo.GoUInt64),
(r11 : stdgo.GoUInt64),
(r12 : stdgo.GoUInt64),
(r13 : stdgo.GoUInt64),
(r14 : stdgo.GoUInt64),
(r15 : stdgo.GoUInt64),
(iP : stdgo.GoUInt64),
(fLAGS : stdgo.GoUInt64),
(cS : stdgo.GoUInt64),
(fS : stdgo.GoUInt64),
(gS : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.macho.Macho.T_intName_static_extension) @:dox(hide) abstract T_intName(stdgo._internal.debug.macho.Macho_t_intname.T_intName) from stdgo._internal.debug.macho.Macho_t_intname.T_intName to stdgo._internal.debug.macho.Macho_t_intname.T_intName {
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt32);
        return v;
    }
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public function new(?_i:std.UInt, ?_s:String) this = new stdgo._internal.debug.macho.Macho_t_intname.T_intName((_i : stdgo.GoUInt32), (_s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.debug.macho.Macho_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.debug.macho.Macho_t__struct_0.T__struct_0;
typedef LoadBytes = stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes;
typedef Type_ = stdgo._internal.debug.macho.Macho_type_.Type_;
typedef Cpu = stdgo._internal.debug.macho.Macho_cpu.Cpu;
typedef LoadCmd = stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd;
typedef RelocTypeGeneric = stdgo._internal.debug.macho.Macho_reloctypegeneric.RelocTypeGeneric;
typedef RelocTypeX86_64 = stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64;
typedef RelocTypeARM = stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM;
typedef RelocTypeARM64 = stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64;
typedef FatFilePointer = stdgo._internal.debug.macho.Macho_fatfilepointer.FatFilePointer;
class FatFile_static_extension {
    static public function close(_ff:FatFile):stdgo.Error {
        final _ff = (_ff : stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile>);
        return stdgo._internal.debug.macho.Macho_fatfile_static_extension.FatFile_static_extension.close(_ff);
    }
}
typedef FatArchHeaderPointer = stdgo._internal.debug.macho.Macho_fatarchheaderpointer.FatArchHeaderPointer;
class FatArchHeader_static_extension {

}
typedef FatArchPointer = stdgo._internal.debug.macho.Macho_fatarchpointer.FatArchPointer;
class FatArch_static_extension {
    public static function _pushSection(__self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch, _0:Section, _1:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>);
        return stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension._pushSection(__self__, _0, _1);
    }
    public static function _parseSymtab(__self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:Array<std.UInt>, _3:SymtabCmd, _4:haxe.Int64):stdgo.Tuple<Symtab, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>);
        final _4 = (_4 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension._parseSymtab(__self__, _0, _1, _2, _3, _4);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function segment(__self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch, _0:String):Segment {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension.segment(__self__, _0);
    }
    public static function section(__self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch, _0:String):Section {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension.section(__self__, _0);
    }
    public static function importedSymbols(__self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension.importedSymbols(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function importedLibraries(__self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension.importedLibraries(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function dWARF(__self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_data.Data, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension.dWARF(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch):stdgo.Error {
        return stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension.close(__self__);
    }
}
typedef FilePointer = stdgo._internal.debug.macho.Macho_filepointer.FilePointer;
class File_static_extension {
    static public function importedLibraries(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension.importedLibraries(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importedSymbols(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension.importedSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dWARF(_f:File):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_data.Data, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension.dWARF(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function section(_f:File, _name:String):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension.section(_f, _name);
    }
    static public function segment(_f:File, _name:String):Segment {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension.segment(_f, _name);
    }
    static public function _pushSection(_f:File, _sh:Section, _r:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        final _sh = (_sh : stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>);
        return stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension._pushSection(_f, _sh, _r);
    }
    static public function _parseSymtab(_f:File, _symdat:Array<std.UInt>, _strtab:Array<std.UInt>, _cmddat:Array<std.UInt>, _hdr:SymtabCmd, _offset:haxe.Int64):stdgo.Tuple<Symtab, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        final _symdat = ([for (i in _symdat) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _strtab = ([for (i in _strtab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _cmddat = ([for (i in _cmddat) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension._parseSymtab(_f, _symdat, _strtab, _cmddat, _hdr, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        return stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension.close(_f);
    }
}
typedef SegmentHeaderPointer = stdgo._internal.debug.macho.Macho_segmentheaderpointer.SegmentHeaderPointer;
class SegmentHeader_static_extension {

}
typedef SegmentPointer = stdgo._internal.debug.macho.Macho_segmentpointer.SegmentPointer;
class Segment_static_extension {
    static public function open(_s:Segment):stdgo._internal.io.Io_readseeker.ReadSeeker {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>);
        return stdgo._internal.debug.macho.Macho_segment_static_extension.Segment_static_extension.open(_s);
    }
    static public function data(_s:Segment):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_segment_static_extension.Segment_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.macho.Macho_segment.Segment, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.macho.Macho_segment_static_extension.Segment_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_segment.Segment):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_segment_static_extension.Segment_static_extension.raw(__self__)) i];
    }
}
typedef SectionHeaderPointer = stdgo._internal.debug.macho.Macho_sectionheaderpointer.SectionHeaderPointer;
class SectionHeader_static_extension {

}
typedef RelocPointer = stdgo._internal.debug.macho.Macho_relocpointer.RelocPointer;
class Reloc_static_extension {

}
typedef SectionPointer = stdgo._internal.debug.macho.Macho_sectionpointer.SectionPointer;
class Section_static_extension {
    static public function open(_s:Section):stdgo._internal.io.Io_readseeker.ReadSeeker {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>);
        return stdgo._internal.debug.macho.Macho_section_static_extension.Section_static_extension.open(_s);
    }
    static public function data(_s:Section):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_section_static_extension.Section_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.macho.Macho_section.Section, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.macho.Macho_section_static_extension.Section_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef DylibPointer = stdgo._internal.debug.macho.Macho_dylibpointer.DylibPointer;
class Dylib_static_extension {
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_dylib.Dylib):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_dylib_static_extension.Dylib_static_extension.raw(__self__)) i];
    }
}
typedef SymtabPointer = stdgo._internal.debug.macho.Macho_symtabpointer.SymtabPointer;
class Symtab_static_extension {
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_symtab.Symtab):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_symtab_static_extension.Symtab_static_extension.raw(__self__)) i];
    }
}
typedef DysymtabPointer = stdgo._internal.debug.macho.Macho_dysymtabpointer.DysymtabPointer;
class Dysymtab_static_extension {
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_dysymtab_static_extension.Dysymtab_static_extension.raw(__self__)) i];
    }
}
typedef RpathPointer = stdgo._internal.debug.macho.Macho_rpathpointer.RpathPointer;
class Rpath_static_extension {
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_rpath.Rpath):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_rpath_static_extension.Rpath_static_extension.raw(__self__)) i];
    }
}
typedef SymbolPointer = stdgo._internal.debug.macho.Macho_symbolpointer.SymbolPointer;
class Symbol_static_extension {

}
typedef FormatErrorPointer = stdgo._internal.debug.macho.Macho_formaterrorpointer.FormatErrorPointer;
class FormatError_static_extension {
    static public function error(_e:FormatError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>);
        return stdgo._internal.debug.macho.Macho_formaterror_static_extension.FormatError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_relocInfoPointer = stdgo._internal.debug.macho.Macho_t_relocinfopointer.T_relocInfoPointer;
@:dox(hide) class T_relocInfo_static_extension {

}
typedef FileHeaderPointer = stdgo._internal.debug.macho.Macho_fileheaderpointer.FileHeaderPointer;
class FileHeader_static_extension {

}
typedef Segment32Pointer = stdgo._internal.debug.macho.Macho_segment32pointer.Segment32Pointer;
class Segment32_static_extension {

}
typedef Segment64Pointer = stdgo._internal.debug.macho.Macho_segment64pointer.Segment64Pointer;
class Segment64_static_extension {

}
typedef SymtabCmdPointer = stdgo._internal.debug.macho.Macho_symtabcmdpointer.SymtabCmdPointer;
class SymtabCmd_static_extension {

}
typedef DysymtabCmdPointer = stdgo._internal.debug.macho.Macho_dysymtabcmdpointer.DysymtabCmdPointer;
class DysymtabCmd_static_extension {

}
typedef DylibCmdPointer = stdgo._internal.debug.macho.Macho_dylibcmdpointer.DylibCmdPointer;
class DylibCmd_static_extension {

}
typedef RpathCmdPointer = stdgo._internal.debug.macho.Macho_rpathcmdpointer.RpathCmdPointer;
class RpathCmd_static_extension {

}
typedef ThreadPointer = stdgo._internal.debug.macho.Macho_threadpointer.ThreadPointer;
class Thread_static_extension {

}
typedef Section32Pointer = stdgo._internal.debug.macho.Macho_section32pointer.Section32Pointer;
class Section32_static_extension {

}
typedef Section64Pointer = stdgo._internal.debug.macho.Macho_section64pointer.Section64Pointer;
class Section64_static_extension {

}
typedef Nlist32Pointer = stdgo._internal.debug.macho.Macho_nlist32pointer.Nlist32Pointer;
class Nlist32_static_extension {

}
typedef Nlist64Pointer = stdgo._internal.debug.macho.Macho_nlist64pointer.Nlist64Pointer;
class Nlist64_static_extension {

}
typedef Regs386Pointer = stdgo._internal.debug.macho.Macho_regs386pointer.Regs386Pointer;
class Regs386_static_extension {

}
typedef RegsAMD64Pointer = stdgo._internal.debug.macho.Macho_regsamd64pointer.RegsAMD64Pointer;
class RegsAMD64_static_extension {

}
@:dox(hide) typedef T_intNamePointer = stdgo._internal.debug.macho.Macho_t_intnamepointer.T_intNamePointer;
@:dox(hide) class T_intName_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.debug.macho.Macho_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef LoadBytesPointer = stdgo._internal.debug.macho.Macho_loadbytespointer.LoadBytesPointer;
class LoadBytes_static_extension {
    static public function raw(_b:LoadBytes):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_loadbytes_static_extension.LoadBytes_static_extension.raw(_b)) i];
    }
}
typedef Type_Pointer = stdgo._internal.debug.macho.Macho_type_pointer.Type_Pointer;
class Type__static_extension {
    static public function goString(_t:Type_):String {
        return stdgo._internal.debug.macho.Macho_type__static_extension.Type__static_extension.goString(_t);
    }
    static public function string(_t:Type_):String {
        return stdgo._internal.debug.macho.Macho_type__static_extension.Type__static_extension.string(_t);
    }
}
typedef CpuPointer = stdgo._internal.debug.macho.Macho_cpupointer.CpuPointer;
class Cpu_static_extension {
    static public function goString(_i:Cpu):String {
        return stdgo._internal.debug.macho.Macho_cpu_static_extension.Cpu_static_extension.goString(_i);
    }
    static public function string(_i:Cpu):String {
        return stdgo._internal.debug.macho.Macho_cpu_static_extension.Cpu_static_extension.string(_i);
    }
}
typedef LoadCmdPointer = stdgo._internal.debug.macho.Macho_loadcmdpointer.LoadCmdPointer;
class LoadCmd_static_extension {
    static public function goString(_i:LoadCmd):String {
        return stdgo._internal.debug.macho.Macho_loadcmd_static_extension.LoadCmd_static_extension.goString(_i);
    }
    static public function string(_i:LoadCmd):String {
        return stdgo._internal.debug.macho.Macho_loadcmd_static_extension.LoadCmd_static_extension.string(_i);
    }
}
typedef RelocTypeGenericPointer = stdgo._internal.debug.macho.Macho_reloctypegenericpointer.RelocTypeGenericPointer;
class RelocTypeGeneric_static_extension {
    static public function string(_i:RelocTypeGeneric):String {
        return stdgo._internal.debug.macho.Macho_reloctypegeneric_static_extension.RelocTypeGeneric_static_extension.string(_i);
    }
    static public function goString(_r:RelocTypeGeneric):String {
        return stdgo._internal.debug.macho.Macho_reloctypegeneric_static_extension.RelocTypeGeneric_static_extension.goString(_r);
    }
}
typedef RelocTypeX86_64Pointer = stdgo._internal.debug.macho.Macho_reloctypex86_64pointer.RelocTypeX86_64Pointer;
class RelocTypeX86_64_static_extension {
    static public function string(_i:RelocTypeX86_64):String {
        return stdgo._internal.debug.macho.Macho_reloctypex86_64_static_extension.RelocTypeX86_64_static_extension.string(_i);
    }
    static public function goString(_r:RelocTypeX86_64):String {
        return stdgo._internal.debug.macho.Macho_reloctypex86_64_static_extension.RelocTypeX86_64_static_extension.goString(_r);
    }
}
typedef RelocTypeARMPointer = stdgo._internal.debug.macho.Macho_reloctypearmpointer.RelocTypeARMPointer;
class RelocTypeARM_static_extension {
    static public function string(_i:RelocTypeARM):String {
        return stdgo._internal.debug.macho.Macho_reloctypearm_static_extension.RelocTypeARM_static_extension.string(_i);
    }
    static public function goString(_r:RelocTypeARM):String {
        return stdgo._internal.debug.macho.Macho_reloctypearm_static_extension.RelocTypeARM_static_extension.goString(_r);
    }
}
typedef RelocTypeARM64Pointer = stdgo._internal.debug.macho.Macho_reloctypearm64pointer.RelocTypeARM64Pointer;
class RelocTypeARM64_static_extension {
    static public function string(_i:RelocTypeARM64):String {
        return stdgo._internal.debug.macho.Macho_reloctypearm64_static_extension.RelocTypeARM64_static_extension.string(_i);
    }
    static public function goString(_r:RelocTypeARM64):String {
        return stdgo._internal.debug.macho.Macho_reloctypearm64_static_extension.RelocTypeARM64_static_extension.goString(_r);
    }
}
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
    static public inline function newFatFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Tuple<FatFile, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_newfatfile.newFatFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * OpenFat opens the named file using os.Open and prepares it for use as a Mach-O
        * universal binary.
    **/
    static public inline function openFat(_name:String):stdgo.Tuple<FatFile, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.macho.Macho_openfat.openFat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Open opens the named file using os.Open and prepares it for use as a Mach-O binary.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.macho.Macho_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewFile creates a new File for accessing a Mach-O binary in an underlying reader.
        * The Mach-O binary is expected to start at position 0 in the ReaderAt.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_newfile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
