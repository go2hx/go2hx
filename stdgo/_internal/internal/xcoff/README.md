# Module: `stdgo._internal.internal.xcoff`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString`](<#function-_cstring>)

- [`function _getString(_st:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoUInt32):{
	_1:Bool;
	_0:stdgo.GoString;
}`](<#function-_getstring>)

- [`function newArchive(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.xcoff.Archive>;
}`](<#function-newarchive>)

- [`function newFile(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.xcoff.File>;
}`](<#function-newfile>)

- [`function open(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.xcoff.File>;
}`](<#function-open>)

- [`function openArchive(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.xcoff.Archive>;
}`](<#function-openarchive>)

- [class Archive](<#class-archive>)

  - [`function new(?archiveHeader:stdgo._internal.internal.xcoff.ArchiveHeader, ?members:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Member>>, ?_closer:stdgo._internal.io.Closer):Void`](<#archive-function-new>)

- [class ArchiveHeader](<#class-archiveheader>)

  - [`function new(?_magic:stdgo.GoString):Void`](<#archiveheader-function-new>)

- [class AuxCSect32](<#class-auxcsect32>)

  - [`function new(?xscnlen:stdgo.GoUInt32, ?xparmhash:stdgo.GoUInt32, ?xsnhash:stdgo.GoUInt16, ?xsmtyp:stdgo.GoUInt8, ?xsmclas:stdgo.GoUInt8, ?xstab:stdgo.GoUInt32, ?xsnstab:stdgo.GoUInt16):Void`](<#auxcsect32-function-new>)

- [class AuxCSect64](<#class-auxcsect64>)

  - [`function new(?xscnlenlo:stdgo.GoUInt32, ?xparmhash:stdgo.GoUInt32, ?xsnhash:stdgo.GoUInt16, ?xsmtyp:stdgo.GoUInt8, ?xsmclas:stdgo.GoUInt8, ?xscnlenhi:stdgo.GoUInt32, ?xpad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8):Void`](<#auxcsect64-function-new>)

- [class AuxFcn32](<#class-auxfcn32>)

  - [`function new(?xexptr:stdgo.GoUInt32, ?xfsize:stdgo.GoUInt32, ?xlnnoptr:stdgo.GoUInt32, ?xendndx:stdgo.GoUInt32, ?xpad:stdgo.GoUInt16):Void`](<#auxfcn32-function-new>)

- [class AuxFcn64](<#class-auxfcn64>)

  - [`function new(?xlnnoptr:stdgo.GoUInt64, ?xfsize:stdgo.GoUInt32, ?xendndx:stdgo.GoUInt32, ?xpad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8):Void`](<#auxfcn64-function-new>)

- [class AuxFile64](<#class-auxfile64>)

  - [`function new(?xfname:stdgo.GoArray<stdgo.GoUInt8>, ?xftype:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8):Void`](<#auxfile64-function-new>)

- [class AuxSect64](<#class-auxsect64>)

  - [`function new(?xscnlen:stdgo.GoUInt64, ?xnreloc:stdgo.GoUInt64, ?_pad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8):Void`](<#auxsect64-function-new>)

- [class AuxiliaryCSect](<#class-auxiliarycsect>)

  - [`function new(?length_:stdgo.GoInt64, ?storageMappingClass:stdgo.GoInt, ?symbolType:stdgo.GoInt):Void`](<#auxiliarycsect-function-new>)

- [class AuxiliaryFcn](<#class-auxiliaryfcn>)

  - [`function new(?size:stdgo.GoInt64):Void`](<#auxiliaryfcn-function-new>)

- [class File](<#class-file>)

  - [`function new(?fileHeader:stdgo._internal.internal.xcoff.FileHeader, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Section>>, ?symbols:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Symbol>>, ?stringTable:stdgo.Slice<stdgo.GoUInt8>, ?libraryPaths:stdgo.Slice<stdgo.GoString>, ?_closer:stdgo._internal.io.Closer):Void`](<#file-function-new>)

- [class FileHeader](<#class-fileheader>)

  - [`function new(?targetMachine:stdgo.GoUInt16):Void`](<#fileheader-function-new>)

- [class FileHeader32](<#class-fileheader32>)

  - [`function new(?fmagic:stdgo.GoUInt16, ?fnscns:stdgo.GoUInt16, ?ftimedat:stdgo.GoUInt32, ?fsymptr:stdgo.GoUInt32, ?fnsyms:stdgo.GoUInt32, ?fopthdr:stdgo.GoUInt16, ?fflags:stdgo.GoUInt16):Void`](<#fileheader32-function-new>)

- [class FileHeader64](<#class-fileheader64>)

  - [`function new(?fmagic:stdgo.GoUInt16, ?fnscns:stdgo.GoUInt16, ?ftimedat:stdgo.GoUInt32, ?fsymptr:stdgo.GoUInt64, ?fopthdr:stdgo.GoUInt16, ?fflags:stdgo.GoUInt16, ?fnsyms:stdgo.GoUInt32):Void`](<#fileheader64-function-new>)

- [class ImportedSymbol](<#class-importedsymbol>)

  - [`function new(?name:stdgo.GoString, ?library:stdgo.GoString):Void`](<#importedsymbol-function-new>)

- [class LoaderHeader32](<#class-loaderheader32>)

  - [`function new(?lversion:stdgo.GoUInt32, ?lnsyms:stdgo.GoUInt32, ?lnreloc:stdgo.GoUInt32, ?listlen:stdgo.GoUInt32, ?lnimpid:stdgo.GoUInt32, ?limpoff:stdgo.GoUInt32, ?lstlen:stdgo.GoUInt32, ?lstoff:stdgo.GoUInt32):Void`](<#loaderheader32-function-new>)

- [class LoaderHeader64](<#class-loaderheader64>)

  - [`function new(?lversion:stdgo.GoUInt32, ?lnsyms:stdgo.GoUInt32, ?lnreloc:stdgo.GoUInt32, ?listlen:stdgo.GoUInt32, ?lnimpid:stdgo.GoUInt32, ?lstlen:stdgo.GoUInt32, ?limpoff:stdgo.GoUInt64, ?lstoff:stdgo.GoUInt64, ?lsymoff:stdgo.GoUInt64, ?lrldoff:stdgo.GoUInt64):Void`](<#loaderheader64-function-new>)

- [class LoaderSymbol32](<#class-loadersymbol32>)

  - [`function new(?lname:stdgo.GoArray<stdgo.GoUInt8>, ?lvalue:stdgo.GoUInt32, ?lscnum:stdgo.GoUInt16, ?lsmtype:stdgo.GoUInt8, ?lsmclas:stdgo.GoUInt8, ?lifile:stdgo.GoUInt32, ?lparm:stdgo.GoUInt32):Void`](<#loadersymbol32-function-new>)

- [class LoaderSymbol64](<#class-loadersymbol64>)

  - [`function new(?lvalue:stdgo.GoUInt64, ?loffset:stdgo.GoUInt32, ?lscnum:stdgo.GoUInt16, ?lsmtype:stdgo.GoUInt8, ?lsmclas:stdgo.GoUInt8, ?lifile:stdgo.GoUInt32, ?lparm:stdgo.GoUInt32):Void`](<#loadersymbol64-function-new>)

- [class Member](<#class-member>)

  - [`function new(?memberHeader:stdgo._internal.internal.xcoff.MemberHeader, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void`](<#member-function-new>)

- [class MemberHeader](<#class-memberheader>)

  - [`function new(?name:stdgo.GoString, ?size:stdgo.GoUInt64):Void`](<#memberheader-function-new>)

- [class Reloc](<#class-reloc>)

  - [`function new(?virtualAddress:stdgo.GoUInt64, ?symbol:stdgo.Ref<stdgo._internal.internal.xcoff.Symbol>, ?signed:Bool, ?instructionFixed:Bool, ?length_:stdgo.GoUInt8, ?type:stdgo.GoUInt8):Void`](<#reloc-function-new>)

- [class Reloc32](<#class-reloc32>)

  - [`function new(?rvaddr:stdgo.GoUInt32, ?rsymndx:stdgo.GoUInt32, ?rsize:stdgo.GoUInt8, ?rtype:stdgo.GoUInt8):Void`](<#reloc32-function-new>)

- [class Reloc64](<#class-reloc64>)

  - [`function new(?rvaddr:stdgo.GoUInt64, ?rsymndx:stdgo.GoUInt32, ?rsize:stdgo.GoUInt8, ?rtype:stdgo.GoUInt8):Void`](<#reloc64-function-new>)

- [class Section](<#class-section>)

  - [`function new(?sectionHeader:stdgo._internal.internal.xcoff.SectionHeader, ?relocs:stdgo.Slice<stdgo._internal.internal.xcoff.Reloc>, ?readerAt:stdgo._internal.io.ReaderAt, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void`](<#section-function-new>)

  - [`function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#section-function-readat>)

- [class SectionHeader](<#class-sectionheader>)

  - [`function new(?name:stdgo.GoString, ?virtualAddress:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?type:stdgo.GoUInt32, ?relptr:stdgo.GoUInt64, ?nreloc:stdgo.GoUInt32):Void`](<#sectionheader-function-new>)

- [class SectionHeader32](<#class-sectionheader32>)

  - [`function new(?sname:stdgo.GoArray<stdgo.GoUInt8>, ?spaddr:stdgo.GoUInt32, ?svaddr:stdgo.GoUInt32, ?ssize:stdgo.GoUInt32, ?sscnptr:stdgo.GoUInt32, ?srelptr:stdgo.GoUInt32, ?slnnoptr:stdgo.GoUInt32, ?snreloc:stdgo.GoUInt16, ?snlnno:stdgo.GoUInt16, ?sflags:stdgo.GoUInt32):Void`](<#sectionheader32-function-new>)

- [class SectionHeader64](<#class-sectionheader64>)

  - [`function new(?sname:stdgo.GoArray<stdgo.GoUInt8>, ?spaddr:stdgo.GoUInt64, ?svaddr:stdgo.GoUInt64, ?ssize:stdgo.GoUInt64, ?sscnptr:stdgo.GoUInt64, ?srelptr:stdgo.GoUInt64, ?slnnoptr:stdgo.GoUInt64, ?snreloc:stdgo.GoUInt32, ?snlnno:stdgo.GoUInt32, ?sflags:stdgo.GoUInt32, ?spad:stdgo.GoUInt32):Void`](<#sectionheader64-function-new>)

- [class SymEnt32](<#class-syment32>)

  - [`function new(?nname:stdgo.GoArray<stdgo.GoUInt8>, ?nvalue:stdgo.GoUInt32, ?nscnum:stdgo.GoUInt16, ?ntype:stdgo.GoUInt16, ?nsclass:stdgo.GoUInt8, ?nnumaux:stdgo.GoUInt8):Void`](<#syment32-function-new>)

- [class SymEnt64](<#class-syment64>)

  - [`function new(?nvalue:stdgo.GoUInt64, ?noffset:stdgo.GoUInt32, ?nscnum:stdgo.GoUInt16, ?ntype:stdgo.GoUInt16, ?nsclass:stdgo.GoUInt8, ?nnumaux:stdgo.GoUInt8):Void`](<#syment64-function-new>)

- [class Symbol](<#class-symbol>)

  - [`function new(?name:stdgo.GoString, ?value:stdgo.GoUInt64, ?sectionNumber:stdgo.GoInt, ?storageClass:stdgo.GoInt, ?auxFcn:stdgo._internal.internal.xcoff.AuxiliaryFcn, ?auxCSect:stdgo._internal.internal.xcoff.AuxiliaryCSect):Void`](<#symbol-function-new>)

- [class T\_bigarFileHeader](<#class-t_bigarfileheader>)

  - [`function new(?flmagic:stdgo.GoArray<stdgo.GoUInt8>, ?flmemoff:stdgo.GoArray<stdgo.GoUInt8>, ?flgstoff:stdgo.GoArray<stdgo.GoUInt8>, ?flgst64off:stdgo.GoArray<stdgo.GoUInt8>, ?flfstmoff:stdgo.GoArray<stdgo.GoUInt8>, ?fllstmoff:stdgo.GoArray<stdgo.GoUInt8>, ?flfreeoff:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_bigarfileheader-function-new>)

- [class T\_bigarMemberHeader](<#class-t_bigarmemberheader>)

  - [`function new(?arsize:stdgo.GoArray<stdgo.GoUInt8>, ?arnxtmem:stdgo.GoArray<stdgo.GoUInt8>, ?arprvmem:stdgo.GoArray<stdgo.GoUInt8>, ?ardate:stdgo.GoArray<stdgo.GoUInt8>, ?aruid:stdgo.GoArray<stdgo.GoUInt8>, ?argid:stdgo.GoArray<stdgo.GoUInt8>, ?armode:stdgo.GoArray<stdgo.GoUInt8>, ?arnamlen:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_bigarmemberheader-function-new>)

- [class T\_zeroReaderAt](<#class-t_zeroreaderat>)

  - [`function new():Void`](<#t_zeroreaderat-function-new>)

# Constants


```haxe
import stdgo._internal.internal.xcoff.Xcoff_xty_SD
```


```haxe
final __AUX_CSECT:stdgo.GoUInt64 = ((251i64 : stdgo.GoUInt64))
```


```haxe
final __AUX_EXCEPT:stdgo.GoUInt64 = ((255i64 : stdgo.GoUInt64))
```


```haxe
final __AUX_FCN:stdgo.GoUInt64 = ((254i64 : stdgo.GoUInt64))
```


```haxe
final __AUX_FILE:stdgo.GoUInt64 = ((252i64 : stdgo.GoUInt64))
```


```haxe
final __AUX_SECT:stdgo.GoUInt64 = ((250i64 : stdgo.GoUInt64))
```


```haxe
final __AUX_SYM:stdgo.GoUInt64 = ((253i64 : stdgo.GoUInt64))
```


```haxe
final aiafmag:stdgo.GoString = (("`\n" : stdgo.GoString))
```


```haxe
final aiamag:stdgo.GoString = (("<aiaff>\n" : stdgo.GoString))
```


```haxe
final aiamagbig:stdgo.GoString = (("<bigaf>\n" : stdgo.GoString))
```


```haxe
final ar_HSZ_BIG:stdgo.GoUInt64 = ((112i64 : stdgo.GoUInt64))
```


```haxe
final c_BCOMM:stdgo.GoUInt64 = ((135i64 : stdgo.GoUInt64))
```


```haxe
final c_BINCL:stdgo.GoUInt64 = ((108i64 : stdgo.GoUInt64))
```


```haxe
final c_BLOCK:stdgo.GoUInt64 = ((100i64 : stdgo.GoUInt64))
```


```haxe
final c_BSTAT:stdgo.GoUInt64 = ((143i64 : stdgo.GoUInt64))
```


```haxe
final c_DECL:stdgo.GoUInt64 = ((140i64 : stdgo.GoUInt64))
```


```haxe
final c_DWARF:stdgo.GoUInt64 = ((112i64 : stdgo.GoUInt64))
```


```haxe
final c_ECOML:stdgo.GoUInt64 = ((136i64 : stdgo.GoUInt64))
```


```haxe
final c_ECOMM:stdgo.GoUInt64 = ((137i64 : stdgo.GoUInt64))
```


```haxe
final c_EINCL:stdgo.GoUInt64 = ((109i64 : stdgo.GoUInt64))
```


```haxe
final c_ENTRY:stdgo.GoUInt64 = ((141i64 : stdgo.GoUInt64))
```


```haxe
final c_ESTAT:stdgo.GoUInt64 = ((144i64 : stdgo.GoUInt64))
```


```haxe
final c_EXT:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final c_FCN:stdgo.GoUInt64 = ((101i64 : stdgo.GoUInt64))
```


```haxe
final c_FILE:stdgo.GoUInt64 = ((103i64 : stdgo.GoUInt64))
```


```haxe
final c_FUN:stdgo.GoUInt64 = ((142i64 : stdgo.GoUInt64))
```


```haxe
final c_GSYM:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final c_GTLS:stdgo.GoUInt64 = ((145i64 : stdgo.GoUInt64))
```


```haxe
final c_HIDEXT:stdgo.GoUInt64 = ((107i64 : stdgo.GoUInt64))
```


```haxe
final c_LSYM:stdgo.GoUInt64 = ((129i64 : stdgo.GoUInt64))
```


```haxe
final c_NULL:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final c_PSYM:stdgo.GoUInt64 = ((130i64 : stdgo.GoUInt64))
```


```haxe
final c_RPSYM:stdgo.GoUInt64 = ((132i64 : stdgo.GoUInt64))
```


```haxe
final c_RSYM:stdgo.GoUInt64 = ((131i64 : stdgo.GoUInt64))
```


```haxe
final c_STAT:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final c_STSYM:stdgo.GoUInt64 = ((133i64 : stdgo.GoUInt64))
```


```haxe
final c_STTLS:stdgo.GoUInt64 = ((146i64 : stdgo.GoUInt64))
```


```haxe
final c_WEAKEXT:stdgo.GoUInt64 = ((111i64 : stdgo.GoUInt64))
```


```haxe
final f_DSA:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final f_DYNLOAD:stdgo.GoUInt64 = ((4096i64 : stdgo.GoUInt64))
```


```haxe
final f_EXEC:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final f_FDPR_OPTI:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final f_FDPR_PROF:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final f_LNNO:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final f_LOADONLY:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```


```haxe
final f_RELFLG:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final f_SHROBJ:stdgo.GoUInt64 = ((8192i64 : stdgo.GoUInt64))
```


```haxe
final f_VARPG:stdgo.GoUInt64 = ((256i64 : stdgo.GoUInt64))
```


```haxe
final filhsz_32:stdgo.GoUInt64 = ((20i64 : stdgo.GoUInt64))
```


```haxe
final filhsz_64:stdgo.GoUInt64 = ((24i64 : stdgo.GoUInt64))
```


```haxe
final fl_HSZ_BIG:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final ldhdrsz_32:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final ldhdrsz_64:stdgo.GoUInt64 = ((56i64 : stdgo.GoUInt64))
```


```haxe
final n_ABS:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final n_DEBUG:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final n_UNDEF:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final r_BA:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final r_BR:stdgo.GoUInt64 = ((10i64 : stdgo.GoUInt64))
```


```haxe
final r_GL:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final r_NEG:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final r_POS:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final r_RBA:stdgo.GoUInt64 = ((24i64 : stdgo.GoUInt64))
```


```haxe
final r_RBR:stdgo.GoUInt64 = ((26i64 : stdgo.GoUInt64))
```


```haxe
final r_REF:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final r_REL:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final r_RL:stdgo.GoUInt64 = ((12i64 : stdgo.GoUInt64))
```


```haxe
final r_RLA:stdgo.GoUInt64 = ((13i64 : stdgo.GoUInt64))
```


```haxe
final r_TCL:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final r_TLS:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final r_TLSM:stdgo.GoUInt64 = ((36i64 : stdgo.GoUInt64))
```


```haxe
final r_TLSML:stdgo.GoUInt64 = ((37i64 : stdgo.GoUInt64))
```


```haxe
final r_TLS_IE:stdgo.GoUInt64 = ((33i64 : stdgo.GoUInt64))
```


```haxe
final r_TLS_LD:stdgo.GoUInt64 = ((34i64 : stdgo.GoUInt64))
```


```haxe
final r_TLS_LE:stdgo.GoUInt64 = ((35i64 : stdgo.GoUInt64))
```


```haxe
final r_TOC:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final r_TOCL:stdgo.GoUInt64 = ((49i64 : stdgo.GoUInt64))
```


```haxe
final r_TOCU:stdgo.GoUInt64 = ((48i64 : stdgo.GoUInt64))
```


```haxe
final r_TRL:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```


```haxe
final r_TRLA:stdgo.GoUInt64 = ((19i64 : stdgo.GoUInt64))
```


```haxe
final saiamag:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWABREV:stdgo.GoUInt64 = ((393216i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWARNGE:stdgo.GoUInt64 = ((327680i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWFRAME:stdgo.GoUInt64 = ((655360i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWINFO:stdgo.GoUInt64 = ((65536i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWLINE:stdgo.GoUInt64 = ((131072i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWLOC:stdgo.GoUInt64 = ((589824i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWMAC:stdgo.GoUInt64 = ((720896i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWPBNMS:stdgo.GoUInt64 = ((196608i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWPBTYP:stdgo.GoUInt64 = ((262144i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWRNGES:stdgo.GoUInt64 = ((524288i64 : stdgo.GoUInt64))
```


```haxe
final ssubtyp_DWSTR:stdgo.GoUInt64 = ((458752i64 : stdgo.GoUInt64))
```


```haxe
final styp_BSS:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final styp_DATA:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final styp_DEBUG:stdgo.GoUInt64 = ((8192i64 : stdgo.GoUInt64))
```


```haxe
final styp_DWARF:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final styp_EXCEPT:stdgo.GoUInt64 = ((256i64 : stdgo.GoUInt64))
```


```haxe
final styp_INFO:stdgo.GoUInt64 = ((512i64 : stdgo.GoUInt64))
```


```haxe
final styp_LOADER:stdgo.GoUInt64 = ((4096i64 : stdgo.GoUInt64))
```


```haxe
final styp_OVRFLO:stdgo.GoUInt64 = ((32768i64 : stdgo.GoUInt64))
```


```haxe
final styp_TBSS:stdgo.GoUInt64 = ((2048i64 : stdgo.GoUInt64))
```


```haxe
final styp_TDATA:stdgo.GoUInt64 = ((1024i64 : stdgo.GoUInt64))
```


```haxe
final styp_TEXT:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final styp_TYPCHK:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```


```haxe
final sym_TYPE_FUNC:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final sym_V_EXPORTED:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```


```haxe
final sym_V_HIDDEN:stdgo.GoUInt64 = ((8192i64 : stdgo.GoUInt64))
```


```haxe
final sym_V_INTERNAL:stdgo.GoUInt64 = ((4096i64 : stdgo.GoUInt64))
```


```haxe
final sym_V_PROTECTED:stdgo.GoUInt64 = ((12288i64 : stdgo.GoUInt64))
```


```haxe
final symesz:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```


```haxe
final u64_TOCMAGIC:stdgo.GoUInt64 = ((503i64 : stdgo.GoUInt64))
```


```haxe
final u802tocmagic:stdgo.GoUInt64 = ((479i64 : stdgo.GoUInt64))
```


```haxe
final xft_CD:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final xft_CT:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final xft_CV:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final xft_FN:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final xmc_BS:stdgo.GoUInt64 = ((9i64 : stdgo.GoUInt64))
```


```haxe
final xmc_DB:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final xmc_DS:stdgo.GoUInt64 = ((10i64 : stdgo.GoUInt64))
```


```haxe
final xmc_GL:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final xmc_PR:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final xmc_RO:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final xmc_RW:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final xmc_SV:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final xmc_SV3264:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```


```haxe
final xmc_SV64:stdgo.GoUInt64 = ((17i64 : stdgo.GoUInt64))
```


```haxe
final xmc_TC:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final xmc_TC0:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final xmc_TD:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final xmc_TE:stdgo.GoUInt64 = ((22i64 : stdgo.GoUInt64))
```


```haxe
final xmc_TL:stdgo.GoUInt64 = ((20i64 : stdgo.GoUInt64))
```


```haxe
final xmc_UA:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final xmc_UC:stdgo.GoUInt64 = ((11i64 : stdgo.GoUInt64))
```


```haxe
final xmc_UL:stdgo.GoUInt64 = ((21i64 : stdgo.GoUInt64))
```


```haxe
final xmc_XO:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
```


```haxe
final xty_CM:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final xty_ER:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final xty_LD:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final xty_SD:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.internal.xcoff.Xcoff_xty_SD
```


## function \_cstring


```haxe
function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString
```


[\(view code\)](<./Xcoff_xty_SD.hx#L2>)


## function \_getString


```haxe
function _getString(_st:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoUInt32):{
	_1:Bool;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Xcoff_xty_SD.hx#L2>)


## function newArchive


```haxe
function newArchive(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.xcoff.Archive>;
}
```


[\(view code\)](<./Xcoff_xty_SD.hx#L2>)


## function newFile


```haxe
function newFile(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.xcoff.File>;
}
```


[\(view code\)](<./Xcoff_xty_SD.hx#L2>)


## function open


```haxe
function open(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.xcoff.File>;
}
```


[\(view code\)](<./Xcoff_xty_SD.hx#L2>)


## function openArchive


```haxe
function openArchive(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.xcoff.Archive>;
}
```


[\(view code\)](<./Xcoff_xty_SD.hx#L2>)


# Classes


```haxe
import stdgo._internal.internal.xcoff.*
```


## class Archive


```haxe
var _closer:stdgo._internal.io.Closer
```


```haxe
var archiveHeader:stdgo._internal.internal.xcoff.ArchiveHeader
```


```haxe
var members:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Member>>
```


### Archive function new


```haxe
function new(?archiveHeader:stdgo._internal.internal.xcoff.ArchiveHeader, ?members:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Member>>, ?_closer:stdgo._internal.io.Closer):Void
```


[\(view code\)](<./Xcoff_Archive.hx#L7>)


## class ArchiveHeader


```haxe
var _magic:stdgo.GoString
```


### ArchiveHeader function new


```haxe
function new(?_magic:stdgo.GoString):Void
```


[\(view code\)](<./Xcoff_ArchiveHeader.hx#L4>)


## class AuxCSect32


```haxe
var xparmhash:stdgo.GoUInt32
```


```haxe
var xscnlen:stdgo.GoUInt32
```


```haxe
var xsmclas:stdgo.GoUInt8
```


```haxe
var xsmtyp:stdgo.GoUInt8
```


```haxe
var xsnhash:stdgo.GoUInt16
```


```haxe
var xsnstab:stdgo.GoUInt16
```


```haxe
var xstab:stdgo.GoUInt32
```


### AuxCSect32 function new


```haxe
function new(?xscnlen:stdgo.GoUInt32, ?xparmhash:stdgo.GoUInt32, ?xsnhash:stdgo.GoUInt16, ?xsmtyp:stdgo.GoUInt8, ?xsmclas:stdgo.GoUInt8, ?xstab:stdgo.GoUInt32, ?xsnstab:stdgo.GoUInt16):Void
```


[\(view code\)](<./Xcoff_AuxCSect32.hx#L10>)


## class AuxCSect64


```haxe
var xauxtype:stdgo.GoUInt8
```


```haxe
var xpad:stdgo.GoUInt8
```


```haxe
var xparmhash:stdgo.GoUInt32
```


```haxe
var xscnlenhi:stdgo.GoUInt32
```


```haxe
var xscnlenlo:stdgo.GoUInt32
```


```haxe
var xsmclas:stdgo.GoUInt8
```


```haxe
var xsmtyp:stdgo.GoUInt8
```


```haxe
var xsnhash:stdgo.GoUInt16
```


### AuxCSect64 function new


```haxe
function new(?xscnlenlo:stdgo.GoUInt32, ?xparmhash:stdgo.GoUInt32, ?xsnhash:stdgo.GoUInt16, ?xsmtyp:stdgo.GoUInt8, ?xsmclas:stdgo.GoUInt8, ?xscnlenhi:stdgo.GoUInt32, ?xpad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_AuxCSect64.hx#L11>)


## class AuxFcn32


```haxe
var xendndx:stdgo.GoUInt32
```


```haxe
var xexptr:stdgo.GoUInt32
```


```haxe
var xfsize:stdgo.GoUInt32
```


```haxe
var xlnnoptr:stdgo.GoUInt32
```


```haxe
var xpad:stdgo.GoUInt16
```


### AuxFcn32 function new


```haxe
function new(?xexptr:stdgo.GoUInt32, ?xfsize:stdgo.GoUInt32, ?xlnnoptr:stdgo.GoUInt32, ?xendndx:stdgo.GoUInt32, ?xpad:stdgo.GoUInt16):Void
```


[\(view code\)](<./Xcoff_AuxFcn32.hx#L8>)


## class AuxFcn64


```haxe
var xauxtype:stdgo.GoUInt8
```


```haxe
var xendndx:stdgo.GoUInt32
```


```haxe
var xfsize:stdgo.GoUInt32
```


```haxe
var xlnnoptr:stdgo.GoUInt64
```


```haxe
var xpad:stdgo.GoUInt8
```


### AuxFcn64 function new


```haxe
function new(?xlnnoptr:stdgo.GoUInt64, ?xfsize:stdgo.GoUInt32, ?xendndx:stdgo.GoUInt32, ?xpad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_AuxFcn64.hx#L8>)


## class AuxFile64


```haxe
var xauxtype:stdgo.GoUInt8
```


```haxe
var xfname:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var xftype:stdgo.GoUInt8
```


### AuxFile64 function new


```haxe
function new(?xfname:stdgo.GoArray<stdgo.GoUInt8>, ?xftype:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_AuxFile64.hx#L6>)


## class AuxSect64


```haxe
var _pad:stdgo.GoUInt8
```


```haxe
var xauxtype:stdgo.GoUInt8
```


```haxe
var xnreloc:stdgo.GoUInt64
```


```haxe
var xscnlen:stdgo.GoUInt64
```


### AuxSect64 function new


```haxe
function new(?xscnlen:stdgo.GoUInt64, ?xnreloc:stdgo.GoUInt64, ?_pad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_AuxSect64.hx#L7>)


## class AuxiliaryCSect


```haxe
var length_:stdgo.GoInt64
```


```haxe
var storageMappingClass:stdgo.GoInt
```


```haxe
var symbolType:stdgo.GoInt
```


### AuxiliaryCSect function new


```haxe
function new(?length_:stdgo.GoInt64, ?storageMappingClass:stdgo.GoInt, ?symbolType:stdgo.GoInt):Void
```


[\(view code\)](<./Xcoff_AuxiliaryCSect.hx#L6>)


## class AuxiliaryFcn


```haxe
var size:stdgo.GoInt64
```


### AuxiliaryFcn function new


```haxe
function new(?size:stdgo.GoInt64):Void
```


[\(view code\)](<./Xcoff_AuxiliaryFcn.hx#L4>)


## class File


```haxe
var _closer:stdgo._internal.io.Closer
```


```haxe
var fileHeader:stdgo._internal.internal.xcoff.FileHeader
```


```haxe
var libraryPaths:stdgo.Slice<stdgo.GoString>
```


```haxe
var sections:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Section>>
```


```haxe
var stringTable:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var symbols:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Symbol>>
```


### File function new


```haxe
function new(?fileHeader:stdgo._internal.internal.xcoff.FileHeader, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Section>>, ?symbols:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Symbol>>, ?stringTable:stdgo.Slice<stdgo.GoUInt8>, ?libraryPaths:stdgo.Slice<stdgo.GoString>, ?_closer:stdgo._internal.io.Closer):Void
```


[\(view code\)](<./Xcoff_File.hx#L10>)


## class FileHeader


```haxe
var targetMachine:stdgo.GoUInt16
```


### FileHeader function new


```haxe
function new(?targetMachine:stdgo.GoUInt16):Void
```


[\(view code\)](<./Xcoff_FileHeader.hx#L4>)


## class FileHeader32


```haxe
var fflags:stdgo.GoUInt16
```


```haxe
var fmagic:stdgo.GoUInt16
```


```haxe
var fnscns:stdgo.GoUInt16
```


```haxe
var fnsyms:stdgo.GoUInt32
```


```haxe
var fopthdr:stdgo.GoUInt16
```


```haxe
var fsymptr:stdgo.GoUInt32
```


```haxe
var ftimedat:stdgo.GoUInt32
```


### FileHeader32 function new


```haxe
function new(?fmagic:stdgo.GoUInt16, ?fnscns:stdgo.GoUInt16, ?ftimedat:stdgo.GoUInt32, ?fsymptr:stdgo.GoUInt32, ?fnsyms:stdgo.GoUInt32, ?fopthdr:stdgo.GoUInt16, ?fflags:stdgo.GoUInt16):Void
```


[\(view code\)](<./Xcoff_FileHeader32.hx#L10>)


## class FileHeader64


```haxe
var fflags:stdgo.GoUInt16
```


```haxe
var fmagic:stdgo.GoUInt16
```


```haxe
var fnscns:stdgo.GoUInt16
```


```haxe
var fnsyms:stdgo.GoUInt32
```


```haxe
var fopthdr:stdgo.GoUInt16
```


```haxe
var fsymptr:stdgo.GoUInt64
```


```haxe
var ftimedat:stdgo.GoUInt32
```


### FileHeader64 function new


```haxe
function new(?fmagic:stdgo.GoUInt16, ?fnscns:stdgo.GoUInt16, ?ftimedat:stdgo.GoUInt32, ?fsymptr:stdgo.GoUInt64, ?fopthdr:stdgo.GoUInt16, ?fflags:stdgo.GoUInt16, ?fnsyms:stdgo.GoUInt32):Void
```


[\(view code\)](<./Xcoff_FileHeader64.hx#L10>)


## class ImportedSymbol


```haxe
var library:stdgo.GoString
```


```haxe
var name:stdgo.GoString
```


### ImportedSymbol function new


```haxe
function new(?name:stdgo.GoString, ?library:stdgo.GoString):Void
```


[\(view code\)](<./Xcoff_ImportedSymbol.hx#L5>)


## class LoaderHeader32


```haxe
var limpoff:stdgo.GoUInt32
```


```haxe
var listlen:stdgo.GoUInt32
```


```haxe
var lnimpid:stdgo.GoUInt32
```


```haxe
var lnreloc:stdgo.GoUInt32
```


```haxe
var lnsyms:stdgo.GoUInt32
```


```haxe
var lstlen:stdgo.GoUInt32
```


```haxe
var lstoff:stdgo.GoUInt32
```


```haxe
var lversion:stdgo.GoUInt32
```


### LoaderHeader32 function new


```haxe
function new(?lversion:stdgo.GoUInt32, ?lnsyms:stdgo.GoUInt32, ?lnreloc:stdgo.GoUInt32, ?listlen:stdgo.GoUInt32, ?lnimpid:stdgo.GoUInt32, ?limpoff:stdgo.GoUInt32, ?lstlen:stdgo.GoUInt32, ?lstoff:stdgo.GoUInt32):Void
```


[\(view code\)](<./Xcoff_LoaderHeader32.hx#L11>)


## class LoaderHeader64


```haxe
var limpoff:stdgo.GoUInt64
```


```haxe
var listlen:stdgo.GoUInt32
```


```haxe
var lnimpid:stdgo.GoUInt32
```


```haxe
var lnreloc:stdgo.GoUInt32
```


```haxe
var lnsyms:stdgo.GoUInt32
```


```haxe
var lrldoff:stdgo.GoUInt64
```


```haxe
var lstlen:stdgo.GoUInt32
```


```haxe
var lstoff:stdgo.GoUInt64
```


```haxe
var lsymoff:stdgo.GoUInt64
```


```haxe
var lversion:stdgo.GoUInt32
```


### LoaderHeader64 function new


```haxe
function new(?lversion:stdgo.GoUInt32, ?lnsyms:stdgo.GoUInt32, ?lnreloc:stdgo.GoUInt32, ?listlen:stdgo.GoUInt32, ?lnimpid:stdgo.GoUInt32, ?lstlen:stdgo.GoUInt32, ?limpoff:stdgo.GoUInt64, ?lstoff:stdgo.GoUInt64, ?lsymoff:stdgo.GoUInt64, ?lrldoff:stdgo.GoUInt64):Void
```


[\(view code\)](<./Xcoff_LoaderHeader64.hx#L13>)


## class LoaderSymbol32


```haxe
var lifile:stdgo.GoUInt32
```


```haxe
var lname:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var lparm:stdgo.GoUInt32
```


```haxe
var lscnum:stdgo.GoUInt16
```


```haxe
var lsmclas:stdgo.GoUInt8
```


```haxe
var lsmtype:stdgo.GoUInt8
```


```haxe
var lvalue:stdgo.GoUInt32
```


### LoaderSymbol32 function new


```haxe
function new(?lname:stdgo.GoArray<stdgo.GoUInt8>, ?lvalue:stdgo.GoUInt32, ?lscnum:stdgo.GoUInt16, ?lsmtype:stdgo.GoUInt8, ?lsmclas:stdgo.GoUInt8, ?lifile:stdgo.GoUInt32, ?lparm:stdgo.GoUInt32):Void
```


[\(view code\)](<./Xcoff_LoaderSymbol32.hx#L10>)


## class LoaderSymbol64


```haxe
var lifile:stdgo.GoUInt32
```


```haxe
var loffset:stdgo.GoUInt32
```


```haxe
var lparm:stdgo.GoUInt32
```


```haxe
var lscnum:stdgo.GoUInt16
```


```haxe
var lsmclas:stdgo.GoUInt8
```


```haxe
var lsmtype:stdgo.GoUInt8
```


```haxe
var lvalue:stdgo.GoUInt64
```


### LoaderSymbol64 function new


```haxe
function new(?lvalue:stdgo.GoUInt64, ?loffset:stdgo.GoUInt32, ?lscnum:stdgo.GoUInt16, ?lsmtype:stdgo.GoUInt8, ?lsmclas:stdgo.GoUInt8, ?lifile:stdgo.GoUInt32, ?lparm:stdgo.GoUInt32):Void
```


[\(view code\)](<./Xcoff_LoaderSymbol64.hx#L10>)


## class Member


```haxe
var _sr:stdgo.Ref<stdgo._internal.io.SectionReader>
```


```haxe
var memberHeader:stdgo._internal.internal.xcoff.MemberHeader
```


### Member function new


```haxe
function new(?memberHeader:stdgo._internal.internal.xcoff.MemberHeader, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void
```


[\(view code\)](<./Xcoff_Member.hx#L6>)


## class MemberHeader


```haxe
var name:stdgo.GoString
```


```haxe
var size:stdgo.GoUInt64
```


### MemberHeader function new


```haxe
function new(?name:stdgo.GoString, ?size:stdgo.GoUInt64):Void
```


[\(view code\)](<./Xcoff_MemberHeader.hx#L5>)


## class Reloc


```haxe
var instructionFixed:Bool
```


```haxe
var length_:stdgo.GoUInt8
```


```haxe
var signed:Bool
```


```haxe
var symbol:stdgo.Ref<stdgo._internal.internal.xcoff.Symbol>
```


```haxe
var type:stdgo.GoUInt8
```


```haxe
var virtualAddress:stdgo.GoUInt64
```


### Reloc function new


```haxe
function new(?virtualAddress:stdgo.GoUInt64, ?symbol:stdgo.Ref<stdgo._internal.internal.xcoff.Symbol>, ?signed:Bool, ?instructionFixed:Bool, ?length_:stdgo.GoUInt8, ?type:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_Reloc.hx#L9>)


## class Reloc32


```haxe
var rsize:stdgo.GoUInt8
```


```haxe
var rsymndx:stdgo.GoUInt32
```


```haxe
var rtype:stdgo.GoUInt8
```


```haxe
var rvaddr:stdgo.GoUInt32
```


### Reloc32 function new


```haxe
function new(?rvaddr:stdgo.GoUInt32, ?rsymndx:stdgo.GoUInt32, ?rsize:stdgo.GoUInt8, ?rtype:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_Reloc32.hx#L7>)


## class Reloc64


```haxe
var rsize:stdgo.GoUInt8
```


```haxe
var rsymndx:stdgo.GoUInt32
```


```haxe
var rtype:stdgo.GoUInt8
```


```haxe
var rvaddr:stdgo.GoUInt64
```


### Reloc64 function new


```haxe
function new(?rvaddr:stdgo.GoUInt64, ?rsymndx:stdgo.GoUInt32, ?rsize:stdgo.GoUInt8, ?rtype:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_Reloc64.hx#L7>)


## class Section


```haxe
var _sr:stdgo.Ref<stdgo._internal.io.SectionReader>
```


```haxe
var readerAt:stdgo._internal.io.ReaderAt
```


```haxe
var relocs:stdgo.Slice<stdgo._internal.internal.xcoff.Reloc>
```


```haxe
var sectionHeader:stdgo._internal.internal.xcoff.SectionHeader
```


### Section function new


```haxe
function new(?sectionHeader:stdgo._internal.internal.xcoff.SectionHeader, ?relocs:stdgo.Slice<stdgo._internal.internal.xcoff.Reloc>, ?readerAt:stdgo._internal.io.ReaderAt, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void
```


[\(view code\)](<./Xcoff_Section.hx#L9>)


### Section function readAt


```haxe
function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Xcoff_Section.hx#L17>)


## class SectionHeader


```haxe
var name:stdgo.GoString
```


```haxe
var nreloc:stdgo.GoUInt32
```


```haxe
var relptr:stdgo.GoUInt64
```


```haxe
var size:stdgo.GoUInt64
```


```haxe
var type:stdgo.GoUInt32
```


```haxe
var virtualAddress:stdgo.GoUInt64
```


### SectionHeader function new


```haxe
function new(?name:stdgo.GoString, ?virtualAddress:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?type:stdgo.GoUInt32, ?relptr:stdgo.GoUInt64, ?nreloc:stdgo.GoUInt32):Void
```


[\(view code\)](<./Xcoff_SectionHeader.hx#L9>)


## class SectionHeader32


```haxe
var sflags:stdgo.GoUInt32
```


```haxe
var slnnoptr:stdgo.GoUInt32
```


```haxe
var sname:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var snlnno:stdgo.GoUInt16
```


```haxe
var snreloc:stdgo.GoUInt16
```


```haxe
var spaddr:stdgo.GoUInt32
```


```haxe
var srelptr:stdgo.GoUInt32
```


```haxe
var sscnptr:stdgo.GoUInt32
```


```haxe
var ssize:stdgo.GoUInt32
```


```haxe
var svaddr:stdgo.GoUInt32
```


### SectionHeader32 function new


```haxe
function new(?sname:stdgo.GoArray<stdgo.GoUInt8>, ?spaddr:stdgo.GoUInt32, ?svaddr:stdgo.GoUInt32, ?ssize:stdgo.GoUInt32, ?sscnptr:stdgo.GoUInt32, ?srelptr:stdgo.GoUInt32, ?slnnoptr:stdgo.GoUInt32, ?snreloc:stdgo.GoUInt16, ?snlnno:stdgo.GoUInt16, ?sflags:stdgo.GoUInt32):Void
```


[\(view code\)](<./Xcoff_SectionHeader32.hx#L13>)


## class SectionHeader64


```haxe
var sflags:stdgo.GoUInt32
```


```haxe
var slnnoptr:stdgo.GoUInt64
```


```haxe
var sname:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var snlnno:stdgo.GoUInt32
```


```haxe
var snreloc:stdgo.GoUInt32
```


```haxe
var spad:stdgo.GoUInt32
```


```haxe
var spaddr:stdgo.GoUInt64
```


```haxe
var srelptr:stdgo.GoUInt64
```


```haxe
var sscnptr:stdgo.GoUInt64
```


```haxe
var ssize:stdgo.GoUInt64
```


```haxe
var svaddr:stdgo.GoUInt64
```


### SectionHeader64 function new


```haxe
function new(?sname:stdgo.GoArray<stdgo.GoUInt8>, ?spaddr:stdgo.GoUInt64, ?svaddr:stdgo.GoUInt64, ?ssize:stdgo.GoUInt64, ?sscnptr:stdgo.GoUInt64, ?srelptr:stdgo.GoUInt64, ?slnnoptr:stdgo.GoUInt64, ?snreloc:stdgo.GoUInt32, ?snlnno:stdgo.GoUInt32, ?sflags:stdgo.GoUInt32, ?spad:stdgo.GoUInt32):Void
```


[\(view code\)](<./Xcoff_SectionHeader64.hx#L14>)


## class SymEnt32


```haxe
var nname:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var nnumaux:stdgo.GoUInt8
```


```haxe
var nsclass:stdgo.GoUInt8
```


```haxe
var nscnum:stdgo.GoUInt16
```


```haxe
var ntype:stdgo.GoUInt16
```


```haxe
var nvalue:stdgo.GoUInt32
```


### SymEnt32 function new


```haxe
function new(?nname:stdgo.GoArray<stdgo.GoUInt8>, ?nvalue:stdgo.GoUInt32, ?nscnum:stdgo.GoUInt16, ?ntype:stdgo.GoUInt16, ?nsclass:stdgo.GoUInt8, ?nnumaux:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_SymEnt32.hx#L9>)


## class SymEnt64


```haxe
var nnumaux:stdgo.GoUInt8
```


```haxe
var noffset:stdgo.GoUInt32
```


```haxe
var nsclass:stdgo.GoUInt8
```


```haxe
var nscnum:stdgo.GoUInt16
```


```haxe
var ntype:stdgo.GoUInt16
```


```haxe
var nvalue:stdgo.GoUInt64
```


### SymEnt64 function new


```haxe
function new(?nvalue:stdgo.GoUInt64, ?noffset:stdgo.GoUInt32, ?nscnum:stdgo.GoUInt16, ?ntype:stdgo.GoUInt16, ?nsclass:stdgo.GoUInt8, ?nnumaux:stdgo.GoUInt8):Void
```


[\(view code\)](<./Xcoff_SymEnt64.hx#L9>)


## class Symbol


```haxe
var auxCSect:stdgo._internal.internal.xcoff.AuxiliaryCSect
```


```haxe
var auxFcn:stdgo._internal.internal.xcoff.AuxiliaryFcn
```


```haxe
var name:stdgo.GoString
```


```haxe
var sectionNumber:stdgo.GoInt
```


```haxe
var storageClass:stdgo.GoInt
```


```haxe
var value:stdgo.GoUInt64
```


### Symbol function new


```haxe
function new(?name:stdgo.GoString, ?value:stdgo.GoUInt64, ?sectionNumber:stdgo.GoInt, ?storageClass:stdgo.GoInt, ?auxFcn:stdgo._internal.internal.xcoff.AuxiliaryFcn, ?auxCSect:stdgo._internal.internal.xcoff.AuxiliaryCSect):Void
```


[\(view code\)](<./Xcoff_Symbol.hx#L9>)


## class T\_bigarFileHeader


```haxe
var flfreeoff:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var flfstmoff:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var flgst64off:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var flgstoff:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var fllstmoff:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var flmagic:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var flmemoff:stdgo.GoArray<stdgo.GoUInt8>
```


### T\_bigarFileHeader function new


```haxe
function new(?flmagic:stdgo.GoArray<stdgo.GoUInt8>, ?flmemoff:stdgo.GoArray<stdgo.GoUInt8>, ?flgstoff:stdgo.GoArray<stdgo.GoUInt8>, ?flgst64off:stdgo.GoArray<stdgo.GoUInt8>, ?flfstmoff:stdgo.GoArray<stdgo.GoUInt8>, ?fllstmoff:stdgo.GoArray<stdgo.GoUInt8>, ?flfreeoff:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Xcoff_T_bigarFileHeader.hx#L10>)


## class T\_bigarMemberHeader


```haxe
var ardate:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var argid:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var armode:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var arnamlen:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var arnxtmem:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var arprvmem:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var arsize:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var aruid:stdgo.GoArray<stdgo.GoUInt8>
```


### T\_bigarMemberHeader function new


```haxe
function new(?arsize:stdgo.GoArray<stdgo.GoUInt8>, ?arnxtmem:stdgo.GoArray<stdgo.GoUInt8>, ?arprvmem:stdgo.GoArray<stdgo.GoUInt8>, ?ardate:stdgo.GoArray<stdgo.GoUInt8>, ?aruid:stdgo.GoArray<stdgo.GoUInt8>, ?argid:stdgo.GoArray<stdgo.GoUInt8>, ?armode:stdgo.GoArray<stdgo.GoUInt8>, ?arnamlen:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Xcoff_T_bigarMemberHeader.hx#L11>)


## class T\_zeroReaderAt


### T\_zeroReaderAt function new


```haxe
function new():Void
```


[\(view code\)](<./Xcoff_T_zeroReaderAt.hx#L3>)


