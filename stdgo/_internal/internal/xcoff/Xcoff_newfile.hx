package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>; var _1 : stdgo.Error; } {
        var _err_46:stdgo.Error = (null : stdgo.Error);
        var _i_22:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offset_14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_62:stdgo.Error = (null : stdgo.Error);
        var _rel_59:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
        var _err_47:stdgo.Error = (null : stdgo.Error);
        var _i_32:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_19:stdgo.Error = (null : stdgo.Error);
        var _opthdr_8:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _err_52:stdgo.Error = (null : stdgo.Error);
        var _aux_50:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
        var _i_57:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _se_41:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
        var _err_2:stdgo.Error = (null : stdgo.Error);
        var _err_60:stdgo.Error = (null : stdgo.Error);
        var _st_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _shdr_25:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
        var _scnptr_23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_20:stdgo.Error = (null : stdgo.Error);
        var _rel_61:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
        var _se_37:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
        var _needAuxFcn_35:Bool = false;
        var _sectNum_53:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offset_40:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _idxToSym_30;
        var _r2_29:stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
        var _err_26:stdgo.Error = (null : stdgo.Error);
        var _numaux_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_15:stdgo.Error = (null : stdgo.Error);
        var _err_11:stdgo.Error = (null : stdgo.Error);
        var _aux_45:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
        var _sym_36:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
        var _shdr_27:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
        var _err_13:stdgo.Error = (null : stdgo.Error);
        var _magic_1:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _err_38:stdgo.Error = (null : stdgo.Error);
        var _l_16:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nsyms_7:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_28:stdgo.Error = (null : stdgo.Error);
        var _nscns_5:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _err_42:stdgo.Error = (null : stdgo.Error);
        var _ok_34:Bool = false;
        var _hdrsz_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _symptr_6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_55:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_51:stdgo.Error = (null : stdgo.Error);
        var _err_49:stdgo.Error = (null : stdgo.Error);
        var _s_24:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _fhdr_12:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
        var _fhdr_10:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
        var _sect_54:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _err_44:stdgo.Error = (null : stdgo.Error);
        var _err_56:stdgo.Error = (null : stdgo.Error);
        var _aux_43:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
        var _zeroes_39:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _reloc_58:stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc);
        var _err_17:stdgo.Error = (null : stdgo.Error);
        var _f_3:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
        var _sr_0:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        var _aux_48:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
        var _err_31:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _sr_0 = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
                    _magic_1 = stdgo.Go.pointer(_magic_1);
                    {
                        _err_2 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_magic_1));
                        if (_err_2 != null) {
                            _gotoNext = 3764455i32;
                        } else {
                            _gotoNext = 3764479i32;
                        };
                    };
                } else if (__value__ == (3764455i32)) {
                    return { _0 : null, _1 : _err_2 };
                    _gotoNext = 3764479i32;
                } else if (__value__ == (3764479i32)) {
                    if (((_magic_1 != (479 : stdgo.GoUInt16)) && (_magic_1 != (503 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3764529i32;
                    } else {
                        _gotoNext = 3764602i32;
                    };
                } else if (__value__ == (3764529i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic_1)) };
                    _gotoNext = 3764602i32;
                } else if (__value__ == (3764602i32)) {
                    _f_3 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_file.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
                    (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine = _magic_1;
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_4 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4 != null) {
                            _gotoNext = 3764721i32;
                        } else {
                            _gotoNext = 3764745i32;
                        };
                    };
                } else if (__value__ == (3764721i32)) {
                    return { _0 : null, _1 : _err_4 };
                    _gotoNext = 3764745i32;
                } else if (__value__ == (3764745i32)) {
                    _gotoNext = 3764834i32;
                } else if (__value__ == (3764834i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3764860i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3765117i32;
                        } else {
                            _gotoNext = 3765370i32;
                        };
                    };
                } else if (__value__ == (3764860i32)) {
                    _fhdr_10 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
                    {
                        _err_11 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_10)));
                        if (_err_11 != null) {
                            _gotoNext = 3764971i32;
                        } else {
                            _gotoNext = 3764998i32;
                        };
                    };
                } else if (__value__ == (3764971i32)) {
                    return { _0 : null, _1 : _err_11 };
                    _gotoNext = 3764998i32;
                } else if (__value__ == (3764998i32)) {
                    _nscns_5 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fnscns;
                    _symptr_6 = ((@:checkr _fhdr_10 ?? throw "null pointer dereference").fsymptr : stdgo.GoUInt64);
                    _nsyms_7 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_8 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_9 = (20 : stdgo.GoInt);
                    _gotoNext = 3765370i32;
                } else if (__value__ == (3765117i32)) {
                    _fhdr_12 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
                    {
                        _err_13 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_12)));
                        if (_err_13 != null) {
                            _gotoNext = 3765228i32;
                        } else {
                            _gotoNext = 3765255i32;
                        };
                    };
                } else if (__value__ == (3765228i32)) {
                    return { _0 : null, _1 : _err_13 };
                    _gotoNext = 3765255i32;
                } else if (__value__ == (3765255i32)) {
                    _nscns_5 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fnscns;
                    _symptr_6 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fsymptr;
                    _nsyms_7 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_8 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_9 = (24 : stdgo.GoInt);
                    _gotoNext = 3765370i32;
                } else if (__value__ == (3765370i32)) {
                    if (((_symptr_6 == (0i64 : stdgo.GoUInt64)) || (_nsyms_7 <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3765399i32;
                    } else {
                        _gotoNext = 3765508i32;
                    };
                } else if (__value__ == (3765399i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
                    _gotoNext = 3765508i32;
                } else if (__value__ == (3765508i32)) {
                    _offset_14 = (_symptr_6 + ((_nsyms_7 : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((_offset_14 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_15 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_15 != null) {
                            _gotoNext = 3765611i32;
                        } else {
                            _gotoNext = 3765688i32;
                        };
                    };
                } else if (__value__ == (3765611i32)) {
                    return { _0 : null, _1 : _err_15 };
                    _gotoNext = 3765688i32;
                } else if (__value__ == (3765688i32)) {
                    _l_16 = stdgo.Go.pointer(_l_16);
                    {
                        _err_17 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_l_16));
                        if (_err_17 != null) {
                            _gotoNext = 3765762i32;
                        } else {
                            _gotoNext = 3765786i32;
                        };
                    };
                } else if (__value__ == (3765762i32)) {
                    return { _0 : null, _1 : _err_17 };
                    _gotoNext = 3765786i32;
                } else if (__value__ == (3765786i32)) {
                    if ((_l_16 > (4u32 : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3765795i32;
                    } else {
                        _gotoNext = 3765951i32;
                    };
                } else if (__value__ == (3765795i32)) {
                    {
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sr_0), (_l_16 : stdgo.GoUInt64), (_offset_14 : stdgo.GoInt64));
                        _st_18 = @:tmpset0 __tmp__._0;
                        _err_19 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_19 != null) {
                        _gotoNext = 3765875i32;
                    } else {
                        _gotoNext = 3765902i32;
                    };
                } else if (__value__ == (3765875i32)) {
                    return { _0 : null, _1 : _err_19 };
                    _gotoNext = 3765902i32;
                } else if (__value__ == (3765902i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").stringTable = _st_18;
                    _gotoNext = 3765951i32;
                } else if (__value__ == (3765951i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((_hdrsz_9 : stdgo.GoInt64) + (_opthdr_8 : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_20 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_20 != null) {
                            _gotoNext = 3766026i32;
                        } else {
                            _gotoNext = 3766050i32;
                        };
                    };
                } else if (__value__ == (3766026i32)) {
                    return { _0 : null, _1 : _err_20 };
                    _gotoNext = 3766050i32;
                } else if (__value__ == (3766050i32)) {
                    _c_21 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>)), (_nscns_5 : stdgo.GoUInt64));
                    if ((_c_21 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3766115i32;
                    } else {
                        _gotoNext = 3766185i32;
                    };
                } else if (__value__ == (3766115i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns_5)) };
                    _gotoNext = 3766185i32;
                } else if (__value__ == (3766185i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>((0 : stdgo.GoInt).toBasic(), _c_21) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
                    _i_22 = (0 : stdgo.GoInt);
                    _gotoNext = 3766222i32;
                } else if (__value__ == (3766222i32)) {
                    if ((_i_22 < (_nscns_5 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3766254i32;
                    } else {
                        _gotoNext = 3767289i32;
                    };
                } else if (__value__ == (3766254i32)) {
                    _s_24 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
                    _gotoNext = 3766298i32;
                } else if (__value__ == (3766298i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3766325i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3766705i32;
                        } else {
                            _gotoNext = 3767049i32;
                        };
                    };
                } else if (__value__ == (3766325i32)) {
                    _shdr_25 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
                    {
                        _err_26 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_25)));
                        if (_err_26 != null) {
                            _gotoNext = 3766441i32;
                        } else {
                            _gotoNext = 3766471i32;
                        };
                    };
                } else if (__value__ == (3766441i32)) {
                    return { _0 : null, _1 : _err_26 };
                    _gotoNext = 3766471i32;
                } else if (__value__ == (3766471i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_25 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.virtualAddress = ((@:checkr _shdr_25 ?? throw "null pointer dereference").svaddr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size = ((@:checkr _shdr_25 ?? throw "null pointer dereference").ssize : stdgo.GoUInt64);
                    _scnptr_23 = ((@:checkr _shdr_25 ?? throw "null pointer dereference").sscnptr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_25 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.relptr = ((@:checkr _shdr_25 ?? throw "null pointer dereference").srelptr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.nreloc = ((@:checkr _shdr_25 ?? throw "null pointer dereference").snreloc : stdgo.GoUInt32);
                    _gotoNext = 3767049i32;
                } else if (__value__ == (3766705i32)) {
                    _shdr_27 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
                    {
                        _err_28 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_27)));
                        if (_err_28 != null) {
                            _gotoNext = 3766821i32;
                        } else {
                            _gotoNext = 3766851i32;
                        };
                    };
                } else if (__value__ == (3766821i32)) {
                    return { _0 : null, _1 : _err_28 };
                    _gotoNext = 3766851i32;
                } else if (__value__ == (3766851i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_27 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.virtualAddress = (@:checkr _shdr_27 ?? throw "null pointer dereference").svaddr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size = (@:checkr _shdr_27 ?? throw "null pointer dereference").ssize;
                    _scnptr_23 = (@:checkr _shdr_27 ?? throw "null pointer dereference").sscnptr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_27 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.relptr = (@:checkr _shdr_27 ?? throw "null pointer dereference").srelptr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.nreloc = (@:checkr _shdr_27 ?? throw "null pointer dereference").snreloc;
                    _gotoNext = 3767049i32;
                } else if (__value__ == (3767049i32)) {
                    _r2_29 = _r;
                    if (_scnptr_23 == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3767074i32;
                    } else {
                        _gotoNext = 3767130i32;
                    };
                } else if (__value__ == (3767074i32)) {
                    _r2_29 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt));
                    _gotoNext = 3767130i32;
                } else if (__value__ == (3767130i32)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r2_29, (_scnptr_23 : stdgo.GoInt64), ((@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
                    (@:checkr _s_24 ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s_24 ?? throw "null pointer dereference")._sr);
                    (@:checkr _f_3 ?? throw "null pointer dereference").sections = ((@:checkr _f_3 ?? throw "null pointer dereference").sections.__append__(_s_24));
                    _i_22++;
                    _gotoNext = 3766222i32;
                } else if (__value__ == (3767289i32)) {
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
                            _gotoNext = 3767412i32;
                        } else {
                            _gotoNext = 3767436i32;
                        };
                    };
                } else if (__value__ == (3767412i32)) {
                    return { _0 : null, _1 : _err_31 };
                    _gotoNext = 3767436i32;
                } else if (__value__ == (3767436i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    _i_32 = (0 : stdgo.GoInt);
                    _gotoNext = 3767468i32;
                } else if (__value__ == (3767468i32)) {
                    if ((_i_32 < (_nsyms_7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3767500i32;
                    } else {
                        _gotoNext = 3770771i32;
                    };
                } else if (__value__ == (3767496i32)) {
                    _i_32++;
                    _gotoNext = 3767468i32;
                } else if (__value__ == (3767500i32)) {
                    _sym_36 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                    _gotoNext = 3767568i32;
                } else if (__value__ == (3767568i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3767595i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3768186i32;
                        } else {
                            _gotoNext = 3768597i32;
                        };
                    };
                } else if (__value__ == (3767595i32)) {
                    _se_37 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
                    {
                        _err_38 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_37)));
                        if (_err_38 != null) {
                            _gotoNext = 3767700i32;
                        } else {
                            _gotoNext = 3767730i32;
                        };
                    };
                } else if (__value__ == (3767700i32)) {
                    return { _0 : null, _1 : _err_38 };
                    _gotoNext = 3767730i32;
                } else if (__value__ == (3767730i32)) {
                    _numaux_33 = ((@:checkr _se_37 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_37 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_37 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = ((@:checkr _se_37 ?? throw "null pointer dereference").nvalue : stdgo.GoUInt64);
                    _needAuxFcn_35 = ((((@:checkr _se_37 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_33 > (1 : stdgo.GoInt) : Bool) : Bool);
                    _zeroes_39 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_zeroes_39 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3767991i32;
                    } else {
                        _gotoNext = 3768039i32;
                    };
                } else if (__value__ == (3767991i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _gotoNext = 3768597i32;
                } else if (__value__ == (3768039i32)) {
                    _gotoNext = 3768039i32;
                    _offset_40 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3 ?? throw "null pointer dereference").stringTable, _offset_40);
                        (@:checkr _sym_36 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_34 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_34) {
                        _gotoNext = 3768156i32;
                    } else {
                        _gotoNext = 3768597i32;
                    };
                } else if (__value__ == (3768156i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768186i32)) {
                    _se_41 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
                    {
                        _err_42 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_41)));
                        if (_err_42 != null) {
                            _gotoNext = 3768291i32;
                        } else {
                            _gotoNext = 3768321i32;
                        };
                    };
                } else if (__value__ == (3768291i32)) {
                    return { _0 : null, _1 : _err_42 };
                    _gotoNext = 3768321i32;
                } else if (__value__ == (3768321i32)) {
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
                        _gotoNext = 3768570i32;
                    } else {
                        _gotoNext = 3768597i32;
                    };
                } else if (__value__ == (3768570i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768597i32)) {
                    if ((((@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != ((2 : stdgo.GoInt)) && (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != ((111 : stdgo.GoInt)) : Bool) && ((@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3768691i32;
                    } else {
                        _gotoNext = 3768763i32;
                    };
                } else if (__value__ == (3768691i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768763i32)) {
                    if (((_numaux_33 < (1 : stdgo.GoInt) : Bool) || ((_i_32 + _numaux_33 : stdgo.GoInt) >= (_nsyms_7 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3768803i32;
                    } else {
                        _gotoNext = 3768825i32;
                    };
                } else if (__value__ == (3768803i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768825i32)) {
                    if (((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber > (_nscns_5 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3768859i32;
                    } else {
                        _gotoNext = 3768880i32;
                    };
                } else if (__value__ == (3768859i32)) {
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3768880i32)) {
                    if ((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3768906i32;
                    } else {
                        _gotoNext = 3768934i32;
                    };
                } else if (__value__ == (3768906i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = (0i64 : stdgo.GoUInt64);
                    _gotoNext = 3769006i32;
                } else if (__value__ == (3768934i32)) {
                    _gotoNext = 3768934i32;
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = ((@:checkr _sym_36 ?? throw "null pointer dereference").value - ((@:checkr (@:checkr _f_3 ?? throw "null pointer dereference").sections[((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    var __blank__ = 0i32;
                    _gotoNext = 3769006i32;
                } else if (__value__ == (3769006i32)) {
                    _idxToSym_30[_i_32] = _sym_36;
                    if (_needAuxFcn_35) {
                        _gotoNext = 3769271i32;
                    } else {
                        _gotoNext = 3769740i32;
                    };
                } else if (__value__ == (3769271i32)) {
                    _gotoNext = 3769276i32;
                } else if (__value__ == (3769276i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3769304i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3769485i32;
                        } else {
                            _gotoNext = 3769740i32;
                        };
                    };
                } else if (__value__ == (3769304i32)) {
                    _aux_43 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
                    {
                        _err_44 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_43)));
                        if (_err_44 != null) {
                            _gotoNext = 3769413i32;
                        } else {
                            _gotoNext = 3769446i32;
                        };
                    };
                } else if (__value__ == (3769413i32)) {
                    return { _0 : null, _1 : _err_44 };
                    _gotoNext = 3769446i32;
                } else if (__value__ == (3769446i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_43 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3769740i32;
                } else if (__value__ == (3769485i32)) {
                    _aux_45 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
                    {
                        _err_46 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_45)));
                        if (_err_46 != null) {
                            _gotoNext = 3769594i32;
                        } else {
                            _gotoNext = 3769627i32;
                        };
                    };
                } else if (__value__ == (3769594i32)) {
                    return { _0 : null, _1 : _err_46 };
                    _gotoNext = 3769627i32;
                } else if (__value__ == (3769627i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_45 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3769740i32;
                } else if (__value__ == (3769740i32)) {
                    if (!_needAuxFcn_35) {
                        _gotoNext = 3769755i32;
                    } else {
                        _gotoNext = 3769866i32;
                    };
                } else if (__value__ == (3769755i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek((((_numaux_33 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_47 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_47 != null) {
                            _gotoNext = 3769833i32;
                        } else {
                            _gotoNext = 3769866i32;
                        };
                    };
                } else if (__value__ == (3769833i32)) {
                    return { _0 : null, _1 : _err_47 };
                    _gotoNext = 3769866i32;
                } else if (__value__ == (3769866i32)) {
                    _i_32 = (_i_32 + (_numaux_33) : stdgo.GoInt);
                    _numaux_33 = (0 : stdgo.GoInt);
                    _gotoNext = 3769893i32;
                } else if (__value__ == (3769893i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3769920i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3770208i32;
                        } else {
                            _gotoNext = 3770529i32;
                        };
                    };
                } else if (__value__ == (3769920i32)) {
                    _aux_48 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
                    {
                        _err_49 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_48)));
                        if (_err_49 != null) {
                            _gotoNext = 3770029i32;
                        } else {
                            _gotoNext = 3770059i32;
                        };
                    };
                } else if (__value__ == (3770029i32)) {
                    return { _0 : null, _1 : _err_49 };
                    _gotoNext = 3770059i32;
                } else if (__value__ == (3770059i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_48 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_48 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.length_ = ((@:checkr _aux_48 ?? throw "null pointer dereference").xscnlen : stdgo.GoInt64);
                    _gotoNext = 3770529i32;
                } else if (__value__ == (3770208i32)) {
                    _aux_50 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
                    {
                        _err_51 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_50)));
                        if (_err_51 != null) {
                            _gotoNext = 3770317i32;
                        } else {
                            _gotoNext = 3770347i32;
                        };
                    };
                } else if (__value__ == (3770317i32)) {
                    return { _0 : null, _1 : _err_51 };
                    _gotoNext = 3770347i32;
                } else if (__value__ == (3770347i32)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_50 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_50 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.length_ = ((((@:checkr _aux_50 ?? throw "null pointer dereference").xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | ((@:checkr _aux_50 ?? throw "null pointer dereference").xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                    _gotoNext = 3770529i32;
                } else if (__value__ == (3770529i32)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").symbols = ((@:checkr _f_3 ?? throw "null pointer dereference").symbols.__append__(_sym_36));
                    _gotoNext = 3770565i32;
                } else if (__value__ == (3770565i32)) {
                    _i_32 = (_i_32 + (_numaux_33) : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((_numaux_33 : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_52 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_52 != null) {
                            _gotoNext = 3770684i32;
                        } else {
                            _gotoNext = 3767496i32;
                        };
                    };
                } else if (__value__ == (3770684i32)) {
                    return { _0 : null, _1 : _err_52 };
                    _gotoNext = 3767496i32;
                } else if (__value__ == (3770771i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_3 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3772211i32;
                    } else {
                        _gotoNext = 3772216i32;
                    };
                } else if (__value__ == (3770775i32)) {
                    _sectNum_53++;
                    _gotoNext = 3772212i32;
                } else if (__value__ == (3770809i32)) {
                    _sect_54 = (@:checkr _f_3 ?? throw "null pointer dereference").sections[(_sectNum_53 : stdgo.GoInt)];
                    if ((((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.type != (32u32 : stdgo.GoUInt32)) && ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                        _gotoNext = 3770865i32;
                    } else {
                        _gotoNext = 3770885i32;
                    };
                } else if (__value__ == (3770865i32)) {
                    _sectNum_53++;
                    _gotoNext = 3772212i32;
                } else if (__value__ == (3770885i32)) {
                    if ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3770905i32;
                    } else {
                        _gotoNext = 3770925i32;
                    };
                } else if (__value__ == (3770905i32)) {
                    _sectNum_53++;
                    _gotoNext = 3772212i32;
                } else if (__value__ == (3770925i32)) {
                    _c_55 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>))), ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoUInt64));
                    if ((_c_55 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3770994i32;
                    } else {
                        _gotoNext = 3771089i32;
                    };
                } else if (__value__ == (3770994i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum_53)) };
                    _gotoNext = 3771089i32;
                } else if (__value__ == (3771089i32)) {
                    (@:checkr _sect_54 ?? throw "null pointer dereference").relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c_55, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c_55 ? (0 : stdgo.GoInt).toBasic() : _c_55 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>);
                    {
                        {
                            var __tmp__ = @:check2r _sr_0.seek(((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_56 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_56 != null) {
                            _gotoNext = 3771192i32;
                        } else {
                            _gotoNext = 3771219i32;
                        };
                    };
                } else if (__value__ == (3771192i32)) {
                    return { _0 : null, _1 : _err_56 };
                    _gotoNext = 3771219i32;
                } else if (__value__ == (3771219i32)) {
                    _i_57 = (0u32 : stdgo.GoUInt32);
                    _gotoNext = 3771219i32;
                    if ((_i_57 < (@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc : Bool)) {
                        _gotoNext = 3771260i32;
                    } else {
                        _gotoNext = 3770775i32;
                    };
                } else if (__value__ == (3771260i32)) {
                    _gotoNext = 3771284i32;
                } else if (__value__ == (3771284i32)) {
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3771312i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3771741i32;
                        } else {
                            _gotoNext = 3772166i32;
                        };
                    };
                } else if (__value__ == (3771312i32)) {
                    _rel_59 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
                    {
                        _err_60 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_59)));
                        if (_err_60 != null) {
                            _gotoNext = 3771420i32;
                        } else {
                            _gotoNext = 3771453i32;
                        };
                    };
                } else if (__value__ == (3771420i32)) {
                    return { _0 : null, _1 : _err_60 };
                    _gotoNext = 3771453i32;
                } else if (__value__ == (3771453i32)) {
                    _reloc_58.virtualAddress = ((@:checkr _rel_59 ?? throw "null pointer dereference").rvaddr : stdgo.GoUInt64);
                    _reloc_58.symbol = (_idxToSym_30[((@:checkr _rel_59 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_58.type = (@:checkr _rel_59 ?? throw "null pointer dereference").rtype;
                    _reloc_58.length_ = (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3771634i32;
                    } else {
                        _gotoNext = 3771671i32;
                    };
                } else if (__value__ == (3771634i32)) {
                    _reloc_58.signed = true;
                    _gotoNext = 3771671i32;
                } else if (__value__ == (3771671i32)) {
                    if (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3771694i32;
                    } else {
                        _gotoNext = 3772166i32;
                    };
                } else if (__value__ == (3771694i32)) {
                    _reloc_58.instructionFixed = true;
                    _gotoNext = 3772166i32;
                } else if (__value__ == (3771741i32)) {
                    _rel_61 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
                    {
                        _err_62 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_61)));
                        if (_err_62 != null) {
                            _gotoNext = 3771849i32;
                        } else {
                            _gotoNext = 3771882i32;
                        };
                    };
                } else if (__value__ == (3771849i32)) {
                    return { _0 : null, _1 : _err_62 };
                    _gotoNext = 3771882i32;
                } else if (__value__ == (3771882i32)) {
                    _reloc_58.virtualAddress = (@:checkr _rel_61 ?? throw "null pointer dereference").rvaddr;
                    _reloc_58.symbol = (_idxToSym_30[((@:checkr _rel_61 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_58.type = (@:checkr _rel_61 ?? throw "null pointer dereference").rtype;
                    _reloc_58.length_ = (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3772054i32;
                    } else {
                        _gotoNext = 3772091i32;
                    };
                } else if (__value__ == (3772054i32)) {
                    _reloc_58.signed = true;
                    _gotoNext = 3772091i32;
                } else if (__value__ == (3772091i32)) {
                    if (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3772114i32;
                    } else {
                        _gotoNext = 3772166i32;
                    };
                } else if (__value__ == (3772114i32)) {
                    _reloc_58.instructionFixed = true;
                    _gotoNext = 3772166i32;
                } else if (__value__ == (3772166i32)) {
                    (@:checkr _sect_54 ?? throw "null pointer dereference").relocs = ((@:checkr _sect_54 ?? throw "null pointer dereference").relocs.__append__(_reloc_58?.__copy__()));
                    _i_57++;
                    _gotoNext = 3771219i32;
                } else if (__value__ == (3772211i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_3 ?? throw "null pointer dereference").sections[(0i32 : stdgo.GoInt)];
                        _sectNum_53 = __tmp__0;
                        _sect_54 = __tmp__1;
                    };
                    _gotoNext = 3772212i32;
                } else if (__value__ == (3772212i32)) {
                    if (_sectNum_53 < ((@:checkr _f_3 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3770809i32;
                    } else {
                        _gotoNext = 3772216i32;
                    };
                } else if (__value__ == (3772216i32)) {
                    return { _0 : _f_3, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
