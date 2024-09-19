package stdgo._internal.debug.pe;
function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.pe.Pe_File.File>; var _1 : stdgo.Error; } {
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.debug.pe.Pe_File.File)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_File.File>);
        var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _dosheader:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(96, 96, ...[for (i in 0 ... 96) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _r.readAt((_dosheader.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _base:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        if (((_dosheader[(0 : stdgo.GoInt)] == (77 : stdgo.GoUInt8)) && (_dosheader[(1 : stdgo.GoInt)] == (90 : stdgo.GoUInt8)) : Bool)) {
            var _signoff = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_dosheader.__slice__((60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
            var _sign:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
            _r.readAt((_sign.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _signoff);
            if (!((((_sign[(0 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8)) && _sign[(1 : stdgo.GoInt)] == ((69 : stdgo.GoUInt8)) : Bool) && _sign[(2 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_sign[(3 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid PE file signature: % x" : stdgo.GoString), stdgo.Go.toInterface(_sign)) };
            };
            _base = (_signoff + (4i64 : stdgo.GoInt64) : stdgo.GoInt64);
        } else {
            _base = (0i64 : stdgo.GoInt64);
        };
        _sr.seek(_base, (0 : stdgo.GoInt));
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_f.fileHeader) : stdgo.Ref<stdgo._internal.debug.pe.Pe_FileHeader.FileHeader>))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            final __value__ = _f.fileHeader.machine;
            if (__value__ == ((34404 : stdgo.GoUInt16)) || __value__ == ((43620 : stdgo.GoUInt16)) || __value__ == ((452 : stdgo.GoUInt16)) || __value__ == ((332 : stdgo.GoUInt16)) || __value__ == ((20530 : stdgo.GoUInt16)) || __value__ == ((20580 : stdgo.GoUInt16)) || __value__ == ((20776 : stdgo.GoUInt16)) || __value__ == ((0 : stdgo.GoUInt16))) {} else {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognized PE machine: %#x" : stdgo.GoString), stdgo.Go.toInterface(_f.fileHeader.machine)) };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__readStringTable._readStringTable((stdgo.Go.setRef(_f.fileHeader) : stdgo.Ref<stdgo._internal.debug.pe.Pe_FileHeader.FileHeader>), stdgo.Go.asInterface(_sr));
            _f.stringTable = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__readCOFFSymbols._readCOFFSymbols((stdgo.Go.setRef(_f.fileHeader) : stdgo.Ref<stdgo._internal.debug.pe.Pe_FileHeader.FileHeader>), stdgo.Go.asInterface(_sr));
            _f.coffsymbols = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__removeAuxSymbols._removeAuxSymbols(_f.coffsymbols, _f.stringTable);
            _f.symbols = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var __tmp__ = _sr.seek((_base + (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(_f.fileHeader)) : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__readOptionalHeader._readOptionalHeader(stdgo.Go.asInterface(_sr), _f.fileHeader.sizeOfOptionalHeader);
            _f.optionalHeader = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _f.sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>>((_f.fileHeader.numberOfSections : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_f.fileHeader.numberOfSections : stdgo.GoInt) : Bool), _i++, {
                var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32>);
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_sh))) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                var __tmp__ = _sh._fullName(_f.stringTable), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.pe.Pe_Section.Section)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>);
                _s.sectionHeader = ({ name : _name?.__copy__(), virtualSize : _sh.virtualSize, virtualAddress : _sh.virtualAddress, size : _sh.sizeOfRawData, offset : _sh.pointerToRawData, pointerToRelocations : _sh.pointerToRelocations, pointerToLineNumbers : _sh.pointerToLineNumbers, numberOfRelocations : _sh.numberOfRelocations, numberOfLineNumbers : _sh.numberOfLineNumbers, characteristics : _sh.characteristics } : stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader);
                var _r2 = (_r : stdgo._internal.io.Io_ReaderAt.ReaderAt);
                if (_sh.pointerToRawData == ((0u32 : stdgo.GoUInt32))) {
                    _r2 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.pe.Pe_T_nobitsSectionReader.T_nobitsSectionReader() : stdgo._internal.debug.pe.Pe_T_nobitsSectionReader.T_nobitsSectionReader)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_T_nobitsSectionReader.T_nobitsSectionReader>));
                };
                _s._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r2, (_s.sectionHeader.offset : stdgo.GoInt64), (_s.sectionHeader.size : stdgo.GoInt64));
                _s.readerAt = stdgo.Go.asInterface(_s._sr);
                _f.sections[(_i : stdgo.GoInt)] = _s;
            });
        };
        for (_i => _ in _f.sections) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.debug.pe.Pe__readRelocs._readRelocs((stdgo.Go.setRef(_f.sections[(_i : stdgo.GoInt)].sectionHeader) : stdgo.Ref<stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader>), stdgo.Go.asInterface(_sr));
                _f.sections[(_i : stdgo.GoInt)].relocs = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
