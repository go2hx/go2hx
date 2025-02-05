package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>; var _1 : stdgo.Error; } {
        var _err_3783898:stdgo.Error = (null : stdgo.Error);
        var _err_3783238:stdgo.Error = (null : stdgo.Error);
        var _s_3778385:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _err_3777812:stdgo.Error = (null : stdgo.Error);
        var _rel_3783442:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
        var _sectNum_3782882:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3781643:stdgo.Error = (null : stdgo.Error);
        var _fhdr_3776988:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
        var _symptr_3776874:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_3783469:stdgo.Error = (null : stdgo.Error);
        var _err_3782366:stdgo.Error = (null : stdgo.Error);
        var _err_3782078:stdgo.Error = (null : stdgo.Error);
        var _se_3780315:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
        var _err_3778869:stdgo.Error = (null : stdgo.Error);
        var _scnptr_3778369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3783330:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _hdrsz_3776930:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3776408:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        var _offset_3780152:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _zeroes_3780032:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _se_3779724:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
        var _opthdr_3776911:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _nscns_3776856:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _sect_3782891:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _aux_3781434:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
        var _r2_3779156:stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
        var _i_3779579:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nsyms_3776893:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _aux_3782049:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
        var _aux_3781615:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
        var _fhdr_3777245:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
        var _reloc_3783376:stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc);
        var _err_3781462:stdgo.Error = (null : stdgo.Error);
        var _needAuxFcn_3779636:Bool = false;
        var _shdr_3778454:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
        var _c_3778157:stdgo.GoInt = (0 : stdgo.GoInt);
        var _st_3777906:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _l_3777799:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_3777019:stdgo.Error = (null : stdgo.Error);
        var _err_3776784:stdgo.Error = (null : stdgo.Error);
        var _sym_3779654:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
        var _err_3778489:stdgo.Error = (null : stdgo.Error);
        var _c_3783032:stdgo.GoInt = (0 : stdgo.GoInt);
        var _aux_3782337:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
        var _ok_3779632:Bool = false;
        var _err_3777662:stdgo.Error = (null : stdgo.Error);
        var _shdr_3778834:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
        var _err_3778064:stdgo.Error = (null : stdgo.Error);
        var _err_3777910:stdgo.Error = (null : stdgo.Error);
        var _err_3782726:stdgo.Error = (null : stdgo.Error);
        var _err_3780341:stdgo.Error = (null : stdgo.Error);
        var _numaux_3779615:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3781873:stdgo.Error = (null : stdgo.Error);
        var _err_3779750:stdgo.Error = (null : stdgo.Error);
        var _f_3776709:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
        var _err_3776501:stdgo.Error = (null : stdgo.Error);
        var _err_3779463:stdgo.Error = (null : stdgo.Error);
        var _idxToSym_3779400;
        var _i_3778333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offset_3777615:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _rel_3783871:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
        var _err_3777276:stdgo.Error = (null : stdgo.Error);
        var _magic_3776484:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _sr_3776408 = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
                    _magic_3776484 = stdgo.Go.pointer(_magic_3776484);
                    {
                        _err_3776501 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_magic_3776484));
                        if (_err_3776501 != null) {
                            _gotoNext = 3776562i32;
                        } else {
                            _gotoNext = 3776586i32;
                        };
                    };
                } else if (__value__ == (3776562i32)) {
                    return { _0 : null, _1 : _err_3776501 };
                    _gotoNext = 3776586i32;
                } else if (__value__ == (3776586i32)) {
                    if (((_magic_3776484 != (479 : stdgo.GoUInt16)) && (_magic_3776484 != (503 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3776636i32;
                    } else {
                        _gotoNext = 3776709i32;
                    };
                } else if (__value__ == (3776636i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic_3776484)) };
                    _gotoNext = 3776709i32;
                } else if (__value__ == (3776709i32)) {
                    _f_3776709 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_file.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
                    (@:checkr _f_3776709 ?? throw "null pointer dereference").fileHeader.targetMachine = _magic_3776484;
                    {
                        {
                            var __tmp__ = @:check2r _sr_3776408.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3776784 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3776784 != null) {
                            _gotoNext = 3776828i32;
                        } else {
                            _gotoNext = 3776852i32;
                        };
                    };
                } else if (__value__ == (3776828i32)) {
                    return { _0 : null, _1 : _err_3776784 };
                    _gotoNext = 3776852i32;
                } else if (__value__ == (3776852i32)) {
                    _gotoNext = 3776941i32;
                } else if (__value__ == (3776941i32)) {
                    {
                        final __value__ = (@:checkr _f_3776709 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3776967i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3777224i32;
                        } else {
                            _gotoNext = 3777477i32;
                        };
                    };
                } else if (__value__ == (3776967i32)) {
                    _fhdr_3776988 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
                    {
                        _err_3777019 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_3776988)));
                        if (_err_3777019 != null) {
                            _gotoNext = 3777078i32;
                        } else {
                            _gotoNext = 3777105i32;
                        };
                    };
                } else if (__value__ == (3777078i32)) {
                    return { _0 : null, _1 : _err_3777019 };
                    _gotoNext = 3777105i32;
                } else if (__value__ == (3777105i32)) {
                    _nscns_3776856 = (@:checkr _fhdr_3776988 ?? throw "null pointer dereference").fnscns;
                    _symptr_3776874 = ((@:checkr _fhdr_3776988 ?? throw "null pointer dereference").fsymptr : stdgo.GoUInt64);
                    _nsyms_3776893 = (@:checkr _fhdr_3776988 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_3776911 = (@:checkr _fhdr_3776988 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_3776930 = (20 : stdgo.GoInt);
                    _gotoNext = 3777477i32;
                } else if (__value__ == (3777224i32)) {
                    _fhdr_3777245 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
                    {
                        _err_3777276 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_3777245)));
                        if (_err_3777276 != null) {
                            _gotoNext = 3777335i32;
                        } else {
                            _gotoNext = 3777362i32;
                        };
                    };
                } else if (__value__ == (3777335i32)) {
                    return { _0 : null, _1 : _err_3777276 };
                    _gotoNext = 3777362i32;
                } else if (__value__ == (3777362i32)) {
                    _nscns_3776856 = (@:checkr _fhdr_3777245 ?? throw "null pointer dereference").fnscns;
                    _symptr_3776874 = (@:checkr _fhdr_3777245 ?? throw "null pointer dereference").fsymptr;
                    _nsyms_3776893 = (@:checkr _fhdr_3777245 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_3776911 = (@:checkr _fhdr_3777245 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_3776930 = (24 : stdgo.GoInt);
                    _gotoNext = 3777477i32;
                } else if (__value__ == (3777477i32)) {
                    if (((_symptr_3776874 == (0i64 : stdgo.GoUInt64)) || (_nsyms_3776893 <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3777506i32;
                    } else {
                        _gotoNext = 3777615i32;
                    };
                } else if (__value__ == (3777506i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
                    _gotoNext = 3777615i32;
                } else if (__value__ == (3777615i32)) {
                    _offset_3777615 = (_symptr_3776874 + ((_nsyms_3776893 : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    {
                        {
                            var __tmp__ = @:check2r _sr_3776408.seek((_offset_3777615 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3777662 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3777662 != null) {
                            _gotoNext = 3777718i32;
                        } else {
                            _gotoNext = 3777795i32;
                        };
                    };
                } else if (__value__ == (3777718i32)) {
                    return { _0 : null, _1 : _err_3777662 };
                    _gotoNext = 3777795i32;
                } else if (__value__ == (3777795i32)) {
                    _l_3777799 = stdgo.Go.pointer(_l_3777799);
                    {
                        _err_3777812 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_l_3777799));
                        if (_err_3777812 != null) {
                            _gotoNext = 3777869i32;
                        } else {
                            _gotoNext = 3777893i32;
                        };
                    };
                } else if (__value__ == (3777869i32)) {
                    return { _0 : null, _1 : _err_3777812 };
                    _gotoNext = 3777893i32;
                } else if (__value__ == (3777893i32)) {
                    if ((_l_3777799 > (4u32 : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3777902i32;
                    } else {
                        _gotoNext = 3778058i32;
                    };
                } else if (__value__ == (3777902i32)) {
                    {
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sr_3776408), (_l_3777799 : stdgo.GoUInt64), (_offset_3777615 : stdgo.GoInt64));
                        _st_3777906 = @:tmpset0 __tmp__._0;
                        _err_3777910 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3777910 != null) {
                        _gotoNext = 3777982i32;
                    } else {
                        _gotoNext = 3778009i32;
                    };
                } else if (__value__ == (3777982i32)) {
                    return { _0 : null, _1 : _err_3777910 };
                    _gotoNext = 3778009i32;
                } else if (__value__ == (3778009i32)) {
                    (@:checkr _f_3776709 ?? throw "null pointer dereference").stringTable = _st_3777906;
                    _gotoNext = 3778058i32;
                } else if (__value__ == (3778058i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_3776408.seek(((_hdrsz_3776930 : stdgo.GoInt64) + (_opthdr_3776911 : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3778064 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3778064 != null) {
                            _gotoNext = 3778133i32;
                        } else {
                            _gotoNext = 3778157i32;
                        };
                    };
                } else if (__value__ == (3778133i32)) {
                    return { _0 : null, _1 : _err_3778064 };
                    _gotoNext = 3778157i32;
                } else if (__value__ == (3778157i32)) {
                    _c_3778157 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>)), (_nscns_3776856 : stdgo.GoUInt64));
                    if ((_c_3778157 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3778222i32;
                    } else {
                        _gotoNext = 3778292i32;
                    };
                } else if (__value__ == (3778222i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns_3776856)) };
                    _gotoNext = 3778292i32;
                } else if (__value__ == (3778292i32)) {
                    (@:checkr _f_3776709 ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>((0 : stdgo.GoInt).toBasic(), _c_3778157) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
                    _i_3778333 = (0 : stdgo.GoInt);
                    _gotoNext = 3778329i32;
                } else if (__value__ == (3778329i32)) {
                    if ((_i_3778333 < (_nscns_3776856 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3778361i32;
                    } else {
                        _gotoNext = 3779396i32;
                    };
                } else if (__value__ == (3778361i32)) {
                    _s_3778385 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
                    _gotoNext = 3778405i32;
                } else if (__value__ == (3778405i32)) {
                    {
                        final __value__ = (@:checkr _f_3776709 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3778432i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3778812i32;
                        } else {
                            _gotoNext = 3779156i32;
                        };
                    };
                } else if (__value__ == (3778432i32)) {
                    _shdr_3778454 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
                    {
                        _err_3778489 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_3778454)));
                        if (_err_3778489 != null) {
                            _gotoNext = 3778548i32;
                        } else {
                            _gotoNext = 3778578i32;
                        };
                    };
                } else if (__value__ == (3778548i32)) {
                    return { _0 : null, _1 : _err_3778489 };
                    _gotoNext = 3778578i32;
                } else if (__value__ == (3778578i32)) {
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_3778454 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.virtualAddress = ((@:checkr _shdr_3778454 ?? throw "null pointer dereference").svaddr : stdgo.GoUInt64);
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.size = ((@:checkr _shdr_3778454 ?? throw "null pointer dereference").ssize : stdgo.GoUInt64);
                    _scnptr_3778369 = ((@:checkr _shdr_3778454 ?? throw "null pointer dereference").sscnptr : stdgo.GoUInt64);
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_3778454 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.relptr = ((@:checkr _shdr_3778454 ?? throw "null pointer dereference").srelptr : stdgo.GoUInt64);
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.nreloc = ((@:checkr _shdr_3778454 ?? throw "null pointer dereference").snreloc : stdgo.GoUInt32);
                    _gotoNext = 3779156i32;
                } else if (__value__ == (3778812i32)) {
                    _shdr_3778834 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
                    {
                        _err_3778869 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_3778834)));
                        if (_err_3778869 != null) {
                            _gotoNext = 3778928i32;
                        } else {
                            _gotoNext = 3778958i32;
                        };
                    };
                } else if (__value__ == (3778928i32)) {
                    return { _0 : null, _1 : _err_3778869 };
                    _gotoNext = 3778958i32;
                } else if (__value__ == (3778958i32)) {
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_3778834 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.virtualAddress = (@:checkr _shdr_3778834 ?? throw "null pointer dereference").svaddr;
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.size = (@:checkr _shdr_3778834 ?? throw "null pointer dereference").ssize;
                    _scnptr_3778369 = (@:checkr _shdr_3778834 ?? throw "null pointer dereference").sscnptr;
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_3778834 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.relptr = (@:checkr _shdr_3778834 ?? throw "null pointer dereference").srelptr;
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.nreloc = (@:checkr _shdr_3778834 ?? throw "null pointer dereference").snreloc;
                    _gotoNext = 3779156i32;
                } else if (__value__ == (3779156i32)) {
                    _r2_3779156 = _r;
                    if (_scnptr_3778369 == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3779181i32;
                    } else {
                        _gotoNext = 3779237i32;
                    };
                } else if (__value__ == (3779181i32)) {
                    _r2_3779156 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt));
                    _gotoNext = 3779237i32;
                } else if (__value__ == (3779237i32)) {
                    (@:checkr _s_3778385 ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r2_3779156, (_scnptr_3778369 : stdgo.GoInt64), ((@:checkr _s_3778385 ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
                    (@:checkr _s_3778385 ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s_3778385 ?? throw "null pointer dereference")._sr);
                    (@:checkr _f_3776709 ?? throw "null pointer dereference").sections = ((@:checkr _f_3776709 ?? throw "null pointer dereference").sections.__append__(_s_3778385));
                    _i_3778333++;
                    _gotoNext = 3778329i32;
                } else if (__value__ == (3779396i32)) {
                    _idxToSym_3779400 = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>) : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    {
                        {
                            var __tmp__ = @:check2r _sr_3776408.seek((_symptr_3776874 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3779463 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3779463 != null) {
                            _gotoNext = 3779519i32;
                        } else {
                            _gotoNext = 3779543i32;
                        };
                    };
                } else if (__value__ == (3779519i32)) {
                    return { _0 : null, _1 : _err_3779463 };
                    _gotoNext = 3779543i32;
                } else if (__value__ == (3779543i32)) {
                    (@:checkr _f_3776709 ?? throw "null pointer dereference").symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    _i_3779579 = (0 : stdgo.GoInt);
                    _gotoNext = 3779575i32;
                } else if (__value__ == (3779575i32)) {
                    if ((_i_3779579 < (_nsyms_3776893 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3779607i32;
                    } else {
                        _gotoNext = 3782878i32;
                    };
                } else if (__value__ == (3779603i32)) {
                    _i_3779579++;
                    _gotoNext = 3779575i32;
                } else if (__value__ == (3779607i32)) {
                    _sym_3779654 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                    _gotoNext = 3779675i32;
                } else if (__value__ == (3779675i32)) {
                    {
                        final __value__ = (@:checkr _f_3776709 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3779702i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3780293i32;
                        } else {
                            _gotoNext = 3780704i32;
                        };
                    };
                } else if (__value__ == (3779702i32)) {
                    _se_3779724 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
                    {
                        _err_3779750 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_3779724)));
                        if (_err_3779750 != null) {
                            _gotoNext = 3779807i32;
                        } else {
                            _gotoNext = 3779837i32;
                        };
                    };
                } else if (__value__ == (3779807i32)) {
                    return { _0 : null, _1 : _err_3779750 };
                    _gotoNext = 3779837i32;
                } else if (__value__ == (3779837i32)) {
                    _numaux_3779615 = ((@:checkr _se_3779724 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_3779724 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_3779724 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").value = ((@:checkr _se_3779724 ?? throw "null pointer dereference").nvalue : stdgo.GoUInt64);
                    _needAuxFcn_3779636 = ((((@:checkr _se_3779724 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_3779615 > (1 : stdgo.GoInt) : Bool) : Bool);
                    _zeroes_3780032 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_3779724 ?? throw "null pointer dereference").nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_zeroes_3780032 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3780098i32;
                    } else {
                        _gotoNext = 3780146i32;
                    };
                } else if (__value__ == (3780098i32)) {
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _se_3779724 ?? throw "null pointer dereference").nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _gotoNext = 3780704i32;
                } else if (__value__ == (3780146i32)) {
                    _gotoNext = 3780146i32;
                    _offset_3780152 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_3779724 ?? throw "null pointer dereference").nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3776709 ?? throw "null pointer dereference").stringTable, _offset_3780152);
                        (@:checkr _sym_3779654 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3779632 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3779632) {
                        _gotoNext = 3780263i32;
                    } else {
                        _gotoNext = 3780704i32;
                    };
                } else if (__value__ == (3780263i32)) {
                    _gotoNext = 3782672i32;
                } else if (__value__ == (3780293i32)) {
                    _se_3780315 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
                    {
                        _err_3780341 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_3780315)));
                        if (_err_3780341 != null) {
                            _gotoNext = 3780398i32;
                        } else {
                            _gotoNext = 3780428i32;
                        };
                    };
                } else if (__value__ == (3780398i32)) {
                    return { _0 : null, _1 : _err_3780341 };
                    _gotoNext = 3780428i32;
                } else if (__value__ == (3780428i32)) {
                    _numaux_3779615 = ((@:checkr _se_3780315 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_3780315 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_3780315 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").value = (@:checkr _se_3780315 ?? throw "null pointer dereference").nvalue;
                    _needAuxFcn_3779636 = ((((@:checkr _se_3780315 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_3779615 > (1 : stdgo.GoInt) : Bool) : Bool);
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3776709 ?? throw "null pointer dereference").stringTable, (@:checkr _se_3780315 ?? throw "null pointer dereference").noffset);
                        (@:checkr _sym_3779654 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3779632 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3779632) {
                        _gotoNext = 3780677i32;
                    } else {
                        _gotoNext = 3780704i32;
                    };
                } else if (__value__ == (3780677i32)) {
                    _gotoNext = 3782672i32;
                } else if (__value__ == (3780704i32)) {
                    if ((((@:checkr _sym_3779654 ?? throw "null pointer dereference").storageClass != ((2 : stdgo.GoInt)) && (@:checkr _sym_3779654 ?? throw "null pointer dereference").storageClass != ((111 : stdgo.GoInt)) : Bool) && ((@:checkr _sym_3779654 ?? throw "null pointer dereference").storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3780798i32;
                    } else {
                        _gotoNext = 3780870i32;
                    };
                } else if (__value__ == (3780798i32)) {
                    _gotoNext = 3782672i32;
                } else if (__value__ == (3780870i32)) {
                    if (((_numaux_3779615 < (1 : stdgo.GoInt) : Bool) || ((_i_3779579 + _numaux_3779615 : stdgo.GoInt) >= (_nsyms_3776893 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3780910i32;
                    } else {
                        _gotoNext = 3780932i32;
                    };
                } else if (__value__ == (3780910i32)) {
                    _gotoNext = 3782672i32;
                } else if (__value__ == (3780932i32)) {
                    if (((@:checkr _sym_3779654 ?? throw "null pointer dereference").sectionNumber > (_nscns_3776856 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3780966i32;
                    } else {
                        _gotoNext = 3780987i32;
                    };
                } else if (__value__ == (3780966i32)) {
                    _gotoNext = 3782672i32;
                } else if (__value__ == (3780987i32)) {
                    if ((@:checkr _sym_3779654 ?? throw "null pointer dereference").sectionNumber == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3781013i32;
                    } else {
                        _gotoNext = 3781041i32;
                    };
                } else if (__value__ == (3781013i32)) {
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").value = (0i64 : stdgo.GoUInt64);
                    _gotoNext = 3781113i32;
                } else if (__value__ == (3781041i32)) {
                    _gotoNext = 3781041i32;
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").value = ((@:checkr _sym_3779654 ?? throw "null pointer dereference").value - ((@:checkr (@:checkr _f_3776709 ?? throw "null pointer dereference").sections[((@:checkr _sym_3779654 ?? throw "null pointer dereference").sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    var __blank__ = 0i32;
                    _gotoNext = 3781113i32;
                } else if (__value__ == (3781113i32)) {
                    _idxToSym_3779400[_i_3779579] = _sym_3779654;
                    if (_needAuxFcn_3779636) {
                        _gotoNext = 3781378i32;
                    } else {
                        _gotoNext = 3781847i32;
                    };
                } else if (__value__ == (3781378i32)) {
                    _gotoNext = 3781383i32;
                } else if (__value__ == (3781383i32)) {
                    {
                        final __value__ = (@:checkr _f_3776709 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3781411i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3781592i32;
                        } else {
                            _gotoNext = 3781847i32;
                        };
                    };
                } else if (__value__ == (3781411i32)) {
                    _aux_3781434 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
                    {
                        _err_3781462 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_3781434)));
                        if (_err_3781462 != null) {
                            _gotoNext = 3781520i32;
                        } else {
                            _gotoNext = 3781553i32;
                        };
                    };
                } else if (__value__ == (3781520i32)) {
                    return { _0 : null, _1 : _err_3781462 };
                    _gotoNext = 3781553i32;
                } else if (__value__ == (3781553i32)) {
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_3781434 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3781847i32;
                } else if (__value__ == (3781592i32)) {
                    _aux_3781615 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
                    {
                        _err_3781643 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_3781615)));
                        if (_err_3781643 != null) {
                            _gotoNext = 3781701i32;
                        } else {
                            _gotoNext = 3781734i32;
                        };
                    };
                } else if (__value__ == (3781701i32)) {
                    return { _0 : null, _1 : _err_3781643 };
                    _gotoNext = 3781734i32;
                } else if (__value__ == (3781734i32)) {
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_3781615 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3781847i32;
                } else if (__value__ == (3781847i32)) {
                    if (!_needAuxFcn_3779636) {
                        _gotoNext = 3781862i32;
                    } else {
                        _gotoNext = 3781973i32;
                    };
                } else if (__value__ == (3781862i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _sr_3776408.seek((((_numaux_3779615 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_3781873 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3781873 != null) {
                            _gotoNext = 3781940i32;
                        } else {
                            _gotoNext = 3781973i32;
                        };
                    };
                } else if (__value__ == (3781940i32)) {
                    return { _0 : null, _1 : _err_3781873 };
                    _gotoNext = 3781973i32;
                } else if (__value__ == (3781973i32)) {
                    _i_3779579 = (_i_3779579 + (_numaux_3779615) : stdgo.GoInt);
                    _numaux_3779615 = (0 : stdgo.GoInt);
                    _gotoNext = 3782000i32;
                } else if (__value__ == (3782000i32)) {
                    {
                        final __value__ = (@:checkr _f_3776709 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3782027i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3782315i32;
                        } else {
                            _gotoNext = 3782636i32;
                        };
                    };
                } else if (__value__ == (3782027i32)) {
                    _aux_3782049 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
                    {
                        _err_3782078 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_3782049)));
                        if (_err_3782078 != null) {
                            _gotoNext = 3782136i32;
                        } else {
                            _gotoNext = 3782166i32;
                        };
                    };
                } else if (__value__ == (3782136i32)) {
                    return { _0 : null, _1 : _err_3782078 };
                    _gotoNext = 3782166i32;
                } else if (__value__ == (3782166i32)) {
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_3782049 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_3782049 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").auxCSect.length_ = ((@:checkr _aux_3782049 ?? throw "null pointer dereference").xscnlen : stdgo.GoInt64);
                    _gotoNext = 3782636i32;
                } else if (__value__ == (3782315i32)) {
                    _aux_3782337 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
                    {
                        _err_3782366 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_3782337)));
                        if (_err_3782366 != null) {
                            _gotoNext = 3782424i32;
                        } else {
                            _gotoNext = 3782454i32;
                        };
                    };
                } else if (__value__ == (3782424i32)) {
                    return { _0 : null, _1 : _err_3782366 };
                    _gotoNext = 3782454i32;
                } else if (__value__ == (3782454i32)) {
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_3782337 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_3782337 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_3779654 ?? throw "null pointer dereference").auxCSect.length_ = ((((@:checkr _aux_3782337 ?? throw "null pointer dereference").xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | ((@:checkr _aux_3782337 ?? throw "null pointer dereference").xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                    _gotoNext = 3782636i32;
                } else if (__value__ == (3782636i32)) {
                    (@:checkr _f_3776709 ?? throw "null pointer dereference").symbols = ((@:checkr _f_3776709 ?? throw "null pointer dereference").symbols.__append__(_sym_3779654));
                    _gotoNext = 3782672i32;
                } else if (__value__ == (3782672i32)) {
                    _i_3779579 = (_i_3779579 + (_numaux_3779615) : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = @:check2r _sr_3776408.seek(((_numaux_3779615 : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_3782726 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3782726 != null) {
                            _gotoNext = 3782791i32;
                        } else {
                            _gotoNext = 3779603i32;
                        };
                    };
                } else if (__value__ == (3782791i32)) {
                    return { _0 : null, _1 : _err_3782726 };
                    _gotoNext = 3779603i32;
                } else if (__value__ == (3782878i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_3776709 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3784318i32;
                    } else {
                        _gotoNext = 3784323i32;
                    };
                } else if (__value__ == (3782882i32)) {
                    _sectNum_3782882++;
                    _gotoNext = 3784319i32;
                } else if (__value__ == (3782916i32)) {
                    _sect_3782891 = (@:checkr _f_3776709 ?? throw "null pointer dereference").sections[(_sectNum_3782882 : stdgo.GoInt)];
                    if ((((@:checkr _sect_3782891 ?? throw "null pointer dereference").sectionHeader.type != (32u32 : stdgo.GoUInt32)) && ((@:checkr _sect_3782891 ?? throw "null pointer dereference").sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                        _gotoNext = 3782972i32;
                    } else {
                        _gotoNext = 3782992i32;
                    };
                } else if (__value__ == (3782972i32)) {
                    _sectNum_3782882++;
                    _gotoNext = 3784319i32;
                } else if (__value__ == (3782992i32)) {
                    if ((@:checkr _sect_3782891 ?? throw "null pointer dereference").sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3783012i32;
                    } else {
                        _gotoNext = 3783032i32;
                    };
                } else if (__value__ == (3783012i32)) {
                    _sectNum_3782882++;
                    _gotoNext = 3784319i32;
                } else if (__value__ == (3783032i32)) {
                    _c_3783032 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>))), ((@:checkr _sect_3782891 ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoUInt64));
                    if ((_c_3783032 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783101i32;
                    } else {
                        _gotoNext = 3783196i32;
                    };
                } else if (__value__ == (3783101i32)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _sect_3782891 ?? throw "null pointer dereference").sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum_3782882)) };
                    _gotoNext = 3783196i32;
                } else if (__value__ == (3783196i32)) {
                    (@:checkr _sect_3782891 ?? throw "null pointer dereference").relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c_3783032, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c_3783032 ? (0 : stdgo.GoInt).toBasic() : _c_3783032 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>);
                    {
                        {
                            var __tmp__ = @:check2r _sr_3776408.seek(((@:checkr _sect_3782891 ?? throw "null pointer dereference").sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_3783238 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3783238 != null) {
                            _gotoNext = 3783299i32;
                        } else {
                            _gotoNext = 3783326i32;
                        };
                    };
                } else if (__value__ == (3783299i32)) {
                    return { _0 : null, _1 : _err_3783238 };
                    _gotoNext = 3783326i32;
                } else if (__value__ == (3783326i32)) {
                    _i_3783330 = (0u32 : stdgo.GoUInt32);
                    _gotoNext = 3783326i32;
                    if ((_i_3783330 < (@:checkr _sect_3782891 ?? throw "null pointer dereference").sectionHeader.nreloc : Bool)) {
                        _gotoNext = 3783367i32;
                    } else {
                        _gotoNext = 3782882i32;
                    };
                } else if (__value__ == (3783367i32)) {
                    _gotoNext = 3783391i32;
                } else if (__value__ == (3783391i32)) {
                    {
                        final __value__ = (@:checkr _f_3776709 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3783419i32;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3783848i32;
                        } else {
                            _gotoNext = 3784273i32;
                        };
                    };
                } else if (__value__ == (3783419i32)) {
                    _rel_3783442 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
                    {
                        _err_3783469 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_3783442)));
                        if (_err_3783469 != null) {
                            _gotoNext = 3783527i32;
                        } else {
                            _gotoNext = 3783560i32;
                        };
                    };
                } else if (__value__ == (3783527i32)) {
                    return { _0 : null, _1 : _err_3783469 };
                    _gotoNext = 3783560i32;
                } else if (__value__ == (3783560i32)) {
                    _reloc_3783376.virtualAddress = ((@:checkr _rel_3783442 ?? throw "null pointer dereference").rvaddr : stdgo.GoUInt64);
                    _reloc_3783376.symbol = (_idxToSym_3779400[((@:checkr _rel_3783442 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_3783376.type = (@:checkr _rel_3783442 ?? throw "null pointer dereference").rtype;
                    _reloc_3783376.length_ = (((@:checkr _rel_3783442 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_3783442 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3783741i32;
                    } else {
                        _gotoNext = 3783778i32;
                    };
                } else if (__value__ == (3783741i32)) {
                    _reloc_3783376.signed = true;
                    _gotoNext = 3783778i32;
                } else if (__value__ == (3783778i32)) {
                    if (((@:checkr _rel_3783442 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3783801i32;
                    } else {
                        _gotoNext = 3784273i32;
                    };
                } else if (__value__ == (3783801i32)) {
                    _reloc_3783376.instructionFixed = true;
                    _gotoNext = 3784273i32;
                } else if (__value__ == (3783848i32)) {
                    _rel_3783871 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
                    {
                        _err_3783898 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_3776408), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_3783871)));
                        if (_err_3783898 != null) {
                            _gotoNext = 3783956i32;
                        } else {
                            _gotoNext = 3783989i32;
                        };
                    };
                } else if (__value__ == (3783956i32)) {
                    return { _0 : null, _1 : _err_3783898 };
                    _gotoNext = 3783989i32;
                } else if (__value__ == (3783989i32)) {
                    _reloc_3783376.virtualAddress = (@:checkr _rel_3783871 ?? throw "null pointer dereference").rvaddr;
                    _reloc_3783376.symbol = (_idxToSym_3779400[((@:checkr _rel_3783871 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_3783376.type = (@:checkr _rel_3783871 ?? throw "null pointer dereference").rtype;
                    _reloc_3783376.length_ = (((@:checkr _rel_3783871 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (((@:checkr _rel_3783871 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3784161i32;
                    } else {
                        _gotoNext = 3784198i32;
                    };
                } else if (__value__ == (3784161i32)) {
                    _reloc_3783376.signed = true;
                    _gotoNext = 3784198i32;
                } else if (__value__ == (3784198i32)) {
                    if (((@:checkr _rel_3783871 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3784221i32;
                    } else {
                        _gotoNext = 3784273i32;
                    };
                } else if (__value__ == (3784221i32)) {
                    _reloc_3783376.instructionFixed = true;
                    _gotoNext = 3784273i32;
                } else if (__value__ == (3784273i32)) {
                    (@:checkr _sect_3782891 ?? throw "null pointer dereference").relocs = ((@:checkr _sect_3782891 ?? throw "null pointer dereference").relocs.__append__(_reloc_3783376?.__copy__()));
                    _i_3783330++;
                    _gotoNext = 3783326i32;
                } else if (__value__ == (3784318i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_3776709 ?? throw "null pointer dereference").sections[(0i32 : stdgo.GoInt)];
                        _sectNum_3782882 = __tmp__0;
                        _sect_3782891 = __tmp__1;
                    };
                    _gotoNext = 3784319i32;
                } else if (__value__ == (3784319i32)) {
                    if (_sectNum_3782882 < ((@:checkr _f_3776709 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3782916i32;
                    } else {
                        _gotoNext = 3784323i32;
                    };
                } else if (__value__ == (3784323i32)) {
                    return { _0 : _f_3776709, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
