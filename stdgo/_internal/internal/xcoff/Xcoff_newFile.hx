package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>; var _1 : stdgo.Error; } {
        var _err_3766762:stdgo.Error = (null : stdgo.Error);
        var _se_3767617:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32>);
        var _r2_3767049:stdgo._internal.io.Io_ReaderAt.ReaderAt = (null : stdgo._internal.io.Io_ReaderAt.ReaderAt);
        var _err_3771791:stdgo.Error = (null : stdgo.Error);
        var _err_3769355:stdgo.Error = (null : stdgo.Error);
        var _c_3766050:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3771223:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _numaux_3767508:stdgo.GoInt = (0 : stdgo.GoInt);
        var _opthdr_3764804:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _rel_3771764:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64>);
        var _err_3765169:stdgo.Error = (null : stdgo.Error);
        var _err_3764912:stdgo.Error = (null : stdgo.Error);
        var _magic_3764377:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _offset_3768045:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _zeroes_3767925:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _ok_3767525:Bool = false;
        var _err_3767643:stdgo.Error = (null : stdgo.Error);
        var _symptr_3764767:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _l_3765692:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_3765555:stdgo.Error = (null : stdgo.Error);
        var _fhdr_3765138:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64>);
        var _err_3771131:stdgo.Error = (null : stdgo.Error);
        var _aux_3770230:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64>);
        var _err_3765705:stdgo.Error = (null : stdgo.Error);
        var _offset_3765508:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_3764677:stdgo.Error = (null : stdgo.Error);
        var _reloc_3771269:stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc);
        var _err_3769536:stdgo.Error = (null : stdgo.Error);
        var _se_3768208:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64>);
        var _i_3767472:stdgo.GoInt = (0 : stdgo.GoInt);
        var _shdr_3766347:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32>);
        var _i_3766226:stdgo.GoInt = (0 : stdgo.GoInt);
        var _aux_3769942:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32>);
        var _aux_3769508:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64>);
        var _scnptr_3766262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _nscns_3764749:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _sr_3764301:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        var _sectNum_3770775:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3768234:stdgo.Error = (null : stdgo.Error);
        var _s_3766278:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>);
        var _idxToSym_3767293;
        var _err_3766382:stdgo.Error = (null : stdgo.Error);
        var _fhdr_3764881:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32>);
        var _rel_3771335:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32>);
        var _aux_3769327:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32>);
        var _st_3765799:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _hdrsz_3764823:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nsyms_3764786:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_3771362:stdgo.Error = (null : stdgo.Error);
        var _err_3770259:stdgo.Error = (null : stdgo.Error);
        var _err_3769971:stdgo.Error = (null : stdgo.Error);
        var _shdr_3766727:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64>);
        var _err_3769766:stdgo.Error = (null : stdgo.Error);
        var _err_3765803:stdgo.Error = (null : stdgo.Error);
        var _err_3764394:stdgo.Error = (null : stdgo.Error);
        var _sect_3770784:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>);
        var _err_3770619:stdgo.Error = (null : stdgo.Error);
        var _err_3767356:stdgo.Error = (null : stdgo.Error);
        var _err_3765957:stdgo.Error = (null : stdgo.Error);
        var _f_3764602:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        var _c_3770925:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sym_3767547:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
        var _needAuxFcn_3767529:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _sr_3764301 = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
                    _magic_3764377 = stdgo.Go.pointer(_magic_3764377);
                    {
                        _err_3764394 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_magic_3764377));
                        if (_err_3764394 != null) {
                            _gotoNext = 3764455i32;
                        } else {
                            _gotoNext = 3764479i32;
                        };
                    };
                } else if (__value__ == (3764455i32)) {
                    return { _0 : null, _1 : _err_3764394 };
                    _gotoNext = 3764479i32;
                } else if (__value__ == (3764479i32)) {
                    if (((_magic_3764377 != (479 : stdgo.GoUInt16)) && (_magic_3764377 != (503 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3764529i32;
                    } else {
                        _gotoNext = 3764602i32;
                    };
                } else if (__value__ == (3764529i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic_3764377)) };
                    _gotoNext = 3764602i32;
                } else if (__value__ == (3764602i32)) {
                    _f_3764602 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_File.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
                    _f_3764602.fileHeader.targetMachine = _magic_3764377;
                    {
                        {
                            var __tmp__ = _sr_3764301.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3764677 = __tmp__._1;
                        };
                        if (_err_3764677 != null) {
                            _gotoNext = 3764721i32;
                        } else {
                            _gotoNext = 3764745i32;
                        };
                    };
                } else if (__value__ == (3764721i32)) {
                    return { _0 : null, _1 : _err_3764677 };
                    _gotoNext = 3764745i32;
                } else if (__value__ == (3764745i32)) {
                    _gotoNext = 3764834i32;
                } else if (__value__ == (3764834i32)) {
                    {
                        final __value__ = _f_3764602.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3764860i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3765117i32;
                        } else {
                            _gotoNext = 3765370i32;
                        };
                    };
                } else if (__value__ == (3764860i32)) {
                    _fhdr_3764881 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32>);
                    {
                        _err_3764912 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_fhdr_3764881));
                        if (_err_3764912 != null) {
                            _gotoNext = 3764971i32;
                        } else {
                            _gotoNext = 3764998i32;
                        };
                    };
                } else if (__value__ == (3764971i32)) {
                    return { _0 : null, _1 : _err_3764912 };
                    _gotoNext = 3764998i32;
                } else if (__value__ == (3764998i32)) {
                    _nscns_3764749 = _fhdr_3764881.fnscns;
                    _symptr_3764767 = (_fhdr_3764881.fsymptr : stdgo.GoUInt64);
                    _nsyms_3764786 = _fhdr_3764881.fnsyms;
                    _opthdr_3764804 = _fhdr_3764881.fopthdr;
                    _hdrsz_3764823 = (20 : stdgo.GoInt);
                    _gotoNext = 3765370i32;
                } else if (__value__ == (3765117i32)) {
                    _fhdr_3765138 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64>);
                    {
                        _err_3765169 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_fhdr_3765138));
                        if (_err_3765169 != null) {
                            _gotoNext = 3765228i32;
                        } else {
                            _gotoNext = 3765255i32;
                        };
                    };
                } else if (__value__ == (3765228i32)) {
                    return { _0 : null, _1 : _err_3765169 };
                    _gotoNext = 3765255i32;
                } else if (__value__ == (3765255i32)) {
                    _nscns_3764749 = _fhdr_3765138.fnscns;
                    _symptr_3764767 = _fhdr_3765138.fsymptr;
                    _nsyms_3764786 = _fhdr_3765138.fnsyms;
                    _opthdr_3764804 = _fhdr_3765138.fopthdr;
                    _hdrsz_3764823 = (24 : stdgo.GoInt);
                    _gotoNext = 3765370i32;
                } else if (__value__ == (3765370i32)) {
                    if (((_symptr_3764767 == (0i64 : stdgo.GoUInt64)) || (_nsyms_3764786 <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3765399i32;
                    } else {
                        _gotoNext = 3765508i32;
                    };
                } else if (__value__ == (3765399i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
                    _gotoNext = 3765508i32;
                } else if (__value__ == (3765508i32)) {
                    _offset_3765508 = (_symptr_3764767 + ((_nsyms_3764786 : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    {
                        {
                            var __tmp__ = _sr_3764301.seek((_offset_3765508 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3765555 = __tmp__._1;
                        };
                        if (_err_3765555 != null) {
                            _gotoNext = 3765611i32;
                        } else {
                            _gotoNext = 3765688i32;
                        };
                    };
                } else if (__value__ == (3765611i32)) {
                    return { _0 : null, _1 : _err_3765555 };
                    _gotoNext = 3765688i32;
                } else if (__value__ == (3765688i32)) {
                    _l_3765692 = stdgo.Go.pointer(_l_3765692);
                    {
                        _err_3765705 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_l_3765692));
                        if (_err_3765705 != null) {
                            _gotoNext = 3765762i32;
                        } else {
                            _gotoNext = 3765786i32;
                        };
                    };
                } else if (__value__ == (3765762i32)) {
                    return { _0 : null, _1 : _err_3765705 };
                    _gotoNext = 3765786i32;
                } else if (__value__ == (3765786i32)) {
                    if ((_l_3765692 > (4u32 : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3765795i32;
                    } else {
                        _gotoNext = 3765951i32;
                    };
                } else if (__value__ == (3765795i32)) {
                    {
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(stdgo.Go.asInterface(_sr_3764301), (_l_3765692 : stdgo.GoUInt64), (_offset_3765508 : stdgo.GoInt64));
                        _st_3765799 = __tmp__._0;
                        _err_3765803 = __tmp__._1;
                    };
                    if (_err_3765803 != null) {
                        _gotoNext = 3765875i32;
                    } else {
                        _gotoNext = 3765902i32;
                    };
                } else if (__value__ == (3765875i32)) {
                    return { _0 : null, _1 : _err_3765803 };
                    _gotoNext = 3765902i32;
                } else if (__value__ == (3765902i32)) {
                    _f_3764602.stringTable = _st_3765799;
                    _gotoNext = 3765951i32;
                } else if (__value__ == (3765951i32)) {
                    {
                        {
                            var __tmp__ = _sr_3764301.seek(((_hdrsz_3764823 : stdgo.GoInt64) + (_opthdr_3764804 : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3765957 = __tmp__._1;
                        };
                        if (_err_3765957 != null) {
                            _gotoNext = 3766026i32;
                        } else {
                            _gotoNext = 3766050i32;
                        };
                    };
                } else if (__value__ == (3766026i32)) {
                    return { _0 : null, _1 : _err_3765957 };
                    _gotoNext = 3766050i32;
                } else if (__value__ == (3766050i32)) {
                    _c_3766050 = stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>)), (_nscns_3764749 : stdgo.GoUInt64));
                    if ((_c_3766050 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3766115i32;
                    } else {
                        _gotoNext = 3766185i32;
                    };
                } else if (__value__ == (3766115i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns_3764749)) };
                    _gotoNext = 3766185i32;
                } else if (__value__ == (3766185i32)) {
                    _f_3764602.sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>((0 : stdgo.GoInt).toBasic(), _c_3766050) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>);
                    _i_3766226 = (0 : stdgo.GoInt);
                    _gotoNext = 3766222i32;
                } else if (__value__ == (3766222i32)) {
                    if ((_i_3766226 < (_nscns_3764749 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3766254i32;
                    } else {
                        _gotoNext = 3767289i32;
                    };
                } else if (__value__ == (3766254i32)) {
                    _s_3766278 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>);
                    _gotoNext = 3766298i32;
                } else if (__value__ == (3766298i32)) {
                    {
                        final __value__ = _f_3764602.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3766325i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3766705i32;
                        } else {
                            _gotoNext = 3767049i32;
                        };
                    };
                } else if (__value__ == (3766325i32)) {
                    _shdr_3766347 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32>);
                    {
                        _err_3766382 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_shdr_3766347));
                        if (_err_3766382 != null) {
                            _gotoNext = 3766441i32;
                        } else {
                            _gotoNext = 3766471i32;
                        };
                    };
                } else if (__value__ == (3766441i32)) {
                    return { _0 : null, _1 : _err_3766382 };
                    _gotoNext = 3766471i32;
                } else if (__value__ == (3766471i32)) {
                    _s_3766278.sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_shdr_3766347.sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _s_3766278.sectionHeader.virtualAddress = (_shdr_3766347.svaddr : stdgo.GoUInt64);
                    _s_3766278.sectionHeader.size = (_shdr_3766347.ssize : stdgo.GoUInt64);
                    _scnptr_3766262 = (_shdr_3766347.sscnptr : stdgo.GoUInt64);
                    _s_3766278.sectionHeader.type = _shdr_3766347.sflags;
                    _s_3766278.sectionHeader.relptr = (_shdr_3766347.srelptr : stdgo.GoUInt64);
                    _s_3766278.sectionHeader.nreloc = (_shdr_3766347.snreloc : stdgo.GoUInt32);
                    _gotoNext = 3767049i32;
                } else if (__value__ == (3766705i32)) {
                    _shdr_3766727 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64>);
                    {
                        _err_3766762 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_shdr_3766727));
                        if (_err_3766762 != null) {
                            _gotoNext = 3766821i32;
                        } else {
                            _gotoNext = 3766851i32;
                        };
                    };
                } else if (__value__ == (3766821i32)) {
                    return { _0 : null, _1 : _err_3766762 };
                    _gotoNext = 3766851i32;
                } else if (__value__ == (3766851i32)) {
                    _s_3766278.sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_shdr_3766727.sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _s_3766278.sectionHeader.virtualAddress = _shdr_3766727.svaddr;
                    _s_3766278.sectionHeader.size = _shdr_3766727.ssize;
                    _scnptr_3766262 = _shdr_3766727.sscnptr;
                    _s_3766278.sectionHeader.type = _shdr_3766727.sflags;
                    _s_3766278.sectionHeader.relptr = _shdr_3766727.srelptr;
                    _s_3766278.sectionHeader.nreloc = _shdr_3766727.snreloc;
                    _gotoNext = 3767049i32;
                } else if (__value__ == (3767049i32)) {
                    _r2_3767049 = _r;
                    if (_scnptr_3766262 == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3767074i32;
                    } else {
                        _gotoNext = 3767130i32;
                    };
                } else if (__value__ == (3767074i32)) {
                    _r2_3767049 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt.T_zeroReaderAt));
                    _gotoNext = 3767130i32;
                } else if (__value__ == (3767130i32)) {
                    _s_3766278._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r2_3767049, (_scnptr_3766262 : stdgo.GoInt64), (_s_3766278.sectionHeader.size : stdgo.GoInt64));
                    _s_3766278.readerAt = stdgo.Go.asInterface(_s_3766278._sr);
                    _f_3764602.sections = (_f_3764602.sections.__append__(_s_3766278));
                    _i_3766226++;
                    _gotoNext = 3766222i32;
                } else if (__value__ == (3767289i32)) {
                    _idxToSym_3767293 = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>);
                    {
                        {
                            var __tmp__ = _sr_3764301.seek((_symptr_3764767 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3767356 = __tmp__._1;
                        };
                        if (_err_3767356 != null) {
                            _gotoNext = 3767412i32;
                        } else {
                            _gotoNext = 3767436i32;
                        };
                    };
                } else if (__value__ == (3767412i32)) {
                    return { _0 : null, _1 : _err_3767356 };
                    _gotoNext = 3767436i32;
                } else if (__value__ == (3767436i32)) {
                    _f_3764602.symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>);
                    _i_3767472 = (0 : stdgo.GoInt);
                    _gotoNext = 3767468i32;
                } else if (__value__ == (3767468i32)) {
                    if ((_i_3767472 < (_nsyms_3764786 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3767500i32;
                    } else {
                        _gotoNext = 3770771i32;
                    };
                } else if (__value__ == (3767496i32)) {
                    _i_3767472++;
                    _gotoNext = 3767468i32;
                } else if (__value__ == (3767500i32)) {
                    _sym_3767547 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
                    _gotoNext = 3767568i32;
                } else if (__value__ == (3767568i32)) {
                    {
                        final __value__ = _f_3764602.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3767595i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3768186i32;
                        } else {
                            _gotoNext = 3768597i32;
                        };
                    };
                } else if (__value__ == (3767595i32)) {
                    _se_3767617 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32>);
                    {
                        _err_3767643 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_se_3767617));
                        if (_err_3767643 != null) {
                            _gotoNext = 3767700i32;
                        } else {
                            _gotoNext = 3767730i32;
                        };
                    };
                } else if (__value__ == (3767700i32)) {
                    return { _0 : null, _1 : _err_3767643 };
                    _gotoNext = 3767730i32;
                } else if (__value__ == (3767730i32)) {
                    _numaux_3767508 = (_se_3767617.nnumaux : stdgo.GoInt);
                    _sym_3767547.sectionNumber = (_se_3767617.nscnum : stdgo.GoInt);
                    _sym_3767547.storageClass = (_se_3767617.nsclass : stdgo.GoInt);
                    _sym_3767547.value = (_se_3767617.nvalue : stdgo.GoUInt64);
                    _needAuxFcn_3767529 = (((_se_3767617.ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_3767508 > (1 : stdgo.GoInt) : Bool) : Bool);
                    _zeroes_3767925 = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_se_3767617.nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_zeroes_3767925 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3767991i32;
                    } else {
                        _gotoNext = 3768039i32;
                    };
                } else if (__value__ == (3767991i32)) {
                    _sym_3767547.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_se_3767617.nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _gotoNext = 3768597i32;
                } else if (__value__ == (3768039i32)) {
                    _gotoNext = 3768039i32;
                    _offset_3768045 = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_se_3767617.nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getString._getString(_f_3764602.stringTable, _offset_3768045);
                        _sym_3767547.name = __tmp__._0?.__copy__();
                        _ok_3767525 = __tmp__._1;
                    };
                    if (!_ok_3767525) {
                        _gotoNext = 3768156i32;
                    } else {
                        _gotoNext = 3768597i32;
                    };
                } else if (__value__ == (3768156i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768186i32)) {
                    _se_3768208 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64>);
                    {
                        _err_3768234 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_se_3768208));
                        if (_err_3768234 != null) {
                            _gotoNext = 3768291i32;
                        } else {
                            _gotoNext = 3768321i32;
                        };
                    };
                } else if (__value__ == (3768291i32)) {
                    return { _0 : null, _1 : _err_3768234 };
                    _gotoNext = 3768321i32;
                } else if (__value__ == (3768321i32)) {
                    _numaux_3767508 = (_se_3768208.nnumaux : stdgo.GoInt);
                    _sym_3767547.sectionNumber = (_se_3768208.nscnum : stdgo.GoInt);
                    _sym_3767547.storageClass = (_se_3768208.nsclass : stdgo.GoInt);
                    _sym_3767547.value = _se_3768208.nvalue;
                    _needAuxFcn_3767529 = (((_se_3768208.ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_3767508 > (1 : stdgo.GoInt) : Bool) : Bool);
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getString._getString(_f_3764602.stringTable, _se_3768208.noffset);
                        _sym_3767547.name = __tmp__._0?.__copy__();
                        _ok_3767525 = __tmp__._1;
                    };
                    if (!_ok_3767525) {
                        _gotoNext = 3768570i32;
                    } else {
                        _gotoNext = 3768597i32;
                    };
                } else if (__value__ == (3768570i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768597i32)) {
                    if (((_sym_3767547.storageClass != ((2 : stdgo.GoInt)) && _sym_3767547.storageClass != ((111 : stdgo.GoInt)) : Bool) && (_sym_3767547.storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3768691i32;
                    } else {
                        _gotoNext = 3768763i32;
                    };
                } else if (__value__ == (3768691i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768763i32)) {
                    if (((_numaux_3767508 < (1 : stdgo.GoInt) : Bool) || ((_i_3767472 + _numaux_3767508 : stdgo.GoInt) >= (_nsyms_3764786 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3768803i32;
                    } else {
                        _gotoNext = 3768825i32;
                    };
                } else if (__value__ == (3768803i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768825i32)) {
                    if ((_sym_3767547.sectionNumber > (_nscns_3764749 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3768859i32;
                    } else {
                        _gotoNext = 3768880i32;
                    };
                } else if (__value__ == (3768859i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768880i32)) {
                    if (_sym_3767547.sectionNumber == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3768906i32;
                    } else {
                        _gotoNext = 3768934i32;
                    };
                } else if (__value__ == (3768906i32)) {
                    _sym_3767547.value = (0i64 : stdgo.GoUInt64);
                    _gotoNext = 3769006i32;
                } else if (__value__ == (3768934i32)) {
                    _gotoNext = 3768934i32;
                    _sym_3767547.value = (_sym_3767547.value - (_f_3764602.sections[(_sym_3767547.sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)].sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    var __blank__ = 0i32;
                    _gotoNext = 3769006i32;
                } else if (__value__ == (3769006i32)) {
                    _idxToSym_3767293[_i_3767472] = _sym_3767547;
                    if (_needAuxFcn_3767529) {
                        _gotoNext = 3769271i32;
                    } else {
                        _gotoNext = 3769740i32;
                    };
                } else if (__value__ == (3769271i32)) {
                    _gotoNext = 3769276i32;
                } else if (__value__ == (3769276i32)) {
                    {
                        final __value__ = _f_3764602.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3769304i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3769485i32;
                        } else {
                            _gotoNext = 3769740i32;
                        };
                    };
                } else if (__value__ == (3769304i32)) {
                    _aux_3769327 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32>);
                    {
                        _err_3769355 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux_3769327));
                        if (_err_3769355 != null) {
                            _gotoNext = 3769413i32;
                        } else {
                            _gotoNext = 3769446i32;
                        };
                    };
                } else if (__value__ == (3769413i32)) {
                    return { _0 : null, _1 : _err_3769355 };
                    _gotoNext = 3769446i32;
                } else if (__value__ == (3769446i32)) {
                    _sym_3767547.auxFcn.size = (_aux_3769327.xfsize : stdgo.GoInt64);
                    _gotoNext = 3769740i32;
                } else if (__value__ == (3769485i32)) {
                    _aux_3769508 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64>);
                    {
                        _err_3769536 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux_3769508));
                        if (_err_3769536 != null) {
                            _gotoNext = 3769594i32;
                        } else {
                            _gotoNext = 3769627i32;
                        };
                    };
                } else if (__value__ == (3769594i32)) {
                    return { _0 : null, _1 : _err_3769536 };
                    _gotoNext = 3769627i32;
                } else if (__value__ == (3769627i32)) {
                    _sym_3767547.auxFcn.size = (_aux_3769508.xfsize : stdgo.GoInt64);
                    _gotoNext = 3769740i32;
                } else if (__value__ == (3769740i32)) {
                    if (!_needAuxFcn_3767529) {
                        _gotoNext = 3769755i32;
                    } else {
                        _gotoNext = 3769866i32;
                    };
                } else if (__value__ == (3769755i32)) {
                    {
                        {
                            var __tmp__ = _sr_3764301.seek((((_numaux_3767508 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_3769766 = __tmp__._1;
                        };
                        if (_err_3769766 != null) {
                            _gotoNext = 3769833i32;
                        } else {
                            _gotoNext = 3769866i32;
                        };
                    };
                } else if (__value__ == (3769833i32)) {
                    return { _0 : null, _1 : _err_3769766 };
                    _gotoNext = 3769866i32;
                } else if (__value__ == (3769866i32)) {
                    _i_3767472 = (_i_3767472 + (_numaux_3767508) : stdgo.GoInt);
                    _numaux_3767508 = (0 : stdgo.GoInt);
                    _gotoNext = 3769893i32;
                } else if (__value__ == (3769893i32)) {
                    {
                        final __value__ = _f_3764602.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3769920i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3770208i32;
                        } else {
                            _gotoNext = 3770529i32;
                        };
                    };
                } else if (__value__ == (3769920i32)) {
                    _aux_3769942 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32>);
                    {
                        _err_3769971 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux_3769942));
                        if (_err_3769971 != null) {
                            _gotoNext = 3770029i32;
                        } else {
                            _gotoNext = 3770059i32;
                        };
                    };
                } else if (__value__ == (3770029i32)) {
                    return { _0 : null, _1 : _err_3769971 };
                    _gotoNext = 3770059i32;
                } else if (__value__ == (3770059i32)) {
                    _sym_3767547.auxCSect.symbolType = ((_aux_3769942.xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    _sym_3767547.auxCSect.storageMappingClass = (_aux_3769942.xsmclas : stdgo.GoInt);
                    _sym_3767547.auxCSect.length_ = (_aux_3769942.xscnlen : stdgo.GoInt64);
                    _gotoNext = 3770529i32;
                } else if (__value__ == (3770208i32)) {
                    _aux_3770230 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64>);
                    {
                        _err_3770259 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux_3770230));
                        if (_err_3770259 != null) {
                            _gotoNext = 3770317i32;
                        } else {
                            _gotoNext = 3770347i32;
                        };
                    };
                } else if (__value__ == (3770317i32)) {
                    return { _0 : null, _1 : _err_3770259 };
                    _gotoNext = 3770347i32;
                } else if (__value__ == (3770347i32)) {
                    _sym_3767547.auxCSect.symbolType = ((_aux_3770230.xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    _sym_3767547.auxCSect.storageMappingClass = (_aux_3770230.xsmclas : stdgo.GoInt);
                    _sym_3767547.auxCSect.length_ = (((_aux_3770230.xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | (_aux_3770230.xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                    _gotoNext = 3770529i32;
                } else if (__value__ == (3770529i32)) {
                    _f_3764602.symbols = (_f_3764602.symbols.__append__(_sym_3767547));
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3770565i32)) {
                    _i_3767472 = (_i_3767472 + (_numaux_3767508) : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = _sr_3764301.seek(((_numaux_3767508 : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_3770619 = __tmp__._1;
                        };
                        if (_err_3770619 != null) {
                            _gotoNext = 3770684i32;
                        } else {
                            _gotoNext = 3767496i32;
                        };
                    };
                } else if (__value__ == (3770684i32)) {
                    return { _0 : null, _1 : _err_3770619 };
                    _gotoNext = 3767496i32;
                } else if (__value__ == (3770771i32)) {
                    if ((0i32 : stdgo.GoInt) < (_f_3764602.sections.length)) {
                        _gotoNext = 3772211i32;
                    } else {
                        _gotoNext = 3772216i32;
                    };
                } else if (__value__ == (3770775i32)) {
                    _sectNum_3770775++;
                    _gotoNext = 3772212i32;
                } else if (__value__ == (3770809i32)) {
                    _sect_3770784 = _f_3764602.sections[(_sectNum_3770775 : stdgo.GoInt)];
                    if (((_sect_3770784.sectionHeader.type != (32u32 : stdgo.GoUInt32)) && (_sect_3770784.sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                        _gotoNext = 3770865i32;
                    } else {
                        _gotoNext = 3770885i32;
                    };
                } else if (__value__ == (3770865i32)) {
                    _sectNum_3770775++;
                    _gotoNext = 3772212i32;
                } else if (__value__ == (3770885i32)) {
                    if (_sect_3770784.sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3770905i32;
                    } else {
                        _gotoNext = 3770925i32;
                    };
                } else if (__value__ == (3770905i32)) {
                    _sectNum_3770775++;
                    _gotoNext = 3772212i32;
                } else if (__value__ == (3770925i32)) {
                    _c_3770925 = stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>)), (_sect_3770784.sectionHeader.nreloc : stdgo.GoUInt64));
                    if ((_c_3770925 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3770994i32;
                    } else {
                        _gotoNext = 3771089i32;
                    };
                } else if (__value__ == (3770994i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface(_sect_3770784.sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum_3770775)) };
                    _gotoNext = 3771089i32;
                } else if (__value__ == (3771089i32)) {
                    _sect_3770784.relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c_3770925, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c_3770925 ? (0 : stdgo.GoInt).toBasic() : _c_3770925 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>);
                    {
                        {
                            var __tmp__ = _sr_3764301.seek((_sect_3770784.sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3771131 = __tmp__._1;
                        };
                        if (_err_3771131 != null) {
                            _gotoNext = 3771192i32;
                        } else {
                            _gotoNext = 3771219i32;
                        };
                    };
                } else if (__value__ == (3771192i32)) {
                    return { _0 : null, _1 : _err_3771131 };
                    _gotoNext = 3771219i32;
                } else if (__value__ == (3771219i32)) {
                    _i_3771223 = (0u32 : stdgo.GoUInt32);
                    _gotoNext = 3771219i32;
                    if ((_i_3771223 < _sect_3770784.sectionHeader.nreloc : Bool)) {
                        _gotoNext = 3771260i32;
                    } else {
                        _gotoNext = 3770775i32;
                    };
                } else if (__value__ == (3771260i32)) {
                    _gotoNext = 3771284i32;
                } else if (__value__ == (3771284i32)) {
                    {
                        final __value__ = _f_3764602.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3771312i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3771741i32;
                        } else {
                            _gotoNext = 3772166i32;
                        };
                    };
                } else if (__value__ == (3771312i32)) {
                    _rel_3771335 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32>);
                    {
                        _err_3771362 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_rel_3771335));
                        if (_err_3771362 != null) {
                            _gotoNext = 3771420i32;
                        } else {
                            _gotoNext = 3771453i32;
                        };
                    };
                } else if (__value__ == (3771420i32)) {
                    return { _0 : null, _1 : _err_3771362 };
                    _gotoNext = 3771453i32;
                } else if (__value__ == (3771453i32)) {
                    _reloc_3771269.virtualAddress = (_rel_3771335.rvaddr : stdgo.GoUInt64);
                    _reloc_3771269.symbol = (_idxToSym_3767293[(_rel_3771335.rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>));
                    _reloc_3771269.type = _rel_3771335.rtype;
                    _reloc_3771269.length_ = ((_rel_3771335.rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if ((_rel_3771335.rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3771634i32;
                    } else {
                        _gotoNext = 3771671i32;
                    };
                } else if (__value__ == (3771634i32)) {
                    _reloc_3771269.signed = true;
                    _gotoNext = 3771671i32;
                } else if (__value__ == (3771671i32)) {
                    if ((_rel_3771335.rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3771694i32;
                    } else {
                        _gotoNext = 3772166i32;
                    };
                } else if (__value__ == (3771694i32)) {
                    _reloc_3771269.instructionFixed = true;
                    _gotoNext = 3772166i32;
                } else if (__value__ == (3771741i32)) {
                    _rel_3771764 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64>);
                    {
                        _err_3771791 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3764301), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_rel_3771764));
                        if (_err_3771791 != null) {
                            _gotoNext = 3771849i32;
                        } else {
                            _gotoNext = 3771882i32;
                        };
                    };
                } else if (__value__ == (3771849i32)) {
                    return { _0 : null, _1 : _err_3771791 };
                    _gotoNext = 3771882i32;
                } else if (__value__ == (3771882i32)) {
                    _reloc_3771269.virtualAddress = _rel_3771764.rvaddr;
                    _reloc_3771269.symbol = (_idxToSym_3767293[(_rel_3771764.rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>));
                    _reloc_3771269.type = _rel_3771764.rtype;
                    _reloc_3771269.length_ = ((_rel_3771764.rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if ((_rel_3771764.rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3772054i32;
                    } else {
                        _gotoNext = 3772091i32;
                    };
                } else if (__value__ == (3772054i32)) {
                    _reloc_3771269.signed = true;
                    _gotoNext = 3772091i32;
                } else if (__value__ == (3772091i32)) {
                    if ((_rel_3771764.rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3772114i32;
                    } else {
                        _gotoNext = 3772166i32;
                    };
                } else if (__value__ == (3772114i32)) {
                    _reloc_3771269.instructionFixed = true;
                    _gotoNext = 3772166i32;
                } else if (__value__ == (3772166i32)) {
                    _sect_3770784.relocs = (_sect_3770784.relocs.__append__(_reloc_3771269?.__copy__()));
                    _i_3771223++;
                    _gotoNext = 3771219i32;
                } else if (__value__ == (3772211i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_3764602.sections[(0i32 : stdgo.GoInt)];
                        _sectNum_3770775 = __tmp__0;
                        _sect_3770784 = __tmp__1;
                    };
                    _gotoNext = 3772212i32;
                } else if (__value__ == (3772212i32)) {
                    if (_sectNum_3770775 < (_f_3764602.sections.length)) {
                        _gotoNext = 3770809i32;
                    } else {
                        _gotoNext = 3772216i32;
                    };
                } else if (__value__ == (3772216i32)) {
                    return { _0 : _f_3764602, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
