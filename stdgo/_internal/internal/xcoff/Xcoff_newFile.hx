package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>; var _1 : stdgo.Error; } {
        var _err_3777707:stdgo.Error = (null : stdgo.Error);
        var _c_3772395:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3772050:stdgo.Error = (null : stdgo.Error);
        var _l_3772037:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _offset_3771853:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_3773107:stdgo.Error = (null : stdgo.Error);
        var _scnptr_3772607:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _f_3770947:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        var _err_3778136:stdgo.Error = (null : stdgo.Error);
        var _err_3775881:stdgo.Error = (null : stdgo.Error);
        var _aux_3775672:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32>);
        var _offset_3774390:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _zeroes_3774270:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _ok_3773870:Bool = false;
        var _shdr_3772692:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32>);
        var _nscns_3771094:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _aux_3776575:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64>);
        var _se_3774553:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64>);
        var _i_3772571:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3772148:stdgo.Error = (null : stdgo.Error);
        var _err_3771900:stdgo.Error = (null : stdgo.Error);
        var _err_3771514:stdgo.Error = (null : stdgo.Error);
        var _err_3771257:stdgo.Error = (null : stdgo.Error);
        var _aux_3776287:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32>);
        var _i_3773817:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3772302:stdgo.Error = (null : stdgo.Error);
        var _st_3772144:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _symptr_3771112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_3774579:stdgo.Error = (null : stdgo.Error);
        var _err_3776111:stdgo.Error = (null : stdgo.Error);
        var _sym_3773892:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
        var _err_3773701:stdgo.Error = (null : stdgo.Error);
        var _fhdr_3771226:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32>);
        var _magic_3770722:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _numaux_3773853:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nsyms_3771131:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _rel_3778109:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64>);
        var _err_3776964:stdgo.Error = (null : stdgo.Error);
        var _err_3776316:stdgo.Error = (null : stdgo.Error);
        var _err_3775700:stdgo.Error = (null : stdgo.Error);
        var _idxToSym_3773638;
        var _sr_3770646:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        var _err_3777476:stdgo.Error = (null : stdgo.Error);
        var _needAuxFcn_3773874:Bool = false;
        var _opthdr_3771149:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _sectNum_3777120:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fhdr_3771483:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64>);
        var _rel_3777680:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32>);
        var _reloc_3777614:stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc);
        var _sect_3777129:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>);
        var _err_3773988:stdgo.Error = (null : stdgo.Error);
        var _se_3773962:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32>);
        var _shdr_3773072:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64>);
        var _err_3772727:stdgo.Error = (null : stdgo.Error);
        var _i_3777568:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _aux_3775853:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64>);
        var _err_3770739:stdgo.Error = (null : stdgo.Error);
        var _c_3777270:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r2_3773394:stdgo._internal.io.Io_ReaderAt.ReaderAt = (null : stdgo._internal.io.Io_ReaderAt.ReaderAt);
        var _err_3771022:stdgo.Error = (null : stdgo.Error);
        var _err_3776604:stdgo.Error = (null : stdgo.Error);
        var _s_3772623:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>);
        var _hdrsz_3771168:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _sr_3770646 = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
                    {
                        _err_3770739 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_magic_3770722)));
                        if (_err_3770739 != null) {
                            _gotoNext = 3770800i32;
                        } else {
                            _gotoNext = 3770824i32;
                        };
                    };
                } else if (__value__ == (3770800i32)) {
                    return { _0 : null, _1 : _err_3770739 };
                    _gotoNext = 3770824i32;
                } else if (__value__ == (3770824i32)) {
                    if (((_magic_3770722 != (479 : stdgo.GoUInt16)) && (_magic_3770722 != (503 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3770874i32;
                    } else {
                        _gotoNext = 3770947i32;
                    };
                } else if (__value__ == (3770874i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic_3770722)) };
                    _gotoNext = 3770947i32;
                } else if (__value__ == (3770947i32)) {
                    _f_3770947 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_File.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
                    _f_3770947.fileHeader.targetMachine = _magic_3770722;
                    {
                        {
                            var __tmp__ = _sr_3770646.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3771022 = __tmp__._1;
                        };
                        if (_err_3771022 != null) {
                            _gotoNext = 3771066i32;
                        } else {
                            _gotoNext = 3771090i32;
                        };
                    };
                } else if (__value__ == (3771066i32)) {
                    return { _0 : null, _1 : _err_3771022 };
                    _gotoNext = 3771090i32;
                } else if (__value__ == (3771090i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3771179i32;
                } else if (__value__ == (3771179i32)) {
                    {
                        final __value__ = _f_3770947.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3771205i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3771462i32;
                        } else {
                            _gotoNext = 3771715i32;
                        };
                    };
                } else if (__value__ == (3771205i32)) {
                    _fhdr_3771226 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32>);
                    {
                        _err_3771257 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_fhdr_3771226));
                        if (_err_3771257 != null) {
                            _gotoNext = 3771316i32;
                        } else {
                            _gotoNext = 3771343i32;
                        };
                    };
                } else if (__value__ == (3771316i32)) {
                    return { _0 : null, _1 : _err_3771257 };
                    _gotoNext = 3771343i32;
                } else if (__value__ == (3771343i32)) {
                    _nscns_3771094 = _fhdr_3771226.fnscns;
                    _symptr_3771112 = (_fhdr_3771226.fsymptr : stdgo.GoUInt64);
                    _nsyms_3771131 = _fhdr_3771226.fnsyms;
                    _opthdr_3771149 = _fhdr_3771226.fopthdr;
                    _hdrsz_3771168 = (20 : stdgo.GoInt);
                    _gotoNext = 3771715i32;
                } else if (__value__ == (3771462i32)) {
                    _fhdr_3771483 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64>);
                    {
                        _err_3771514 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_fhdr_3771483));
                        if (_err_3771514 != null) {
                            _gotoNext = 3771573i32;
                        } else {
                            _gotoNext = 3771600i32;
                        };
                    };
                } else if (__value__ == (3771573i32)) {
                    return { _0 : null, _1 : _err_3771514 };
                    _gotoNext = 3771600i32;
                } else if (__value__ == (3771600i32)) {
                    _nscns_3771094 = _fhdr_3771483.fnscns;
                    _symptr_3771112 = _fhdr_3771483.fsymptr;
                    _nsyms_3771131 = _fhdr_3771483.fnsyms;
                    _opthdr_3771149 = _fhdr_3771483.fopthdr;
                    _hdrsz_3771168 = (24 : stdgo.GoInt);
                    _gotoNext = 3771715i32;
                } else if (__value__ == (3771715i32)) {
                    if (((_symptr_3771112 == (0i64 : stdgo.GoUInt64)) || (_nsyms_3771131 <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3771744i32;
                    } else {
                        _gotoNext = 3771853i32;
                    };
                } else if (__value__ == (3771744i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
                    _gotoNext = 3771853i32;
                } else if (__value__ == (3771853i32)) {
                    _offset_3771853 = (_symptr_3771112 + ((_nsyms_3771131 : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    {
                        {
                            var __tmp__ = _sr_3770646.seek((_offset_3771853 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3771900 = __tmp__._1;
                        };
                        if (_err_3771900 != null) {
                            _gotoNext = 3771956i32;
                        } else {
                            _gotoNext = 3772033i32;
                        };
                    };
                } else if (__value__ == (3771956i32)) {
                    return { _0 : null, _1 : _err_3771900 };
                    _gotoNext = 3772033i32;
                } else if (__value__ == (3772033i32)) {
                    {
                        _err_3772050 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_l_3772037)));
                        if (_err_3772050 != null) {
                            _gotoNext = 3772107i32;
                        } else {
                            _gotoNext = 3772131i32;
                        };
                    };
                } else if (__value__ == (3772107i32)) {
                    return { _0 : null, _1 : _err_3772050 };
                    _gotoNext = 3772131i32;
                } else if (__value__ == (3772131i32)) {
                    if ((_l_3772037 > (4u32 : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3772140i32;
                    } else {
                        _gotoNext = 3772296i32;
                    };
                } else if (__value__ == (3772140i32)) {
                    {
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(stdgo.Go.asInterface(_sr_3770646), (_l_3772037 : stdgo.GoUInt64), (_offset_3771853 : stdgo.GoInt64));
                        _st_3772144 = __tmp__._0;
                        _err_3772148 = __tmp__._1;
                    };
                    if (_err_3772148 != null) {
                        _gotoNext = 3772220i32;
                    } else {
                        _gotoNext = 3772247i32;
                    };
                } else if (__value__ == (3772220i32)) {
                    return { _0 : null, _1 : _err_3772148 };
                    _gotoNext = 3772247i32;
                } else if (__value__ == (3772247i32)) {
                    _f_3770947.stringTable = _st_3772144;
                    _gotoNext = 3772296i32;
                } else if (__value__ == (3772296i32)) {
                    {
                        {
                            var __tmp__ = _sr_3770646.seek(((_hdrsz_3771168 : stdgo.GoInt64) + (_opthdr_3771149 : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3772302 = __tmp__._1;
                        };
                        if (_err_3772302 != null) {
                            _gotoNext = 3772371i32;
                        } else {
                            _gotoNext = 3772395i32;
                        };
                    };
                } else if (__value__ == (3772371i32)) {
                    return { _0 : null, _1 : _err_3772302 };
                    _gotoNext = 3772395i32;
                } else if (__value__ == (3772395i32)) {
                    _c_3772395 = stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>)), (_nscns_3771094 : stdgo.GoUInt64));
                    if ((_c_3772395 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3772460i32;
                    } else {
                        _gotoNext = 3772530i32;
                    };
                } else if (__value__ == (3772460i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns_3771094)) };
                    _gotoNext = 3772530i32;
                } else if (__value__ == (3772530i32)) {
                    _f_3770947.sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>((0 : stdgo.GoInt).toBasic(), _c_3772395) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>);
                    _i_3772571 = (0 : stdgo.GoInt);
                    _gotoNext = 3772567i32;
                } else if (__value__ == (3772567i32)) {
                    if ((_i_3772571 < (_nscns_3771094 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3772599i32;
                    } else {
                        _gotoNext = 3773634i32;
                    };
                } else if (__value__ == (3772599i32)) {
                    _s_3772623 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>);
                    var __blank__ = 0i32;
                    _gotoNext = 3772643i32;
                } else if (__value__ == (3772643i32)) {
                    {
                        final __value__ = _f_3770947.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3772670i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3773050i32;
                        } else {
                            _gotoNext = 3773394i32;
                        };
                    };
                } else if (__value__ == (3772670i32)) {
                    _shdr_3772692 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32>);
                    {
                        _err_3772727 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_shdr_3772692));
                        if (_err_3772727 != null) {
                            _gotoNext = 3772786i32;
                        } else {
                            _gotoNext = 3772816i32;
                        };
                    };
                } else if (__value__ == (3772786i32)) {
                    return { _0 : null, _1 : _err_3772727 };
                    _gotoNext = 3772816i32;
                } else if (__value__ == (3772816i32)) {
                    _s_3772623.sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_shdr_3772692.sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _s_3772623.sectionHeader.virtualAddress = (_shdr_3772692.svaddr : stdgo.GoUInt64);
                    _s_3772623.sectionHeader.size = (_shdr_3772692.ssize : stdgo.GoUInt64);
                    _scnptr_3772607 = (_shdr_3772692.sscnptr : stdgo.GoUInt64);
                    _s_3772623.sectionHeader.type = _shdr_3772692.sflags;
                    _s_3772623.sectionHeader.relptr = (_shdr_3772692.srelptr : stdgo.GoUInt64);
                    _s_3772623.sectionHeader.nreloc = (_shdr_3772692.snreloc : stdgo.GoUInt32);
                    _gotoNext = 3773394i32;
                } else if (__value__ == (3773050i32)) {
                    _shdr_3773072 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64>);
                    {
                        _err_3773107 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_shdr_3773072));
                        if (_err_3773107 != null) {
                            _gotoNext = 3773166i32;
                        } else {
                            _gotoNext = 3773196i32;
                        };
                    };
                } else if (__value__ == (3773166i32)) {
                    return { _0 : null, _1 : _err_3773107 };
                    _gotoNext = 3773196i32;
                } else if (__value__ == (3773196i32)) {
                    _s_3772623.sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_shdr_3773072.sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _s_3772623.sectionHeader.virtualAddress = _shdr_3773072.svaddr;
                    _s_3772623.sectionHeader.size = _shdr_3773072.ssize;
                    _scnptr_3772607 = _shdr_3773072.sscnptr;
                    _s_3772623.sectionHeader.type = _shdr_3773072.sflags;
                    _s_3772623.sectionHeader.relptr = _shdr_3773072.srelptr;
                    _s_3772623.sectionHeader.nreloc = _shdr_3773072.snreloc;
                    _gotoNext = 3773394i32;
                } else if (__value__ == (3773394i32)) {
                    _r2_3773394 = _r;
                    if (_scnptr_3772607 == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3773419i32;
                    } else {
                        _gotoNext = 3773475i32;
                    };
                } else if (__value__ == (3773419i32)) {
                    _r2_3773394 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt.T_zeroReaderAt));
                    _gotoNext = 3773475i32;
                } else if (__value__ == (3773475i32)) {
                    _s_3772623._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r2_3773394, (_scnptr_3772607 : stdgo.GoInt64), (_s_3772623.sectionHeader.size : stdgo.GoInt64));
                    _s_3772623.readerAt = stdgo.Go.asInterface(_s_3772623._sr);
                    _f_3770947.sections = (_f_3770947.sections.__append__(_s_3772623));
                    _i_3772571++;
                    _gotoNext = 3772567i32;
                } else if (__value__ == (3773634i32)) {
                    _idxToSym_3773638 = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>);
                    {
                        {
                            var __tmp__ = _sr_3770646.seek((_symptr_3771112 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3773701 = __tmp__._1;
                        };
                        if (_err_3773701 != null) {
                            _gotoNext = 3773757i32;
                        } else {
                            _gotoNext = 3773781i32;
                        };
                    };
                } else if (__value__ == (3773757i32)) {
                    return { _0 : null, _1 : _err_3773701 };
                    _gotoNext = 3773781i32;
                } else if (__value__ == (3773781i32)) {
                    _f_3770947.symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>);
                    _i_3773817 = (0 : stdgo.GoInt);
                    _gotoNext = 3773813i32;
                } else if (__value__ == (3773813i32)) {
                    if ((_i_3773817 < (_nsyms_3771131 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3773845i32;
                    } else {
                        _gotoNext = 3777116i32;
                    };
                } else if (__value__ == (3773841i32)) {
                    _i_3773817++;
                    _gotoNext = 3773813i32;
                } else if (__value__ == (3773845i32)) {
                    _sym_3773892 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
                    var __blank__ = 0i32;
                    _gotoNext = 3773913i32;
                } else if (__value__ == (3773913i32)) {
                    {
                        final __value__ = _f_3770947.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3773940i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3774531i32;
                        } else {
                            _gotoNext = 3774942i32;
                        };
                    };
                } else if (__value__ == (3773940i32)) {
                    _se_3773962 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32>);
                    {
                        _err_3773988 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_se_3773962));
                        if (_err_3773988 != null) {
                            _gotoNext = 3774045i32;
                        } else {
                            _gotoNext = 3774075i32;
                        };
                    };
                } else if (__value__ == (3774045i32)) {
                    return { _0 : null, _1 : _err_3773988 };
                    _gotoNext = 3774075i32;
                } else if (__value__ == (3774075i32)) {
                    _numaux_3773853 = (_se_3773962.nnumaux : stdgo.GoInt);
                    _sym_3773892.sectionNumber = (_se_3773962.nscnum : stdgo.GoInt);
                    _sym_3773892.storageClass = (_se_3773962.nsclass : stdgo.GoInt);
                    _sym_3773892.value = (_se_3773962.nvalue : stdgo.GoUInt64);
                    _needAuxFcn_3773874 = (((_se_3773962.ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_3773853 > (1 : stdgo.GoInt) : Bool) : Bool);
                    _zeroes_3774270 = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_se_3773962.nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_zeroes_3774270 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3774336i32;
                    } else {
                        _gotoNext = 3774384i32;
                    };
                } else if (__value__ == (3774336i32)) {
                    _sym_3773892.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_se_3773962.nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _gotoNext = 3774942i32;
                } else if (__value__ == (3774384i32)) {
                    _offset_3774390 = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_se_3773962.nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getString._getString(_f_3770947.stringTable, _offset_3774390);
                        _sym_3773892.name = __tmp__._0?.__copy__();
                        _ok_3773870 = __tmp__._1;
                    };
                    if (!_ok_3773870) {
                        _gotoNext = 3774501i32;
                    } else {
                        _gotoNext = 3774942i32;
                    };
                } else if (__value__ == (3774501i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3774531i32)) {
                    _se_3774553 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64>);
                    {
                        _err_3774579 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_se_3774553));
                        if (_err_3774579 != null) {
                            _gotoNext = 3774636i32;
                        } else {
                            _gotoNext = 3774666i32;
                        };
                    };
                } else if (__value__ == (3774636i32)) {
                    return { _0 : null, _1 : _err_3774579 };
                    _gotoNext = 3774666i32;
                } else if (__value__ == (3774666i32)) {
                    _numaux_3773853 = (_se_3774553.nnumaux : stdgo.GoInt);
                    _sym_3773892.sectionNumber = (_se_3774553.nscnum : stdgo.GoInt);
                    _sym_3773892.storageClass = (_se_3774553.nsclass : stdgo.GoInt);
                    _sym_3773892.value = _se_3774553.nvalue;
                    _needAuxFcn_3773874 = (((_se_3774553.ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_3773853 > (1 : stdgo.GoInt) : Bool) : Bool);
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getString._getString(_f_3770947.stringTable, _se_3774553.noffset);
                        _sym_3773892.name = __tmp__._0?.__copy__();
                        _ok_3773870 = __tmp__._1;
                    };
                    if (!_ok_3773870) {
                        _gotoNext = 3774915i32;
                    } else {
                        _gotoNext = 3774942i32;
                    };
                } else if (__value__ == (3774915i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3774942i32)) {
                    if (((_sym_3773892.storageClass != ((2 : stdgo.GoInt)) && _sym_3773892.storageClass != ((111 : stdgo.GoInt)) : Bool) && (_sym_3773892.storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3775036i32;
                    } else {
                        _gotoNext = 3775108i32;
                    };
                } else if (__value__ == (3775036i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3775108i32)) {
                    if (((_numaux_3773853 < (1 : stdgo.GoInt) : Bool) || ((_i_3773817 + _numaux_3773853 : stdgo.GoInt) >= (_nsyms_3771131 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3775148i32;
                    } else {
                        _gotoNext = 3775170i32;
                    };
                } else if (__value__ == (3775148i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3775170i32)) {
                    if ((_sym_3773892.sectionNumber > (_nscns_3771094 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3775204i32;
                    } else {
                        _gotoNext = 3775225i32;
                    };
                } else if (__value__ == (3775204i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3775225i32)) {
                    if (_sym_3773892.sectionNumber == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3775251i32;
                    } else {
                        _gotoNext = 3775279i32;
                    };
                } else if (__value__ == (3775251i32)) {
                    _sym_3773892.value = (0i64 : stdgo.GoUInt64);
                    _gotoNext = 3775351i32;
                } else if (__value__ == (3775279i32)) {
                    _sym_3773892.value = (_sym_3773892.value - (_f_3770947.sections[(_sym_3773892.sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)].sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    _gotoNext = 3775351i32;
                } else if (__value__ == (3775351i32)) {
                    _idxToSym_3773638[_i_3773817] = _sym_3773892;
                    if (_needAuxFcn_3773874) {
                        _gotoNext = 3775616i32;
                    } else {
                        _gotoNext = 3776085i32;
                    };
                } else if (__value__ == (3775616i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3775621i32;
                } else if (__value__ == (3775621i32)) {
                    {
                        final __value__ = _f_3770947.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3775649i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3775830i32;
                        } else {
                            _gotoNext = 3776085i32;
                        };
                    };
                } else if (__value__ == (3775649i32)) {
                    _aux_3775672 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32>);
                    {
                        _err_3775700 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux_3775672));
                        if (_err_3775700 != null) {
                            _gotoNext = 3775758i32;
                        } else {
                            _gotoNext = 3775791i32;
                        };
                    };
                } else if (__value__ == (3775758i32)) {
                    return { _0 : null, _1 : _err_3775700 };
                    _gotoNext = 3775791i32;
                } else if (__value__ == (3775791i32)) {
                    _sym_3773892.auxFcn.size = (_aux_3775672.xfsize : stdgo.GoInt64);
                    _gotoNext = 3776085i32;
                } else if (__value__ == (3775830i32)) {
                    _aux_3775853 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64>);
                    {
                        _err_3775881 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux_3775853));
                        if (_err_3775881 != null) {
                            _gotoNext = 3775939i32;
                        } else {
                            _gotoNext = 3775972i32;
                        };
                    };
                } else if (__value__ == (3775939i32)) {
                    return { _0 : null, _1 : _err_3775881 };
                    _gotoNext = 3775972i32;
                } else if (__value__ == (3775972i32)) {
                    _sym_3773892.auxFcn.size = (_aux_3775853.xfsize : stdgo.GoInt64);
                    _gotoNext = 3776085i32;
                } else if (__value__ == (3776085i32)) {
                    if (!_needAuxFcn_3773874) {
                        _gotoNext = 3776100i32;
                    } else {
                        _gotoNext = 3776211i32;
                    };
                } else if (__value__ == (3776100i32)) {
                    {
                        {
                            var __tmp__ = _sr_3770646.seek((((_numaux_3773853 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_3776111 = __tmp__._1;
                        };
                        if (_err_3776111 != null) {
                            _gotoNext = 3776178i32;
                        } else {
                            _gotoNext = 3776211i32;
                        };
                    };
                } else if (__value__ == (3776178i32)) {
                    return { _0 : null, _1 : _err_3776111 };
                    _gotoNext = 3776211i32;
                } else if (__value__ == (3776211i32)) {
                    _i_3773817 = (_i_3773817 + (_numaux_3773853) : stdgo.GoInt);
                    _numaux_3773853 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3776238i32;
                } else if (__value__ == (3776238i32)) {
                    {
                        final __value__ = _f_3770947.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3776265i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3776553i32;
                        } else {
                            _gotoNext = 3776874i32;
                        };
                    };
                } else if (__value__ == (3776265i32)) {
                    _aux_3776287 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32>);
                    {
                        _err_3776316 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux_3776287));
                        if (_err_3776316 != null) {
                            _gotoNext = 3776374i32;
                        } else {
                            _gotoNext = 3776404i32;
                        };
                    };
                } else if (__value__ == (3776374i32)) {
                    return { _0 : null, _1 : _err_3776316 };
                    _gotoNext = 3776404i32;
                } else if (__value__ == (3776404i32)) {
                    _sym_3773892.auxCSect.symbolType = ((_aux_3776287.xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    _sym_3773892.auxCSect.storageMappingClass = (_aux_3776287.xsmclas : stdgo.GoInt);
                    _sym_3773892.auxCSect.length_ = (_aux_3776287.xscnlen : stdgo.GoInt64);
                    _gotoNext = 3776874i32;
                } else if (__value__ == (3776553i32)) {
                    _aux_3776575 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64>);
                    {
                        _err_3776604 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux_3776575));
                        if (_err_3776604 != null) {
                            _gotoNext = 3776662i32;
                        } else {
                            _gotoNext = 3776692i32;
                        };
                    };
                } else if (__value__ == (3776662i32)) {
                    return { _0 : null, _1 : _err_3776604 };
                    _gotoNext = 3776692i32;
                } else if (__value__ == (3776692i32)) {
                    _sym_3773892.auxCSect.symbolType = ((_aux_3776575.xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    _sym_3773892.auxCSect.storageMappingClass = (_aux_3776575.xsmclas : stdgo.GoInt);
                    _sym_3773892.auxCSect.length_ = (((_aux_3776575.xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | (_aux_3776575.xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                    _gotoNext = 3776874i32;
                } else if (__value__ == (3776874i32)) {
                    _f_3770947.symbols = (_f_3770947.symbols.__append__(_sym_3773892));
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3776910i32)) {
                    _i_3773817 = (_i_3773817 + (_numaux_3773853) : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = _sr_3770646.seek(((_numaux_3773853 : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_3776964 = __tmp__._1;
                        };
                        if (_err_3776964 != null) {
                            _gotoNext = 3777029i32;
                        } else {
                            _gotoNext = 3773841i32;
                        };
                    };
                } else if (__value__ == (3777029i32)) {
                    return { _0 : null, _1 : _err_3776964 };
                    _gotoNext = 3773841i32;
                } else if (__value__ == (3777116i32)) {
                    if ((0i32 : stdgo.GoInt) < (_f_3770947.sections.length)) {
                        _gotoNext = 3778556i32;
                    } else {
                        _gotoNext = 3778561i32;
                    };
                } else if (__value__ == (3777120i32)) {
                    _sectNum_3777120++;
                    _gotoNext = 3778557i32;
                } else if (__value__ == (3777154i32)) {
                    _sect_3777129 = _f_3770947.sections[(_sectNum_3777120 : stdgo.GoInt)];
                    if (((_sect_3777129.sectionHeader.type != (32u32 : stdgo.GoUInt32)) && (_sect_3777129.sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                        _gotoNext = 3777210i32;
                    } else {
                        _gotoNext = 3777230i32;
                    };
                } else if (__value__ == (3777210i32)) {
                    _sectNum_3777120++;
                    _gotoNext = 3778557i32;
                } else if (__value__ == (3777230i32)) {
                    if (_sect_3777129.sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3777250i32;
                    } else {
                        _gotoNext = 3777270i32;
                    };
                } else if (__value__ == (3777250i32)) {
                    _sectNum_3777120++;
                    _gotoNext = 3778557i32;
                } else if (__value__ == (3777270i32)) {
                    _c_3777270 = stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>)), (_sect_3777129.sectionHeader.nreloc : stdgo.GoUInt64));
                    if ((_c_3777270 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3777339i32;
                    } else {
                        _gotoNext = 3777434i32;
                    };
                } else if (__value__ == (3777339i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface(_sect_3777129.sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum_3777120)) };
                    _gotoNext = 3777434i32;
                } else if (__value__ == (3777434i32)) {
                    _sect_3777129.relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c_3777270, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c_3777270 ? (0 : stdgo.GoInt).toBasic() : _c_3777270 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>);
                    {
                        {
                            var __tmp__ = _sr_3770646.seek((_sect_3777129.sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3777476 = __tmp__._1;
                        };
                        if (_err_3777476 != null) {
                            _gotoNext = 3777537i32;
                        } else {
                            _gotoNext = 3777564i32;
                        };
                    };
                } else if (__value__ == (3777537i32)) {
                    return { _0 : null, _1 : _err_3777476 };
                    _gotoNext = 3777564i32;
                } else if (__value__ == (3777564i32)) {
                    _i_3777568 = (0u32 : stdgo.GoUInt32);
                    _gotoNext = 3777564i32;
                    if ((_i_3777568 < _sect_3777129.sectionHeader.nreloc : Bool)) {
                        _gotoNext = 3777605i32;
                    } else {
                        _gotoNext = 3777120i32;
                    };
                } else if (__value__ == (3777605i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3777629i32;
                } else if (__value__ == (3777629i32)) {
                    {
                        final __value__ = _f_3770947.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3777657i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3778086i32;
                        } else {
                            _gotoNext = 3778511i32;
                        };
                    };
                } else if (__value__ == (3777657i32)) {
                    _rel_3777680 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32>);
                    {
                        _err_3777707 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_rel_3777680));
                        if (_err_3777707 != null) {
                            _gotoNext = 3777765i32;
                        } else {
                            _gotoNext = 3777798i32;
                        };
                    };
                } else if (__value__ == (3777765i32)) {
                    return { _0 : null, _1 : _err_3777707 };
                    _gotoNext = 3777798i32;
                } else if (__value__ == (3777798i32)) {
                    _reloc_3777614.virtualAddress = (_rel_3777680.rvaddr : stdgo.GoUInt64);
                    _reloc_3777614.symbol = (_idxToSym_3773638[(_rel_3777680.rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>));
                    _reloc_3777614.type = _rel_3777680.rtype;
                    _reloc_3777614.length_ = ((_rel_3777680.rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if ((_rel_3777680.rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3777979i32;
                    } else {
                        _gotoNext = 3778016i32;
                    };
                } else if (__value__ == (3777979i32)) {
                    _reloc_3777614.signed = true;
                    _gotoNext = 3778016i32;
                } else if (__value__ == (3778016i32)) {
                    if ((_rel_3777680.rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3778039i32;
                    } else {
                        _gotoNext = 3778511i32;
                    };
                } else if (__value__ == (3778039i32)) {
                    _reloc_3777614.instructionFixed = true;
                    _gotoNext = 3778511i32;
                } else if (__value__ == (3778086i32)) {
                    _rel_3778109 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64>);
                    {
                        _err_3778136 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3770646), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_rel_3778109));
                        if (_err_3778136 != null) {
                            _gotoNext = 3778194i32;
                        } else {
                            _gotoNext = 3778227i32;
                        };
                    };
                } else if (__value__ == (3778194i32)) {
                    return { _0 : null, _1 : _err_3778136 };
                    _gotoNext = 3778227i32;
                } else if (__value__ == (3778227i32)) {
                    _reloc_3777614.virtualAddress = _rel_3778109.rvaddr;
                    _reloc_3777614.symbol = (_idxToSym_3773638[(_rel_3778109.rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>));
                    _reloc_3777614.type = _rel_3778109.rtype;
                    _reloc_3777614.length_ = ((_rel_3778109.rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if ((_rel_3778109.rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3778399i32;
                    } else {
                        _gotoNext = 3778436i32;
                    };
                } else if (__value__ == (3778399i32)) {
                    _reloc_3777614.signed = true;
                    _gotoNext = 3778436i32;
                } else if (__value__ == (3778436i32)) {
                    if ((_rel_3778109.rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3778459i32;
                    } else {
                        _gotoNext = 3778511i32;
                    };
                } else if (__value__ == (3778459i32)) {
                    _reloc_3777614.instructionFixed = true;
                    _gotoNext = 3778511i32;
                } else if (__value__ == (3778511i32)) {
                    _sect_3777129.relocs = (_sect_3777129.relocs.__append__(_reloc_3777614?.__copy__()));
                    _i_3777568++;
                    _gotoNext = 3777564i32;
                } else if (__value__ == (3778556i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_3770947.sections[(0i32 : stdgo.GoInt)];
                        _sectNum_3777120 = __tmp__0;
                        _sect_3777129 = __tmp__1;
                    };
                    _gotoNext = 3778557i32;
                } else if (__value__ == (3778557i32)) {
                    if (_sectNum_3777120 < (_f_3770947.sections.length)) {
                        _gotoNext = 3777154i32;
                    } else {
                        _gotoNext = 3778561i32;
                    };
                } else if (__value__ == (3778561i32)) {
                    return { _0 : _f_3770947, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
