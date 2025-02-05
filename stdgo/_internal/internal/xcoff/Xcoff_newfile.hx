package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>; var _1 : stdgo.Error; } {
        var _err_3763774:stdgo.Error = (null : stdgo.Error);
        var _err_3759943:stdgo.Error = (null : stdgo.Error);
        var _l_3759930:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _f_3758840:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
        var _err_3766029:stdgo.Error = (null : stdgo.Error);
        var _err_3764209:stdgo.Error = (null : stdgo.Error);
        var _offset_3762283:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _i_3760464:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3764497:stdgo.Error = (null : stdgo.Error);
        var _err_3759407:stdgo.Error = (null : stdgo.Error);
        var _hdrsz_3759061:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nsyms_3759024:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _idxToSym_3761531;
        var _shdr_3760965:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
        var _err_3760195:stdgo.Error = (null : stdgo.Error);
        var _err_3759793:stdgo.Error = (null : stdgo.Error);
        var _err_3765600:stdgo.Error = (null : stdgo.Error);
        var _aux_3764180:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
        var _needAuxFcn_3761767:Bool = false;
        var _aux_3763746:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
        var _err_3761881:stdgo.Error = (null : stdgo.Error);
        var _numaux_3761746:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3761594:stdgo.Error = (null : stdgo.Error);
        var _err_3764857:stdgo.Error = (null : stdgo.Error);
        var _shdr_3760585:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
        var _st_3760037:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _sym_3761785:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
        var _r2_3761287:stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
        var _err_3760041:stdgo.Error = (null : stdgo.Error);
        var _magic_3758615:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _sectNum_3765013:stdgo.GoInt = (0 : stdgo.GoInt);
        var _aux_3764468:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
        var _err_3764004:stdgo.Error = (null : stdgo.Error);
        var _err_3765369:stdgo.Error = (null : stdgo.Error);
        var _sect_3765022:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _aux_3763565:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
        var _err_3758915:stdgo.Error = (null : stdgo.Error);
        var _i_3765461:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _i_3761710:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3760516:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _fhdr_3759119:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
        var _symptr_3759005:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _reloc_3765507:stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc);
        var _ok_3761763:Bool = false;
        var _fhdr_3759376:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
        var _rel_3765573:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
        var _zeroes_3762163:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _opthdr_3759042:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _nscns_3758987:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _rel_3766002:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
        var _se_3761855:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
        var _err_3759150:stdgo.Error = (null : stdgo.Error);
        var _err_3761000:stdgo.Error = (null : stdgo.Error);
        var _scnptr_3760500:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _offset_3759746:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_3760620:stdgo.Error = (null : stdgo.Error);
        var _c_3760288:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3758632:stdgo.Error = (null : stdgo.Error);
        var _sr_3758539:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        var _se_3762446:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
        var _c_3765163:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3763593:stdgo.Error = (null : stdgo.Error);
        var _err_3762472:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _sr_3758539 = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
                    _magic_3758615 = stdgo.Go.pointer(_magic_3758615);
                    {
                        _err_3758632 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_magic_3758615));
                        if (_err_3758632 != null) {
                            _gotoNext = 3758693i32;
                        } else {
                            _gotoNext = 3758717i32;
                        };
                    };
                } else if (__value__ == (3758693i32)) {
                    return { _0 : null, _1 : _err_3758632 };
                    _gotoNext = 3758717i32;
                } else if (__value__ == (3758717i32)) {
                    if (((_magic_3758615 != (479 : stdgo.GoUInt16)) && (_magic_3758615 != (503 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3758767i32;
                    } else {
                        _gotoNext = 3758840i32;
                    };
                } else if (__value__ == (3758767i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic_3758615)) };
                    _gotoNext = 3758840i32;
                } else if (__value__ == (3758840i32)) {
                    _f_3758840 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_file.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
                    (@:checkr _f_3758840 ?? throw "null pointer dereference").fileHeader.targetMachine = _magic_3758615;
                    {
                        {
                            var __tmp__ = @:check2r _sr_3758539.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3758915 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3758915 != null) {
                            _gotoNext = 3758959i32;
                        } else {
                            _gotoNext = 3758983i32;
                        };
                    };
                } else if (__value__ == (3758959i32)) {
                    return { _0 : null, _1 : _err_3758915 };
                    _gotoNext = 3758983i32;
                } else if (__value__ == (3758983i32)) {
                    _gotoNext = 3759072i32;
                } else if (__value__ == (3759072i32)) {
                    {
                        final __value__ = (@:checkr _f_3758840 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3759098i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3759355i32;
                        } else {
                            _gotoNext = 3759608i32;
                        };
                    };
                } else if (__value__ == (3759098i32)) {
                    _fhdr_3759119 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
                    {
                        _err_3759150 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_3759119)));
                        if (_err_3759150 != null) {
                            _gotoNext = 3759209i32;
                        } else {
                            _gotoNext = 3759236i32;
                        };
                    };
                } else if (__value__ == (3759209i32)) {
                    return { _0 : null, _1 : _err_3759150 };
                    _gotoNext = 3759236i32;
                } else if (__value__ == (3759236i32)) {
                    _nscns_3758987 = (@:checkr _fhdr_3759119 ?? throw "null pointer dereference").fnscns;
                    _symptr_3759005 = ((@:checkr _fhdr_3759119 ?? throw "null pointer dereference").fsymptr : stdgo.GoUInt64);
                    _nsyms_3759024 = (@:checkr _fhdr_3759119 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_3759042 = (@:checkr _fhdr_3759119 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_3759061 = (20 : stdgo.GoInt);
                    _gotoNext = 3759608i32;
                } else if (__value__ == (3759355i32)) {
                    _fhdr_3759376 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
                    {
                        _err_3759407 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_3759376)));
                        if (_err_3759407 != null) {
                            _gotoNext = 3759466i32;
                        } else {
                            _gotoNext = 3759493i32;
                        };
                    };
                } else if (__value__ == (3759466i32)) {
                    return { _0 : null, _1 : _err_3759407 };
                    _gotoNext = 3759493i32;
                } else if (__value__ == (3759493i32)) {
                    _nscns_3758987 = (@:checkr _fhdr_3759376 ?? throw "null pointer dereference").fnscns;
                    _symptr_3759005 = (@:checkr _fhdr_3759376 ?? throw "null pointer dereference").fsymptr;
                    _nsyms_3759024 = (@:checkr _fhdr_3759376 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_3759042 = (@:checkr _fhdr_3759376 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_3759061 = (24 : stdgo.GoInt);
                    _gotoNext = 3759608i32;
                } else if (__value__ == (3759608i32)) {
                    if (((_symptr_3759005 == (0i64 : stdgo.GoUInt64)) || (_nsyms_3759024 <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3759637i32;
                    } else {
                        _gotoNext = 3759746i32;
                    };
                } else if (__value__ == (3759637i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
                    _gotoNext = 3759746i32;
                } else if (__value__ == (3759746i32)) {
                    _offset_3759746 = (_symptr_3759005 + ((_nsyms_3759024 : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    {
                        {
                            var __tmp__ = @:check2r _sr_3758539.seek((_offset_3759746 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3759793 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3759793 != null) {
                            _gotoNext = 3759849i32;
                        } else {
                            _gotoNext = 3759926i32;
                        };
                    };
                } else if (__value__ == (3759849i32)) {
                    return { _0 : null, _1 : _err_3759793 };
                    _gotoNext = 3759926i32;
                } else if (__value__ == (3759926i32)) {
                    _l_3759930 = stdgo.Go.pointer(_l_3759930);
                    {
                        _err_3759943 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_l_3759930));
                        if (_err_3759943 != null) {
                            _gotoNext = 3760000i32;
                        } else {
                            _gotoNext = 3760024i32;
                        };
                    };
                } else if (__value__ == (3760000i32)) {
                    return { _0 : null, _1 : _err_3759943 };
                    _gotoNext = 3760024i32;
                } else if (__value__ == (3760024i32)) {
                    if ((_l_3759930 > (4u32 : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3760033i32;
                    } else {
                        _gotoNext = 3760189i32;
                    };
                } else if (__value__ == (3760033i32)) {
                    {
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sr_3758539), (_l_3759930 : stdgo.GoUInt64), (_offset_3759746 : stdgo.GoInt64));
                        _st_3760037 = @:tmpset0 __tmp__._0;
                        _err_3760041 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3760041 != null) {
                        _gotoNext = 3760113i32;
                    } else {
                        _gotoNext = 3760140i32;
                    };
                } else if (__value__ == (3760113i32)) {
                    return { _0 : null, _1 : _err_3760041 };
                    _gotoNext = 3760140i32;
                } else if (__value__ == (3760140i32)) {
                    (@:checkr _f_3758840 ?? throw "null pointer dereference").stringTable = _st_3760037;
                    _gotoNext = 3760189i32;
                } else if (__value__ == (3760189i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_3758539.seek(((_hdrsz_3759061 : stdgo.GoInt64) + (_opthdr_3759042 : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3760195 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3760195 != null) {
                            _gotoNext = 3760264i32;
                        } else {
                            _gotoNext = 3760288i32;
                        };
                    };
                } else if (__value__ == (3760264i32)) {
                    return { _0 : null, _1 : _err_3760195 };
                    _gotoNext = 3760288i32;
                } else if (__value__ == (3760288i32)) {
                    _c_3760288 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>)), (_nscns_3758987 : stdgo.GoUInt64));
                    if ((_c_3760288 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3760353i32;
                    } else {
                        _gotoNext = 3760423i32;
                    };
                } else if (__value__ == (3760353i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns_3758987)) };
                    _gotoNext = 3760423i32;
                } else if (__value__ == (3760423i32)) {
                    (@:checkr _f_3758840 ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>((0 : stdgo.GoInt).toBasic(), _c_3760288) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
                    _i_3760464 = (0 : stdgo.GoInt);
                    _gotoNext = 3760460i32;
                } else if (__value__ == (3760460i32)) {
                    if ((_i_3760464 < (_nscns_3758987 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3760492i32;
                    } else {
                        _gotoNext = 3761527i32;
                    };
                } else if (__value__ == (3760492i32)) {
                    _s_3760516 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
                    _gotoNext = 3760536i32;
                } else if (__value__ == (3760536i32)) {
                    {
                        final __value__ = (@:checkr _f_3758840 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3760563i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3760943i32;
                        } else {
                            _gotoNext = 3761287i32;
                        };
                    };
                } else if (__value__ == (3760563i32)) {
                    _shdr_3760585 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
                    {
                        _err_3760620 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_3760585)));
                        if (_err_3760620 != null) {
                            _gotoNext = 3760679i32;
                        } else {
                            _gotoNext = 3760709i32;
                        };
                    };
                } else if (__value__ == (3760679i32)) {
                    return { _0 : null, _1 : _err_3760620 };
                    _gotoNext = 3760709i32;
                } else if (__value__ == (3760709i32)) {
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_3760585 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.virtualAddress = ((@:checkr _shdr_3760585 ?? throw "null pointer dereference").svaddr : stdgo.GoUInt64);
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.size = ((@:checkr _shdr_3760585 ?? throw "null pointer dereference").ssize : stdgo.GoUInt64);
                    _scnptr_3760500 = ((@:checkr _shdr_3760585 ?? throw "null pointer dereference").sscnptr : stdgo.GoUInt64);
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_3760585 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.relptr = ((@:checkr _shdr_3760585 ?? throw "null pointer dereference").srelptr : stdgo.GoUInt64);
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.nreloc = ((@:checkr _shdr_3760585 ?? throw "null pointer dereference").snreloc : stdgo.GoUInt32);
                    _gotoNext = 3761287i32;
                } else if (__value__ == (3760943i32)) {
                    _shdr_3760965 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
                    {
                        _err_3761000 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_3760965)));
                        if (_err_3761000 != null) {
                            _gotoNext = 3761059i32;
                        } else {
                            _gotoNext = 3761089i32;
                        };
                    };
                } else if (__value__ == (3761059i32)) {
                    return { _0 : null, _1 : _err_3761000 };
                    _gotoNext = 3761089i32;
                } else if (__value__ == (3761089i32)) {
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_3760965 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.virtualAddress = (@:checkr _shdr_3760965 ?? throw "null pointer dereference").svaddr;
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.size = (@:checkr _shdr_3760965 ?? throw "null pointer dereference").ssize;
                    _scnptr_3760500 = (@:checkr _shdr_3760965 ?? throw "null pointer dereference").sscnptr;
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_3760965 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.relptr = (@:checkr _shdr_3760965 ?? throw "null pointer dereference").srelptr;
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.nreloc = (@:checkr _shdr_3760965 ?? throw "null pointer dereference").snreloc;
                    _gotoNext = 3761287i32;
                } else if (__value__ == (3761287i32)) {
                    _r2_3761287 = _r;
                    if (_scnptr_3760500 == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3761312i32;
                    } else {
                        _gotoNext = 3761368i32;
                    };
                } else if (__value__ == (3761312i32)) {
                    _r2_3761287 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt));
                    _gotoNext = 3761368i32;
                } else if (__value__ == (3761368i32)) {
                    (@:checkr _s_3760516 ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r2_3761287, (_scnptr_3760500 : stdgo.GoInt64), ((@:checkr _s_3760516 ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
                    (@:checkr _s_3760516 ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s_3760516 ?? throw "null pointer dereference")._sr);
                    (@:checkr _f_3758840 ?? throw "null pointer dereference").sections = ((@:checkr _f_3758840 ?? throw "null pointer dereference").sections.__append__(_s_3760516));
                    _i_3760464++;
                    _gotoNext = 3760460i32;
                } else if (__value__ == (3761527i32)) {
                    _idxToSym_3761531 = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>) : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    {
                        {
                            var __tmp__ = @:check2r _sr_3758539.seek((_symptr_3759005 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3761594 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3761594 != null) {
                            _gotoNext = 3761650i32;
                        } else {
                            _gotoNext = 3761674i32;
                        };
                    };
                } else if (__value__ == (3761650i32)) {
                    return { _0 : null, _1 : _err_3761594 };
                    _gotoNext = 3761674i32;
                } else if (__value__ == (3761674i32)) {
                    (@:checkr _f_3758840 ?? throw "null pointer dereference").symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    _i_3761710 = (0 : stdgo.GoInt);
                    _gotoNext = 3761706i32;
                } else if (__value__ == (3761706i32)) {
                    if ((_i_3761710 < (_nsyms_3759024 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3761738i32;
                    } else {
                        _gotoNext = 3765009i32;
                    };
                } else if (__value__ == (3761734i32)) {
                    _i_3761710++;
                    _gotoNext = 3761706i32;
                } else if (__value__ == (3761738i32)) {
                    _sym_3761785 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                    _gotoNext = 3761806i32;
                } else if (__value__ == (3761806i32)) {
                    {
                        final __value__ = (@:checkr _f_3758840 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3761833i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3762424i32;
                        } else {
                            _gotoNext = 3762835i32;
                        };
                    };
                } else if (__value__ == (3761833i32)) {
                    _se_3761855 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
                    {
                        _err_3761881 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_3761855)));
                        if (_err_3761881 != null) {
                            _gotoNext = 3761938i32;
                        } else {
                            _gotoNext = 3761968i32;
                        };
                    };
                } else if (__value__ == (3761938i32)) {
                    return { _0 : null, _1 : _err_3761881 };
                    _gotoNext = 3761968i32;
                } else if (__value__ == (3761968i32)) {
                    _numaux_3761746 = ((@:checkr _se_3761855 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_3761855 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_3761855 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").value = ((@:checkr _se_3761855 ?? throw "null pointer dereference").nvalue : stdgo.GoUInt64);
                    _needAuxFcn_3761767 = ((((@:checkr _se_3761855 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_3761746 > (1 : stdgo.GoInt) : Bool) : Bool);
                    _zeroes_3762163 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_3761855 ?? throw "null pointer dereference").nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_zeroes_3762163 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3762229i32;
                    } else {
                        _gotoNext = 3762277i32;
                    };
                } else if (__value__ == (3762229i32)) {
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _se_3761855 ?? throw "null pointer dereference").nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _gotoNext = 3762835i32;
                } else if (__value__ == (3762277i32)) {
                    _gotoNext = 3762277i32;
                    _offset_3762283 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_3761855 ?? throw "null pointer dereference").nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3758840 ?? throw "null pointer dereference").stringTable, _offset_3762283);
                        (@:checkr _sym_3761785 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3761763 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3761763) {
                        _gotoNext = 3762394i32;
                    } else {
                        _gotoNext = 3762835i32;
                    };
                } else if (__value__ == (3762394i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3762424i32)) {
                    _se_3762446 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
                    {
                        _err_3762472 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_3762446)));
                        if (_err_3762472 != null) {
                            _gotoNext = 3762529i32;
                        } else {
                            _gotoNext = 3762559i32;
                        };
                    };
                } else if (__value__ == (3762529i32)) {
                    return { _0 : null, _1 : _err_3762472 };
                    _gotoNext = 3762559i32;
                } else if (__value__ == (3762559i32)) {
                    _numaux_3761746 = ((@:checkr _se_3762446 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_3762446 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_3762446 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").value = (@:checkr _se_3762446 ?? throw "null pointer dereference").nvalue;
                    _needAuxFcn_3761767 = ((((@:checkr _se_3762446 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_3761746 > (1 : stdgo.GoInt) : Bool) : Bool);
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3758840 ?? throw "null pointer dereference").stringTable, (@:checkr _se_3762446 ?? throw "null pointer dereference").noffset);
                        (@:checkr _sym_3761785 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3761763 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3761763) {
                        _gotoNext = 3762808i32;
                    } else {
                        _gotoNext = 3762835i32;
                    };
                } else if (__value__ == (3762808i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3762835i32)) {
                    if ((((@:checkr _sym_3761785 ?? throw "null pointer dereference").storageClass != ((2 : stdgo.GoInt)) && (@:checkr _sym_3761785 ?? throw "null pointer dereference").storageClass != ((111 : stdgo.GoInt)) : Bool) && ((@:checkr _sym_3761785 ?? throw "null pointer dereference").storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3762929i32;
                    } else {
                        _gotoNext = 3763001i32;
                    };
                } else if (__value__ == (3762929i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3763001i32)) {
                    if (((_numaux_3761746 < (1 : stdgo.GoInt) : Bool) || ((_i_3761710 + _numaux_3761746 : stdgo.GoInt) >= (_nsyms_3759024 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3763041i32;
                    } else {
                        _gotoNext = 3763063i32;
                    };
                } else if (__value__ == (3763041i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3763063i32)) {
                    if (((@:checkr _sym_3761785 ?? throw "null pointer dereference").sectionNumber > (_nscns_3758987 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3763097i32;
                    } else {
                        _gotoNext = 3763118i32;
                    };
                } else if (__value__ == (3763097i32)) {
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3763118i32)) {
                    if ((@:checkr _sym_3761785 ?? throw "null pointer dereference").sectionNumber == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3763144i32;
                    } else {
                        _gotoNext = 3763172i32;
                    };
                } else if (__value__ == (3763144i32)) {
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").value = (0i64 : stdgo.GoUInt64);
                    _gotoNext = 3763244i32;
                } else if (__value__ == (3763172i32)) {
                    _gotoNext = 3763172i32;
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").value = ((@:checkr _sym_3761785 ?? throw "null pointer dereference").value - ((@:checkr (@:checkr _f_3758840 ?? throw "null pointer dereference").sections[((@:checkr _sym_3761785 ?? throw "null pointer dereference").sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    var __blank__ = 0i32;
                    _gotoNext = 3763244i32;
                } else if (__value__ == (3763244i32)) {
                    _idxToSym_3761531[_i_3761710] = _sym_3761785;
                    if (_needAuxFcn_3761767) {
                        _gotoNext = 3763509i32;
                    } else {
                        _gotoNext = 3763978i32;
                    };
                } else if (__value__ == (3763509i32)) {
                    _gotoNext = 3763514i32;
                } else if (__value__ == (3763514i32)) {
                    {
                        final __value__ = (@:checkr _f_3758840 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3763542i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3763723i32;
                        } else {
                            _gotoNext = 3763978i32;
                        };
                    };
                } else if (__value__ == (3763542i32)) {
                    _aux_3763565 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
                    {
                        _err_3763593 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_3763565)));
                        if (_err_3763593 != null) {
                            _gotoNext = 3763651i32;
                        } else {
                            _gotoNext = 3763684i32;
                        };
                    };
                } else if (__value__ == (3763651i32)) {
                    return { _0 : null, _1 : _err_3763593 };
                    _gotoNext = 3763684i32;
                } else if (__value__ == (3763684i32)) {
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_3763565 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3763978i32;
                } else if (__value__ == (3763723i32)) {
                    _aux_3763746 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
                    {
                        _err_3763774 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_3763746)));
                        if (_err_3763774 != null) {
                            _gotoNext = 3763832i32;
                        } else {
                            _gotoNext = 3763865i32;
                        };
                    };
                } else if (__value__ == (3763832i32)) {
                    return { _0 : null, _1 : _err_3763774 };
                    _gotoNext = 3763865i32;
                } else if (__value__ == (3763865i32)) {
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_3763746 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3763978i32;
                } else if (__value__ == (3763978i32)) {
                    if (!_needAuxFcn_3761767) {
                        _gotoNext = 3763993i32;
                    } else {
                        _gotoNext = 3764104i32;
                    };
                } else if (__value__ == (3763993i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_3758539.seek((((_numaux_3761746 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_3764004 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3764004 != null) {
                            _gotoNext = 3764071i32;
                        } else {
                            _gotoNext = 3764104i32;
                        };
                    };
                } else if (__value__ == (3764071i32)) {
                    return { _0 : null, _1 : _err_3764004 };
                    _gotoNext = 3764104i32;
                } else if (__value__ == (3764104i32)) {
                    _i_3761710 = (_i_3761710 + (_numaux_3761746) : stdgo.GoInt);
                    _numaux_3761746 = (0 : stdgo.GoInt);
                    _gotoNext = 3764131i32;
                } else if (__value__ == (3764131i32)) {
                    {
                        final __value__ = (@:checkr _f_3758840 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3764158i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3764446i32;
                        } else {
                            _gotoNext = 3764767i32;
                        };
                    };
                } else if (__value__ == (3764158i32)) {
                    _aux_3764180 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
                    {
                        _err_3764209 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_3764180)));
                        if (_err_3764209 != null) {
                            _gotoNext = 3764267i32;
                        } else {
                            _gotoNext = 3764297i32;
                        };
                    };
                } else if (__value__ == (3764267i32)) {
                    return { _0 : null, _1 : _err_3764209 };
                    _gotoNext = 3764297i32;
                } else if (__value__ == (3764297i32)) {
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_3764180 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_3764180 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").auxCSect.length_ = ((@:checkr _aux_3764180 ?? throw "null pointer dereference").xscnlen : stdgo.GoInt64);
                    _gotoNext = 3764767i32;
                } else if (__value__ == (3764446i32)) {
                    _aux_3764468 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
                    {
                        _err_3764497 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_3764468)));
                        if (_err_3764497 != null) {
                            _gotoNext = 3764555i32;
                        } else {
                            _gotoNext = 3764585i32;
                        };
                    };
                } else if (__value__ == (3764555i32)) {
                    return { _0 : null, _1 : _err_3764497 };
                    _gotoNext = 3764585i32;
                } else if (__value__ == (3764585i32)) {
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_3764468 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_3764468 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_3761785 ?? throw "null pointer dereference").auxCSect.length_ = ((((@:checkr _aux_3764468 ?? throw "null pointer dereference").xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | ((@:checkr _aux_3764468 ?? throw "null pointer dereference").xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                    _gotoNext = 3764767i32;
                } else if (__value__ == (3764767i32)) {
                    (@:checkr _f_3758840 ?? throw "null pointer dereference").symbols = ((@:checkr _f_3758840 ?? throw "null pointer dereference").symbols.__append__(_sym_3761785));
                    _gotoNext = 3764803i32;
                } else if (__value__ == (3764803i32)) {
                    _i_3761710 = (_i_3761710 + (_numaux_3761746) : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = @:check2r _sr_3758539.seek(((_numaux_3761746 : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_3764857 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3764857 != null) {
                            _gotoNext = 3764922i32;
                        } else {
                            _gotoNext = 3761734i32;
                        };
                    };
                } else if (__value__ == (3764922i32)) {
                    return { _0 : null, _1 : _err_3764857 };
                    _gotoNext = 3761734i32;
                } else if (__value__ == (3765009i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_3758840 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3766449i32;
                    } else {
                        _gotoNext = 3766454i32;
                    };
                } else if (__value__ == (3765013i32)) {
                    _sectNum_3765013++;
                    _gotoNext = 3766450i32;
                } else if (__value__ == (3765047i32)) {
                    _sect_3765022 = (@:checkr _f_3758840 ?? throw "null pointer dereference").sections[(_sectNum_3765013 : stdgo.GoInt)];
                    if ((((@:checkr _sect_3765022 ?? throw "null pointer dereference").sectionHeader.type != (32u32 : stdgo.GoUInt32)) && ((@:checkr _sect_3765022 ?? throw "null pointer dereference").sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                        _gotoNext = 3765103i32;
                    } else {
                        _gotoNext = 3765123i32;
                    };
                } else if (__value__ == (3765103i32)) {
                    _sectNum_3765013++;
                    _gotoNext = 3766450i32;
                } else if (__value__ == (3765123i32)) {
                    if ((@:checkr _sect_3765022 ?? throw "null pointer dereference").sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3765143i32;
                    } else {
                        _gotoNext = 3765163i32;
                    };
                } else if (__value__ == (3765143i32)) {
                    _sectNum_3765013++;
                    _gotoNext = 3766450i32;
                } else if (__value__ == (3765163i32)) {
                    _c_3765163 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>))), ((@:checkr _sect_3765022 ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoUInt64));
                    if ((_c_3765163 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3765232i32;
                    } else {
                        _gotoNext = 3765327i32;
                    };
                } else if (__value__ == (3765232i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _sect_3765022 ?? throw "null pointer dereference").sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum_3765013)) };
                    _gotoNext = 3765327i32;
                } else if (__value__ == (3765327i32)) {
                    (@:checkr _sect_3765022 ?? throw "null pointer dereference").relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c_3765163, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c_3765163 ? (0 : stdgo.GoInt).toBasic() : _c_3765163 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>);
                    {
                        {
                            var __tmp__ = @:check2r _sr_3758539.seek(((@:checkr _sect_3765022 ?? throw "null pointer dereference").sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3765369 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3765369 != null) {
                            _gotoNext = 3765430i32;
                        } else {
                            _gotoNext = 3765457i32;
                        };
                    };
                } else if (__value__ == (3765430i32)) {
                    return { _0 : null, _1 : _err_3765369 };
                    _gotoNext = 3765457i32;
                } else if (__value__ == (3765457i32)) {
                    _i_3765461 = (0u32 : stdgo.GoUInt32);
                    _gotoNext = 3765457i32;
                    if ((_i_3765461 < (@:checkr _sect_3765022 ?? throw "null pointer dereference").sectionHeader.nreloc : Bool)) {
                        _gotoNext = 3765498i32;
                    } else {
                        _gotoNext = 3765013i32;
                    };
                } else if (__value__ == (3765498i32)) {
                    _gotoNext = 3765522i32;
                } else if (__value__ == (3765522i32)) {
                    {
                        final __value__ = (@:checkr _f_3758840 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3765550i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3765979i32;
                        } else {
                            _gotoNext = 3766404i32;
                        };
                    };
                } else if (__value__ == (3765550i32)) {
                    _rel_3765573 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
                    {
                        _err_3765600 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_3765573)));
                        if (_err_3765600 != null) {
                            _gotoNext = 3765658i32;
                        } else {
                            _gotoNext = 3765691i32;
                        };
                    };
                } else if (__value__ == (3765658i32)) {
                    return { _0 : null, _1 : _err_3765600 };
                    _gotoNext = 3765691i32;
                } else if (__value__ == (3765691i32)) {
                    _reloc_3765507.virtualAddress = ((@:checkr _rel_3765573 ?? throw "null pointer dereference").rvaddr : stdgo.GoUInt64);
                    _reloc_3765507.symbol = (_idxToSym_3761531[((@:checkr _rel_3765573 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_3765507.type = (@:checkr _rel_3765573 ?? throw "null pointer dereference").rtype;
                    _reloc_3765507.length_ = (((@:checkr _rel_3765573 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_3765573 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3765872i32;
                    } else {
                        _gotoNext = 3765909i32;
                    };
                } else if (__value__ == (3765872i32)) {
                    _reloc_3765507.signed = true;
                    _gotoNext = 3765909i32;
                } else if (__value__ == (3765909i32)) {
                    if (((@:checkr _rel_3765573 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3765932i32;
                    } else {
                        _gotoNext = 3766404i32;
                    };
                } else if (__value__ == (3765932i32)) {
                    _reloc_3765507.instructionFixed = true;
                    _gotoNext = 3766404i32;
                } else if (__value__ == (3765979i32)) {
                    _rel_3766002 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
                    {
                        _err_3766029 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3758539), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_3766002)));
                        if (_err_3766029 != null) {
                            _gotoNext = 3766087i32;
                        } else {
                            _gotoNext = 3766120i32;
                        };
                    };
                } else if (__value__ == (3766087i32)) {
                    return { _0 : null, _1 : _err_3766029 };
                    _gotoNext = 3766120i32;
                } else if (__value__ == (3766120i32)) {
                    _reloc_3765507.virtualAddress = (@:checkr _rel_3766002 ?? throw "null pointer dereference").rvaddr;
                    _reloc_3765507.symbol = (_idxToSym_3761531[((@:checkr _rel_3766002 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_3765507.type = (@:checkr _rel_3766002 ?? throw "null pointer dereference").rtype;
                    _reloc_3765507.length_ = (((@:checkr _rel_3766002 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_3766002 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3766292i32;
                    } else {
                        _gotoNext = 3766329i32;
                    };
                } else if (__value__ == (3766292i32)) {
                    _reloc_3765507.signed = true;
                    _gotoNext = 3766329i32;
                } else if (__value__ == (3766329i32)) {
                    if (((@:checkr _rel_3766002 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3766352i32;
                    } else {
                        _gotoNext = 3766404i32;
                    };
                } else if (__value__ == (3766352i32)) {
                    _reloc_3765507.instructionFixed = true;
                    _gotoNext = 3766404i32;
                } else if (__value__ == (3766404i32)) {
                    (@:checkr _sect_3765022 ?? throw "null pointer dereference").relocs = ((@:checkr _sect_3765022 ?? throw "null pointer dereference").relocs.__append__(_reloc_3765507?.__copy__()));
                    _i_3765461++;
                    _gotoNext = 3765457i32;
                } else if (__value__ == (3766449i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_3758840 ?? throw "null pointer dereference").sections[(0i32 : stdgo.GoInt)];
                        _sectNum_3765013 = __tmp__0;
                        _sect_3765022 = __tmp__1;
                    };
                    _gotoNext = 3766450i32;
                } else if (__value__ == (3766450i32)) {
                    if (_sectNum_3765013 < ((@:checkr _f_3758840 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3765047i32;
                    } else {
                        _gotoNext = 3766454i32;
                    };
                } else if (__value__ == (3766454i32)) {
                    return { _0 : _f_3758840, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
