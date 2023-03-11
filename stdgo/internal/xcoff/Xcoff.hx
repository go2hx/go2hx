package stdgo.internal.xcoff;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package xcoff implements access to XCOFF (Extended Common Object File Format) files.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
final saiamag = (8i64 : GoUInt64);
/**
    
    
    
**/
final aiafmag = ("`\n" : GoString);
/**
    
    
    
**/
final aiamag = ("<aiaff>\n" : GoString);
/**
    
    
    
**/
final aiamagbig = ("<bigaf>\n" : GoString);
/**
    // Sizeof
    
    
**/
final fl_HSZ_BIG = (128i64 : GoUInt64);
/**
    
    
    
**/
final ar_HSZ_BIG = (112i64 : GoUInt64);
/**
    
    
    
**/
final filhsz_32 = (20i64 : GoUInt64);
/**
    
    
    
**/
final filhsz_64 = (24i64 : GoUInt64);
/**
    
    
    // AIX 32-bit XCOFF
**/
final u802tocmagic = (479i64 : GoUInt64);
/**
    
    
    // AIX 64-bit XCOFF
**/
final u64_TOCMAGIC = (503i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_RELFLG = (1i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_EXEC = (2i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_LNNO = (4i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_FDPR_PROF = (16i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_FDPR_OPTI = (32i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_DSA = (64i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_VARPG = (256i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_DYNLOAD = (4096i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_SHROBJ = (8192i64 : GoUInt64);
/**
    // Flags that describe the type of the object file.
    
    
**/
final f_LOADONLY = (16384i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_DWARF = (16i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_TEXT = (32i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_DATA = (64i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_BSS = (128i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_EXCEPT = (256i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_INFO = (512i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_TDATA = (1024i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_TBSS = (2048i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_LOADER = (4096i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_DEBUG = (8192i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_TYPCHK = (16384i64 : GoUInt64);
/**
    // Flags defining the section type.
    
    
**/
final styp_OVRFLO = (32768i64 : GoUInt64);
/**
    
    
    // DWARF info section
**/
final ssubtyp_DWINFO = (65536i64 : GoUInt64);
/**
    
    
    // DWARF line-number section
**/
final ssubtyp_DWLINE = (131072i64 : GoUInt64);
/**
    
    
    // DWARF public names section
**/
final ssubtyp_DWPBNMS = (196608i64 : GoUInt64);
/**
    
    
    // DWARF public types section
**/
final ssubtyp_DWPBTYP = (262144i64 : GoUInt64);
/**
    
    
    // DWARF aranges section
**/
final ssubtyp_DWARNGE = (327680i64 : GoUInt64);
/**
    
    
    // DWARF abbreviation section
**/
final ssubtyp_DWABREV = (393216i64 : GoUInt64);
/**
    
    
    // DWARF strings section
**/
final ssubtyp_DWSTR = (458752i64 : GoUInt64);
/**
    
    
    // DWARF ranges section
**/
final ssubtyp_DWRNGES = (524288i64 : GoUInt64);
/**
    
    
    // DWARF location lists section
**/
final ssubtyp_DWLOC = (589824i64 : GoUInt64);
/**
    
    
    // DWARF frames section
**/
final ssubtyp_DWFRAME = (655360i64 : GoUInt64);
/**
    
    
    // DWARF macros section
**/
final ssubtyp_DWMAC = (720896i64 : GoUInt64);
/**
    
    
    
**/
final symesz = (18i64 : GoUInt64);
/**
    // Nscnum
    
    
**/
final n_DEBUG = (0i64 : GoUInt64);
/**
    
    
    
**/
final n_ABS = (0i64 : GoUInt64);
/**
    
    
    
**/
final n_UNDEF = (0i64 : GoUInt64);
/**
    //Ntype
    
    
**/
final sym_V_INTERNAL = (4096i64 : GoUInt64);
/**
    
    
    
**/
final sym_V_HIDDEN = (8192i64 : GoUInt64);
/**
    
    
    
**/
final sym_V_PROTECTED = (12288i64 : GoUInt64);
/**
    
    
    
**/
final sym_V_EXPORTED = (16384i64 : GoUInt64);
/**
    
    
    // is function
**/
final sym_TYPE_FUNC = (32i64 : GoUInt64);
/**
    // Storage Class.
    
    // Symbol table entry marked for deletion
**/
final c_NULL = (0i64 : GoUInt64);
/**
    // Storage Class.
    
    // External symbol
**/
final c_EXT = (2i64 : GoUInt64);
/**
    // Storage Class.
    
    // Static symbol
**/
final c_STAT = (3i64 : GoUInt64);
/**
    // Storage Class.
    
    // Beginning or end of inner block
**/
final c_BLOCK = (100i64 : GoUInt64);
/**
    // Storage Class.
    
    // Beginning or end of function
**/
final c_FCN = (101i64 : GoUInt64);
/**
    // Storage Class.
    
    // Source file name and compiler information
**/
final c_FILE = (103i64 : GoUInt64);
/**
    // Storage Class.
    
    // Unnamed external symbol
**/
final c_HIDEXT = (107i64 : GoUInt64);
/**
    // Storage Class.
    
    // Beginning of include file
**/
final c_BINCL = (108i64 : GoUInt64);
/**
    // Storage Class.
    
    // End of include file
**/
final c_EINCL = (109i64 : GoUInt64);
/**
    // Storage Class.
    
    // Weak external symbol
**/
final c_WEAKEXT = (111i64 : GoUInt64);
/**
    // Storage Class.
    
    // DWARF symbol
**/
final c_DWARF = (112i64 : GoUInt64);
/**
    // Storage Class.
    
    // Global variable
**/
final c_GSYM = (128i64 : GoUInt64);
/**
    // Storage Class.
    
    // Automatic variable allocated on stack
**/
final c_LSYM = (129i64 : GoUInt64);
/**
    // Storage Class.
    
    // Argument to subroutine allocated on stack
**/
final c_PSYM = (130i64 : GoUInt64);
/**
    // Storage Class.
    
    // Register variable
**/
final c_RSYM = (131i64 : GoUInt64);
/**
    // Storage Class.
    
    // Argument to function or procedure stored in register
**/
final c_RPSYM = (132i64 : GoUInt64);
/**
    // Storage Class.
    
    // Statically allocated symbol
**/
final c_STSYM = (133i64 : GoUInt64);
/**
    // Storage Class.
    
    // Beginning of common block
**/
final c_BCOMM = (135i64 : GoUInt64);
/**
    // Storage Class.
    
    // Local member of common block
**/
final c_ECOML = (136i64 : GoUInt64);
/**
    // Storage Class.
    
    // End of common block
**/
final c_ECOMM = (137i64 : GoUInt64);
/**
    // Storage Class.
    
    // Declaration of object
**/
final c_DECL = (140i64 : GoUInt64);
/**
    // Storage Class.
    
    // Alternate entry
**/
final c_ENTRY = (141i64 : GoUInt64);
/**
    // Storage Class.
    
    // Function or procedure
**/
final c_FUN = (142i64 : GoUInt64);
/**
    // Storage Class.
    
    // Beginning of static block
**/
final c_BSTAT = (143i64 : GoUInt64);
/**
    // Storage Class.
    
    // End of static block
**/
final c_ESTAT = (144i64 : GoUInt64);
/**
    // Storage Class.
    
    // Global thread-local variable
**/
final c_GTLS = (145i64 : GoUInt64);
/**
    // Storage Class.
    
    // Static thread-local variable
**/
final c_STTLS = (146i64 : GoUInt64);
/**
    // Auxiliary type
    
    
**/
private final __AUX_EXCEPT = (255i64 : GoUInt64);
/**
    // Auxiliary type
    
    
**/
private final __AUX_FCN = (254i64 : GoUInt64);
/**
    // Auxiliary type
    
    
**/
private final __AUX_SYM = (253i64 : GoUInt64);
/**
    // Auxiliary type
    
    
**/
private final __AUX_FILE = (252i64 : GoUInt64);
/**
    // Auxiliary type
    
    
**/
private final __AUX_CSECT = (251i64 : GoUInt64);
/**
    // Auxiliary type
    
    
**/
private final __AUX_SECT = (250i64 : GoUInt64);
/**
    // Symbol type field.
    
    // External reference
**/
final xty_ER = (0i64 : GoUInt64);
/**
    // Symbol type field.
    
    // Section definition
**/
final xty_SD = (1i64 : GoUInt64);
/**
    // Symbol type field.
    
    // Label definition
**/
final xty_LD = (2i64 : GoUInt64);
/**
    // Symbol type field.
    
    // Common csect definition
**/
final xty_CM = (3i64 : GoUInt64);
/**
    // Defines for File auxiliary definitions: x_ftype field of x_file
    
    // Source File Name
**/
final xft_FN = (0i64 : GoUInt64);
/**
    // Defines for File auxiliary definitions: x_ftype field of x_file
    
    // Compile Time Stamp
**/
final xft_CT = (1i64 : GoUInt64);
/**
    // Defines for File auxiliary definitions: x_ftype field of x_file
    
    // Compiler Version Number
**/
final xft_CV = (2i64 : GoUInt64);
/**
    // Defines for File auxiliary definitions: x_ftype field of x_file
    
    // Compiler Defined Information
**/
final xft_CD = (128i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Program code
**/
final xmc_PR = (0i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Read-only constant
**/
final xmc_RO = (1i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Debug dictionary table
**/
final xmc_DB = (2i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // TOC entry
**/
final xmc_TC = (3i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Unclassified
**/
final xmc_UA = (4i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Read/Write data
**/
final xmc_RW = (5i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Global linkage
**/
final xmc_GL = (6i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Extended operation
**/
final xmc_XO = (7i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // 32-bit supervisor call descriptor
**/
final xmc_SV = (8i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // BSS class
**/
final xmc_BS = (9i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Function descriptor
**/
final xmc_DS = (10i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Unnamed FORTRAN common
**/
final xmc_UC = (11i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // TOC anchor
**/
final xmc_TC0 = (15i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Scalar data entry in the TOC
**/
final xmc_TD = (16i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // 64-bit supervisor call descriptor
**/
final xmc_SV64 = (17i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Supervisor call descriptor for both 32-bit and 64-bit
**/
final xmc_SV3264 = (18i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Read/Write thread-local data
**/
final xmc_TL = (20i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // Read/Write thread-local data (.tbss)
**/
final xmc_UL = (21i64 : GoUInt64);
/**
    // Storage-mapping class.
    
    // TOC entry
**/
final xmc_TE = (22i64 : GoUInt64);
/**
    
    
    
**/
final ldhdrsz_32 = (32i64 : GoUInt64);
/**
    
    
    
**/
final ldhdrsz_64 = (56i64 : GoUInt64);
/**
    
    
    // A(sym) Positive Relocation
**/
final r_POS = (0i64 : GoUInt64);
/**
    
    
    // -A(sym) Negative Relocation
**/
final r_NEG = (1i64 : GoUInt64);
/**
    
    
    // A(sym-*) Relative to self
**/
final r_REL = (2i64 : GoUInt64);
/**
    
    
    // A(sym-TOC) Relative to TOC
**/
final r_TOC = (3i64 : GoUInt64);
/**
    
    
    // A(sym-TOC) TOC Relative indirect load.
**/
final r_TRL = (18i64 : GoUInt64);
/**
    
    
    // A(sym-TOC) TOC Rel load address. modifiable inst
**/
final r_TRLA = (19i64 : GoUInt64);
/**
    
    
    // A(external TOC of sym) Global Linkage
**/
final r_GL = (5i64 : GoUInt64);
/**
    
    
    // A(local TOC of sym) Local object TOC address
**/
final r_TCL = (6i64 : GoUInt64);
/**
    
    
    // A(sym) Pos indirect load. modifiable instruction
**/
final r_RL = (12i64 : GoUInt64);
/**
    
    
    // A(sym) Pos Load Address. modifiable instruction
**/
final r_RLA = (13i64 : GoUInt64);
/**
    
    
    // AL0(sym) Non relocating ref. No garbage collect
**/
final r_REF = (15i64 : GoUInt64);
/**
    
    
    // A(sym) Branch absolute. Cannot modify instruction
**/
final r_BA = (8i64 : GoUInt64);
/**
    
    
    // A(sym) Branch absolute. modifiable instruction
**/
final r_RBA = (24i64 : GoUInt64);
/**
    
    
    // A(sym-*) Branch rel to self. non modifiable
**/
final r_BR = (10i64 : GoUInt64);
/**
    
    
    // A(sym-*) Branch rel to self. modifiable instr
**/
final r_RBR = (26i64 : GoUInt64);
/**
    
    
    // General-dynamic reference to TLS symbol
**/
final r_TLS = (32i64 : GoUInt64);
/**
    
    
    // Initial-exec reference to TLS symbol
**/
final r_TLS_IE = (33i64 : GoUInt64);
/**
    
    
    // Local-dynamic reference to TLS symbol
**/
final r_TLS_LD = (34i64 : GoUInt64);
/**
    
    
    // Local-exec reference to TLS symbol
**/
final r_TLS_LE = (35i64 : GoUInt64);
/**
    
    
    // Module reference to TLS symbol
**/
final r_TLSM = (36i64 : GoUInt64);
/**
    
    
    // Module reference to local (own) module
**/
final r_TLSML = (37i64 : GoUInt64);
/**
    
    
    // Relative to TOC - high order bits
**/
final r_TOCU = (48i64 : GoUInt64);
/**
    
    
    // Relative to TOC - low order bits
**/
final r_TOCL = (49i64 : GoUInt64);
/**
    
    
    
**/
@:structInit @:private class T_bigarFileHeader {
    public var flmagic : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
    public var flmemoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public var flgstoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public var flgst64off : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public var flfstmoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public var fllstmoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public var flfreeoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public function new(?flmagic:GoArray<GoUInt8>, ?flmemoff:GoArray<GoUInt8>, ?flgstoff:GoArray<GoUInt8>, ?flgst64off:GoArray<GoUInt8>, ?flfstmoff:GoArray<GoUInt8>, ?fllstmoff:GoArray<GoUInt8>, ?flfreeoff:GoArray<GoUInt8>) {
        if (flmagic != null) this.flmagic = flmagic;
        if (flmemoff != null) this.flmemoff = flmemoff;
        if (flgstoff != null) this.flgstoff = flgstoff;
        if (flgst64off != null) this.flgst64off = flgst64off;
        if (flfstmoff != null) this.flfstmoff = flfstmoff;
        if (fllstmoff != null) this.fllstmoff = fllstmoff;
        if (flfreeoff != null) this.flfreeoff = flfreeoff;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_bigarFileHeader(flmagic, flmemoff, flgstoff, flgst64off, flfstmoff, fllstmoff, flfreeoff);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_bigarMemberHeader {
    public var arsize : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public var arnxtmem : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public var arprvmem : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
    public var ardate : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) (0 : GoUInt8)]);
    public var aruid : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) (0 : GoUInt8)]);
    public var argid : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) (0 : GoUInt8)]);
    public var armode : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) (0 : GoUInt8)]);
    public var arnamlen : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
    public function new(?arsize:GoArray<GoUInt8>, ?arnxtmem:GoArray<GoUInt8>, ?arprvmem:GoArray<GoUInt8>, ?ardate:GoArray<GoUInt8>, ?aruid:GoArray<GoUInt8>, ?argid:GoArray<GoUInt8>, ?armode:GoArray<GoUInt8>, ?arnamlen:GoArray<GoUInt8>) {
        if (arsize != null) this.arsize = arsize;
        if (arnxtmem != null) this.arnxtmem = arnxtmem;
        if (arprvmem != null) this.arprvmem = arprvmem;
        if (ardate != null) this.ardate = ardate;
        if (aruid != null) this.aruid = aruid;
        if (argid != null) this.argid = argid;
        if (armode != null) this.armode = armode;
        if (arnamlen != null) this.arnamlen = arnamlen;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_bigarMemberHeader(arsize, arnxtmem, arprvmem, ardate, aruid, argid, armode, arnamlen);
    }
}
/**
    // Archive represents an open AIX big archive.
    
    
**/
@:structInit @:using(internal.xcoff.Xcoff.Archive_static_extension) class Archive {
    @:embedded
    public var archiveHeader : internal.xcoff.Xcoff.ArchiveHeader = ({} : internal.xcoff.Xcoff.ArchiveHeader);
    public var members : Slice<Ref<internal.xcoff.Xcoff.Member>> = (null : Slice<Ref<internal.xcoff.Xcoff.Member>>);
    public var _closer : stdgo.io.Io.Closer = (null : stdgo.io.Io.Closer);
    public function new(?archiveHeader:internal.xcoff.Xcoff.ArchiveHeader, ?members:Slice<Ref<internal.xcoff.Xcoff.Member>>, ?_closer:stdgo.io.Io.Closer) {
        if (archiveHeader != null) this.archiveHeader = archiveHeader;
        if (members != null) this.members = members;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Archive(archiveHeader, members, _closer);
    }
}
/**
    // MemberHeader holds information about a big archive file header
    
    
**/
@:structInit class ArchiveHeader {
    public var _magic : GoString = "";
    public function new(?_magic:GoString) {
        if (_magic != null) this._magic = _magic;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ArchiveHeader(_magic);
    }
}
/**
    // Member represents a member of an AIX big archive.
    
    
**/
@:structInit @:using(internal.xcoff.Xcoff.Member_static_extension) class Member {
    @:embedded
    public var memberHeader : internal.xcoff.Xcoff.MemberHeader = ({} : internal.xcoff.Xcoff.MemberHeader);
    public var _sr : Ref<stdgo.io.Io.SectionReader> = (null : Ref<stdgo.io.Io.SectionReader>);
    public function new(?memberHeader:internal.xcoff.Xcoff.MemberHeader, ?_sr:Ref<stdgo.io.Io.SectionReader>) {
        if (memberHeader != null) this.memberHeader = memberHeader;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Member(memberHeader, _sr);
    }
}
/**
    // MemberHeader holds information about a big archive member
    
    
**/
@:structInit class MemberHeader {
    public var name : GoString = "";
    public var size : GoUInt64 = 0;
    public function new(?name:GoString, ?size:GoUInt64) {
        if (name != null) this.name = name;
        if (size != null) this.size = size;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new MemberHeader(name, size);
    }
}
/**
    // SectionHeader holds information about an XCOFF section header.
    
    
**/
@:structInit class SectionHeader {
    public var name : GoString = "";
    public var virtualAddress : GoUInt64 = 0;
    public var size : GoUInt64 = 0;
    public var type : GoUInt32 = 0;
    public var relptr : GoUInt64 = 0;
    public var nreloc : GoUInt32 = 0;
    public function new(?name:GoString, ?virtualAddress:GoUInt64, ?size:GoUInt64, ?type:GoUInt32, ?relptr:GoUInt64, ?nreloc:GoUInt32) {
        if (name != null) this.name = name;
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (size != null) this.size = size;
        if (type != null) this.type = type;
        if (relptr != null) this.relptr = relptr;
        if (nreloc != null) this.nreloc = nreloc;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader(name, virtualAddress, size, type, relptr, nreloc);
    }
}
/**
    
    
    
**/
@:structInit @:using(internal.xcoff.Xcoff.Section_static_extension) class Section {
    @:embedded
    public var sectionHeader : internal.xcoff.Xcoff.SectionHeader = ({} : internal.xcoff.Xcoff.SectionHeader);
    public var relocs : Slice<internal.xcoff.Xcoff.Reloc> = (null : Slice<internal.xcoff.Xcoff.Reloc>);
    @:embedded
    public var readerAt : stdgo.io.Io.ReaderAt = (null : stdgo.io.Io.ReaderAt);
    public var _sr : Ref<stdgo.io.Io.SectionReader> = (null : Ref<stdgo.io.Io.SectionReader>);
    public function new(?sectionHeader:internal.xcoff.Xcoff.SectionHeader, ?relocs:Slice<internal.xcoff.Xcoff.Reloc>, ?readerAt:stdgo.io.Io.ReaderAt, ?_sr:Ref<stdgo.io.Io.SectionReader>) {
        if (sectionHeader != null) this.sectionHeader = sectionHeader;
        if (relocs != null) this.relocs = relocs;
        if (readerAt != null) this.readerAt = readerAt;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return readerAt.readAt(_p, _off);
    public function __copy__() {
        return new Section(sectionHeader, relocs, readerAt, _sr);
    }
}
/**
    // AuxiliaryCSect holds information about an XCOFF symbol in an AUX_CSECT entry.
    
    
**/
@:structInit class AuxiliaryCSect {
    public var length_ : GoInt64 = 0;
    public var storageMappingClass : GoInt = 0;
    public var symbolType : GoInt = 0;
    public function new(?length_:GoInt64, ?storageMappingClass:GoInt, ?symbolType:GoInt) {
        if (length_ != null) this.length_ = length_;
        if (storageMappingClass != null) this.storageMappingClass = storageMappingClass;
        if (symbolType != null) this.symbolType = symbolType;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AuxiliaryCSect(length_, storageMappingClass, symbolType);
    }
}
/**
    // AuxiliaryFcn holds information about an XCOFF symbol in an AUX_FCN entry.
    
    
**/
@:structInit class AuxiliaryFcn {
    public var size : GoInt64 = 0;
    public function new(?size:GoInt64) {
        if (size != null) this.size = size;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AuxiliaryFcn(size);
    }
}
/**
    
    
    
**/
@:structInit class Symbol {
    public var name : GoString = "";
    public var value : GoUInt64 = 0;
    public var sectionNumber : GoInt = 0;
    public var storageClass : GoInt = 0;
    public var auxFcn : internal.xcoff.Xcoff.AuxiliaryFcn = ({} : internal.xcoff.Xcoff.AuxiliaryFcn);
    public var auxCSect : internal.xcoff.Xcoff.AuxiliaryCSect = ({} : internal.xcoff.Xcoff.AuxiliaryCSect);
    public function new(?name:GoString, ?value:GoUInt64, ?sectionNumber:GoInt, ?storageClass:GoInt, ?auxFcn:internal.xcoff.Xcoff.AuxiliaryFcn, ?auxCSect:internal.xcoff.Xcoff.AuxiliaryCSect) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (sectionNumber != null) this.sectionNumber = sectionNumber;
        if (storageClass != null) this.storageClass = storageClass;
        if (auxFcn != null) this.auxFcn = auxFcn;
        if (auxCSect != null) this.auxCSect = auxCSect;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Symbol(name, value, sectionNumber, storageClass, auxFcn, auxCSect);
    }
}
/**
    
    
    
**/
@:structInit class Reloc {
    public var virtualAddress : GoUInt64 = 0;
    public var symbol : Ref<internal.xcoff.Xcoff.Symbol> = (null : Ref<internal.xcoff.Xcoff.Symbol>);
    public var signed : Bool = false;
    public var instructionFixed : Bool = false;
    public var length_ : GoUInt8 = 0;
    public var type : GoUInt8 = 0;
    public function new(?virtualAddress:GoUInt64, ?symbol:Ref<internal.xcoff.Xcoff.Symbol>, ?signed:Bool, ?instructionFixed:Bool, ?length_:GoUInt8, ?type:GoUInt8) {
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (symbol != null) this.symbol = symbol;
        if (signed != null) this.signed = signed;
        if (instructionFixed != null) this.instructionFixed = instructionFixed;
        if (length_ != null) this.length_ = length_;
        if (type != null) this.type = type;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Reloc(virtualAddress, symbol, signed, instructionFixed, length_, type);
    }
}
/**
    // ImportedSymbol holds information about an imported XCOFF symbol.
    
    
**/
@:structInit class ImportedSymbol {
    public var name : GoString = "";
    public var library : GoString = "";
    public function new(?name:GoString, ?library:GoString) {
        if (name != null) this.name = name;
        if (library != null) this.library = library;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ImportedSymbol(name, library);
    }
}
/**
    // FileHeader holds information about an XCOFF file header.
    
    
**/
@:structInit class FileHeader {
    public var targetMachine : GoUInt16 = 0;
    public function new(?targetMachine:GoUInt16) {
        if (targetMachine != null) this.targetMachine = targetMachine;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(targetMachine);
    }
}
/**
    // A File represents an open XCOFF file.
    
    
**/
@:structInit @:using(internal.xcoff.Xcoff.File_static_extension) class File {
    @:embedded
    public var fileHeader : internal.xcoff.Xcoff.FileHeader = ({} : internal.xcoff.Xcoff.FileHeader);
    public var sections : Slice<Ref<internal.xcoff.Xcoff.Section>> = (null : Slice<Ref<internal.xcoff.Xcoff.Section>>);
    public var symbols : Slice<Ref<internal.xcoff.Xcoff.Symbol>> = (null : Slice<Ref<internal.xcoff.Xcoff.Symbol>>);
    public var stringTable : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var libraryPaths : Slice<GoString> = (null : Slice<GoString>);
    public var _closer : stdgo.io.Io.Closer = (null : stdgo.io.Io.Closer);
    public function new(?fileHeader:internal.xcoff.Xcoff.FileHeader, ?sections:Slice<Ref<internal.xcoff.Xcoff.Section>>, ?symbols:Slice<Ref<internal.xcoff.Xcoff.Symbol>>, ?stringTable:Slice<GoUInt8>, ?libraryPaths:Slice<GoString>, ?_closer:stdgo.io.Io.Closer) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (sections != null) this.sections = sections;
        if (symbols != null) this.symbols = symbols;
        if (stringTable != null) this.stringTable = stringTable;
        if (libraryPaths != null) this.libraryPaths = libraryPaths;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, sections, symbols, stringTable, libraryPaths, _closer);
    }
}
/**
    // zeroReaderAt is ReaderAt that reads 0s.
    
    
**/
@:structInit @:private @:using(internal.xcoff.Xcoff.T_zeroReaderAt_static_extension) class T_zeroReaderAt {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroReaderAt();
    }
}
/**
    // File Header.
    
    
**/
@:structInit class FileHeader32 {
    public var fmagic : GoUInt16 = 0;
    public var fnscns : GoUInt16 = 0;
    public var ftimedat : GoInt32 = 0;
    public var fsymptr : GoUInt32 = 0;
    public var fnsyms : GoInt32 = 0;
    public var fopthdr : GoUInt16 = 0;
    public var fflags : GoUInt16 = 0;
    public function new(?fmagic:GoUInt16, ?fnscns:GoUInt16, ?ftimedat:GoInt32, ?fsymptr:GoUInt32, ?fnsyms:GoInt32, ?fopthdr:GoUInt16, ?fflags:GoUInt16) {
        if (fmagic != null) this.fmagic = fmagic;
        if (fnscns != null) this.fnscns = fnscns;
        if (ftimedat != null) this.ftimedat = ftimedat;
        if (fsymptr != null) this.fsymptr = fsymptr;
        if (fnsyms != null) this.fnsyms = fnsyms;
        if (fopthdr != null) this.fopthdr = fopthdr;
        if (fflags != null) this.fflags = fflags;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader32(fmagic, fnscns, ftimedat, fsymptr, fnsyms, fopthdr, fflags);
    }
}
/**
    
    
    
**/
@:structInit class FileHeader64 {
    public var fmagic : GoUInt16 = 0;
    public var fnscns : GoUInt16 = 0;
    public var ftimedat : GoInt32 = 0;
    public var fsymptr : GoUInt64 = 0;
    public var fopthdr : GoUInt16 = 0;
    public var fflags : GoUInt16 = 0;
    public var fnsyms : GoInt32 = 0;
    public function new(?fmagic:GoUInt16, ?fnscns:GoUInt16, ?ftimedat:GoInt32, ?fsymptr:GoUInt64, ?fopthdr:GoUInt16, ?fflags:GoUInt16, ?fnsyms:GoInt32) {
        if (fmagic != null) this.fmagic = fmagic;
        if (fnscns != null) this.fnscns = fnscns;
        if (ftimedat != null) this.ftimedat = ftimedat;
        if (fsymptr != null) this.fsymptr = fsymptr;
        if (fopthdr != null) this.fopthdr = fopthdr;
        if (fflags != null) this.fflags = fflags;
        if (fnsyms != null) this.fnsyms = fnsyms;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader64(fmagic, fnscns, ftimedat, fsymptr, fopthdr, fflags, fnsyms);
    }
}
/**
    // Section Header.
    
    
**/
@:structInit class SectionHeader32 {
    public var sname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
    public var spaddr : GoUInt32 = 0;
    public var svaddr : GoUInt32 = 0;
    public var ssize : GoUInt32 = 0;
    public var sscnptr : GoUInt32 = 0;
    public var srelptr : GoUInt32 = 0;
    public var slnnoptr : GoUInt32 = 0;
    public var snreloc : GoUInt16 = 0;
    public var snlnno : GoUInt16 = 0;
    public var sflags : GoUInt32 = 0;
    public function new(?sname:GoArray<GoUInt8>, ?spaddr:GoUInt32, ?svaddr:GoUInt32, ?ssize:GoUInt32, ?sscnptr:GoUInt32, ?srelptr:GoUInt32, ?slnnoptr:GoUInt32, ?snreloc:GoUInt16, ?snlnno:GoUInt16, ?sflags:GoUInt32) {
        if (sname != null) this.sname = sname;
        if (spaddr != null) this.spaddr = spaddr;
        if (svaddr != null) this.svaddr = svaddr;
        if (ssize != null) this.ssize = ssize;
        if (sscnptr != null) this.sscnptr = sscnptr;
        if (srelptr != null) this.srelptr = srelptr;
        if (slnnoptr != null) this.slnnoptr = slnnoptr;
        if (snreloc != null) this.snreloc = snreloc;
        if (snlnno != null) this.snlnno = snlnno;
        if (sflags != null) this.sflags = sflags;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader32(sname, spaddr, svaddr, ssize, sscnptr, srelptr, slnnoptr, snreloc, snlnno, sflags);
    }
}
/**
    
    
    
**/
@:structInit class SectionHeader64 {
    public var sname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
    public var spaddr : GoUInt64 = 0;
    public var svaddr : GoUInt64 = 0;
    public var ssize : GoUInt64 = 0;
    public var sscnptr : GoUInt64 = 0;
    public var srelptr : GoUInt64 = 0;
    public var slnnoptr : GoUInt64 = 0;
    public var snreloc : GoUInt32 = 0;
    public var snlnno : GoUInt32 = 0;
    public var sflags : GoUInt32 = 0;
    public var spad : GoUInt32 = 0;
    public function new(?sname:GoArray<GoUInt8>, ?spaddr:GoUInt64, ?svaddr:GoUInt64, ?ssize:GoUInt64, ?sscnptr:GoUInt64, ?srelptr:GoUInt64, ?slnnoptr:GoUInt64, ?snreloc:GoUInt32, ?snlnno:GoUInt32, ?sflags:GoUInt32, ?spad:GoUInt32) {
        if (sname != null) this.sname = sname;
        if (spaddr != null) this.spaddr = spaddr;
        if (svaddr != null) this.svaddr = svaddr;
        if (ssize != null) this.ssize = ssize;
        if (sscnptr != null) this.sscnptr = sscnptr;
        if (srelptr != null) this.srelptr = srelptr;
        if (slnnoptr != null) this.slnnoptr = slnnoptr;
        if (snreloc != null) this.snreloc = snreloc;
        if (snlnno != null) this.snlnno = snlnno;
        if (sflags != null) this.sflags = sflags;
        if (spad != null) this.spad = spad;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader64(
sname,
spaddr,
svaddr,
ssize,
sscnptr,
srelptr,
slnnoptr,
snreloc,
snlnno,
sflags,
spad);
    }
}
/**
    // Symbol Table Entry.
    
    
**/
@:structInit class SymEnt32 {
    public var nname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
    public var nvalue : GoUInt32 = 0;
    public var nscnum : GoInt16 = 0;
    public var ntype : GoUInt16 = 0;
    public var nsclass : GoInt8 = 0;
    public var nnumaux : GoInt8 = 0;
    public function new(?nname:GoArray<GoUInt8>, ?nvalue:GoUInt32, ?nscnum:GoInt16, ?ntype:GoUInt16, ?nsclass:GoInt8, ?nnumaux:GoInt8) {
        if (nname != null) this.nname = nname;
        if (nvalue != null) this.nvalue = nvalue;
        if (nscnum != null) this.nscnum = nscnum;
        if (ntype != null) this.ntype = ntype;
        if (nsclass != null) this.nsclass = nsclass;
        if (nnumaux != null) this.nnumaux = nnumaux;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SymEnt32(nname, nvalue, nscnum, ntype, nsclass, nnumaux);
    }
}
/**
    
    
    
**/
@:structInit class SymEnt64 {
    public var nvalue : GoUInt64 = 0;
    public var noffset : GoUInt32 = 0;
    public var nscnum : GoInt16 = 0;
    public var ntype : GoUInt16 = 0;
    public var nsclass : GoInt8 = 0;
    public var nnumaux : GoInt8 = 0;
    public function new(?nvalue:GoUInt64, ?noffset:GoUInt32, ?nscnum:GoInt16, ?ntype:GoUInt16, ?nsclass:GoInt8, ?nnumaux:GoInt8) {
        if (nvalue != null) this.nvalue = nvalue;
        if (noffset != null) this.noffset = noffset;
        if (nscnum != null) this.nscnum = nscnum;
        if (ntype != null) this.ntype = ntype;
        if (nsclass != null) this.nsclass = nsclass;
        if (nnumaux != null) this.nnumaux = nnumaux;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SymEnt64(nvalue, noffset, nscnum, ntype, nsclass, nnumaux);
    }
}
/**
    // File Auxiliary Entry
    
    
**/
@:structInit class AuxFile64 {
    public var xfname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
    public var xftype : GoUInt8 = 0;
    public var xauxtype : GoUInt8 = 0;
    public function new(?xfname:GoArray<GoUInt8>, ?xftype:GoUInt8, ?xauxtype:GoUInt8) {
        if (xfname != null) this.xfname = xfname;
        if (xftype != null) this.xftype = xftype;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AuxFile64(xfname, xftype, xauxtype);
    }
}
/**
    // Function Auxiliary Entry
    
    
**/
@:structInit class AuxFcn32 {
    public var xexptr : GoUInt32 = 0;
    public var xfsize : GoUInt32 = 0;
    public var xlnnoptr : GoUInt32 = 0;
    public var xendndx : GoUInt32 = 0;
    public var xpad : GoUInt16 = 0;
    public function new(?xexptr:GoUInt32, ?xfsize:GoUInt32, ?xlnnoptr:GoUInt32, ?xendndx:GoUInt32, ?xpad:GoUInt16) {
        if (xexptr != null) this.xexptr = xexptr;
        if (xfsize != null) this.xfsize = xfsize;
        if (xlnnoptr != null) this.xlnnoptr = xlnnoptr;
        if (xendndx != null) this.xendndx = xendndx;
        if (xpad != null) this.xpad = xpad;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AuxFcn32(xexptr, xfsize, xlnnoptr, xendndx, xpad);
    }
}
/**
    
    
    
**/
@:structInit class AuxFcn64 {
    public var xlnnoptr : GoUInt64 = 0;
    public var xfsize : GoUInt32 = 0;
    public var xendndx : GoUInt32 = 0;
    public var xpad : GoUInt8 = 0;
    public var xauxtype : GoUInt8 = 0;
    public function new(?xlnnoptr:GoUInt64, ?xfsize:GoUInt32, ?xendndx:GoUInt32, ?xpad:GoUInt8, ?xauxtype:GoUInt8) {
        if (xlnnoptr != null) this.xlnnoptr = xlnnoptr;
        if (xfsize != null) this.xfsize = xfsize;
        if (xendndx != null) this.xendndx = xendndx;
        if (xpad != null) this.xpad = xpad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AuxFcn64(xlnnoptr, xfsize, xendndx, xpad, xauxtype);
    }
}
/**
    
    
    
**/
@:structInit class AuxSect64 {
    public var xscnlen : GoUInt64 = 0;
    public var xnreloc : GoUInt64 = 0;
    public var _pad : GoUInt8 = 0;
    public var xauxtype : GoUInt8 = 0;
    public function new(?xscnlen:GoUInt64, ?xnreloc:GoUInt64, ?_pad:GoUInt8, ?xauxtype:GoUInt8) {
        if (xscnlen != null) this.xscnlen = xscnlen;
        if (xnreloc != null) this.xnreloc = xnreloc;
        if (_pad != null) this._pad = _pad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AuxSect64(xscnlen, xnreloc, _pad, xauxtype);
    }
}
/**
    // csect Auxiliary Entry.
    
    
**/
@:structInit class AuxCSect32 {
    public var xscnlen : GoInt32 = 0;
    public var xparmhash : GoUInt32 = 0;
    public var xsnhash : GoUInt16 = 0;
    public var xsmtyp : GoUInt8 = 0;
    public var xsmclas : GoUInt8 = 0;
    public var xstab : GoUInt32 = 0;
    public var xsnstab : GoUInt16 = 0;
    public function new(?xscnlen:GoInt32, ?xparmhash:GoUInt32, ?xsnhash:GoUInt16, ?xsmtyp:GoUInt8, ?xsmclas:GoUInt8, ?xstab:GoUInt32, ?xsnstab:GoUInt16) {
        if (xscnlen != null) this.xscnlen = xscnlen;
        if (xparmhash != null) this.xparmhash = xparmhash;
        if (xsnhash != null) this.xsnhash = xsnhash;
        if (xsmtyp != null) this.xsmtyp = xsmtyp;
        if (xsmclas != null) this.xsmclas = xsmclas;
        if (xstab != null) this.xstab = xstab;
        if (xsnstab != null) this.xsnstab = xsnstab;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AuxCSect32(xscnlen, xparmhash, xsnhash, xsmtyp, xsmclas, xstab, xsnstab);
    }
}
/**
    
    
    
**/
@:structInit class AuxCSect64 {
    public var xscnlenlo : GoUInt32 = 0;
    public var xparmhash : GoUInt32 = 0;
    public var xsnhash : GoUInt16 = 0;
    public var xsmtyp : GoUInt8 = 0;
    public var xsmclas : GoUInt8 = 0;
    public var xscnlenhi : GoInt32 = 0;
    public var xpad : GoUInt8 = 0;
    public var xauxtype : GoUInt8 = 0;
    public function new(?xscnlenlo:GoUInt32, ?xparmhash:GoUInt32, ?xsnhash:GoUInt16, ?xsmtyp:GoUInt8, ?xsmclas:GoUInt8, ?xscnlenhi:GoInt32, ?xpad:GoUInt8, ?xauxtype:GoUInt8) {
        if (xscnlenlo != null) this.xscnlenlo = xscnlenlo;
        if (xparmhash != null) this.xparmhash = xparmhash;
        if (xsnhash != null) this.xsnhash = xsnhash;
        if (xsmtyp != null) this.xsmtyp = xsmtyp;
        if (xsmclas != null) this.xsmclas = xsmclas;
        if (xscnlenhi != null) this.xscnlenhi = xscnlenhi;
        if (xpad != null) this.xpad = xpad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AuxCSect64(xscnlenlo, xparmhash, xsnhash, xsmtyp, xsmclas, xscnlenhi, xpad, xauxtype);
    }
}
/**
    // Loader Header.
    
    
**/
@:structInit class LoaderHeader32 {
    public var lversion : GoInt32 = 0;
    public var lnsyms : GoInt32 = 0;
    public var lnreloc : GoInt32 = 0;
    public var listlen : GoUInt32 = 0;
    public var lnimpid : GoInt32 = 0;
    public var limpoff : GoUInt32 = 0;
    public var lstlen : GoUInt32 = 0;
    public var lstoff : GoUInt32 = 0;
    public function new(?lversion:GoInt32, ?lnsyms:GoInt32, ?lnreloc:GoInt32, ?listlen:GoUInt32, ?lnimpid:GoInt32, ?limpoff:GoUInt32, ?lstlen:GoUInt32, ?lstoff:GoUInt32) {
        if (lversion != null) this.lversion = lversion;
        if (lnsyms != null) this.lnsyms = lnsyms;
        if (lnreloc != null) this.lnreloc = lnreloc;
        if (listlen != null) this.listlen = listlen;
        if (lnimpid != null) this.lnimpid = lnimpid;
        if (limpoff != null) this.limpoff = limpoff;
        if (lstlen != null) this.lstlen = lstlen;
        if (lstoff != null) this.lstoff = lstoff;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new LoaderHeader32(lversion, lnsyms, lnreloc, listlen, lnimpid, limpoff, lstlen, lstoff);
    }
}
/**
    
    
    
**/
@:structInit class LoaderHeader64 {
    public var lversion : GoInt32 = 0;
    public var lnsyms : GoInt32 = 0;
    public var lnreloc : GoInt32 = 0;
    public var listlen : GoUInt32 = 0;
    public var lnimpid : GoInt32 = 0;
    public var lstlen : GoUInt32 = 0;
    public var limpoff : GoUInt64 = 0;
    public var lstoff : GoUInt64 = 0;
    public var lsymoff : GoUInt64 = 0;
    public var lrldoff : GoUInt64 = 0;
    public function new(?lversion:GoInt32, ?lnsyms:GoInt32, ?lnreloc:GoInt32, ?listlen:GoUInt32, ?lnimpid:GoInt32, ?lstlen:GoUInt32, ?limpoff:GoUInt64, ?lstoff:GoUInt64, ?lsymoff:GoUInt64, ?lrldoff:GoUInt64) {
        if (lversion != null) this.lversion = lversion;
        if (lnsyms != null) this.lnsyms = lnsyms;
        if (lnreloc != null) this.lnreloc = lnreloc;
        if (listlen != null) this.listlen = listlen;
        if (lnimpid != null) this.lnimpid = lnimpid;
        if (lstlen != null) this.lstlen = lstlen;
        if (limpoff != null) this.limpoff = limpoff;
        if (lstoff != null) this.lstoff = lstoff;
        if (lsymoff != null) this.lsymoff = lsymoff;
        if (lrldoff != null) this.lrldoff = lrldoff;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new LoaderHeader64(lversion, lnsyms, lnreloc, listlen, lnimpid, lstlen, limpoff, lstoff, lsymoff, lrldoff);
    }
}
/**
    // Loader Symbol.
    
    
**/
@:structInit class LoaderSymbol32 {
    public var lname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
    public var lvalue : GoUInt32 = 0;
    public var lscnum : GoInt16 = 0;
    public var lsmtype : GoInt8 = 0;
    public var lsmclas : GoInt8 = 0;
    public var lifile : GoInt32 = 0;
    public var lparm : GoUInt32 = 0;
    public function new(?lname:GoArray<GoUInt8>, ?lvalue:GoUInt32, ?lscnum:GoInt16, ?lsmtype:GoInt8, ?lsmclas:GoInt8, ?lifile:GoInt32, ?lparm:GoUInt32) {
        if (lname != null) this.lname = lname;
        if (lvalue != null) this.lvalue = lvalue;
        if (lscnum != null) this.lscnum = lscnum;
        if (lsmtype != null) this.lsmtype = lsmtype;
        if (lsmclas != null) this.lsmclas = lsmclas;
        if (lifile != null) this.lifile = lifile;
        if (lparm != null) this.lparm = lparm;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new LoaderSymbol32(lname, lvalue, lscnum, lsmtype, lsmclas, lifile, lparm);
    }
}
/**
    
    
    
**/
@:structInit class LoaderSymbol64 {
    public var lvalue : GoUInt64 = 0;
    public var loffset : GoUInt32 = 0;
    public var lscnum : GoInt16 = 0;
    public var lsmtype : GoInt8 = 0;
    public var lsmclas : GoInt8 = 0;
    public var lifile : GoInt32 = 0;
    public var lparm : GoUInt32 = 0;
    public function new(?lvalue:GoUInt64, ?loffset:GoUInt32, ?lscnum:GoInt16, ?lsmtype:GoInt8, ?lsmclas:GoInt8, ?lifile:GoInt32, ?lparm:GoUInt32) {
        if (lvalue != null) this.lvalue = lvalue;
        if (loffset != null) this.loffset = loffset;
        if (lscnum != null) this.lscnum = lscnum;
        if (lsmtype != null) this.lsmtype = lsmtype;
        if (lsmclas != null) this.lsmclas = lsmclas;
        if (lifile != null) this.lifile = lifile;
        if (lparm != null) this.lparm = lparm;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new LoaderSymbol64(lvalue, loffset, lscnum, lsmtype, lsmclas, lifile, lparm);
    }
}
/**
    
    
    
**/
@:structInit class Reloc32 {
    public var rvaddr : GoUInt32 = 0;
    public var rsymndx : GoUInt32 = 0;
    public var rsize : GoUInt8 = 0;
    public var rtype : GoUInt8 = 0;
    public function new(?rvaddr:GoUInt32, ?rsymndx:GoUInt32, ?rsize:GoUInt8, ?rtype:GoUInt8) {
        if (rvaddr != null) this.rvaddr = rvaddr;
        if (rsymndx != null) this.rsymndx = rsymndx;
        if (rsize != null) this.rsize = rsize;
        if (rtype != null) this.rtype = rtype;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Reloc32(rvaddr, rsymndx, rsize, rtype);
    }
}
/**
    
    
    
**/
@:structInit class Reloc64 {
    public var rvaddr : GoUInt64 = 0;
    public var rsymndx : GoUInt32 = 0;
    public var rsize : GoUInt8 = 0;
    public var rtype : GoUInt8 = 0;
    public function new(?rvaddr:GoUInt64, ?rsymndx:GoUInt32, ?rsize:GoUInt8, ?rtype:GoUInt8) {
        if (rvaddr != null) this.rvaddr = rvaddr;
        if (rsymndx != null) this.rsymndx = rsymndx;
        if (rsize != null) this.rsize = rsize;
        if (rtype != null) this.rtype = rtype;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Reloc64(rvaddr, rsymndx, rsize, rtype);
    }
}
/**
    // OpenArchive opens the named archive using os.Open and prepares it for use
    // as an AIX big archive.
**/
function openArchive(_name:GoString):{ var _0 : Ref<Archive>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_name), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = newArchive(Go.asInterface(_f)), _arch:Ref<internal.xcoff.Xcoff.Archive> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _f.close();
            return { _0 : null, _1 : _err };
        };
        _arch._closer = Go.asInterface(_f);
        return { _0 : _arch, _1 : (null : Error) };
    }
/**
    // NewArchive creates a new Archive for accessing an AIX big archive in an underlying reader.
**/
function newArchive(_r:stdgo.io.Io.ReaderAt):{ var _0 : Ref<Archive>; var _1 : Error; } {
        var _parseDecimalBytes = function(_b:Slice<GoByte>):{ var _0 : GoInt64; var _1 : Error; } {
            return stdgo.strconv.Strconv.parseInt(stdgo.strings.Strings.trimSpace((_b : GoString)), (10 : GoInt), (64 : GoInt));
        };
        var _sr = stdgo.io.Io.newSectionReader(_r, (0i64 : GoInt64), (9223372036854775807i64 : GoInt64));
        var _magic:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
        {
            var __tmp__ = _sr.readAt((_magic.__slice__(0) : Slice<GoUInt8>), (0i64 : GoInt64)), __0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _arch = (Go.setRef(({} : internal.xcoff.Xcoff.Archive)) : Ref<internal.xcoff.Xcoff.Archive>);
        {
            final __value__ = ((_magic.__slice__(0) : Slice<GoUInt8>) : GoString);
            if (__value__ == (("<bigaf>\n" : GoString))) {
                _arch.archiveHeader._magic = ((_magic.__slice__(0) : Slice<GoUInt8>) : GoString);
            } else if (__value__ == (("<aiaff>\n" : GoString))) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("small AIX archive not supported" : GoString)) };
            } else {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("unrecognised archive magic: 0x%x" : GoString), Go.toInterface(_magic)) };
            };
        };
        var _fhdr:T_bigarFileHeader = ({} : internal.xcoff.Xcoff.T_bigarFileHeader);
        {
            var __tmp__ = _sr.seek((0i64 : GoInt64), (0 : GoInt)), __1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface((Go.setRef(_fhdr) : Ref<internal.xcoff.Xcoff.T_bigarFileHeader>)));
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = _parseDecimalBytes((_fhdr.flfstmoff.__slice__(0) : Slice<GoUInt8>)), _off:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("error parsing offset of first member in archive header(%q); %v" : GoString), Go.toInterface(_fhdr), Go.toInterface(_err)) };
        };
        if (_off == ((0i64 : GoInt64))) {
            return { _0 : _arch, _1 : (null : Error) };
        };
        var __tmp__ = _parseDecimalBytes((_fhdr.fllstmoff.__slice__(0) : Slice<GoUInt8>)), _lastoff:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("error parsing offset of first member in archive header(%q); %v" : GoString), Go.toInterface(_fhdr), Go.toInterface(_err)) };
        };
        while (true) {
            {
                var __tmp__ = _sr.seek(_off, (0 : GoInt)), __2:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _mhdr:T_bigarMemberHeader = ({} : internal.xcoff.Xcoff.T_bigarMemberHeader);
            {
                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface((Go.setRef(_mhdr) : Ref<internal.xcoff.Xcoff.T_bigarMemberHeader>)));
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _member = (Go.setRef(({} : internal.xcoff.Xcoff.Member)) : Ref<internal.xcoff.Xcoff.Member>);
            _arch.members = _arch.members.__appendref__(_member);
            var __tmp__ = _parseDecimalBytes((_mhdr.arsize.__slice__(0) : Slice<GoUInt8>)), _size:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("error parsing size in member header(%q); %v" : GoString), Go.toInterface(_mhdr), Go.toInterface(_err)) };
            };
            _member.memberHeader.size = (_size : GoUInt64);
            var __tmp__ = _parseDecimalBytes((_mhdr.arnamlen.__slice__(0) : Slice<GoUInt8>)), _namlen:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("error parsing name length in member header(%q); %v" : GoString), Go.toInterface(_mhdr), Go.toInterface(_err)) };
            };
            var _name = new Slice<GoUInt8>((_namlen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_namlen : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_name));
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _member.memberHeader.name = (_name : GoString);
            var _fileoff:GoInt64 = (_off + (112i64 : GoInt64)) + _namlen;
            if (_fileoff & (1i64 : GoInt64) != ((0i64 : GoInt64))) {
                _fileoff++;
                {
                    var __tmp__ = _sr.seek((1i64 : GoInt64), (1 : GoInt)), __3:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            var _fmag:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) (0 : GoUInt8)]);
            {
                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface((Go.setRef(_fmag) : Ref<GoArray<GoUInt8>>)));
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            if (((_fmag.__slice__(0) : Slice<GoUInt8>) : GoString) != (("`\n" : GoString))) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("AIAFMAG not found after member header" : GoString)) };
            };
            _fileoff = _fileoff + ((2i64 : GoInt64));
            _member._sr = stdgo.io.Io.newSectionReader(Go.asInterface(_sr), _fileoff, _size);
            if (_off == (_lastoff)) {
                break;
            };
            {
                var __tmp__ = _parseDecimalBytes((_mhdr.arnxtmem.__slice__(0) : Slice<GoUInt8>));
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("error parsing offset of first member in archive header(%q); %v" : GoString), Go.toInterface(_fhdr), Go.toInterface(_err)) };
            };
        };
        return { _0 : _arch, _1 : (null : Error) };
    }
/**
    // Open opens the named file using os.Open and prepares it for use as an XCOFF binary.
**/
function open(_name:GoString):{ var _0 : Ref<File>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_name), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = newFile(Go.asInterface(_f)), _ff:Ref<internal.xcoff.Xcoff.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _f.close();
            return { _0 : null, _1 : _err };
        };
        _ff._closer = Go.asInterface(_f);
        return { _0 : _ff, _1 : (null : Error) };
    }
