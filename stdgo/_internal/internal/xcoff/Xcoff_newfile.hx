package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>; var _1 : stdgo.Error; } {
        var _shdr_27:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
        var _err_17:stdgo.Error = (null : stdgo.Error);
        var _i_57:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _r2_29:stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
        var _aux_48:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
        var _err_13:stdgo.Error = (null : stdgo.Error);
        var _needAuxFcn_35:Bool = false;
        var _l_16:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_44:stdgo.Error = (null : stdgo.Error);
        var _ok_34:Bool = false;
        var _err_19:stdgo.Error = (null : stdgo.Error);
        var _sect_54:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _err_47:stdgo.Error = (null : stdgo.Error);
        var _se_37:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
        var _rel_59:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
        var _err_51:stdgo.Error = (null : stdgo.Error);
        var _aux_50:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
        var _scnptr_23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sr_0:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        var _shdr_25:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
        var _fhdr_12:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
        var _err_11:stdgo.Error = (null : stdgo.Error);
        var _rel_61:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
        var _err_52:stdgo.Error = (null : stdgo.Error);
        var _err_15:stdgo.Error = (null : stdgo.Error);
        var _magic_1:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _c_55:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_49:stdgo.Error = (null : stdgo.Error);
        var _st_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _err_62:stdgo.Error = (null : stdgo.Error);
        var _aux_45:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
        var _err_26:stdgo.Error = (null : stdgo.Error);
        var _s_24:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _i_22:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_38:stdgo.Error = (null : stdgo.Error);
        var _idxToSym_30;
        var _err_60:stdgo.Error = (null : stdgo.Error);
        var _err_42:stdgo.Error = (null : stdgo.Error);
        var _zeroes_39:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _offset_14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _fhdr_10:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
        var _se_41:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
        var _err_31:stdgo.Error = (null : stdgo.Error);
        var _err_28:stdgo.Error = (null : stdgo.Error);
        var _err_20:stdgo.Error = (null : stdgo.Error);
        var _c_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _opthdr_8:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _aux_43:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
        var _err_56:stdgo.Error = (null : stdgo.Error);
        var _nsyms_7:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _numaux_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2:stdgo.Error = (null : stdgo.Error);
        var _reloc_58:stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc);
        var _offset_40:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _hdrsz_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_46:stdgo.Error = (null : stdgo.Error);
        var _nscns_5:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _f_3:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
        var _sectNum_53:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sym_36:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
        var _i_32:stdgo.GoInt = (0 : stdgo.GoInt);
        var _symptr_6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _sr_0 = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
                    _magic_1 = stdgo.Go.pointer(stdgo._internal.internal.xcoff.Xcoff__magic._magic);
                    {
                        _err_2 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_magic_1));
                        if (_err_2 != null) {
                            _gotoNext = 3770800i32;
                        } else {
                            _gotoNext = 3770824i32;
                        };
                    };
                } else if (__value__ == (3770800i32)) {
                    return { _0 : null, _1 : _err_2 };
                    _gotoNext = 3770824i32;
                } else if (__value__ == (3770824i32)) {
                    if (((_magic_1 != (479 : stdgo.GoUInt16)) && (_magic_1 != (503 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3770874i32;
                    } else {
                        _gotoNext = 3770947i32;
                    };
                } else if (__value__ == (3770874i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic_1)) };
                    _gotoNext = 3770947i32;
                } else if (__value__ == (3770947i32)) {
                    _f_3 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_file.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
                    (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine = _magic_1;
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_4 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4 != null) {
                            _gotoNext = 3771066i32;
                        } else {
                            _gotoNext = 3771090i32;
                        };
                    };
                } else if (__value__ == (3771066i32)) {
                    return { _0 : null, _1 : _err_4 };
                    _gotoNext = 3771090i32;
                } else if (__value__ == (3771090i32)) {
                    _gotoNext = 3771179i32;
                } else if (__value__ == (3771179i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3771205i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3771462i32;
                        } else {
                            _gotoNext = 3771715i32;
                        };
                    };
                } else if (__value__ == (3771205i32)) {
                    _fhdr_10 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
                    {
                        _err_11 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_10)));
                        if (_err_11 != null) {
                            _gotoNext = 3771316i32;
                        } else {
                            _gotoNext = 3771343i32;
                        };
                    };
                } else if (__value__ == (3771316i32)) {
                    return { _0 : null, _1 : _err_11 };
                    _gotoNext = 3771343i32;
                } else if (__value__ == (3771343i32)) {
                    _nscns_5 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fnscns;
                    _symptr_6 = ((@:checkr _fhdr_10 ?? throw "null pointer dereference").fsymptr : stdgo.GoUInt64);
                    _nsyms_7 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_8 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_9 = (20 : stdgo.GoInt);
                    _gotoNext = 3771715i32;
                } else if (__value__ == (3771462i32)) {
                    _fhdr_12 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
                    {
                        _err_13 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_12)));
                        if (_err_13 != null) {
                            _gotoNext = 3771573i32;
                        } else {
                            _gotoNext = 3771600i32;
                        };
                    };
                } else if (__value__ == (3771573i32)) {
                    return { _0 : null, _1 : _err_13 };
                    _gotoNext = 3771600i32;
                } else if (__value__ == (3771600i32)) {
                    _nscns_5 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fnscns;
                    _symptr_6 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fsymptr;
                    _nsyms_7 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_8 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_9 = (24 : stdgo.GoInt);
                    _gotoNext = 3771715i32;
                } else if (__value__ == (3771715i32)) {
                    if (((_symptr_6 == (0i64 : stdgo.GoUInt64)) || (_nsyms_7 <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3771744i32;
                    } else {
                        _gotoNext = 3771853i32;
                    };
                } else if (__value__ == (3771744i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
                    _gotoNext = 3771853i32;
                } else if (__value__ == (3771853i32)) {
                    _offset_14 = (_symptr_6 + ((_nsyms_7 : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((_offset_14 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_15 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_15 != null) {
                            _gotoNext = 3771956i32;
                        } else {
                            _gotoNext = 3772033i32;
                        };
                    };
                } else if (__value__ == (3771956i32)) {
                    return { _0 : null, _1 : _err_15 };
                    _gotoNext = 3772033i32;
                } else if (__value__ == (3772033i32)) {
                    _l_16 = stdgo.Go.pointer(stdgo._internal.internal.xcoff.Xcoff__l._l);
                    {
                        _err_17 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_l_16));
                        if (_err_17 != null) {
                            _gotoNext = 3772107i32;
                        } else {
                            _gotoNext = 3772131i32;
                        };
                    };
                } else if (__value__ == (3772107i32)) {
                    return { _0 : null, _1 : _err_17 };
                    _gotoNext = 3772131i32;
                } else if (__value__ == (3772131i32)) {
                    if ((_l_16 > (4u32 : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3772140i32;
                    } else {
                        _gotoNext = 3772296i32;
                    };
                } else if (__value__ == (3772140i32)) {
                    {
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sr_0), (_l_16 : stdgo.GoUInt64), (_offset_14 : stdgo.GoInt64));
                        _st_18 = @:tmpset0 __tmp__._0;
                        _err_19 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_19 != null) {
                        _gotoNext = 3772220i32;
                    } else {
                        _gotoNext = 3772247i32;
                    };
                } else if (__value__ == (3772220i32)) {
                    return { _0 : null, _1 : _err_19 };
                    _gotoNext = 3772247i32;
                } else if (__value__ == (3772247i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").stringTable = _st_18;
                    _gotoNext = 3772296i32;
                } else if (__value__ == (3772296i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((_hdrsz_9 : stdgo.GoInt64) + (_opthdr_8 : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_20 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_20 != null) {
                            _gotoNext = 3772371i32;
                        } else {
                            _gotoNext = 3772395i32;
                        };
                    };
                } else if (__value__ == (3772371i32)) {
                    return { _0 : null, _1 : _err_20 };
                    _gotoNext = 3772395i32;
                } else if (__value__ == (3772395i32)) {
                    _c_21 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>)), (_nscns_5 : stdgo.GoUInt64));
                    if ((_c_21 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3772460i32;
                    } else {
                        _gotoNext = 3772530i32;
                    };
                } else if (__value__ == (3772460i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns_5)) };
                    _gotoNext = 3772530i32;
                } else if (__value__ == (3772530i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>((0 : stdgo.GoInt).toBasic(), _c_21) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
                    _i_22 = (0 : stdgo.GoInt);
                    _gotoNext = 3772567i32;
                } else if (__value__ == (3772567i32)) {
                    if ((_i_22 < (_nscns_5 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3772599i32;
                    } else {
                        _gotoNext = 3773634i32;
                    };
                } else if (__value__ == (3772599i32)) {
                    _s_24 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
                    _gotoNext = 3772643i32;
                } else if (__value__ == (3772643i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3772670i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3773050i32;
                        } else {
                            _gotoNext = 3773394i32;
                        };
                    };
                } else if (__value__ == (3772670i32)) {
                    _shdr_25 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
                    {
                        _err_26 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_25)));
                        if (_err_26 != null) {
                            _gotoNext = 3772786i32;
                        } else {
                            _gotoNext = 3772816i32;
                        };
                    };
                } else if (__value__ == (3772786i32)) {
                    return { _0 : null, _1 : _err_26 };
                    _gotoNext = 3772816i32;
                } else if (__value__ == (3772816i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_25 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.virtualAddress = ((@:checkr _shdr_25 ?? throw "null pointer dereference").svaddr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size = ((@:checkr _shdr_25 ?? throw "null pointer dereference").ssize : stdgo.GoUInt64);
                    _scnptr_23 = ((@:checkr _shdr_25 ?? throw "null pointer dereference").sscnptr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_25 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.relptr = ((@:checkr _shdr_25 ?? throw "null pointer dereference").srelptr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.nreloc = ((@:checkr _shdr_25 ?? throw "null pointer dereference").snreloc : stdgo.GoUInt32);
                    _gotoNext = 3773394i32;
                } else if (__value__ == (3773050i32)) {
                    _shdr_27 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
                    {
                        _err_28 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_27)));
                        if (_err_28 != null) {
                            _gotoNext = 3773166i32;
                        } else {
                            _gotoNext = 3773196i32;
                        };
                    };
                } else if (__value__ == (3773166i32)) {
                    return { _0 : null, _1 : _err_28 };
                    _gotoNext = 3773196i32;
                } else if (__value__ == (3773196i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_27 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.virtualAddress = (@:checkr _shdr_27 ?? throw "null pointer dereference").svaddr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size = (@:checkr _shdr_27 ?? throw "null pointer dereference").ssize;
                    _scnptr_23 = (@:checkr _shdr_27 ?? throw "null pointer dereference").sscnptr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_27 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.relptr = (@:checkr _shdr_27 ?? throw "null pointer dereference").srelptr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.nreloc = (@:checkr _shdr_27 ?? throw "null pointer dereference").snreloc;
                    _gotoNext = 3773394i32;
                } else if (__value__ == (3773394i32)) {
                    _r2_29 = _r;
                    if (_scnptr_23 == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3773419i32;
                    } else {
                        _gotoNext = 3773475i32;
                    };
                } else if (__value__ == (3773419i32)) {
                    _r2_29 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt));
                    _gotoNext = 3773475i32;
                } else if (__value__ == (3773475i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r2_29, (_scnptr_23 : stdgo.GoInt64), ((@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
                    (@:checkr _s_24 ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s_24 ?? throw "null pointer dereference")._sr);
                    (@:checkr _f_3 ?? throw "null pointer dereference").sections = ((@:checkr _f_3 ?? throw "null pointer dereference").sections.__append__(_s_24));
                    _i_22++;
                    _gotoNext = 3772567i32;
                } else if (__value__ == (3773634i32)) {
                    _idxToSym_30 = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>) : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((_symptr_6 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_31 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_31 != null) {
                            _gotoNext = 3773757i32;
                        } else {
                            _gotoNext = 3773781i32;
                        };
                    };
                } else if (__value__ == (3773757i32)) {
                    return { _0 : null, _1 : _err_31 };
                    _gotoNext = 3773781i32;
                } else if (__value__ == (3773781i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    _i_32 = (0 : stdgo.GoInt);
                    _gotoNext = 3773813i32;
                } else if (__value__ == (3773813i32)) {
                    if ((_i_32 < (_nsyms_7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3773845i32;
                    } else {
                        _gotoNext = 3777116i32;
                    };
                } else if (__value__ == (3773841i32)) {
                    _i_32++;
                    _gotoNext = 3773813i32;
                } else if (__value__ == (3773845i32)) {
                    _sym_36 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                    _gotoNext = 3773913i32;
                } else if (__value__ == (3773913i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3773940i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3774531i32;
                        } else {
                            _gotoNext = 3774942i32;
                        };
                    };
                } else if (__value__ == (3773940i32)) {
                    _se_37 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
                    {
                        _err_38 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_37)));
                        if (_err_38 != null) {
                            _gotoNext = 3774045i32;
                        } else {
                            _gotoNext = 3774075i32;
                        };
                    };
                } else if (__value__ == (3774045i32)) {
                    return { _0 : null, _1 : _err_38 };
                    _gotoNext = 3774075i32;
                } else if (__value__ == (3774075i32)) {
                    _numaux_33 = ((@:checkr _se_37 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_37 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_37 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = ((@:checkr _se_37 ?? throw "null pointer dereference").nvalue : stdgo.GoUInt64);
                    _needAuxFcn_35 = ((((@:checkr _se_37 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_33 > (1 : stdgo.GoInt) : Bool) : Bool);
                    _zeroes_39 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_zeroes_39 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3774336i32;
                    } else {
                        _gotoNext = 3774384i32;
                    };
                } else if (__value__ == (3774336i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _gotoNext = 3774942i32;
                } else if (__value__ == (3774384i32)) {
                    _gotoNext = 3774384i32;
                    _offset_40 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3 ?? throw "null pointer dereference").stringTable, _offset_40);
                        (@:checkr _sym_36 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_34 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_34) {
                        _gotoNext = 3774501i32;
                    } else {
                        _gotoNext = 3774942i32;
                    };
                } else if (__value__ == (3774501i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3774531i32)) {
                    _se_41 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
                    {
                        _err_42 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_41)));
                        if (_err_42 != null) {
                            _gotoNext = 3774636i32;
                        } else {
                            _gotoNext = 3774666i32;
                        };
                    };
                } else if (__value__ == (3774636i32)) {
                    return { _0 : null, _1 : _err_42 };
                    _gotoNext = 3774666i32;
                } else if (__value__ == (3774666i32)) {
                    _numaux_33 = ((@:checkr _se_41 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_41 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_41 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = (@:checkr _se_41 ?? throw "null pointer dereference").nvalue;
                    _needAuxFcn_35 = ((((@:checkr _se_41 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_33 > (1 : stdgo.GoInt) : Bool) : Bool);
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3 ?? throw "null pointer dereference").stringTable, (@:checkr _se_41 ?? throw "null pointer dereference").noffset);
                        (@:checkr _sym_36 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_34 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_34) {
                        _gotoNext = 3774915i32;
                    } else {
                        _gotoNext = 3774942i32;
                    };
                } else if (__value__ == (3774915i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3774942i32)) {
                    if ((((@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != ((2 : stdgo.GoInt)) && (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != ((111 : stdgo.GoInt)) : Bool) && ((@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3775036i32;
                    } else {
                        _gotoNext = 3775108i32;
                    };
                } else if (__value__ == (3775036i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3775108i32)) {
                    if (((_numaux_33 < (1 : stdgo.GoInt) : Bool) || ((_i_32 + _numaux_33 : stdgo.GoInt) >= (_nsyms_7 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3775148i32;
                    } else {
                        _gotoNext = 3775170i32;
                    };
                } else if (__value__ == (3775148i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3775170i32)) {
                    if (((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber > (_nscns_5 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3775204i32;
                    } else {
                        _gotoNext = 3775225i32;
                    };
                } else if (__value__ == (3775204i32)) {
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3775225i32)) {
                    if ((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3775251i32;
                    } else {
                        _gotoNext = 3775279i32;
                    };
                } else if (__value__ == (3775251i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = (0i64 : stdgo.GoUInt64);
                    _gotoNext = 3775351i32;
                } else if (__value__ == (3775279i32)) {
                    _gotoNext = 3775279i32;
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = ((@:checkr _sym_36 ?? throw "null pointer dereference").value - ((@:checkr (@:checkr _f_3 ?? throw "null pointer dereference").sections[((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    0i32;
                    _gotoNext = 3775351i32;
                } else if (__value__ == (3775351i32)) {
                    _idxToSym_30[_i_32] = _sym_36;
                    if (_needAuxFcn_35) {
                        _gotoNext = 3775616i32;
                    } else {
                        _gotoNext = 3776085i32;
                    };
                } else if (__value__ == (3775616i32)) {
                    _gotoNext = 3775621i32;
                } else if (__value__ == (3775621i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3775649i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3775830i32;
                        } else {
                            _gotoNext = 3776085i32;
                        };
                    };
                } else if (__value__ == (3775649i32)) {
                    _aux_43 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
                    {
                        _err_44 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_43)));
                        if (_err_44 != null) {
                            _gotoNext = 3775758i32;
                        } else {
                            _gotoNext = 3775791i32;
                        };
                    };
                } else if (__value__ == (3775758i32)) {
                    return { _0 : null, _1 : _err_44 };
                    _gotoNext = 3775791i32;
                } else if (__value__ == (3775791i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_43 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3776085i32;
                } else if (__value__ == (3775830i32)) {
                    _aux_45 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
                    {
                        _err_46 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_45)));
                        if (_err_46 != null) {
                            _gotoNext = 3775939i32;
                        } else {
                            _gotoNext = 3775972i32;
                        };
                    };
                } else if (__value__ == (3775939i32)) {
                    return { _0 : null, _1 : _err_46 };
                    _gotoNext = 3775972i32;
                } else if (__value__ == (3775972i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_45 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3776085i32;
                } else if (__value__ == (3776085i32)) {
                    if (!_needAuxFcn_35) {
                        _gotoNext = 3776100i32;
                    } else {
                        _gotoNext = 3776211i32;
                    };
                } else if (__value__ == (3776100i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((((_numaux_33 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_47 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_47 != null) {
                            _gotoNext = 3776178i32;
                        } else {
                            _gotoNext = 3776211i32;
                        };
                    };
                } else if (__value__ == (3776178i32)) {
                    return { _0 : null, _1 : _err_47 };
                    _gotoNext = 3776211i32;
                } else if (__value__ == (3776211i32)) {
                    _i_32 = (_i_32 + (_numaux_33) : stdgo.GoInt);
                    _numaux_33 = (0 : stdgo.GoInt);
                    _gotoNext = 3776238i32;
                } else if (__value__ == (3776238i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3776265i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3776553i32;
                        } else {
                            _gotoNext = 3776874i32;
                        };
                    };
                } else if (__value__ == (3776265i32)) {
                    _aux_48 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
                    {
                        _err_49 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_48)));
                        if (_err_49 != null) {
                            _gotoNext = 3776374i32;
                        } else {
                            _gotoNext = 3776404i32;
                        };
                    };
                } else if (__value__ == (3776374i32)) {
                    return { _0 : null, _1 : _err_49 };
                    _gotoNext = 3776404i32;
                } else if (__value__ == (3776404i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_48 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_48 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.length_ = ((@:checkr _aux_48 ?? throw "null pointer dereference").xscnlen : stdgo.GoInt64);
                    _gotoNext = 3776874i32;
                } else if (__value__ == (3776553i32)) {
                    _aux_50 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
                    {
                        _err_51 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_50)));
                        if (_err_51 != null) {
                            _gotoNext = 3776662i32;
                        } else {
                            _gotoNext = 3776692i32;
                        };
                    };
                } else if (__value__ == (3776662i32)) {
                    return { _0 : null, _1 : _err_51 };
                    _gotoNext = 3776692i32;
                } else if (__value__ == (3776692i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_50 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_50 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.length_ = ((((@:checkr _aux_50 ?? throw "null pointer dereference").xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | ((@:checkr _aux_50 ?? throw "null pointer dereference").xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                    _gotoNext = 3776874i32;
                } else if (__value__ == (3776874i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").symbols = ((@:checkr _f_3 ?? throw "null pointer dereference").symbols.__append__(_sym_36));
                    _gotoNext = 3776910i32;
                } else if (__value__ == (3776910i32)) {
                    _i_32 = (_i_32 + (_numaux_33) : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((_numaux_33 : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_52 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_52 != null) {
                            _gotoNext = 3777029i32;
                        } else {
                            _gotoNext = 3773841i32;
                        };
                    };
                } else if (__value__ == (3777029i32)) {
                    return { _0 : null, _1 : _err_52 };
                    _gotoNext = 3773841i32;
                } else if (__value__ == (3777116i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_3 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3778556i32;
                    } else {
                        _gotoNext = 3778561i32;
                    };
                } else if (__value__ == (3777120i32)) {
                    _sectNum_53++;
                    _gotoNext = 3778557i32;
                } else if (__value__ == (3777154i32)) {
                    _sect_54 = (@:checkr _f_3 ?? throw "null pointer dereference").sections[(_sectNum_53 : stdgo.GoInt)];
                    if ((((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.type != (32u32 : stdgo.GoUInt32)) && ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                        _gotoNext = 3777210i32;
                    } else {
                        _gotoNext = 3777230i32;
                    };
                } else if (__value__ == (3777210i32)) {
                    _sectNum_53++;
                    _gotoNext = 3778557i32;
                } else if (__value__ == (3777230i32)) {
                    if ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3777250i32;
                    } else {
                        _gotoNext = 3777270i32;
                    };
                } else if (__value__ == (3777250i32)) {
                    _sectNum_53++;
                    _gotoNext = 3778557i32;
                } else if (__value__ == (3777270i32)) {
                    _c_55 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>))), ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoUInt64));
                    if ((_c_55 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3777339i32;
                    } else {
                        _gotoNext = 3777434i32;
                    };
                } else if (__value__ == (3777339i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum_53)) };
                    _gotoNext = 3777434i32;
                } else if (__value__ == (3777434i32)) {
                    (@:checkr _sect_54 ?? throw "null pointer dereference").relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c_55, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c_55 ? (0 : stdgo.GoInt).toBasic() : _c_55 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_56 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_56 != null) {
                            _gotoNext = 3777537i32;
                        } else {
                            _gotoNext = 3777564i32;
                        };
                    };
                } else if (__value__ == (3777537i32)) {
                    return { _0 : null, _1 : _err_56 };
                    _gotoNext = 3777564i32;
                } else if (__value__ == (3777564i32)) {
                    _i_57 = (0u32 : stdgo.GoUInt32);
                    _gotoNext = 3777564i32;
                    if ((_i_57 < (@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc : Bool)) {
                        _gotoNext = 3777605i32;
                    } else {
                        _gotoNext = 3777120i32;
                    };
                } else if (__value__ == (3777605i32)) {
                    _gotoNext = 3777629i32;
                } else if (__value__ == (3777629i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3777657i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3778086i32;
                        } else {
                            _gotoNext = 3778511i32;
                        };
                    };
                } else if (__value__ == (3777657i32)) {
                    _rel_59 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
                    {
                        _err_60 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_59)));
                        if (_err_60 != null) {
                            _gotoNext = 3777765i32;
                        } else {
                            _gotoNext = 3777798i32;
                        };
                    };
                } else if (__value__ == (3777765i32)) {
                    return { _0 : null, _1 : _err_60 };
                    _gotoNext = 3777798i32;
                } else if (__value__ == (3777798i32)) {
                    _reloc_58.virtualAddress = ((@:checkr _rel_59 ?? throw "null pointer dereference").rvaddr : stdgo.GoUInt64);
                    _reloc_58.symbol = (_idxToSym_30[((@:checkr _rel_59 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_58.type = (@:checkr _rel_59 ?? throw "null pointer dereference").rtype;
                    _reloc_58.length_ = (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3777979i32;
                    } else {
                        _gotoNext = 3778016i32;
                    };
                } else if (__value__ == (3777979i32)) {
                    _reloc_58.signed = true;
                    _gotoNext = 3778016i32;
                } else if (__value__ == (3778016i32)) {
                    if (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3778039i32;
                    } else {
                        _gotoNext = 3778511i32;
                    };
                } else if (__value__ == (3778039i32)) {
                    _reloc_58.instructionFixed = true;
                    _gotoNext = 3778511i32;
                } else if (__value__ == (3778086i32)) {
                    _rel_61 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
                    {
                        _err_62 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_61)));
                        if (_err_62 != null) {
                            _gotoNext = 3778194i32;
                        } else {
                            _gotoNext = 3778227i32;
                        };
                    };
                } else if (__value__ == (3778194i32)) {
                    return { _0 : null, _1 : _err_62 };
                    _gotoNext = 3778227i32;
                } else if (__value__ == (3778227i32)) {
                    _reloc_58.virtualAddress = (@:checkr _rel_61 ?? throw "null pointer dereference").rvaddr;
                    _reloc_58.symbol = (_idxToSym_30[((@:checkr _rel_61 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_58.type = (@:checkr _rel_61 ?? throw "null pointer dereference").rtype;
                    _reloc_58.length_ = (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3778399i32;
                    } else {
                        _gotoNext = 3778436i32;
                    };
                } else if (__value__ == (3778399i32)) {
                    _reloc_58.signed = true;
                    _gotoNext = 3778436i32;
                } else if (__value__ == (3778436i32)) {
                    if (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3778459i32;
                    } else {
                        _gotoNext = 3778511i32;
                    };
                } else if (__value__ == (3778459i32)) {
                    _reloc_58.instructionFixed = true;
                    _gotoNext = 3778511i32;
                } else if (__value__ == (3778511i32)) {
                    (@:checkr _sect_54 ?? throw "null pointer dereference").relocs = ((@:checkr _sect_54 ?? throw "null pointer dereference").relocs.__append__(_reloc_58?.__copy__()));
                    _i_57++;
                    _gotoNext = 3777564i32;
                } else if (__value__ == (3778556i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_3 ?? throw "null pointer dereference").sections[(0i32 : stdgo.GoInt)];
                        _sectNum_53 = @:binopAssign __tmp__0;
                        _sect_54 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3778557i32;
                } else if (__value__ == (3778557i32)) {
                    if (_sectNum_53 < ((@:checkr _f_3 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3777154i32;
                    } else {
                        _gotoNext = 3778561i32;
                    };
                } else if (__value__ == (3778561i32)) {
                    return { _0 : _f_3, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
