package stdgo._internal.internal.xcoff;
function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
            var _magic:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_magic))) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            if (((_magic != (479 : stdgo.GoUInt16)) && (_magic != (503 : stdgo.GoUInt16)) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised XCOFF magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic)) };
            };
            var _f = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_File.File)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
            _f.fileHeader.targetMachine = _magic;
            {
                var __tmp__ = _sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _nscns:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _symptr:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var _nsyms:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            var _opthdr:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _hdrsz:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                final __value__ = _f.fileHeader.targetMachine;
                if (__value__ == ((479 : stdgo.GoUInt16))) {
                    var _fhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32>);
                    {
                        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_fhdr)) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _nscns = _fhdr.fnscns;
                    _symptr = (_fhdr.fsymptr : stdgo.GoUInt64);
                    _nsyms = _fhdr.fnsyms;
                    _opthdr = _fhdr.fopthdr;
                    _hdrsz = (20 : stdgo.GoInt);
                } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                    var _fhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_FileHeader64.FileHeader64>);
                    {
                        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_fhdr)) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _nscns = _fhdr.fnscns;
                    _symptr = _fhdr.fsymptr;
                    _nsyms = _fhdr.fnsyms;
                    _opthdr = _fhdr.fopthdr;
                    _hdrsz = (24 : stdgo.GoInt);
                };
            };
            if (((_symptr == (0i64 : stdgo.GoUInt64)) || (_nsyms <= (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no symbol table" : stdgo.GoString)) };
            };
            var _offset = (_symptr + ((_nsyms : stdgo.GoUInt64) * (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
            {
                var __tmp__ = _sr.seek((_offset : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _l:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_l))) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            if ((_l > (4u32 : stdgo.GoUInt32) : Bool)) {
                var __tmp__ = stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(stdgo.Go.asInterface(_sr), (_l : stdgo.GoUInt64), (_offset : stdgo.GoInt64)), _st:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                _f.stringTable = _st;
            };
            {
                var __tmp__ = _sr.seek(((_hdrsz : stdgo.GoInt64) + (_opthdr : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>)), (_nscns : stdgo.GoUInt64)) : stdgo.GoInt);
            if ((_c < (0 : stdgo.GoInt) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many XCOFF sections (%d)" : stdgo.GoString), stdgo.Go.toInterface(_nscns)) };
            };
            _f.sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>((0 : stdgo.GoInt).toBasic(), _c) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_nscns : stdgo.GoInt) : Bool), _i++, {
                    var _scnptr:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                    var _s = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Section.Section)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>);
                    {
                        final __value__ = _f.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            var _shdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32>);
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_shdr)) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _s.sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_shdr.sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                            _s.sectionHeader.virtualAddress = (_shdr.svaddr : stdgo.GoUInt64);
                            _s.sectionHeader.size = (_shdr.ssize : stdgo.GoUInt64);
                            _scnptr = (_shdr.sscnptr : stdgo.GoUInt64);
                            _s.sectionHeader.type = _shdr.sflags;
                            _s.sectionHeader.relptr = (_shdr.srelptr : stdgo.GoUInt64);
                            _s.sectionHeader.nreloc = (_shdr.snreloc : stdgo.GoUInt32);
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            var _shdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64>);
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_shdr)) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _s.sectionHeader.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_shdr.sname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                            _s.sectionHeader.virtualAddress = _shdr.svaddr;
                            _s.sectionHeader.size = _shdr.ssize;
                            _scnptr = _shdr.sscnptr;
                            _s.sectionHeader.type = _shdr.sflags;
                            _s.sectionHeader.relptr = _shdr.srelptr;
                            _s.sectionHeader.nreloc = _shdr.snreloc;
                        };
                    };
                    var _r2 = (_r : stdgo._internal.io.Io_ReaderAt.ReaderAt);
                    if (_scnptr == ((0i64 : stdgo.GoUInt64))) {
                        _r2 = stdgo.Go.asInterface((new stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt.T_zeroReaderAt() : stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt.T_zeroReaderAt));
                    };
                    _s._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r2, (_scnptr : stdgo.GoInt64), (_s.sectionHeader.size : stdgo.GoInt64));
                    _s.readerAt = stdgo.Go.asInterface(_s._sr);
                    _f.sections = (_f.sections.__append__(_s));
                });
            };
            var _idxToSym:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>> = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>);
            {
                var __tmp__ = _sr.seek((_symptr : stdgo.GoInt64), (0 : stdgo.GoInt)), __3:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _f.symbols = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_nsyms : stdgo.GoInt) : Bool), _i++, {
                    var _numaux:stdgo.GoInt = (0 : stdgo.GoInt);
                    var __0:Bool = false, __1:Bool = false;
var _needAuxFcn = __1, _ok = __0;
                    var _sym = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
                    {
                        final __value__ = _f.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            var _se = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32>);
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_se)) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _numaux = (_se.nnumaux : stdgo.GoInt);
                            _sym.sectionNumber = (_se.nscnum : stdgo.GoInt);
                            _sym.storageClass = (_se.nsclass : stdgo.GoInt);
                            _sym.value = (_se.nvalue : stdgo.GoUInt64);
                            _needAuxFcn = (((_se.ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux > (1 : stdgo.GoInt) : Bool) : Bool);
                            var _zeroes = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_se.nname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                            if (_zeroes != ((0u32 : stdgo.GoUInt32))) {
                                _sym.name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_se.nname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                            } else {
                                var _offset = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_se.nname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                                {
                                    var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getString._getString(_f.stringTable, _offset);
                                    _sym.name = __tmp__._0?.__copy__();
                                    _ok = __tmp__._1;
                                };
                                if (!_ok) {
                                    @:goto "skip";
                                };
                            };
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            var _se = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64>);
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_se)) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _numaux = (_se.nnumaux : stdgo.GoInt);
                            _sym.sectionNumber = (_se.nscnum : stdgo.GoInt);
                            _sym.storageClass = (_se.nsclass : stdgo.GoInt);
                            _sym.value = _se.nvalue;
                            _needAuxFcn = (((_se.ntype & (32 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) && (_numaux > (1 : stdgo.GoInt) : Bool) : Bool);
                            {
                                var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getString._getString(_f.stringTable, _se.noffset);
                                _sym.name = __tmp__._0?.__copy__();
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                @:goto "skip";
                            };
                        };
                    };
                    if (((_sym.storageClass != ((2 : stdgo.GoInt)) && _sym.storageClass != ((111 : stdgo.GoInt)) : Bool) && (_sym.storageClass != (107 : stdgo.GoInt)) : Bool)) {
                        @:goto "skip";
                    };
                    if (((_numaux < (1 : stdgo.GoInt) : Bool) || ((_i + _numaux : stdgo.GoInt) >= (_nsyms : stdgo.GoInt) : Bool) : Bool)) {
                        @:goto "skip";
                    };
                    if ((_sym.sectionNumber > (_nscns : stdgo.GoInt) : Bool)) {
                        @:goto "skip";
                    };
                    if (_sym.sectionNumber == ((0 : stdgo.GoInt))) {
                        _sym.value = (0i64 : stdgo.GoUInt64);
                    } else {
                        _sym.value = (_sym.value - (_f.sections[(_sym.sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt)].sectionHeader.virtualAddress) : stdgo.GoUInt64);
                    };
                    _idxToSym[_i] = _sym;
                    if (_needAuxFcn) {
                        {
                            final __value__ = _f.fileHeader.targetMachine;
                            if (__value__ == ((479 : stdgo.GoUInt16))) {
                                var _aux = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32>);
                                {
                                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux)) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _sym.auxFcn.size = (_aux.xfsize : stdgo.GoInt64);
                            } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                                var _aux = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64>);
                                {
                                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux)) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _sym.auxFcn.size = (_aux.xfsize : stdgo.GoInt64);
                            };
                        };
                    };
                    if (!_needAuxFcn) {
                        {
                            var __tmp__ = _sr.seek((((_numaux - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt)), __4:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                    };
                    _i = (_i + (_numaux) : stdgo.GoInt);
                    _numaux = (0 : stdgo.GoInt);
                    {
                        final __value__ = _f.fileHeader.targetMachine;
                        if (__value__ == ((479 : stdgo.GoUInt16))) {
                            var _aux = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32>);
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux)) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _sym.auxCSect.symbolType = ((_aux.xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                            _sym.auxCSect.storageMappingClass = (_aux.xsmclas : stdgo.GoInt);
                            _sym.auxCSect.length_ = (_aux.xscnlen : stdgo.GoInt64);
                        } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                            var _aux = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64>);
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_aux)) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _sym.auxCSect.symbolType = ((_aux.xsmtyp & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                            _sym.auxCSect.storageMappingClass = (_aux.xsmclas : stdgo.GoInt);
                            _sym.auxCSect.length_ = (((_aux.xscnlenhi : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) | (_aux.xscnlenlo : stdgo.GoInt64) : stdgo.GoInt64);
                        };
                    };
                    _f.symbols = (_f.symbols.__append__(_sym));
                    @:label("skip") _i = (_i + (_numaux) : stdgo.GoInt);
                    {
                        var __tmp__ = _sr.seek(((_numaux : stdgo.GoInt64) * (18i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt)), __4:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                });
            };
            for (_sectNum => _sect in _f.sections) {
                if (((_sect.sectionHeader.type != (32u32 : stdgo.GoUInt32)) && (_sect.sectionHeader.type != (64u32 : stdgo.GoUInt32)) : Bool)) {
                    continue;
                };
                if (_sect.sectionHeader.relptr == ((0i64 : stdgo.GoUInt64))) {
                    continue;
                };
                var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>)), (_sect.sectionHeader.nreloc : stdgo.GoUInt64)) : stdgo.GoInt);
                if ((_c < (0 : stdgo.GoInt) : Bool)) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many relocs (%d) for section %d" : stdgo.GoString), stdgo.Go.toInterface(_sect.sectionHeader.nreloc), stdgo.Go.toInterface(_sectNum)) };
                };
                _sect.relocs = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>((0 : stdgo.GoInt).toBasic(), _c, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c ? (0 : stdgo.GoInt).toBasic() : _c : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc>);
                {
                    var __tmp__ = _sr.seek((_sect.sectionHeader.relptr : stdgo.GoInt64), (0 : stdgo.GoInt)), __4:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                {
                    var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    stdgo.Go.cfor((_i < _sect.sectionHeader.nreloc : Bool), _i++, {
                        var _reloc:stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc = ({} : stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc);
                        {
                            final __value__ = _f.fileHeader.targetMachine;
                            if (__value__ == ((479 : stdgo.GoUInt16))) {
                                var _rel = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32>);
                                {
                                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_rel)) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _reloc.virtualAddress = (_rel.rvaddr : stdgo.GoUInt64);
                                _reloc.symbol = (_idxToSym[(_rel.rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>));
                                _reloc.type = _rel.rtype;
                                _reloc.length_ = ((_rel.rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                                if ((_rel.rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                                    _reloc.signed = true;
                                };
                                if ((_rel.rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                                    _reloc.instructionFixed = true;
                                };
                            } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                                var _rel = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64>);
                                {
                                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_rel)) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _reloc.virtualAddress = _rel.rvaddr;
                                _reloc.symbol = (_idxToSym[(_rel.rsymndx : stdgo.GoInt)] ?? (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>));
                                _reloc.type = _rel.rtype;
                                _reloc.length_ = ((_rel.rsize & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                                if ((_rel.rsize & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                                    _reloc.signed = true;
                                };
                                if ((_rel.rsize & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                                    _reloc.instructionFixed = true;
                                };
                            };
                        };
                        _sect.relocs = (_sect.relocs.__append__(_reloc?.__copy__()));
                    });
                };
            };
            return { _0 : _f, _1 : (null : stdgo.Error) };
        });
    }