/**
    // cstring converts ASCII byte sequence b to string.
    // It stops once it finds 0 or reaches end of b.
**/
private function _cstring(_b:Slice<GoByte>):GoString {
        var _i:GoInt = (0 : GoInt);
        {
            _i = (0 : GoInt);
            Go.cfor((_i < _b.length) && (_b[(_i : GoInt)] != (0 : GoUInt8)), _i++, {});
        };
        return ((_b.__slice__(0, _i) : Slice<GoUInt8>) : GoString);
    }
/**
    // getString extracts a string from an XCOFF string table.
**/
private function _getString(_st:Slice<GoByte>, _offset:GoUInt32):{ var _0 : GoString; var _1 : Bool; } {
        if ((_offset < (4u32 : GoUInt32)) || ((_offset : GoInt) >= _st.length)) {
            return { _0 : Go.str(), _1 : false };
        };
        return { _0 : _cstring((_st.__slice__(_offset) : Slice<GoUInt8>)), _1 : true };
    }
/**
    // NewFile creates a new File for accessing an XCOFF binary in an underlying reader.
**/
function newFile(_r:stdgo.io.Io.ReaderAt):{ var _0 : Ref<File>; var _1 : Error; } {
        stdgo.internal.Macro.controlFlow({
            var _sr = stdgo.io.Io.newSectionReader(_r, (0i64 : GoInt64), (9223372036854775807i64 : GoInt64));
            var _magic:GoUInt16 = (0 : GoUInt16);
            {
                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(Go.pointer(_magic)));
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            if ((_magic != (479 : GoUInt16)) && (_magic != (503 : GoUInt16))) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("unrecognised XCOFF magic: 0x%x" : GoString), Go.toInterface(_magic)) };
            };
            var _f = (Go.setRef(({} : internal.xcoff.Xcoff.File)) : Ref<internal.xcoff.Xcoff.File>);
            _f.fileHeader.targetMachine = _magic;
            {
                var __tmp__ = _sr.seek((0i64 : GoInt64), (0 : GoInt)), __0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _nscns:GoUInt16 = (0 : GoUInt16);
            var _symptr:GoUInt64 = (0 : GoUInt64);
            var _nsyms:GoInt32 = (0 : GoInt32);
            var _opthdr:GoUInt16 = (0 : GoUInt16);
            var _hdrsz:GoInt = (0 : GoInt);
            {
                final __value__ = _f.fileHeader.targetMachine;
                if (__value__ == ((479 : GoUInt16))) {
                    var _fhdr = (Go.setRef(({} : internal.xcoff.Xcoff.FileHeader32)) : Ref<internal.xcoff.Xcoff.FileHeader32>);
                    {
                        var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_fhdr));
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _nscns = _fhdr.fnscns;
                    _symptr = (_fhdr.fsymptr : GoUInt64);
                    _nsyms = _fhdr.fnsyms;
                    _opthdr = _fhdr.fopthdr;
                    _hdrsz = (20 : GoInt);
                } else if (__value__ == ((503 : GoUInt16))) {
                    var _fhdr = (Go.setRef(({} : internal.xcoff.Xcoff.FileHeader64)) : Ref<internal.xcoff.Xcoff.FileHeader64>);
                    {
                        var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_fhdr));
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _nscns = _fhdr.fnscns;
                    _symptr = _fhdr.fsymptr;
                    _nsyms = _fhdr.fnsyms;
                    _opthdr = _fhdr.fopthdr;
                    _hdrsz = (24 : GoInt);
                };
            };
            if ((_symptr == (0i64 : GoUInt64)) || (_nsyms <= (0 : GoInt32))) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("no symbol table" : GoString)) };
            };
            var _offset:GoUInt64 = _symptr + ((_nsyms : GoUInt64) * (18i64 : GoUInt64));
            {
                var __tmp__ = _sr.seek((_offset : GoInt64), (0 : GoInt)), __1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _l:GoUInt32 = (0 : GoUInt32);
            {
                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(Go.pointer(_l)));
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            if (_l > (4u32 : GoUInt32)) {
                var __tmp__ = internal.saferio.Saferio.readDataAt(Go.asInterface(_sr), (_l : GoUInt64), (_offset : GoInt64)), _st:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                _f.stringTable = _st;
            };
            {
                var __tmp__ = _sr.seek((_hdrsz : GoInt64) + (_opthdr : GoInt64), (0 : GoInt)), __2:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _f.sections = new Slice<Ref<internal.xcoff.Xcoff.Section>>((_nscns : GoInt).toBasic(), 0, ...[for (i in 0 ... (_nscns : GoInt).toBasic()) (null : Ref<internal.xcoff.Xcoff.Section>)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_nscns : GoInt), _i++, {
                    var _scnptr:GoUInt64 = (0 : GoUInt64);
                    var _s = (Go.setRef(({} : internal.xcoff.Xcoff.Section)) : Ref<internal.xcoff.Xcoff.Section>);
                    {
                        final __value__ = _f.fileHeader.targetMachine;
                        if (__value__ == ((479 : GoUInt16))) {
                            var _shdr = (Go.setRef(({} : internal.xcoff.Xcoff.SectionHeader32)) : Ref<internal.xcoff.Xcoff.SectionHeader32>);
                            {
                                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_shdr));
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _s.sectionHeader.name = _cstring((_shdr.sname.__slice__(0) : Slice<GoUInt8>));
                            _s.sectionHeader.virtualAddress = (_shdr.svaddr : GoUInt64);
                            _s.sectionHeader.size = (_shdr.ssize : GoUInt64);
                            _scnptr = (_shdr.sscnptr : GoUInt64);
                            _s.sectionHeader.type = _shdr.sflags;
                            _s.sectionHeader.relptr = (_shdr.srelptr : GoUInt64);
                            _s.sectionHeader.nreloc = (_shdr.snreloc : GoUInt32);
                        } else if (__value__ == ((503 : GoUInt16))) {
                            var _shdr = (Go.setRef(({} : internal.xcoff.Xcoff.SectionHeader64)) : Ref<internal.xcoff.Xcoff.SectionHeader64>);
                            {
                                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_shdr));
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _s.sectionHeader.name = _cstring((_shdr.sname.__slice__(0) : Slice<GoUInt8>));
                            _s.sectionHeader.virtualAddress = _shdr.svaddr;
                            _s.sectionHeader.size = _shdr.ssize;
                            _scnptr = _shdr.sscnptr;
                            _s.sectionHeader.type = _shdr.sflags;
                            _s.sectionHeader.relptr = _shdr.srelptr;
                            _s.sectionHeader.nreloc = _shdr.snreloc;
                        };
                    };
                    var _r2:stdgo.io.Io.ReaderAt = _r;
                    if (_scnptr == ((0i64 : GoUInt64))) {
                        _r2 = Go.asInterface((new T_zeroReaderAt() : T_zeroReaderAt));
                    };
                    _s._sr = stdgo.io.Io.newSectionReader(_r2, (_scnptr : GoInt64), (_s.sectionHeader.size : GoInt64));
                    _s.readerAt = Go.asInterface(_s._sr);
                    _f.sections[(_i : GoInt)] = _s;
                });
            };
            var _idxToSym:GoMap<GoInt, Ref<internal.xcoff.Xcoff.Symbol>> = (new GoObjectMap<GoInt, Ref<internal.xcoff.Xcoff.Symbol>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("internal.xcoff.Xcoff.Symbol", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "sectionNumber", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "storageClass", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "auxFcn", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("internal.xcoff.Xcoff.AuxiliaryFcn", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "size", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "auxCSect", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("internal.xcoff.Xcoff.AuxiliaryCSect", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "length_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "storageMappingClass", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "symbolType", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }))) : GoMap<GoInt, Ref<internal.xcoff.Xcoff.Symbol>>);
            {
                var __tmp__ = _sr.seek((_symptr : GoInt64), (0 : GoInt)), __3:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _f.symbols = new Slice<Ref<internal.xcoff.Xcoff.Symbol>>((0 : GoInt).toBasic(), 0, ...[for (i in 0 ... (0 : GoInt).toBasic()) (null : Ref<internal.xcoff.Xcoff.Symbol>)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_nsyms : GoInt), _i++, {
                    var _numaux:GoInt = (0 : GoInt);
                    var __0:Bool = false, __1:Bool = false, _needAuxFcn:Bool = __1, _ok:Bool = __0;
                    var _sym = (Go.setRef(({} : internal.xcoff.Xcoff.Symbol)) : Ref<internal.xcoff.Xcoff.Symbol>);
                    {
                        final __value__ = _f.fileHeader.targetMachine;
                        if (__value__ == ((479 : GoUInt16))) {
                            var _se = (Go.setRef(({} : internal.xcoff.Xcoff.SymEnt32)) : Ref<internal.xcoff.Xcoff.SymEnt32>);
                            {
                                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_se));
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _numaux = (_se.nnumaux : GoInt);
                            if (_numaux < (0 : GoInt)) {
                                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("malformed symbol table, invalid number of aux symbols" : GoString)) };
                            };
                            _sym.sectionNumber = (_se.nscnum : GoInt);
                            _sym.storageClass = (_se.nsclass : GoInt);
                            _sym.value = (_se.nvalue : GoUInt64);
                            _needAuxFcn = ((_se.ntype & (32 : GoUInt16)) != (0 : GoUInt16)) && (_numaux > (1 : GoInt));
                            var _zeroes:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32((_se.nname.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>));
                            if (_zeroes != ((0u32 : GoUInt32))) {
                                _sym.name = _cstring((_se.nname.__slice__(0) : Slice<GoUInt8>));
                            } else {
                                var _offset:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32((_se.nname.__slice__((4 : GoInt)) : Slice<GoUInt8>));
                                {
                                    var __tmp__ = _getString(_f.stringTable, _offset);
                                    _sym.name = __tmp__._0;
                                    _ok = __tmp__._1;
                                };
                                if (!_ok) {
                                    @:goto "skip";
                                };
                            };
                        } else if (__value__ == ((503 : GoUInt16))) {
                            var _se = (Go.setRef(({} : internal.xcoff.Xcoff.SymEnt64)) : Ref<internal.xcoff.Xcoff.SymEnt64>);
                            {
                                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_se));
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _numaux = (_se.nnumaux : GoInt);
                            if (_numaux < (0 : GoInt)) {
                                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("malformed symbol table, invalid number of aux symbols" : GoString)) };
                            };
                            _sym.sectionNumber = (_se.nscnum : GoInt);
                            _sym.storageClass = (_se.nsclass : GoInt);
                            _sym.value = _se.nvalue;
                            _needAuxFcn = ((_se.ntype & (32 : GoUInt16)) != (0 : GoUInt16)) && (_numaux > (1 : GoInt));
                            {
                                var __tmp__ = _getString(_f.stringTable, _se.noffset);
                                _sym.name = __tmp__._0;
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                @:goto "skip";
                            };
                        };
                    };
                    if (((_sym.storageClass != (2 : GoInt)) && (_sym.storageClass != (111 : GoInt))) && (_sym.storageClass != (107 : GoInt))) {
                        @:goto "skip";
                    };
                    if ((_numaux < (1 : GoInt)) || ((_i + _numaux) >= (_nsyms : GoInt))) {
                        @:goto "skip";
                    };
                    if (_sym.sectionNumber > (_nscns : GoInt)) {
                        @:goto "skip";
                    };
                    if (_sym.sectionNumber == ((0 : GoInt))) {
                        _sym.value = (0i64 : GoUInt64);
                    } else {
                        _sym.value = _sym.value - (_f.sections[(_sym.sectionNumber - (1 : GoInt) : GoInt)].sectionHeader.virtualAddress);
                    };
                    _idxToSym[_i] = _sym;
                    if (_needAuxFcn) {
                        {
                            final __value__ = _f.fileHeader.targetMachine;
                            if (__value__ == ((479 : GoUInt16))) {
                                var _aux = (Go.setRef(({} : internal.xcoff.Xcoff.AuxFcn32)) : Ref<internal.xcoff.Xcoff.AuxFcn32>);
                                {
                                    var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_aux));
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _sym.auxFcn.size = (_aux.xfsize : GoInt64);
                            } else if (__value__ == ((503 : GoUInt16))) {
                                var _aux = (Go.setRef(({} : internal.xcoff.Xcoff.AuxFcn64)) : Ref<internal.xcoff.Xcoff.AuxFcn64>);
                                {
                                    var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_aux));
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _sym.auxFcn.size = (_aux.xfsize : GoInt64);
                            };
                        };
                    };
                    if (!_needAuxFcn) {
                        {
                            var __tmp__ = _sr.seek((_numaux - (1 : GoInt) : GoInt64) * (18i64 : GoInt64), (1 : GoInt)), __4:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                    };
                    _i = _i + (_numaux);
                    _numaux = (0 : GoInt);
                    {
                        final __value__ = _f.fileHeader.targetMachine;
                        if (__value__ == ((479 : GoUInt16))) {
                            var _aux = (Go.setRef(({} : internal.xcoff.Xcoff.AuxCSect32)) : Ref<internal.xcoff.Xcoff.AuxCSect32>);
                            {
                                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_aux));
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _sym.auxCSect.symbolType = (_aux.xsmtyp & (7 : GoUInt8) : GoInt);
                            _sym.auxCSect.storageMappingClass = (_aux.xsmclas : GoInt);
                            _sym.auxCSect.length_ = (_aux.xscnlen : GoInt64);
                        } else if (__value__ == ((503 : GoUInt16))) {
                            var _aux = (Go.setRef(({} : internal.xcoff.Xcoff.AuxCSect64)) : Ref<internal.xcoff.Xcoff.AuxCSect64>);
                            {
                                var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_aux));
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _sym.auxCSect.symbolType = (_aux.xsmtyp & (7 : GoUInt8) : GoInt);
                            _sym.auxCSect.storageMappingClass = (_aux.xsmclas : GoInt);
                            _sym.auxCSect.length_ = ((_aux.xscnlenhi : GoInt64) << (32i64 : GoUInt64)) | (_aux.xscnlenlo : GoInt64);
                        };
                    };
                    _f.symbols = _f.symbols.__appendref__(_sym);
                    @:label("skip") _i = _i + (_numaux);
                    {
                        var __tmp__ = _sr.seek((_numaux : GoInt64) * (18i64 : GoInt64), (1 : GoInt)), __5:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                });
            };
            for (__6 => _sect in _f.sections) {
                if ((_sect.sectionHeader.type != (32u32 : GoUInt32)) && (_sect.sectionHeader.type != (64u32 : GoUInt32))) {
                    continue;
                };
                _sect.relocs = new Slice<internal.xcoff.Xcoff.Reloc>((_sect.sectionHeader.nreloc : GoInt).toBasic(), 0, ...[for (i in 0 ... (_sect.sectionHeader.nreloc : GoInt).toBasic()) ({} : internal.xcoff.Xcoff.Reloc)]);
                if (_sect.sectionHeader.relptr == ((0i64 : GoUInt64))) {
                    continue;
                };
                {
                    var __tmp__ = _sr.seek((_sect.sectionHeader.relptr : GoInt64), (0 : GoInt)), __7:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                {
                    var _i:GoUInt32 = (0u32 : GoUInt32);
                    Go.cfor(_i < _sect.sectionHeader.nreloc, _i++, {
                        {
                            final __value__ = _f.fileHeader.targetMachine;
                            if (__value__ == ((479 : GoUInt16))) {
                                var _rel = (Go.setRef(({} : internal.xcoff.Xcoff.Reloc32)) : Ref<internal.xcoff.Xcoff.Reloc32>);
                                {
                                    var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_rel));
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _sect.relocs[(_i : GoInt)].virtualAddress = (_rel.rvaddr : GoUInt64);
                                _sect.relocs[(_i : GoInt)].symbol = _idxToSym[(_rel.rsymndx : GoInt)];
                                _sect.relocs[(_i : GoInt)].type = _rel.rtype;
                                _sect.relocs[(_i : GoInt)].length_ = (_rel.rsize & (63 : GoUInt8)) + (1 : GoUInt8);
                                if (_rel.rsize & (128 : GoUInt8) != ((0 : GoUInt8))) {
                                    _sect.relocs[(_i : GoInt)].signed = true;
                                };
                                if (_rel.rsize & (64 : GoUInt8) != ((0 : GoUInt8))) {
                                    _sect.relocs[(_i : GoInt)].instructionFixed = true;
                                };
                            } else if (__value__ == ((503 : GoUInt16))) {
                                var _rel = (Go.setRef(({} : internal.xcoff.Xcoff.Reloc64)) : Ref<internal.xcoff.Xcoff.Reloc64>);
                                {
                                    var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_rel));
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _sect.relocs[(_i : GoInt)].virtualAddress = _rel.rvaddr;
                                _sect.relocs[(_i : GoInt)].symbol = _idxToSym[(_rel.rsymndx : GoInt)];
                                _sect.relocs[(_i : GoInt)].type = _rel.rtype;
                                _sect.relocs[(_i : GoInt)].length_ = (_rel.rsize & (63 : GoUInt8)) + (1 : GoUInt8);
                                if (_rel.rsize & (128 : GoUInt8) != ((0 : GoUInt8))) {
                                    _sect.relocs[(_i : GoInt)].signed = true;
                                };
                                if (_rel.rsize & (64 : GoUInt8) != ((0 : GoUInt8))) {
                                    _sect.relocs[(_i : GoInt)].instructionFixed = true;
                                };
                            };
                        };
                    });
                };
            };
            return { _0 : _f, _1 : (null : Error) };
        });
        throw "controlFlow did not return";
    }
