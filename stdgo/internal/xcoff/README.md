# Module: `stdgo.internal.xcoff`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Xcoff](<#class-xcoff>)

  - [`function newArchive(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.internal.xcoff.Archive, stdgo.Error>`](<#xcoff-function-newarchive>)

  - [`function newFile(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.internal.xcoff.File, stdgo.Error>`](<#xcoff-function-newfile>)

  - [`function open(_name:String):stdgo.Tuple<stdgo.internal.xcoff.File, stdgo.Error>`](<#xcoff-function-open>)

  - [`function openArchive(_name:String):stdgo.Tuple<stdgo.internal.xcoff.Archive, stdgo.Error>`](<#xcoff-function-openarchive>)

- [abstract T\_bigarFileHeader](<#abstract-t_bigarfileheader>)

- [abstract T\_bigarMemberHeader](<#abstract-t_bigarmemberheader>)

- [abstract Archive](<#abstract-archive>)

- [abstract ArchiveHeader](<#abstract-archiveheader>)

- [abstract Member](<#abstract-member>)

- [abstract MemberHeader](<#abstract-memberheader>)

- [abstract SectionHeader](<#abstract-sectionheader>)

- [abstract Section](<#abstract-section>)

- [abstract AuxiliaryCSect](<#abstract-auxiliarycsect>)

- [abstract AuxiliaryFcn](<#abstract-auxiliaryfcn>)

- [abstract Symbol](<#abstract-symbol>)

- [abstract Reloc](<#abstract-reloc>)

- [abstract ImportedSymbol](<#abstract-importedsymbol>)

- [abstract FileHeader](<#abstract-fileheader>)

- [abstract File](<#abstract-file>)

- [abstract T\_zeroReaderAt](<#abstract-t_zeroreaderat>)

- [abstract FileHeader32](<#abstract-fileheader32>)

- [abstract FileHeader64](<#abstract-fileheader64>)

- [abstract SectionHeader32](<#abstract-sectionheader32>)

- [abstract SectionHeader64](<#abstract-sectionheader64>)

- [abstract SymEnt32](<#abstract-syment32>)

- [abstract SymEnt64](<#abstract-syment64>)

- [abstract AuxFile64](<#abstract-auxfile64>)

- [abstract AuxFcn32](<#abstract-auxfcn32>)

- [abstract AuxFcn64](<#abstract-auxfcn64>)

- [abstract AuxSect64](<#abstract-auxsect64>)

- [abstract AuxCSect32](<#abstract-auxcsect32>)

- [abstract AuxCSect64](<#abstract-auxcsect64>)

- [abstract LoaderHeader32](<#abstract-loaderheader32>)

- [abstract LoaderHeader64](<#abstract-loaderheader64>)

- [abstract LoaderSymbol32](<#abstract-loadersymbol32>)

- [abstract LoaderSymbol64](<#abstract-loadersymbol64>)

- [abstract Reloc32](<#abstract-reloc32>)

- [abstract Reloc64](<#abstract-reloc64>)

# Constants


```haxe
import stdgo.internal.xcoff.Xcoff
```


```haxe
final aiafmag:String = stdgo._internal.internal.xcoff.Xcoff_aiafmag.aiafmag
```


```haxe
final aiamag:String = stdgo._internal.internal.xcoff.Xcoff_aiamag.aiamag
```


```haxe
final aiamagbig:String = stdgo._internal.internal.xcoff.Xcoff_aiamagbig.aiamagbig
```


```haxe
final ar_HSZ_BIG:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ar_HSZ_BIG.ar_HSZ_BIG
```


```haxe
final c_BCOMM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_BCOMM.c_BCOMM
```


```haxe
final c_BINCL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_BINCL.c_BINCL
```


```haxe
final c_BLOCK:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_BLOCK.c_BLOCK
```


```haxe
final c_BSTAT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_BSTAT.c_BSTAT
```


```haxe
final c_DECL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_DECL.c_DECL
```


```haxe
final c_DWARF:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_DWARF.c_DWARF
```


```haxe
final c_ECOML:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_ECOML.c_ECOML
```


```haxe
final c_ECOMM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_ECOMM.c_ECOMM
```


```haxe
final c_EINCL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_EINCL.c_EINCL
```


```haxe
final c_ENTRY:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_ENTRY.c_ENTRY
```


```haxe
final c_ESTAT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_ESTAT.c_ESTAT
```


```haxe
final c_EXT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_EXT.c_EXT
```


```haxe
final c_FCN:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_FCN.c_FCN
```


```haxe
final c_FILE:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_FILE.c_FILE
```


```haxe
final c_FUN:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_FUN.c_FUN
```


```haxe
final c_GSYM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_GSYM.c_GSYM
```


```haxe
final c_GTLS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_GTLS.c_GTLS
```


```haxe
final c_HIDEXT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_HIDEXT.c_HIDEXT
```


```haxe
final c_LSYM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_LSYM.c_LSYM
```


```haxe
final c_NULL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_NULL.c_NULL
```


```haxe
final c_PSYM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_PSYM.c_PSYM
```


```haxe
final c_RPSYM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_RPSYM.c_RPSYM
```


```haxe
final c_RSYM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_RSYM.c_RSYM
```


```haxe
final c_STAT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_STAT.c_STAT
```


```haxe
final c_STSYM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_STSYM.c_STSYM
```


```haxe
final c_STTLS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_STTLS.c_STTLS
```


```haxe
final c_WEAKEXT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_c_WEAKEXT.c_WEAKEXT
```


```haxe
final f_DSA:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_DSA.f_DSA
```


```haxe
final f_DYNLOAD:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_DYNLOAD.f_DYNLOAD
```


```haxe
final f_EXEC:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_EXEC.f_EXEC
```


```haxe
final f_FDPR_OPTI:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_FDPR_OPTI.f_FDPR_OPTI
```


```haxe
final f_FDPR_PROF:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_FDPR_PROF.f_FDPR_PROF
```


```haxe
final f_LNNO:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_LNNO.f_LNNO
```


```haxe
final f_LOADONLY:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_LOADONLY.f_LOADONLY
```


```haxe
final f_RELFLG:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_RELFLG.f_RELFLG
```


```haxe
final f_SHROBJ:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_SHROBJ.f_SHROBJ
```


```haxe
final f_VARPG:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_f_VARPG.f_VARPG
```


```haxe
final filhsz_32:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_filhsz_32.filhsz_32
```


```haxe
final filhsz_64:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_filhsz_64.filhsz_64
```


```haxe
final fl_HSZ_BIG:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_fl_HSZ_BIG.fl_HSZ_BIG
```


```haxe
final ldhdrsz_32:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ldhdrsz_32.ldhdrsz_32
```


```haxe
final ldhdrsz_64:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ldhdrsz_64.ldhdrsz_64
```


```haxe
final n_ABS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_n_ABS.n_ABS
```


```haxe
final n_DEBUG:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_n_DEBUG.n_DEBUG
```


```haxe
final n_UNDEF:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_n_UNDEF.n_UNDEF
```


```haxe
final r_BA:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_BA.r_BA
```


```haxe
final r_BR:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_BR.r_BR
```


```haxe
final r_GL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_GL.r_GL
```


```haxe
final r_NEG:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_NEG.r_NEG
```


```haxe
final r_POS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_POS.r_POS
```


```haxe
final r_RBA:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_RBA.r_RBA
```


```haxe
final r_RBR:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_RBR.r_RBR
```


```haxe
final r_REF:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_REF.r_REF
```


```haxe
final r_REL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_REL.r_REL
```


```haxe
final r_RL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_RL.r_RL
```


```haxe
final r_RLA:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_RLA.r_RLA
```


```haxe
final r_TCL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TCL.r_TCL
```


```haxe
final r_TLS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TLS.r_TLS
```


```haxe
final r_TLSM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TLSM.r_TLSM
```


```haxe
final r_TLSML:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TLSML.r_TLSML
```


```haxe
final r_TLS_IE:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TLS_IE.r_TLS_IE
```


```haxe
final r_TLS_LD:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TLS_LD.r_TLS_LD
```


```haxe
final r_TLS_LE:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TLS_LE.r_TLS_LE
```


```haxe
final r_TOC:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TOC.r_TOC
```


```haxe
final r_TOCL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TOCL.r_TOCL
```


```haxe
final r_TOCU:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TOCU.r_TOCU
```


```haxe
final r_TRL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TRL.r_TRL
```


```haxe
final r_TRLA:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_r_TRLA.r_TRLA
```


```haxe
final saiamag:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_saiamag.saiamag
```


```haxe
final ssubtyp_DWABREV:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWABREV.ssubtyp_DWABREV
```


```haxe
final ssubtyp_DWARNGE:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWARNGE.ssubtyp_DWARNGE
```


```haxe
final ssubtyp_DWFRAME:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWFRAME.ssubtyp_DWFRAME
```


```haxe
final ssubtyp_DWINFO:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWINFO.ssubtyp_DWINFO
```


```haxe
final ssubtyp_DWLINE:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWLINE.ssubtyp_DWLINE
```


```haxe
final ssubtyp_DWLOC:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWLOC.ssubtyp_DWLOC
```


```haxe
final ssubtyp_DWMAC:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWMAC.ssubtyp_DWMAC
```


```haxe
final ssubtyp_DWPBNMS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWPBNMS.ssubtyp_DWPBNMS
```


```haxe
final ssubtyp_DWPBTYP:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWPBTYP.ssubtyp_DWPBTYP
```


```haxe
final ssubtyp_DWRNGES:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWRNGES.ssubtyp_DWRNGES
```


```haxe
final ssubtyp_DWSTR:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_ssubtyp_DWSTR.ssubtyp_DWSTR
```


```haxe
final styp_BSS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_BSS.styp_BSS
```


```haxe
final styp_DATA:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_DATA.styp_DATA
```


```haxe
final styp_DEBUG:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_DEBUG.styp_DEBUG
```


```haxe
final styp_DWARF:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_DWARF.styp_DWARF
```


```haxe
final styp_EXCEPT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_EXCEPT.styp_EXCEPT
```


```haxe
final styp_INFO:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_INFO.styp_INFO
```


```haxe
final styp_LOADER:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_LOADER.styp_LOADER
```


```haxe
final styp_OVRFLO:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_OVRFLO.styp_OVRFLO
```


```haxe
final styp_TBSS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_TBSS.styp_TBSS
```


```haxe
final styp_TDATA:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_TDATA.styp_TDATA
```


```haxe
final styp_TEXT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_TEXT.styp_TEXT
```


```haxe
final styp_TYPCHK:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_styp_TYPCHK.styp_TYPCHK
```


```haxe
final sym_TYPE_FUNC:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_sym_TYPE_FUNC.sym_TYPE_FUNC
```


```haxe
final sym_V_EXPORTED:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_sym_V_EXPORTED.sym_V_EXPORTED
```


```haxe
final sym_V_HIDDEN:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_sym_V_HIDDEN.sym_V_HIDDEN
```


```haxe
final sym_V_INTERNAL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_sym_V_INTERNAL.sym_V_INTERNAL
```


```haxe
final sym_V_PROTECTED:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_sym_V_PROTECTED.sym_V_PROTECTED
```


```haxe
final symesz:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_symesz.symesz
```


```haxe
final u64_TOCMAGIC:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_u64_TOCMAGIC.u64_TOCMAGIC
```


```haxe
final u802tocmagic:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_u802tocmagic.u802tocmagic
```


```haxe
final xft_CD:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xft_CD.xft_CD
```


```haxe
final xft_CT:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xft_CT.xft_CT
```


```haxe
final xft_CV:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xft_CV.xft_CV
```


```haxe
final xft_FN:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xft_FN.xft_FN
```


```haxe
final xmc_BS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_BS.xmc_BS
```


```haxe
final xmc_DB:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_DB.xmc_DB
```


```haxe
final xmc_DS:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_DS.xmc_DS
```


```haxe
final xmc_GL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_GL.xmc_GL
```


```haxe
final xmc_PR:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_PR.xmc_PR
```


```haxe
final xmc_RO:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_RO.xmc_RO
```


```haxe
final xmc_RW:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_RW.xmc_RW
```


```haxe
final xmc_SV:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_SV.xmc_SV
```


```haxe
final xmc_SV3264:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_SV3264.xmc_SV3264
```


```haxe
final xmc_SV64:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_SV64.xmc_SV64
```


```haxe
final xmc_TC:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_TC.xmc_TC
```


```haxe
final xmc_TC0:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_TC0.xmc_TC0
```


```haxe
final xmc_TD:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_TD.xmc_TD
```


```haxe
final xmc_TE:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_TE.xmc_TE
```


```haxe
final xmc_TL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_TL.xmc_TL
```


```haxe
final xmc_UA:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_UA.xmc_UA
```


```haxe
final xmc_UC:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_UC.xmc_UC
```


```haxe
final xmc_UL:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_UL.xmc_UL
```


```haxe
final xmc_XO:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xmc_XO.xmc_XO
```


```haxe
final xty_CM:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xty_CM.xty_CM
```


```haxe
final xty_ER:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xty_ER.xty_ER
```


```haxe
final xty_LD:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xty_LD.xty_LD
```


```haxe
final xty_SD:haxe.UInt64 = stdgo._internal.internal.xcoff.Xcoff_xty_SD.xty_SD
```


# Classes


```haxe
import stdgo.internal.xcoff.*
```


## class Xcoff



Package xcoff implements access to XCOFF \(Extended Common Object File Format\) files.  

### Xcoff function newArchive


```haxe
function newArchive(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.internal.xcoff.Archive, stdgo.Error>
```



NewArchive creates a new Archive for accessing an AIX big archive in an underlying reader.  

[\(view code\)](<./Xcoff.hx#L1469>)


### Xcoff function newFile


```haxe
function newFile(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.internal.xcoff.File, stdgo.Error>
```



NewFile creates a new File for accessing an XCOFF binary in an underlying reader.  

[\(view code\)](<./Xcoff.hx#L1487>)


### Xcoff function open


```haxe
function open(_name:String):stdgo.Tuple<stdgo.internal.xcoff.File, stdgo.Error>
```



Open opens the named file using os.Open and prepares it for use as an XCOFF binary.  

[\(view code\)](<./Xcoff.hx#L1478>)


### Xcoff function openArchive


```haxe
function openArchive(_name:String):stdgo.Tuple<stdgo.internal.xcoff.Archive, stdgo.Error>
```


```
OpenArchive opens the named archive using os.Open and prepares it for use
        as an AIX big archive.
```
[\(view code\)](<./Xcoff.hx#L1460>)


# Abstracts


## abstract T\_bigarFileHeader


[\(view file containing code\)](<./Xcoff.hx>)


## abstract T\_bigarMemberHeader


[\(view file containing code\)](<./Xcoff.hx>)


## abstract Archive


[\(view file containing code\)](<./Xcoff.hx>)


## abstract ArchiveHeader


[\(view file containing code\)](<./Xcoff.hx>)


## abstract Member


[\(view file containing code\)](<./Xcoff.hx>)


## abstract MemberHeader


[\(view file containing code\)](<./Xcoff.hx>)


## abstract SectionHeader


[\(view file containing code\)](<./Xcoff.hx>)


## abstract Section


[\(view file containing code\)](<./Xcoff.hx>)


## abstract AuxiliaryCSect


[\(view file containing code\)](<./Xcoff.hx>)


## abstract AuxiliaryFcn


[\(view file containing code\)](<./Xcoff.hx>)


## abstract Symbol


[\(view file containing code\)](<./Xcoff.hx>)


## abstract Reloc


[\(view file containing code\)](<./Xcoff.hx>)


## abstract ImportedSymbol


[\(view file containing code\)](<./Xcoff.hx>)


## abstract FileHeader


[\(view file containing code\)](<./Xcoff.hx>)


## abstract File


[\(view file containing code\)](<./Xcoff.hx>)


## abstract T\_zeroReaderAt


[\(view file containing code\)](<./Xcoff.hx>)


## abstract FileHeader32


[\(view file containing code\)](<./Xcoff.hx>)


## abstract FileHeader64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract SectionHeader32


[\(view file containing code\)](<./Xcoff.hx>)


## abstract SectionHeader64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract SymEnt32


[\(view file containing code\)](<./Xcoff.hx>)


## abstract SymEnt64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract AuxFile64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract AuxFcn32


[\(view file containing code\)](<./Xcoff.hx>)


## abstract AuxFcn64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract AuxSect64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract AuxCSect32


[\(view file containing code\)](<./Xcoff.hx>)


## abstract AuxCSect64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract LoaderHeader32


[\(view file containing code\)](<./Xcoff.hx>)


## abstract LoaderHeader64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract LoaderSymbol32


[\(view file containing code\)](<./Xcoff.hx>)


## abstract LoaderSymbol64


[\(view file containing code\)](<./Xcoff.hx>)


## abstract Reloc32


[\(view file containing code\)](<./Xcoff.hx>)


## abstract Reloc64


[\(view file containing code\)](<./Xcoff.hx>)


