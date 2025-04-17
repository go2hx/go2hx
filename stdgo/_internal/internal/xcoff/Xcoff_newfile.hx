package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>; var _1 : stdgo.Error; } {
        var _c_55:stdgo.GoInt = (0 : stdgo.GoInt);
        var _zeroes_39:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _opthdr_8:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _rel_61:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
        var _offset_40:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_28:stdgo.Error = (null : stdgo.Error);
        var _s_24:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _sectNum_53:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_46:stdgo.Error = (null : stdgo.Error);
        var _se_41:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
        var _se_37:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
        var _fhdr_12:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
        var _numaux_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_19:stdgo.Error = (null : stdgo.Error);
        var _fhdr_10:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
        var _err_49:stdgo.Error = (null : stdgo.Error);
        var _err_38:stdgo.Error = (null : stdgo.Error);
        var _reloc_58:stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc);
        var _scnptr_23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _hdrsz_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f_3:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
        var _sr_0:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        var _aux_45:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
        var _err_44:stdgo.Error = (null : stdgo.Error);
        var _idxToSym_30;
        var _st_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_2:stdgo.Error = (null : stdgo.Error);
        var _magic_1:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _ok_34:Bool = false;
        var _r2_29:stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
        var _needAuxFcn_35:Bool = false;
        var _i_22:stdgo.GoInt = (0 : stdgo.GoInt);
        var _l_16:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_60:stdgo.Error = (null : stdgo.Error);
        var _rel_59:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
        var _aux_48:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
        var _aux_43:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
        var _err_20:stdgo.Error = (null : stdgo.Error);
        var _err_17:stdgo.Error = (null : stdgo.Error);
        var _shdr_25:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
        var _err_11:stdgo.Error = (null : stdgo.Error);
        var _symptr_6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_51:stdgo.Error = (null : stdgo.Error);
        var _aux_50:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
        var _i_32:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offset_14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _nsyms_7:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _err_31:stdgo.Error = (null : stdgo.Error);
        var _err_52:stdgo.Error = (null : stdgo.Error);
        var _err_42:stdgo.Error = (null : stdgo.Error);
        var _sym_36:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
        var _sect_54:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _i_57:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _c_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_62:stdgo.Error = (null : stdgo.Error);
        var _err_47:stdgo.Error = (null : stdgo.Error);
        var _err_15:stdgo.Error = (null : stdgo.Error);
        var _nscns_5:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _shdr_27:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
        var _err_26:stdgo.Error = (null : stdgo.Error);
        var _err_13:stdgo.Error = (null : stdgo.Error);
        var _err_56:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3758693i32;
                        } else {
                            _gotoNext = 3758717i32;
                        };
                    };
                } else if (__value__ == (3758693i32)) {
                    return { _0 : null, _1 : _err_2 };
                    _gotoNext = 3758717i32;
                } else if (__value__ == (3758717i32)) {
                    if (((_magic_1 != (479 : stdgo.GoUInt16)) && (_magic_1 != (503 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3758767i32;
                    } else {
                        _gotoNext = 3758840i32;
                    };
                } else if (__value__ == (3758767i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic_1)) };
                    _gotoNext = 3758840i32;
                } else if (__value__ == (3758840i32)) {
                    _f_3 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_file.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
                    (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine = _magic_1;
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_4 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4 != null) {
                            _gotoNext = 3758959i32;
                        } else {
                            _gotoNext = 3758983i32;
                        };
                    };
                } else if (__value__ == (3758959i32)) {
                    return { _0 : null, _1 : _err_4 };
                    _gotoNext = 3758983i32;
                } else if (__value__ == (3758983i32)) {
                    _gotoNext = 3759072i32;
                } else if (__value__ == (3759072i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3759098i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3759355i32;
                        } else {
                            _gotoNext = 3759608i32;
                        };
                    };
                } else if (__value__ == (3759098i32)) {
                    _fhdr_10 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
                    {
                        _err_11 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_10)));
                        if (_err_11 != null) {
                            _gotoNext = 3759209i32;
                        } else {
                            _gotoNext = 3759236i32;
                        };
                    };
                } else if (__value__ == (3759209i32)) {
                    return { _0 : null, _1 : _err_11 };
                    _gotoNext = 3759236i32;
                } else if (__value__ == (3759236i32)) {
                    _nscns_5 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fnscns;
                    _symptr_6 = ((@:checkr _fhdr_10 ?? throw "null pointer dereference").fsymptr : stdgo.GoUInt64);
                    _nsyms_7 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_8 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_9 = (20 : stdgo.GoInt);
                    _gotoNext = 3759608i32;
                } else if (__value__ == (3759355i32)) {
                    _fhdr_12 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
                    {
                        _err_13 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_12)));
                        if (_err_13 != null) {
                            _gotoNext = 3759466i32;
                        } else {
                            _gotoNext = 3759493i32;
                        };
                    };
                } else if (__value__ == (3759466i32)) {
                    return { _0 : null, _1 : _err_13 };
                    _gotoNext = 3759493i32;
                } else if (__value__ == (3759493i32)) {
                    _nscns_5 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fnscns;
                    _symptr_6 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fsymptr;
                    _nsyms_7 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_8 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_9 = (24 : stdgo.GoInt);
                    _gotoNext = 3759608i32;
                } else if (__value__ == (3759608i32)) {
                    if (((_symptr_6 == (0i64 : stdgo.GoUInt64)) || (_nsyms_7 <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3759637i32;
                    } else {
                        _gotoNext = 3759746i32;
                    };
                } else if (__value__ == (3759637i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
                    _gotoNext = 3759746i32;
                } else if (__value__ == (3759746i32)) {
                    _offset_14 = (_symptr_6 + ((_nsyms_7 : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((_offset_14 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_15 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_15 != null) {
                            _gotoNext = 3759849i32;
                        } else {
                            _gotoNext = 3759926i32;
                        };
                    };
                } else if (__value__ == (3759849i32)) {
                    return { _0 : null, _1 : _err_15 };
                    _gotoNext = 3759926i32;
                } else if (__value__ == (3759926i32)) {
                    _l_16 = stdgo.Go.pointer(stdgo._internal.internal.xcoff.Xcoff__l._l);
                    {
                        _err_17 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_l_16));
                        if (_err_17 != null) {
                            _gotoNext = 3760000i32;
                        } else {
                            _gotoNext = 3760024i32;
                        };
                    };
                } else if (__value__ == (3760000i32)) {
                    return { _0 : null, _1 : _err_17 };
                    _gotoNext = 3760024i32;
                } else if (__value__ == (3760024i32)) {
                    if ((_l_16 > (4u32 : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3760033i32;
                    } else {
                        _gotoNext = 3760189i32;
                    };
                } else if (__value__ == (3760033i32)) {
                    {
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sr_0), (_l_16 : stdgo.GoUInt64), (_offset_14 : stdgo.GoInt64));
                        _st_18 = @:tmpset0 __tmp__._0;
                        _err_19 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_19 != null) {
                        _gotoNext = 3760113i32;
                    } else {
                        _gotoNext = 3760140i32;
                    };
                } else if (__value__ == (3760113i32)) {
                    return { _0 : null, _1 : _err_19 };
                    _gotoNext = 3760140i32;
                } else if (__value__ == (3760140i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").stringTable = _st_18;
                    _gotoNext = 3760189i32;
                } else if (__value__ == (3760189i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((_hdrsz_9 : stdgo.GoInt64) + (_opthdr_8 : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_20 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_20 != null) {
                            _gotoNext = 3760264i32;
                        } else {
                            _gotoNext = 3760288i32;
                        };
                    };
                } else if (__value__ == (3760264i32)) {
                    return { _0 : null, _1 : _err_20 };
                    _gotoNext = 3760288i32;
                } else if (__value__ == (3760288i32)) {
                    _c_21 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>)), (_nscns_5 : stdgo.GoUInt64));
                    if ((_c_21 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3760353i32;
                    } else {
                        _gotoNext = 3760423i32;
                    };
                } else if (__value__ == (3760353i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns_5)) };
                    _gotoNext = 3760423i32;
                } else if (__value__ == (3760423i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>((0 : stdgo.GoInt).toBasic(), _c_21) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
                    _i_22 = (0 : stdgo.GoInt);
                    _gotoNext = 3760460i32;
                } else if (__value__ == (3760460i32)) {
                    if ((_i_22 < (_nscns_5 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3760492i32;
                    } else {
                        _gotoNext = 3761527i32;
                    };
                } else if (__value__ == (3760492i32)) {
                    _s_24 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
                    _gotoNext = 3760536i32;
                } else if (__value__ == (3760536i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3760563i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3760943i32;
                        } else {
                            _gotoNext = 3761287i32;
                        };
                    };
                } else if (__value__ == (3760563i32)) {
                    _shdr_25 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
                    {
                        _err_26 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_25)));
                        if (_err_26 != null) {
                            _gotoNext = 3760679i32;
                        } else {
                            _gotoNext = 3760709i32;
                        };
                    };
                } else if (__value__ == (3760679i32)) {
                    return { _0 : null, _1 : _err_26 };
                    _gotoNext = 3760709i32;
                } else if (__value__ == (3760709i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_25 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.virtualAddress = ((@:checkr _shdr_25 ?? throw "null pointer dereference").svaddr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size = ((@:checkr _shdr_25 ?? throw "null pointer dereference").ssize : stdgo.GoUInt64);
                    _scnptr_23 = ((@:checkr _shdr_25 ?? throw "null pointer dereference").sscnptr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_25 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.relptr = ((@:checkr _shdr_25 ?? throw "null pointer dereference").srelptr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.nreloc = ((@:checkr _shdr_25 ?? throw "null pointer dereference").snreloc : stdgo.GoUInt32);
                    _gotoNext = 3761287i32;
                } else if (__value__ == (3760943i32)) {
                    _shdr_27 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
                    {
                        _err_28 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_27)));
                        if (_err_28 != null) {
                            _gotoNext = 3761059i32;
                        } else {
                            _gotoNext = 3761089i32;
                        };
                    };
                } else if (__value__ == (3761059i32)) {
                    return { _0 : null, _1 : _err_28 };
                    _gotoNext = 3761089i32;
                } else if (__value__ == (3761089i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_27 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.virtualAddress = (@:checkr _shdr_27 ?? throw "null pointer dereference").svaddr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size = (@:checkr _shdr_27 ?? throw "null pointer dereference").ssize;
                    _scnptr_23 = (@:checkr _shdr_27 ?? throw "null pointer dereference").sscnptr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_27 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.relptr = (@:checkr _shdr_27 ?? throw "null pointer dereference").srelptr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.nreloc = (@:checkr _shdr_27 ?? throw "null pointer dereference").snreloc;
                    _gotoNext = 3761287i32;
                } else if (__value__ == (3761287i32)) {
                    _r2_29 = _r;
                    if (_scnptr_23 == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3761312i32;
                    } else {
                        _gotoNext = 3761368i32;
                    };
                } else if (__value__ == (3761312i32)) {
                    _r2_29 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt));
                    _gotoNext = 3761368i32;
                } else if (__value__ == (3761368i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r2_29, (_scnptr_23 : stdgo.GoInt64), ((@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
                    (@:checkr _s_24 ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s_24 ?? throw "null pointer dereference")._sr);
                    (@:checkr _f_3 ?? throw "null pointer dereference").sections = ((@:checkr _f_3 ?? throw "null pointer dereference").sections.__append__(_s_24) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
                    _i_22++;
                    _gotoNext = 3760460i32;
                } else if (__value__ == (3761527i32)) {
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
                            _gotoNext = 3761650i32;
                        } else {
                            _gotoNext = 3761674i32;
                        };
                    };
                } else if (__value__ == (3761650i32)) {
                    return { _0 : null, _1 : _err_31 };
                    _gotoNext = 3761674i32;
                } else if (__value__ == (3761674i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    _i_32 = (0 : stdgo.GoInt);
                    _gotoNext = 3761706i32;
                } else if (__value__ == (3761706i32)) {
                    if ((_i_32 < (_nsyms_7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3761738i32;
                    } else {
                        _gotoNext = 3765009i32;
                    };
                } else if (__value__ == (3761734i32)) {
                    _i_32++;
                    _gotoNext = 3761706i32;
                } else if (__value__ == (3761738i32)) {
                    _sym_36 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                    _gotoNext = 3761806i32;
                } else if (__value__ == (3761806i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3761833i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3762424i32;
                        } else {
                            _gotoNext = 3762835i32;
                        };
                    };
                } else if (__value__ == (3761833i32)) {
                    _se_37 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
                    {
                        _err_38 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_37)));
                        if (_err_38 != null) {
                            _gotoNext = 3761938i32;
                        } else {
                            _gotoNext = 3761968i32;
                        };
                    };
                } else if (__value__ == (3761938i32)) {
                    return { _0 : null, _1 : _err_38 };
                    _gotoNext = 3761968i32;
                } else if (__value__ == (3761968i32)) {
                    _numaux_33 = ((@:checkr _se_37 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_37 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_37 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = ((@:checkr _se_37 ?? throw "null pointer dereference").nvalue : stdgo.GoUInt64);
                    _needAuxFcn_35 = ((((@:checkr _se_37 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_33 > (1 : stdgo.GoInt) : Bool) : Bool);
                    _zeroes_39 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_zeroes_39 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3762229i32;
                    } else {
                        _gotoNext = 3762277i32;
                    };
                } else if (__value__ == (3762229i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _gotoNext = 3762835i32;
                } else if (__value__ == (3762277i32)) {
                    _gotoNext = 3762277i32;
                    _offset_40 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3 ?? throw "null pointer dereference").stringTable, _offset_40);
                        (@:checkr _sym_36 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_34 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_34) {
                        _gotoNext = 3762394i32;
                    } else {
                        _gotoNext = 3762835i32;
                    };
                } else if (__value__ == (3762394i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3762424i32)) {
                    _se_41 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
                    {
                        _err_42 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_41)));
                        if (_err_42 != null) {
                            _gotoNext = 3762529i32;
                        } else {
                            _gotoNext = 3762559i32;
                        };
                    };
                } else if (__value__ == (3762529i32)) {
                    return { _0 : null, _1 : _err_42 };
                    _gotoNext = 3762559i32;
                } else if (__value__ == (3762559i32)) {
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
                        _gotoNext = 3762808i32;
                    } else {
                        _gotoNext = 3762835i32;
                    };
                } else if (__value__ == (3762808i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3762835i32)) {
                    if ((((@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != ((2 : stdgo.GoInt)) && (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != ((111 : stdgo.GoInt)) : Bool) && ((@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3762929i32;
                    } else {
                        _gotoNext = 3763001i32;
                    };
                } else if (__value__ == (3762929i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3763001i32)) {
                    if (((_numaux_33 < (1 : stdgo.GoInt) : Bool) || ((_i_32 + _numaux_33 : stdgo.GoInt) >= (_nsyms_7 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3763041i32;
                    } else {
                        _gotoNext = 3763063i32;
                    };
                } else if (__value__ == (3763041i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3763063i32)) {
                    if (((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber > (_nscns_5 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3763097i32;
                    } else {
                        _gotoNext = 3763118i32;
                    };
                } else if (__value__ == (3763097i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3763118i32)) {
                    if ((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3763144i32;
                    } else {
                        _gotoNext = 3763172i32;
                    };
                } else if (__value__ == (3763144i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = (0i64 : stdgo.GoUInt64);
                    _gotoNext = 3763244i32;
                } else if (__value__ == (3763172i32)) {
                    _gotoNext = 3763172i32;
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = ((@:checkr _sym_36 ?? throw "null pointer dereference").value - ((@:checkr (@:checkr _f_3 ?? throw "null pointer dereference").sections[((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    0i32;
                    _gotoNext = 3763244i32;
                } else if (__value__ == (3763244i32)) {
                    _idxToSym_30[_i_32] = _sym_36;
                    if (_needAuxFcn_35) {
                        _gotoNext = 3763509i32;
                    } else {
                        _gotoNext = 3763978i32;
                    };
                } else if (__value__ == (3763509i32)) {
                    _gotoNext = 3763514i32;
                } else if (__value__ == (3763514i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3763542i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3763723i32;
                        } else {
                            _gotoNext = 3763978i32;
                        };
                    };
                } else if (__value__ == (3763542i32)) {
                    _aux_43 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
                    {
                        _err_44 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_43)));
                        if (_err_44 != null) {
                            _gotoNext = 3763651i32;
                        } else {
                            _gotoNext = 3763684i32;
                        };
                    };
                } else if (__value__ == (3763651i32)) {
                    return { _0 : null, _1 : _err_44 };
                    _gotoNext = 3763684i32;
                } else if (__value__ == (3763684i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_43 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3763978i32;
                } else if (__value__ == (3763723i32)) {
                    _aux_45 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
                    {
                        _err_46 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_45)));
                        if (_err_46 != null) {
                            _gotoNext = 3763832i32;
                        } else {
                            _gotoNext = 3763865i32;
                        };
                    };
                } else if (__value__ == (3763832i32)) {
                    return { _0 : null, _1 : _err_46 };
                    _gotoNext = 3763865i32;
                } else if (__value__ == (3763865i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_45 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3763978i32;
                } else if (__value__ == (3763978i32)) {
                    if (!_needAuxFcn_35) {
                        _gotoNext = 3763993i32;
                    } else {
                        _gotoNext = 3764104i32;
                    };
                } else if (__value__ == (3763993i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((((_numaux_33 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_47 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_47 != null) {
                            _gotoNext = 3764071i32;
                        } else {
                            _gotoNext = 3764104i32;
                        };
                    };
                } else if (__value__ == (3764071i32)) {
                    return { _0 : null, _1 : _err_47 };
                    _gotoNext = 3764104i32;
                } else if (__value__ == (3764104i32)) {
                    _i_32 = (_i_32 + (_numaux_33) : stdgo.GoInt);
                    _numaux_33 = (0 : stdgo.GoInt);
                    _gotoNext = 3764131i32;
                } else if (__value__ == (3764131i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3764158i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3764446i32;
                        } else {
                            _gotoNext = 3764767i32;
                        };
                    };
                } else if (__value__ == (3764158i32)) {
                    _aux_48 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
                    {
                        _err_49 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_48)));
                        if (_err_49 != null) {
                            _gotoNext = 3764267i32;
                        } else {
                            _gotoNext = 3764297i32;
                        };
                    };
                } else if (__value__ == (3764267i32)) {
                    return { _0 : null, _1 : _err_49 };
                    _gotoNext = 3764297i32;
                } else if (__value__ == (3764297i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_48 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_48 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.length_ = ((@:checkr _aux_48 ?? throw "null pointer dereference").xscnlen : stdgo.GoInt64);
                    _gotoNext = 3764767i32;
                } else if (__value__ == (3764446i32)) {
                    _aux_50 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
                    {
                        _err_51 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_50)));
                        if (_err_51 != null) {
                            _gotoNext = 3764555i32;
                        } else {
                            _gotoNext = 3764585i32;
                        };
                    };
                } else if (__value__ == (3764555i32)) {
                    return { _0 : null, _1 : _err_51 };
                    _gotoNext = 3764585i32;
                } else if (__value__ == (3764585i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_50 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_50 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.length_ = ((((@:checkr _aux_50 ?? throw "null pointer dereference").xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | ((@:checkr _aux_50 ?? throw "null pointer dereference").xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                    _gotoNext = 3764767i32;
                } else if (__value__ == (3764767i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").symbols = ((@:checkr _f_3 ?? throw "null pointer dereference").symbols.__append__(_sym_36) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3764803i32)) {
                    _i_32 = (_i_32 + (_numaux_33) : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((_numaux_33 : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_52 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_52 != null) {
                            _gotoNext = 3764922i32;
                        } else {
                            _gotoNext = 3761734i32;
                        };
                    };
                } else if (__value__ == (3764922i32)) {
                    return { _0 : null, _1 : _err_52 };
                    _gotoNext = 3761734i32;
                } else if (__value__ == (3765009i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_3 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3766449i32;
                    } else {
                        _gotoNext = 3766454i32;
                    };
                } else if (__value__ == (3765013i32)) {
                    _sectNum_53++;
                    _gotoNext = 3766450i32;
                } else if (__value__ == (3765047i32)) {
                    _sect_54 = (@:checkr _f_3 ?? throw "null pointer dereference").sections[(_sectNum_53 : stdgo.GoInt)];
                    if ((((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.type != (32u32 : stdgo.GoUInt32)) && ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                        _gotoNext = 3765103i32;
                    } else {
                        _gotoNext = 3765123i32;
                    };
                } else if (__value__ == (3765103i32)) {
                    _sectNum_53++;
                    _gotoNext = 3766450i32;
                } else if (__value__ == (3765123i32)) {
                    if ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3765143i32;
                    } else {
                        _gotoNext = 3765163i32;
                    };
                } else if (__value__ == (3765143i32)) {
                    _sectNum_53++;
                    _gotoNext = 3766450i32;
                } else if (__value__ == (3765163i32)) {
                    _c_55 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>))), ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoUInt64));
                    if ((_c_55 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3765232i32;
                    } else {
                        _gotoNext = 3765327i32;
                    };
                } else if (__value__ == (3765232i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum_53)) };
                    _gotoNext = 3765327i32;
                } else if (__value__ == (3765327i32)) {
                    (@:checkr _sect_54 ?? throw "null pointer dereference").relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c_55, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c_55 ? (0 : stdgo.GoInt).toBasic() : _c_55 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_56 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_56 != null) {
                            _gotoNext = 3765430i32;
                        } else {
                            _gotoNext = 3765457i32;
                        };
                    };
                } else if (__value__ == (3765430i32)) {
                    return { _0 : null, _1 : _err_56 };
                    _gotoNext = 3765457i32;
                } else if (__value__ == (3765457i32)) {
                    _i_57 = (0u32 : stdgo.GoUInt32);
                    _gotoNext = 3765457i32;
                    if ((_i_57 < (@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc : Bool)) {
                        _gotoNext = 3765498i32;
                    } else {
                        _gotoNext = 3765013i32;
                    };
                } else if (__value__ == (3765498i32)) {
                    _gotoNext = 3765522i32;
                } else if (__value__ == (3765522i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3765550i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3765979i32;
                        } else {
                            _gotoNext = 3766404i32;
                        };
                    };
                } else if (__value__ == (3765550i32)) {
                    _rel_59 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
                    {
                        _err_60 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_59)));
                        if (_err_60 != null) {
                            _gotoNext = 3765658i32;
                        } else {
                            _gotoNext = 3765691i32;
                        };
                    };
                } else if (__value__ == (3765658i32)) {
                    return { _0 : null, _1 : _err_60 };
                    _gotoNext = 3765691i32;
                } else if (__value__ == (3765691i32)) {
                    _reloc_58.virtualAddress = ((@:checkr _rel_59 ?? throw "null pointer dereference").rvaddr : stdgo.GoUInt64);
                    _reloc_58.symbol = (_idxToSym_30[((@:checkr _rel_59 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_58.type = (@:checkr _rel_59 ?? throw "null pointer dereference").rtype;
                    _reloc_58.length_ = (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3765872i32;
                    } else {
                        _gotoNext = 3765909i32;
                    };
                } else if (__value__ == (3765872i32)) {
                    _reloc_58.signed = true;
                    _gotoNext = 3765909i32;
                } else if (__value__ == (3765909i32)) {
                    if (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3765932i32;
                    } else {
                        _gotoNext = 3766404i32;
                    };
                } else if (__value__ == (3765932i32)) {
                    _reloc_58.instructionFixed = true;
                    _gotoNext = 3766404i32;
                } else if (__value__ == (3765979i32)) {
                    _rel_61 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
                    {
                        _err_62 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_61)));
                        if (_err_62 != null) {
                            _gotoNext = 3766087i32;
                        } else {
                            _gotoNext = 3766120i32;
                        };
                    };
                } else if (__value__ == (3766087i32)) {
                    return { _0 : null, _1 : _err_62 };
                    _gotoNext = 3766120i32;
                } else if (__value__ == (3766120i32)) {
                    _reloc_58.virtualAddress = (@:checkr _rel_61 ?? throw "null pointer dereference").rvaddr;
                    _reloc_58.symbol = (_idxToSym_30[((@:checkr _rel_61 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_58.type = (@:checkr _rel_61 ?? throw "null pointer dereference").rtype;
                    _reloc_58.length_ = (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3766292i32;
                    } else {
                        _gotoNext = 3766329i32;
                    };
                } else if (__value__ == (3766292i32)) {
                    _reloc_58.signed = true;
                    _gotoNext = 3766329i32;
                } else if (__value__ == (3766329i32)) {
                    if (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3766352i32;
                    } else {
                        _gotoNext = 3766404i32;
                    };
                } else if (__value__ == (3766352i32)) {
                    _reloc_58.instructionFixed = true;
                    _gotoNext = 3766404i32;
                } else if (__value__ == (3766404i32)) {
                    (@:checkr _sect_54 ?? throw "null pointer dereference").relocs = ((@:checkr _sect_54 ?? throw "null pointer dereference").relocs.__append__(_reloc_58?.__copy__()) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>);
                    _i_57++;
                    _gotoNext = 3765457i32;
                } else if (__value__ == (3766449i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_3 ?? throw "null pointer dereference").sections[(0i32 : stdgo.GoInt)];
                        _sectNum_53 = @:binopAssign __tmp__0;
                        _sect_54 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3766450i32;
                } else if (__value__ == (3766450i32)) {
                    if (_sectNum_53 < ((@:checkr _f_3 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3765047i32;
                    } else {
                        _gotoNext = 3766454i32;
                    };
                } else if (__value__ == (3766454i32)) {
                    return { _0 : _f_3, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
