package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>; var _1 : stdgo.Error; } {
        var _err_51:stdgo.Error = (null : stdgo.Error);
        var _s_24:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _nscns_5:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _sr_0:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        var _err_52:stdgo.Error = (null : stdgo.Error);
        var _idxToSym_30;
        var _opthdr_8:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _ok_34:Bool = false;
        var _err_26:stdgo.Error = (null : stdgo.Error);
        var _scnptr_23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_20:stdgo.Error = (null : stdgo.Error);
        var _hdrsz_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sym_36:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
        var _needAuxFcn_35:Bool = false;
        var _reloc_58:stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc);
        var _i_32:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sect_54:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
        var _err_46:stdgo.Error = (null : stdgo.Error);
        var _c_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fhdr_12:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
        var _err_11:stdgo.Error = (null : stdgo.Error);
        var _sectNum_53:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r2_29:stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
        var _nsyms_7:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _i_57:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _aux_45:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
        var _zeroes_39:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _numaux_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_19:stdgo.Error = (null : stdgo.Error);
        var _err_13:stdgo.Error = (null : stdgo.Error);
        var _magic_1:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _shdr_25:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
        var _symptr_6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _aux_50:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
        var _i_22:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_15:stdgo.Error = (null : stdgo.Error);
        var _offset_14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_28:stdgo.Error = (null : stdgo.Error);
        var _err_60:stdgo.Error = (null : stdgo.Error);
        var _err_47:stdgo.Error = (null : stdgo.Error);
        var _aux_43:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
        var _st_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _rel_59:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
        var _err_56:stdgo.Error = (null : stdgo.Error);
        var _c_55:stdgo.GoInt = (0 : stdgo.GoInt);
        var _shdr_27:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
        var _f_3:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
        var _err_62:stdgo.Error = (null : stdgo.Error);
        var _se_41:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
        var _err_17:stdgo.Error = (null : stdgo.Error);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _offset_40:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_38:stdgo.Error = (null : stdgo.Error);
        var _se_37:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
        var _err_31:stdgo.Error = (null : stdgo.Error);
        var _err_2:stdgo.Error = (null : stdgo.Error);
        var _aux_48:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
        var _err_49:stdgo.Error = (null : stdgo.Error);
        var _err_44:stdgo.Error = (null : stdgo.Error);
        var _err_42:stdgo.Error = (null : stdgo.Error);
        var _l_16:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _fhdr_10:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
        var _rel_61:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _sr_0 = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
                    _magic_1 = stdgo.Go.pointer(stdgo._internal.internal.xcoff.Xcoff__magic._magic);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L160"
                    {
                        _err_2 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_magic_1));
                        if (_err_2 != null) {
                            _gotoNext = 3776562i64;
                        } else {
                            _gotoNext = 3776586i64;
                        };
                    };
                } else if (__value__ == (3776562i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L161"
                    return { _0 : null, _1 : _err_2 };
                    _gotoNext = 3776586i64;
                } else if (__value__ == (3776586i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L163"
                    if (((_magic_1 != (479 : stdgo.GoUInt16)) && (_magic_1 != (503 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3776636i64;
                    } else {
                        _gotoNext = 3776709i64;
                    };
                } else if (__value__ == (3776636i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L164"
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic_1)) };
                    _gotoNext = 3776709i64;
                } else if (__value__ == (3776709i64)) {
                    _f_3 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_file.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
                    (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine = _magic_1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L171"
                    {
                        {
                            var __tmp__ = _sr_0.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_4 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4 != null) {
                            _gotoNext = 3776828i64;
                        } else {
                            _gotoNext = 3776852i64;
                        };
                    };
                } else if (__value__ == (3776828i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L172"
                    return { _0 : null, _1 : _err_4 };
                    _gotoNext = 3776852i64;
                } else if (__value__ == (3776852i64)) {
                    _gotoNext = 3776941i64;
                } else if (__value__ == (3776941i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L179"
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3776967i64;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3777224i64;
                        } else {
                            _gotoNext = 3777477i64;
                        };
                    };
                } else if (__value__ == (3776967i64)) {
                    _fhdr_10 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader32.FileHeader32>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L182"
                    {
                        _err_11 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_10)));
                        if (_err_11 != null) {
                            _gotoNext = 3777078i64;
                        } else {
                            _gotoNext = 3777105i64;
                        };
                    };
                } else if (__value__ == (3777078i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L183"
                    return { _0 : null, _1 : _err_11 };
                    _gotoNext = 3777105i64;
                } else if (__value__ == (3777105i64)) {
                    _nscns_5 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fnscns;
                    _symptr_6 = ((@:checkr _fhdr_10 ?? throw "null pointer dereference").fsymptr : stdgo.GoUInt64);
                    _nsyms_7 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_8 = (@:checkr _fhdr_10 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_9 = (20 : stdgo.GoInt);
                    _gotoNext = 3777477i64;
                } else if (__value__ == (3777224i64)) {
                    _fhdr_12 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_fileheader64.FileHeader64>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L192"
                    {
                        _err_13 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr_12)));
                        if (_err_13 != null) {
                            _gotoNext = 3777335i64;
                        } else {
                            _gotoNext = 3777362i64;
                        };
                    };
                } else if (__value__ == (3777335i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L193"
                    return { _0 : null, _1 : _err_13 };
                    _gotoNext = 3777362i64;
                } else if (__value__ == (3777362i64)) {
                    _nscns_5 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fnscns;
                    _symptr_6 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fsymptr;
                    _nsyms_7 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fnsyms;
                    _opthdr_8 = (@:checkr _fhdr_12 ?? throw "null pointer dereference").fopthdr;
                    _hdrsz_9 = (24 : stdgo.GoInt);
                    _gotoNext = 3777477i64;
                } else if (__value__ == (3777477i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L202"
                    if (((_symptr_6 == (0i64 : stdgo.GoUInt64)) || (_nsyms_7 <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3777506i64;
                    } else {
                        _gotoNext = 3777615i64;
                    };
                } else if (__value__ == (3777506i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L203"
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
                    _gotoNext = 3777615i64;
                } else if (__value__ == (3777615i64)) {
                    _offset_14 = (_symptr_6 + ((_nsyms_7 : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L208"
                    {
                        {
                            var __tmp__ = _sr_0.seek((_offset_14 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_15 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_15 != null) {
                            _gotoNext = 3777718i64;
                        } else {
                            _gotoNext = 3777795i64;
                        };
                    };
                } else if (__value__ == (3777718i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L209"
                    return { _0 : null, _1 : _err_15 };
                    _gotoNext = 3777795i64;
                } else if (__value__ == (3777795i64)) {
                    _l_16 = stdgo.Go.pointer(stdgo._internal.internal.xcoff.Xcoff__l._l);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L213"
                    {
                        _err_17 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_l_16));
                        if (_err_17 != null) {
                            _gotoNext = 3777869i64;
                        } else {
                            _gotoNext = 3777893i64;
                        };
                    };
                } else if (__value__ == (3777869i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L214"
                    return { _0 : null, _1 : _err_17 };
                    _gotoNext = 3777893i64;
                } else if (__value__ == (3777893i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L216"
                    if ((_l_16 > (4u32 : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3777902i64;
                    } else {
                        _gotoNext = 3778058i64;
                    };
                } else if (__value__ == (3777902i64)) {
                    {
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sr_0), (_l_16 : stdgo.GoUInt64), (_offset_14 : stdgo.GoInt64));
                        _st_18 = @:tmpset0 __tmp__._0;
                        _err_19 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L218"
                    if (_err_19 != null) {
                        _gotoNext = 3777982i64;
                    } else {
                        _gotoNext = 3778009i64;
                    };
                } else if (__value__ == (3777982i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L219"
                    return { _0 : null, _1 : _err_19 };
                    _gotoNext = 3778009i64;
                } else if (__value__ == (3778009i64)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").stringTable = _st_18;
                    _gotoNext = 3778058i64;
                } else if (__value__ == (3778058i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L225"
                    {
                        {
                            var __tmp__ = _sr_0.seek(((_hdrsz_9 : stdgo.GoInt64) + (_opthdr_8 : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_20 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_20 != null) {
                            _gotoNext = 3778133i64;
                        } else {
                            _gotoNext = 3778157i64;
                        };
                    };
                } else if (__value__ == (3778133i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L226"
                    return { _0 : null, _1 : _err_20 };
                    _gotoNext = 3778157i64;
                } else if (__value__ == (3778157i64)) {
                    _c_21 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>)), (_nscns_5 : stdgo.GoUInt64));
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L229"
                    if ((_c_21 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3778222i64;
                    } else {
                        _gotoNext = 3778292i64;
                    };
                } else if (__value__ == (3778222i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L230"
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns_5)) };
                    _gotoNext = 3778292i64;
                } else if (__value__ == (3778292i64)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>((0 : stdgo.GoInt).toBasic(), _c_21) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
                    _i_22 = (0 : stdgo.GoInt);
                    _gotoNext = 3778329i64;
                } else if (__value__ == (3778329i64)) {
                    //"file://#L0"
                    if ((_i_22 < (_nscns_5 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3778361i64;
                    } else {
                        _gotoNext = 3779396i64;
                    };
                } else if (__value__ == (3778361i64)) {
                    _s_24 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>);
                    _gotoNext = 3778405i64;
                } else if (__value__ == (3778405i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L236"
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3778432i64;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3778812i64;
                        } else {
                            _gotoNext = 3779156i64;
                        };
                    };
                } else if (__value__ == (3778432i64)) {
                    _shdr_25 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader32.SectionHeader32>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L239"
                    {
                        _err_26 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_25)));
                        if (_err_26 != null) {
                            _gotoNext = 3778548i64;
                        } else {
                            _gotoNext = 3778578i64;
                        };
                    };
                } else if (__value__ == (3778548i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L240"
                    return { _0 : null, _1 : _err_26 };
                    _gotoNext = 3778578i64;
                } else if (__value__ == (3778578i64)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_25 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.virtualAddress = ((@:checkr _shdr_25 ?? throw "null pointer dereference").svaddr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size = ((@:checkr _shdr_25 ?? throw "null pointer dereference").ssize : stdgo.GoUInt64);
                    _scnptr_23 = ((@:checkr _shdr_25 ?? throw "null pointer dereference").sscnptr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_25 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.relptr = ((@:checkr _shdr_25 ?? throw "null pointer dereference").srelptr : stdgo.GoUInt64);
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.nreloc = ((@:checkr _shdr_25 ?? throw "null pointer dereference").snreloc : stdgo.GoUInt32);
                    _gotoNext = 3779156i64;
                } else if (__value__ == (3778812i64)) {
                    _shdr_27 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_sectionheader64.SectionHeader64>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L251"
                    {
                        _err_28 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_shdr_27)));
                        if (_err_28 != null) {
                            _gotoNext = 3778928i64;
                        } else {
                            _gotoNext = 3778958i64;
                        };
                    };
                } else if (__value__ == (3778928i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L252"
                    return { _0 : null, _1 : _err_28 };
                    _gotoNext = 3778958i64;
                } else if (__value__ == (3778958i64)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _shdr_27 ?? throw "null pointer dereference").sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.virtualAddress = (@:checkr _shdr_27 ?? throw "null pointer dereference").svaddr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size = (@:checkr _shdr_27 ?? throw "null pointer dereference").ssize;
                    _scnptr_23 = (@:checkr _shdr_27 ?? throw "null pointer dereference").sscnptr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.type = (@:checkr _shdr_27 ?? throw "null pointer dereference").sflags;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.relptr = (@:checkr _shdr_27 ?? throw "null pointer dereference").srelptr;
                    (@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.nreloc = (@:checkr _shdr_27 ?? throw "null pointer dereference").snreloc;
                    _gotoNext = 3779156i64;
                } else if (__value__ == (3779156i64)) {
                    _r2_29 = _r;
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L263"
                    if (_scnptr_23 == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3779181i64;
                    } else {
                        _gotoNext = 3779237i64;
                    };
                } else if (__value__ == (3779181i64)) {
                    _r2_29 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt));
                    _gotoNext = 3779237i64;
                } else if (__value__ == (3779237i64)) {
                    (@:checkr _s_24 ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r2_29, (_scnptr_23 : stdgo.GoInt64), ((@:checkr _s_24 ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
                    (@:checkr _s_24 ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s_24 ?? throw "null pointer dereference")._sr);
                    (@:checkr _f_3 ?? throw "null pointer dereference").sections = ((@:checkr _f_3 ?? throw "null pointer dereference").sections.__append__(_s_24) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L233"
                    _i_22++;
                    _gotoNext = 3778329i64;
                } else if (__value__ == (3779396i64)) {
                    _idxToSym_30 = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>) : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L275"
                    {
                        {
                            var __tmp__ = _sr_0.seek((_symptr_6 : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_31 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_31 != null) {
                            _gotoNext = 3779519i64;
                        } else {
                            _gotoNext = 3779543i64;
                        };
                    };
                } else if (__value__ == (3779519i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L276"
                    return { _0 : null, _1 : _err_31 };
                    _gotoNext = 3779543i64;
                } else if (__value__ == (3779543i64)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    _i_32 = (0 : stdgo.GoInt);
                    _gotoNext = 3779575i64;
                } else if (__value__ == (3779575i64)) {
                    //"file://#L0"
                    if ((_i_32 < (_nsyms_7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3779607i64;
                    } else {
                        _gotoNext = 3782878i64;
                    };
                } else if (__value__ == (3779603i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L279"
                    _i_32++;
                    _gotoNext = 3779575i64;
                } else if (__value__ == (3779607i64)) {
                    _sym_36 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>);
                    _gotoNext = 3779675i64;
                } else if (__value__ == (3779675i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L283"
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3779702i64;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3780293i64;
                        } else {
                            _gotoNext = 3780704i64;
                        };
                    };
                } else if (__value__ == (3779702i64)) {
                    _se_37 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment32.SymEnt32>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L286"
                    {
                        _err_38 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_37)));
                        if (_err_38 != null) {
                            _gotoNext = 3779807i64;
                        } else {
                            _gotoNext = 3779837i64;
                        };
                    };
                } else if (__value__ == (3779807i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L287"
                    return { _0 : null, _1 : _err_38 };
                    _gotoNext = 3779837i64;
                } else if (__value__ == (3779837i64)) {
                    _numaux_33 = ((@:checkr _se_37 ?? throw "null pointer dereference").nnumaux : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber = ((@:checkr _se_37 ?? throw "null pointer dereference").nscnum : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass = ((@:checkr _se_37 ?? throw "null pointer dereference").nsclass : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = ((@:checkr _se_37 ?? throw "null pointer dereference").nvalue : stdgo.GoUInt64);
                    _needAuxFcn_35 = ((((@:checkr _se_37 ?? throw "null pointer dereference").ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux_33 > (1 : stdgo.GoInt) : Bool) : Bool);
                    _zeroes_39 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L295"
                    if (_zeroes_39 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3780098i64;
                    } else {
                        _gotoNext = 3780146i64;
                    };
                } else if (__value__ == (3780098i64)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    _gotoNext = 3780704i64;
                } else if (__value__ == (3780146i64)) {
                    _gotoNext = 3780146i64;
                    _offset_40 = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _se_37 ?? throw "null pointer dereference").nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    {
                        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString((@:checkr _f_3 ?? throw "null pointer dereference").stringTable, _offset_40);
                        (@:checkr _sym_36 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_34 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L300"
                    if (!_ok_34) {
                        _gotoNext = 3780263i64;
                    } else {
                        _gotoNext = 3780704i64;
                    };
                } else if (__value__ == (3780263i64)) {
                    _gotoNext = 3782672i64;
                } else if (__value__ == (3780293i64)) {
                    _se_41 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_syment64.SymEnt64>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L306"
                    {
                        _err_42 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_se_41)));
                        if (_err_42 != null) {
                            _gotoNext = 3780398i64;
                        } else {
                            _gotoNext = 3780428i64;
                        };
                    };
                } else if (__value__ == (3780398i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L307"
                    return { _0 : null, _1 : _err_42 };
                    _gotoNext = 3780428i64;
                } else if (__value__ == (3780428i64)) {
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
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L315"
                    if (!_ok_34) {
                        _gotoNext = 3780677i64;
                    } else {
                        _gotoNext = 3780704i64;
                    };
                } else if (__value__ == (3780677i64)) {
                    _gotoNext = 3782672i64;
                } else if (__value__ == (3780704i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L319"
                    if ((((@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != ((2 : stdgo.GoInt)) && (@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != ((111 : stdgo.GoInt)) : Bool) && ((@:checkr _sym_36 ?? throw "null pointer dereference").storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3780798i64;
                    } else {
                        _gotoNext = 3780870i64;
                    };
                } else if (__value__ == (3780798i64)) {
                    _gotoNext = 3782672i64;
                } else if (__value__ == (3780870i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L323"
                    if (((_numaux_33 < (1 : stdgo.GoInt) : Bool) || ((_i_32 + _numaux_33 : stdgo.GoInt) >= (_nsyms_7 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3780910i64;
                    } else {
                        _gotoNext = 3780932i64;
                    };
                } else if (__value__ == (3780910i64)) {
                    _gotoNext = 3782672i64;
                } else if (__value__ == (3780932i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L327"
                    if (((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber > (_nscns_5 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3780966i64;
                    } else {
                        _gotoNext = 3780987i64;
                    };
                } else if (__value__ == (3780966i64)) {
                    _gotoNext = 3782672i64;
                } else if (__value__ == (3780987i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L330"
                    if ((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3781013i64;
                    } else {
                        _gotoNext = 3781041i64;
                    };
                } else if (__value__ == (3781013i64)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = (0i64 : stdgo.GoUInt64);
                    _gotoNext = 3781113i64;
                } else if (__value__ == (3781041i64)) {
                    _gotoNext = 3781041i64;
                    (@:checkr _sym_36 ?? throw "null pointer dereference").value = ((@:checkr _sym_36 ?? throw "null pointer dereference").value - ((@:checkr (@:checkr _f_3 ?? throw "null pointer dereference").sections[((@:checkr _sym_36 ?? throw "null pointer dereference").sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    0i64;
                    _gotoNext = 3781113i64;
                } else if (__value__ == (3781113i64)) {
                    _idxToSym_30[_i_32] = _sym_36;
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L342"
                    if (_needAuxFcn_35) {
                        _gotoNext = 3781378i64;
                    } else {
                        _gotoNext = 3781847i64;
                    };
                } else if (__value__ == (3781378i64)) {
                    _gotoNext = 3781383i64;
                } else if (__value__ == (3781383i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L343"
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3781411i64;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3781592i64;
                        } else {
                            _gotoNext = 3781847i64;
                        };
                    };
                } else if (__value__ == (3781411i64)) {
                    _aux_43 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn32.AuxFcn32>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L346"
                    {
                        _err_44 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_43)));
                        if (_err_44 != null) {
                            _gotoNext = 3781520i64;
                        } else {
                            _gotoNext = 3781553i64;
                        };
                    };
                } else if (__value__ == (3781520i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L347"
                    return { _0 : null, _1 : _err_44 };
                    _gotoNext = 3781553i64;
                } else if (__value__ == (3781553i64)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_43 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3781847i64;
                } else if (__value__ == (3781592i64)) {
                    _aux_45 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxfcn64.AuxFcn64>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L352"
                    {
                        _err_46 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_45)));
                        if (_err_46 != null) {
                            _gotoNext = 3781701i64;
                        } else {
                            _gotoNext = 3781734i64;
                        };
                    };
                } else if (__value__ == (3781701i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L353"
                    return { _0 : null, _1 : _err_46 };
                    _gotoNext = 3781734i64;
                } else if (__value__ == (3781734i64)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxFcn.size = ((@:checkr _aux_45 ?? throw "null pointer dereference").xfsize : stdgo.GoInt64);
                    _gotoNext = 3781847i64;
                } else if (__value__ == (3781847i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L360"
                    if (!_needAuxFcn_35) {
                        _gotoNext = 3781862i64;
                    } else {
                        _gotoNext = 3781973i64;
                    };
                } else if (__value__ == (3781862i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L361"
                    {
                        {
                            var __tmp__ = _sr_0.seek((((_numaux_33 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_47 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_47 != null) {
                            _gotoNext = 3781940i64;
                        } else {
                            _gotoNext = 3781973i64;
                        };
                    };
                } else if (__value__ == (3781940i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L362"
                    return { _0 : null, _1 : _err_47 };
                    _gotoNext = 3781973i64;
                } else if (__value__ == (3781973i64)) {
                    _i_32 = (_i_32 + (_numaux_33) : stdgo.GoInt);
                    _numaux_33 = (0 : stdgo.GoInt);
                    _gotoNext = 3782000i64;
                } else if (__value__ == (3782000i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L367"
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3782027i64;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3782315i64;
                        } else {
                            _gotoNext = 3782636i64;
                        };
                    };
                } else if (__value__ == (3782027i64)) {
                    _aux_48 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect32.AuxCSect32>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L370"
                    {
                        _err_49 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_48)));
                        if (_err_49 != null) {
                            _gotoNext = 3782136i64;
                        } else {
                            _gotoNext = 3782166i64;
                        };
                    };
                } else if (__value__ == (3782136i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L371"
                    return { _0 : null, _1 : _err_49 };
                    _gotoNext = 3782166i64;
                } else if (__value__ == (3782166i64)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_48 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_48 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.length_ = ((@:checkr _aux_48 ?? throw "null pointer dereference").xscnlen : stdgo.GoInt64);
                    _gotoNext = 3782636i64;
                } else if (__value__ == (3782315i64)) {
                    _aux_50 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_auxcsect64.AuxCSect64>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L378"
                    {
                        _err_51 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux_50)));
                        if (_err_51 != null) {
                            _gotoNext = 3782424i64;
                        } else {
                            _gotoNext = 3782454i64;
                        };
                    };
                } else if (__value__ == (3782424i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L379"
                    return { _0 : null, _1 : _err_51 };
                    _gotoNext = 3782454i64;
                } else if (__value__ == (3782454i64)) {
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.symbolType = (((@:checkr _aux_50 ?? throw "null pointer dereference").xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.storageMappingClass = ((@:checkr _aux_50 ?? throw "null pointer dereference").xsmclas : stdgo.GoInt);
                    (@:checkr _sym_36 ?? throw "null pointer dereference").auxCSect.length_ = ((((@:checkr _aux_50 ?? throw "null pointer dereference").xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | ((@:checkr _aux_50 ?? throw "null pointer dereference").xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                    _gotoNext = 3782636i64;
                } else if (__value__ == (3782636i64)) {
                    (@:checkr _f_3 ?? throw "null pointer dereference").symbols = ((@:checkr _f_3 ?? throw "null pointer dereference").symbols.__append__(_sym_36) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
                    _gotoNext = 3782672i64;
                } else if (__value__ == (3782672i64)) {
                    _i_32 = (_i_32 + (_numaux_33) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L388"
                    {
                        {
                            var __tmp__ = _sr_0.seek(((_numaux_33 : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt));
                            _err_52 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_52 != null) {
                            _gotoNext = 3782791i64;
                        } else {
                            _gotoNext = 3779603i64;
                        };
                    };
                } else if (__value__ == (3782791i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L389"
                    return { _0 : null, _1 : _err_52 };
                    _gotoNext = 3779603i64;
                } else if (__value__ == (3782878i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L395"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _f_3 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3784318i64;
                    } else {
                        _gotoNext = 3784323i64;
                    };
                } else if (__value__ == (3782882i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L395"
                    _sectNum_53++;
                    _gotoNext = 3784319i64;
                } else if (__value__ == (3782916i64)) {
                    _sect_54 = (@:checkr _f_3 ?? throw "null pointer dereference").sections[(_sectNum_53 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L396"
                    if ((((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.type != (32u32 : stdgo.GoUInt32)) && ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                        _gotoNext = 3782972i64;
                    } else {
                        _gotoNext = 3782992i64;
                    };
                } else if (__value__ == (3782972i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L395"
                    _sectNum_53++;
                    _gotoNext = 3784319i64;
                } else if (__value__ == (3782992i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L399"
                    if ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3783012i64;
                    } else {
                        _gotoNext = 3783032i64;
                    };
                } else if (__value__ == (3783012i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L395"
                    _sectNum_53++;
                    _gotoNext = 3784319i64;
                } else if (__value__ == (3783032i64)) {
                    _c_55 = stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>))), ((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoUInt64));
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L403"
                    if ((_c_55 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783101i64;
                    } else {
                        _gotoNext = 3783196i64;
                    };
                } else if (__value__ == (3783101i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L404"
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum_53)) };
                    _gotoNext = 3783196i64;
                } else if (__value__ == (3783196i64)) {
                    (@:checkr _sect_54 ?? throw "null pointer dereference").relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c_55, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c_55 ? (0 : stdgo.GoInt).toBasic() : _c_55 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L407"
                    {
                        {
                            var __tmp__ = _sr_0.seek(((@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt));
                            _err_56 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_56 != null) {
                            _gotoNext = 3783299i64;
                        } else {
                            _gotoNext = 3783326i64;
                        };
                    };
                } else if (__value__ == (3783299i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L408"
                    return { _0 : null, _1 : _err_56 };
                    _gotoNext = 3783326i64;
                } else if (__value__ == (3783326i64)) {
                    _i_57 = (0u32 : stdgo.GoUInt32);
                    _gotoNext = 3783326i64;
                    //"file://#L0"
                    if ((_i_57 < (@:checkr _sect_54 ?? throw "null pointer dereference").sectionHeader.nreloc : Bool)) {
                        _gotoNext = 3783367i64;
                    } else {
                        _gotoNext = 3782882i64;
                    };
                } else if (__value__ == (3783367i64)) {
                    _gotoNext = 3783391i64;
                } else if (__value__ == (3783391i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L412"
                    {
                        final __value__ = (@:checkr _f_3 ?? throw "null pointer dereference").fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            _gotoNext = 3783419i64;
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            _gotoNext = 3783848i64;
                        } else {
                            _gotoNext = 3784273i64;
                        };
                    };
                } else if (__value__ == (3783419i64)) {
                    _rel_59 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc32.Reloc32>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L415"
                    {
                        _err_60 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_59)));
                        if (_err_60 != null) {
                            _gotoNext = 3783527i64;
                        } else {
                            _gotoNext = 3783560i64;
                        };
                    };
                } else if (__value__ == (3783527i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L416"
                    return { _0 : null, _1 : _err_60 };
                    _gotoNext = 3783560i64;
                } else if (__value__ == (3783560i64)) {
                    _reloc_58.virtualAddress = ((@:checkr _rel_59 ?? throw "null pointer dereference").rvaddr : stdgo.GoUInt64);
                    _reloc_58.symbol = (_idxToSym_30[((@:checkr _rel_59 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_58.type = (@:checkr _rel_59 ?? throw "null pointer dereference").rtype;
                    _reloc_58.length_ = (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L423"
                    if (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3783741i64;
                    } else {
                        _gotoNext = 3783778i64;
                    };
                } else if (__value__ == (3783741i64)) {
                    _reloc_58.signed = true;
                    _gotoNext = 3783778i64;
                } else if (__value__ == (3783778i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L426"
                    if (((@:checkr _rel_59 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3783801i64;
                    } else {
                        _gotoNext = 3784273i64;
                    };
                } else if (__value__ == (3783801i64)) {
                    _reloc_58.instructionFixed = true;
                    _gotoNext = 3784273i64;
                } else if (__value__ == (3783848i64)) {
                    _rel_61 = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_reloc64.Reloc64>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L432"
                    {
                        _err_62 = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr_0), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_rel_61)));
                        if (_err_62 != null) {
                            _gotoNext = 3783956i64;
                        } else {
                            _gotoNext = 3783989i64;
                        };
                    };
                } else if (__value__ == (3783956i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L433"
                    return { _0 : null, _1 : _err_62 };
                    _gotoNext = 3783989i64;
                } else if (__value__ == (3783989i64)) {
                    _reloc_58.virtualAddress = (@:checkr _rel_61 ?? throw "null pointer dereference").rvaddr;
                    _reloc_58.symbol = (_idxToSym_30[((@:checkr _rel_61 ?? throw "null pointer dereference").rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>));
                    _reloc_58.type = (@:checkr _rel_61 ?? throw "null pointer dereference").rtype;
                    _reloc_58.length_ = (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L439"
                    if (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3784161i64;
                    } else {
                        _gotoNext = 3784198i64;
                    };
                } else if (__value__ == (3784161i64)) {
                    _reloc_58.signed = true;
                    _gotoNext = 3784198i64;
                } else if (__value__ == (3784198i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L442"
                    if (((@:checkr _rel_61 ?? throw "null pointer dereference").rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3784221i64;
                    } else {
                        _gotoNext = 3784273i64;
                    };
                } else if (__value__ == (3784221i64)) {
                    _reloc_58.instructionFixed = true;
                    _gotoNext = 3784273i64;
                } else if (__value__ == (3784273i64)) {
                    (@:checkr _sect_54 ?? throw "null pointer dereference").relocs = ((@:checkr _sect_54 ?? throw "null pointer dereference").relocs.__append__(_reloc_58?.__copy__()) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_reloc.Reloc>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L410"
                    _i_57++;
                    _gotoNext = 3783326i64;
                } else if (__value__ == (3784318i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _f_3 ?? throw "null pointer dereference").sections[(0i64 : stdgo.GoInt)];
                        _sectNum_53 = @:binopAssign __tmp__0;
                        _sect_54 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3784319i64;
                } else if (__value__ == (3784319i64)) {
                    //"file://#L0"
                    if (_sectNum_53 < ((@:checkr _f_3 ?? throw "null pointer dereference").sections.length)) {
                        _gotoNext = 3782916i64;
                    } else {
                        _gotoNext = 3784323i64;
                    };
                } else if (__value__ == (3784323i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L451"
                    return { _0 : _f_3, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