class Archive_asInterface {
    /**
        // GetFile returns the XCOFF file defined by member name.
        // FIXME: This doesn't work if an archive has two members with the same
        // name which can occur if a archive has both 32-bits and 64-bits files.
    **/
    @:keep
    public dynamic function getFile(_name:GoString):{ var _0 : Ref<File>; var _1 : Error; } return __self__.value.getFile(_name);
    /**
        // Close closes the Archive.
        // If the Archive was created using NewArchive directly instead of OpenArchive,
        // Close has no effect.
    **/
    @:keep
    public dynamic function close():Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Archive>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(internal.xcoff.Xcoff.Archive_asInterface) class Archive_static_extension {
    /**
        // GetFile returns the XCOFF file defined by member name.
        // FIXME: This doesn't work if an archive has two members with the same
        // name which can occur if a archive has both 32-bits and 64-bits files.
    **/
    @:keep
    static public function getFile( _arch:Ref<Archive>, _name:GoString):{ var _0 : Ref<File>; var _1 : Error; } {
        for (__0 => _mem in _arch.members) {
            if (_mem.memberHeader.name == (_name)) {
                return newFile(Go.asInterface(_mem._sr));
            };
        };
        return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("unknown member %s in archive" : GoString), Go.toInterface(_name)) };
    }
    /**
        // Close closes the Archive.
        // If the Archive was created using NewArchive directly instead of OpenArchive,
        // Close has no effect.
    **/
    @:keep
    static public function close( _a:Ref<Archive>):Error {
        var _err:Error = (null : Error);
        if (_a._closer != null) {
            _err = _a._closer.close();
            _a._closer = (null : stdgo.io.Io.Closer);
        };
        return _err;
    }
}
class Member_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Member>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(internal.xcoff.Xcoff.Member_asInterface) class Member_static_extension {

}
class Section_asInterface {
    /**
        // Data reads and returns the contents of the XCOFF section s.
    **/
    @:keep
    public dynamic function data():{ var _0 : Slice<GoByte>; var _1 : Error; } return __self__.value.data();
    @:embedded
    public dynamic function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return __self__.value.readAt(_p, _off);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Section>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(internal.xcoff.Xcoff.Section_asInterface) class Section_static_extension {
    /**
        // Data reads and returns the contents of the XCOFF section s.
    **/
    @:keep
    static public function data( _s:Ref<Section>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _dat = new Slice<GoUInt8>((_s._sr.size() : GoInt).toBasic(), 0, ...[for (i in 0 ... (_s._sr.size() : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = _s._sr.readAt(_dat, (0i64 : GoInt64)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_n == ((_dat.length))) {
            _err = (null : Error);
        };
        return { _0 : (_dat.__slice__(0, _n) : Slice<GoUInt8>), _1 : _err };
    }
    @:embedded
    public static function readAt( __self__:Section, _p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return __self__.readAt(_p, _off);
}
class File_asInterface {
    /**
        // ImportedLibraries returns the names of all libraries
        // referred to by the binary f that are expected to be
        // linked with the binary at dynamic link time.
    **/
    @:keep
    public dynamic function importedLibraries():{ var _0 : Slice<GoString>; var _1 : Error; } return __self__.value.importedLibraries();
    /**
        // ImportedSymbols returns the names of all symbols
        // referred to by the binary f that are expected to be
        // satisfied by other libraries at dynamic load time.
        // It does not return weak symbols.
    **/
    @:keep
    public dynamic function importedSymbols():{ var _0 : Slice<ImportedSymbol>; var _1 : Error; } return __self__.value.importedSymbols();
    /**
        // readImportID returns the import file IDs stored inside the .loader section.
        // Library name pattern is either path/base/member or base/member
    **/
    @:keep
    public dynamic function _readImportIDs(_s:Ref<Section>):{ var _0 : Slice<GoString>; var _1 : Error; } return __self__.value._readImportIDs(_s);
    @:keep
    public dynamic function dwarf():{ var _0 : Ref<stdgo.debug.dwarf.Dwarf.Data>; var _1 : Error; } return __self__.value.dwarf();
    /**
        // CSect reads and returns the contents of a csect.
    **/
    @:keep
    public dynamic function csect(_name:GoString):Slice<GoByte> return __self__.value.csect(_name);
    /**
        // SectionByType returns the first section in f with the
        // given type, or nil if there is no such section.
    **/
    @:keep
    public dynamic function sectionByType(_typ:GoUInt32):Ref<Section> return __self__.value.sectionByType(_typ);
    /**
        // Section returns the first section with the given name, or nil if no such
        // section exists.
        // Xcoff have section's name limited to 8 bytes. Some sections like .gosymtab
        // can be trunked but this method will still find them.
    **/
    @:keep
    public dynamic function section(_name:GoString):Ref<Section> return __self__.value.section(_name);
    /**
        // Close closes the File.
        // If the File was created using NewFile directly instead of Open,
        // Close has no effect.
    **/
    @:keep
    public dynamic function close():Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<File>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(internal.xcoff.Xcoff.File_asInterface) class File_static_extension {
    /**
        // ImportedLibraries returns the names of all libraries
        // referred to by the binary f that are expected to be
        // linked with the binary at dynamic link time.
    **/
    @:keep
    static public function importedLibraries( _f:Ref<File>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _s = _f.sectionByType((4096u32 : GoUInt32));
        if (_s == null || (_s : Dynamic).__nil__) {
            return { _0 : (null : Slice<GoString>), _1 : (null : Error) };
        };
        var __tmp__ = _f._readImportIDs(_s), _all:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        return { _0 : _all, _1 : _err };
    }
    /**
        // ImportedSymbols returns the names of all symbols
        // referred to by the binary f that are expected to be
        // satisfied by other libraries at dynamic load time.
        // It does not return weak symbols.
    **/
    @:keep
    static public function importedSymbols( _f:Ref<File>):{ var _0 : Slice<ImportedSymbol>; var _1 : Error; } {
        var _s = _f.sectionByType((4096u32 : GoUInt32));
        if (_s == null || (_s : Dynamic).__nil__) {
            return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : (null : Error) };
        };
        {
            var __tmp__ = _s._sr.seek((0i64 : GoInt64), (0 : GoInt)), __0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
            };
        };
        var _stlen:GoUInt32 = (0 : GoUInt32);
        var _stoff:GoUInt64 = (0 : GoUInt64);
        var _nsyms:GoInt32 = (0 : GoInt32);
        var _symoff:GoUInt64 = (0 : GoUInt64);
        {
            final __value__ = _f.fileHeader.targetMachine;
            if (__value__ == ((479 : GoUInt16))) {
                var _lhdr = (Go.setRef(({} : internal.xcoff.Xcoff.LoaderHeader32)) : Ref<internal.xcoff.Xcoff.LoaderHeader32>);
                {
                    var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_s._sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_lhdr));
                    if (_err != null) {
                        return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
                    };
                };
                _stlen = _lhdr.lstlen;
                _stoff = (_lhdr.lstoff : GoUInt64);
                _nsyms = _lhdr.lnsyms;
                _symoff = (32i64 : GoUInt64);
            } else if (__value__ == ((503 : GoUInt16))) {
                var _lhdr = (Go.setRef(({} : internal.xcoff.Xcoff.LoaderHeader64)) : Ref<internal.xcoff.Xcoff.LoaderHeader64>);
                {
                    var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_s._sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_lhdr));
                    if (_err != null) {
                        return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
                    };
                };
                _stlen = _lhdr.lstlen;
                _stoff = _lhdr.lstoff;
                _nsyms = _lhdr.lnsyms;
                _symoff = _lhdr.lsymoff;
            };
        };
        {
            var __tmp__ = _s._sr.seek((_stoff : GoInt64), (0 : GoInt)), __1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
            };
        };
        var _st = new Slice<GoUInt8>((_stlen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_stlen : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = stdgo.io.Io.readFull(Go.asInterface(_s._sr), _st), __2:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
            };
        };
        var __tmp__ = _f._readImportIDs(_s), _libs:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
        };
        {
            var __tmp__ = _s._sr.seek((_symoff : GoInt64), (0 : GoInt)), __3:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
            };
        };
        var _all = new Slice<internal.xcoff.Xcoff.ImportedSymbol>((0 : GoInt).toBasic(), 0, ...[for (i in 0 ... (0 : GoInt).toBasic()) ({} : internal.xcoff.Xcoff.ImportedSymbol)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_nsyms : GoInt), _i++, {
                var _name:GoString = ("" : GoString);
                var _ifile:GoInt32 = (0 : GoInt32);
                var _ok:Bool = false;
                {
                    final __value__ = _f.fileHeader.targetMachine;
                    if (__value__ == ((479 : GoUInt16))) {
                        var _ldsym = (Go.setRef(({} : internal.xcoff.Xcoff.LoaderSymbol32)) : Ref<internal.xcoff.Xcoff.LoaderSymbol32>);
                        {
                            var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_s._sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_ldsym));
                            if (_err != null) {
                                return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
                            };
                        };
                        if (_ldsym.lsmtype & (64 : GoInt8) == ((0 : GoInt8))) {
                            continue;
                        };
                        var _zeroes:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32((_ldsym.lname.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>));
                        if (_zeroes != ((0u32 : GoUInt32))) {
                            _name = _cstring((_ldsym.lname.__slice__(0) : Slice<GoUInt8>));
                        } else {
                            var _offset:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32((_ldsym.lname.__slice__((4 : GoInt)) : Slice<GoUInt8>));
                            {
                                var __tmp__ = _getString(_st, _offset);
                                _name = __tmp__._0;
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                continue;
                            };
                        };
                        _ifile = _ldsym.lifile;
                    } else if (__value__ == ((503 : GoUInt16))) {
                        var _ldsym = (Go.setRef(({} : internal.xcoff.Xcoff.LoaderSymbol64)) : Ref<internal.xcoff.Xcoff.LoaderSymbol64>);
                        {
                            var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_s._sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_ldsym));
                            if (_err != null) {
                                return { _0 : (null : Slice<internal.xcoff.Xcoff.ImportedSymbol>), _1 : _err };
                            };
                        };
                        if (_ldsym.lsmtype & (64 : GoInt8) == ((0 : GoInt8))) {
                            continue;
                        };
                        {
                            var __tmp__ = _getString(_st, _ldsym.loffset);
                            _name = __tmp__._0;
                            _ok = __tmp__._1;
                        };
                        if (!_ok) {
                            continue;
                        };
                        _ifile = _ldsym.lifile;
                    };
                };
                var _sym:ImportedSymbol = ({} : internal.xcoff.Xcoff.ImportedSymbol);
                _sym.name = _name;
                if ((_ifile >= (1 : GoInt32)) && ((_ifile : GoInt) <= _libs.length)) {
                    _sym.library = _libs[(_ifile - (1 : GoInt32) : GoInt)];
                };
                _all = _all.__appendref__(_sym?.__copy__());
            });
        };
        return { _0 : _all, _1 : (null : Error) };
    }
    /**
        // readImportID returns the import file IDs stored inside the .loader section.
        // Library name pattern is either path/base/member or base/member
    **/
    @:keep
    static public function _readImportIDs( _f:Ref<File>, _s:Ref<Section>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        {
            var __tmp__ = _s._sr.seek((0i64 : GoInt64), (0 : GoInt)), __0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<GoString>), _1 : _err };
            };
        };
        var _istlen:GoUInt32 = (0 : GoUInt32);
        var _nimpid:GoInt32 = (0 : GoInt32);
        var _impoff:GoUInt64 = (0 : GoUInt64);
        {
            final __value__ = _f.fileHeader.targetMachine;
            if (__value__ == ((479 : GoUInt16))) {
                var _lhdr = (Go.setRef(({} : internal.xcoff.Xcoff.LoaderHeader32)) : Ref<internal.xcoff.Xcoff.LoaderHeader32>);
                {
                    var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_s._sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_lhdr));
                    if (_err != null) {
                        return { _0 : (null : Slice<GoString>), _1 : _err };
                    };
                };
                _istlen = _lhdr.listlen;
                _nimpid = _lhdr.lnimpid;
                _impoff = (_lhdr.limpoff : GoUInt64);
            } else if (__value__ == ((503 : GoUInt16))) {
                var _lhdr = (Go.setRef(({} : internal.xcoff.Xcoff.LoaderHeader64)) : Ref<internal.xcoff.Xcoff.LoaderHeader64>);
                {
                    var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_s._sr), Go.asInterface(stdgo.encoding.binary.Binary.bigEndian), Go.toInterface(_lhdr));
                    if (_err != null) {
                        return { _0 : (null : Slice<GoString>), _1 : _err };
                    };
                };
                _istlen = _lhdr.listlen;
                _nimpid = _lhdr.lnimpid;
                _impoff = _lhdr.limpoff;
            };
        };
        {
            var __tmp__ = _s._sr.seek((_impoff : GoInt64), (0 : GoInt)), __1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<GoString>), _1 : _err };
            };
        };
        var _table = new Slice<GoUInt8>((_istlen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_istlen : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = stdgo.io.Io.readFull(Go.asInterface(_s._sr), _table), __2:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<GoString>), _1 : _err };
            };
        };
        var _offset:GoInt = (0 : GoInt);
        var _libpath:GoString = _cstring((_table.__slice__(_offset) : Slice<GoUInt8>));
        _f.libraryPaths = stdgo.strings.Strings.split(_libpath, (":" : GoString));
        _offset = _offset + (_libpath.length + (3 : GoInt));
        var _all = new Slice<GoString>((0 : GoInt).toBasic(), 0, ...[for (i in 0 ... (0 : GoInt).toBasic()) ("" : GoString)]);
        {
            var _i:GoInt = (1 : GoInt);
            Go.cfor(_i < (_nimpid : GoInt), _i++, {
                var _impidpath:GoString = _cstring((_table.__slice__(_offset) : Slice<GoUInt8>));
                _offset = _offset + (_impidpath.length + (1 : GoInt));
                var _impidbase:GoString = _cstring((_table.__slice__(_offset) : Slice<GoUInt8>));
                _offset = _offset + (_impidbase.length + (1 : GoInt));
                var _impidmem:GoString = _cstring((_table.__slice__(_offset) : Slice<GoUInt8>));
                _offset = _offset + (_impidmem.length + (1 : GoInt));
                var _path:GoString = ("" : GoString);
                if ((_impidpath.length) > (0 : GoInt)) {
                    _path = (((_impidpath + ("/" : GoString)) + _impidbase) + ("/" : GoString)) + _impidmem;
                } else {
                    _path = (_impidbase + ("/" : GoString)) + _impidmem;
                };
                _all = _all.__appendref__(_path);
            });
        };
        return { _0 : _all, _1 : (null : Error) };
    }
    @:keep
    static public function dwarf( _f:Ref<File>):{ var _0 : Ref<stdgo.debug.dwarf.Dwarf.Data>; var _1 : Error; } {
        var _subtypes:GoArray<GoUInt32> = (new GoArray<GoUInt32>((393216u32 : GoUInt32), (65536u32 : GoUInt32), (131072u32 : GoUInt32), (524288u32 : GoUInt32), (458752u32 : GoUInt32)) : GoArray<GoUInt32>);
        var _dat:GoArray<Slice<GoByte>> = new GoArray<Slice<GoUInt8>>(...[for (i in 0 ... 5) (null : Slice<GoUInt8>)]);
        for (_i => _subtype in _subtypes) {
            var _s = _f.sectionByType((16u32 : GoUInt32) | _subtype);
            if (_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) {
                var __tmp__ = _s.data(), _b:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
                if ((_err != null) && ((_b.length : GoUInt64) < _s.sectionHeader.size)) {
                    return { _0 : null, _1 : _err };
                };
                _dat[(_i : GoInt)] = _b;
            };
        };
        var __0 = _dat[(0 : GoInt)], __1 = _dat[(1 : GoInt)], __2 = _dat[(2 : GoInt)], __3 = _dat[(3 : GoInt)], __4 = _dat[(4 : GoInt)], _str = __4, _ranges = __3, _line = __2, _info = __1, _abbrev = __0;
        return stdgo.debug.dwarf.Dwarf.new_(_abbrev, (null : Slice<GoUInt8>), (null : Slice<GoUInt8>), _info, _line, (null : Slice<GoUInt8>), _ranges, _str);
    }
    /**
        // CSect reads and returns the contents of a csect.
    **/
    @:keep
    static public function csect( _f:Ref<File>, _name:GoString):Slice<GoByte> {
        for (__0 => _sym in _f.symbols) {
            if ((_sym.name == _name) && (_sym.auxCSect.symbolType == (1 : GoInt))) {
                {
                    var _i:GoInt = _sym.sectionNumber - (1 : GoInt);
                    if (((0 : GoInt) <= _i) && (_i < _f.sections.length)) {
                        var _s = _f.sections[(_i : GoInt)];
                        if ((_sym.value + (_sym.auxCSect.length_ : GoUInt64)) <= _s.sectionHeader.size) {
                            var _dat = new Slice<GoUInt8>((_sym.auxCSect.length_ : GoInt).toBasic(), 0, ...[for (i in 0 ... (_sym.auxCSect.length_ : GoInt).toBasic()) (0 : GoUInt8)]);
                            var __tmp__ = _s._sr.readAt(_dat, (_sym.value : GoInt64)), __1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                            if (_err != null) {
                                return (null : Slice<GoUInt8>);
                            };
                            return _dat;
                        };
                    };
                };
                break;
            };
        };
        return (null : Slice<GoUInt8>);
    }
    /**
        // SectionByType returns the first section in f with the
        // given type, or nil if there is no such section.
    **/
    @:keep
    static public function sectionByType( _f:Ref<File>, _typ:GoUInt32):Ref<Section> {
        for (__0 => _s in _f.sections) {
            if (_s.sectionHeader.type == (_typ)) {
                return _s;
            };
        };
        return null;
    }
    /**
        // Section returns the first section with the given name, or nil if no such
        // section exists.
        // Xcoff have section's name limited to 8 bytes. Some sections like .gosymtab
        // can be trunked but this method will still find them.
    **/
    @:keep
    static public function section( _f:Ref<File>, _name:GoString):Ref<Section> {
        for (__0 => _s in _f.sections) {
            if ((_s.sectionHeader.name == _name) || ((_name.length > (8 : GoInt)) && (_s.sectionHeader.name == (_name.__slice__(0, (8 : GoInt)) : GoString)))) {
                return _s;
            };
        };
        return null;
    }
    /**
        // Close closes the File.
        // If the File was created using NewFile directly instead of Open,
        // Close has no effect.
    **/
    @:keep
    static public function close( _f:Ref<File>):Error {
        var _err:Error = (null : Error);
        if (_f._closer != null) {
            _err = _f._closer.close();
            _f._closer = (null : stdgo.io.Io.Closer);
        };
        return _err;
    }
}
class T_zeroReaderAt_asInterface {
    /**
        // ReadAt writes len(p) 0s into p.
    **/
    @:keep
    public dynamic function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return __self__.value.readAt(_p, _off);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_zeroReaderAt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(internal.xcoff.Xcoff.T_zeroReaderAt_asInterface) class T_zeroReaderAt_static_extension {
    /**
        // ReadAt writes len(p) 0s into p.
    **/
    @:keep
    static public function readAt( _w:T_zeroReaderAt, _p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        for (_i in 0 ... _p.length.toBasic()) {
            _p[(_i : GoInt)] = (0 : GoUInt8);
        };
        return { _0 : (_p.length), _1 : (null : Error) };
    }
}
