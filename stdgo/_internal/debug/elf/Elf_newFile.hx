package stdgo._internal.debug.elf;
function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>; var _1 : stdgo.Error; } {
        var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _ident:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _r.readAt((_ident.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if ((((_ident[(0 : stdgo.GoInt)] != ((127 : stdgo.GoUInt8)) || _ident[(1 : stdgo.GoInt)] != ((69 : stdgo.GoUInt8)) : Bool) || _ident[(2 : stdgo.GoInt)] != ((76 : stdgo.GoUInt8)) : Bool) || (_ident[(3 : stdgo.GoInt)] != (70 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("bad magic number" : stdgo.GoString), stdgo.Go.toInterface((_ident.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_File.File)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        _f.fileHeader.class_ = (_ident[(4 : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_Class_.Class_);
        {
            final __value__ = _f.fileHeader.class_;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {} else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {} else {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("unknown ELF class" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f.fileHeader.class_))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
            };
        };
        _f.fileHeader.data = (_ident[(5 : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_Data.Data);
        {
            final __value__ = _f.fileHeader.data;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Data.Data))) {
                _f.fileHeader.byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian);
            } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Data.Data))) {
                _f.fileHeader.byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian);
            } else {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("unknown ELF data encoding" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f.fileHeader.data))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
            };
        };
        _f.fileHeader.version = (_ident[(6 : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_Version.Version);
        if (_f.fileHeader.version != ((1 : stdgo._internal.debug.elf.Elf_Version.Version))) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("unknown ELF version" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f.fileHeader.version))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        _f.fileHeader.osabi = (_ident[(7 : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_OSABI.OSABI);
        _f.fileHeader.abiversion = _ident[(8 : stdgo.GoInt)];
        var _phoff:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _phnum = __1, _phentsize = __0;
        var _shoff:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _shstrndx = __2, _shnum = __1, _shentsize = __0;
        {
            final __value__ = _f.fileHeader.class_;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                var _hdr = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Header32.Header32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Header32.Header32>);
                _sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_hdr)) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _f.fileHeader.type = (_hdr.type : stdgo._internal.debug.elf.Elf_Type_.Type_);
                _f.fileHeader.machine = (_hdr.machine : stdgo._internal.debug.elf.Elf_Machine.Machine);
                _f.fileHeader.entry = (_hdr.entry : stdgo.GoUInt64);
                {
                    var _v = (_hdr.version : stdgo._internal.debug.elf.Elf_Version.Version);
                    if (_v != (_f.fileHeader.version)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("mismatched ELF version" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
                    };
                };
                _phoff = (_hdr.phoff : stdgo.GoInt64);
                _phentsize = (_hdr.phentsize : stdgo.GoInt);
                _phnum = (_hdr.phnum : stdgo.GoInt);
                _shoff = (_hdr.shoff : stdgo.GoInt64);
                _shentsize = (_hdr.shentsize : stdgo.GoInt);
                _shnum = (_hdr.shnum : stdgo.GoInt);
                _shstrndx = (_hdr.shstrndx : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                var _hdr = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Header64.Header64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Header64.Header64>);
                _sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_hdr)) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _f.fileHeader.type = (_hdr.type : stdgo._internal.debug.elf.Elf_Type_.Type_);
                _f.fileHeader.machine = (_hdr.machine : stdgo._internal.debug.elf.Elf_Machine.Machine);
                _f.fileHeader.entry = _hdr.entry;
                {
                    var _v = (_hdr.version : stdgo._internal.debug.elf.Elf_Version.Version);
                    if (_v != (_f.fileHeader.version)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("mismatched ELF version" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
                    };
                };
                _phoff = (_hdr.phoff : stdgo.GoInt64);
                _phentsize = (_hdr.phentsize : stdgo.GoInt);
                _phnum = (_hdr.phnum : stdgo.GoInt);
                _shoff = (_hdr.shoff : stdgo.GoInt64);
                _shentsize = (_hdr.shentsize : stdgo.GoInt);
                _shnum = (_hdr.shnum : stdgo.GoInt);
                _shstrndx = (_hdr.shstrndx : stdgo.GoInt);
            };
        };
        if ((_shoff < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("invalid shoff" : stdgo.GoString), stdgo.Go.toInterface(_shoff)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        if ((_phoff < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("invalid phoff" : stdgo.GoString), stdgo.Go.toInterface(_phoff)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        if (((_shoff == (0i64 : stdgo.GoInt64)) && (_shnum != (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("invalid ELF shnum for shoff=0" : stdgo.GoString), stdgo.Go.toInterface(_shnum)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        if (((_shnum > (0 : stdgo.GoInt) : Bool) && (_shstrndx >= _shnum : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("invalid ELF shstrndx" : stdgo.GoString), stdgo.Go.toInterface(_shstrndx)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _wantShentsize = __1, _wantPhentsize = __0;
        {
            final __value__ = _f.fileHeader.class_;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                _wantPhentsize = (32 : stdgo.GoInt);
                _wantShentsize = (40 : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                _wantPhentsize = (56 : stdgo.GoInt);
                _wantShentsize = (64 : stdgo.GoInt);
            };
        };
        if (((_phnum > (0 : stdgo.GoInt) : Bool) && (_phentsize < _wantPhentsize : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("invalid ELF phentsize" : stdgo.GoString), stdgo.Go.toInterface(_phentsize)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        _f.progs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>>((_phnum : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _phnum : Bool)) {
                var _off = (_phoff + ((_i : stdgo.GoInt64) * (_phentsize : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
_sr.seek(_off, (0 : stdgo.GoInt));
var _p = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Prog.Prog)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>);
{
                    final __value__ = _f.fileHeader.class_;
                    if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                        var _ph = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Prog32.Prog32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog32.Prog32>);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_ph)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _p.progHeader = ({ type : (_ph.type : stdgo._internal.debug.elf.Elf_ProgType.ProgType), flags : (_ph.flags : stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag), off : (_ph.off : stdgo.GoUInt64), vaddr : (_ph.vaddr : stdgo.GoUInt64), paddr : (_ph.paddr : stdgo.GoUInt64), filesz : (_ph.filesz : stdgo.GoUInt64), memsz : (_ph.memsz : stdgo.GoUInt64), align : (_ph.align : stdgo.GoUInt64) } : stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader);
                    } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                        var _ph = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Prog64.Prog64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog64.Prog64>);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_ph)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _p.progHeader = ({ type : (_ph.type : stdgo._internal.debug.elf.Elf_ProgType.ProgType), flags : (_ph.flags : stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag), off : _ph.off, vaddr : _ph.vaddr, paddr : _ph.paddr, filesz : _ph.filesz, memsz : _ph.memsz, align : _ph.align } : stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader);
                    };
                };
if (((_p.progHeader.off : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError(_off, ("invalid program header offset" : stdgo.GoString), stdgo.Go.toInterface(_p.progHeader.off)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
                };
if (((_p.progHeader.filesz : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError(_off, ("invalid program header file size" : stdgo.GoString), stdgo.Go.toInterface(_p.progHeader.filesz)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
                };
_p._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (_p.progHeader.off : stdgo.GoInt64), (_p.progHeader.filesz : stdgo.GoInt64));
_p.readerAt = stdgo.Go.asInterface(_p._sr);
_f.progs[(_i : stdgo.GoInt)] = _p;
                _i++;
            };
        };
        if (((_shoff > (0i64 : stdgo.GoInt64) : Bool) && (_shnum == (0 : stdgo.GoInt)) : Bool)) {
            var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _link = __1, _typ = __0;
            _sr.seek(_shoff, (0 : stdgo.GoInt));
            {
                final __value__ = _f.fileHeader.class_;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                    var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Section32.Section32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Section32.Section32>);
                    {
                        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_sh)) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _shnum = (_sh.size : stdgo.GoInt);
                    _typ = _sh.type;
                    _link = _sh.link;
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                    var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Section64.Section64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Section64.Section64>);
                    {
                        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_sh)) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _shnum = (_sh.size : stdgo.GoInt);
                    _typ = _sh.type;
                    _link = _sh.link;
                };
            };
            if ((_typ : stdgo._internal.debug.elf.Elf_SectionType.SectionType) != ((0u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType))) {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError(_shoff, ("invalid type of the initial section" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_typ : stdgo._internal.debug.elf.Elf_SectionType.SectionType)))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
            };
            if ((_shnum < ((65280 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex) : stdgo.GoInt) : Bool)) {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError(_shoff, ("invalid ELF shnum contained in sh_size" : stdgo.GoString), stdgo.Go.toInterface(_shnum)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
            };
            if (_shstrndx == (((65535 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex) : stdgo.GoInt))) {
                _shstrndx = (_link : stdgo.GoInt);
                if ((_shstrndx < ((65280 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex) : stdgo.GoInt) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError(_shoff, ("invalid ELF shstrndx contained in sh_link" : stdgo.GoString), stdgo.Go.toInterface(_shstrndx)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
                };
            };
        };
        if (((_shnum > (0 : stdgo.GoInt) : Bool) && (_shentsize < _wantShentsize : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("invalid ELF shentsize" : stdgo.GoString), stdgo.Go.toInterface(_shentsize)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>))), (_shnum : stdgo.GoUInt64)) : stdgo.GoInt);
        if ((_c < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((0i64 : stdgo.GoInt64), ("too many sections" : stdgo.GoString), stdgo.Go.toInterface(_shnum)) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        _f.sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>>((0 : stdgo.GoInt).toBasic(), _c) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>>);
        var _names = (new stdgo.Slice<stdgo.GoUInt32>((0 : stdgo.GoInt).toBasic(), _c).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _shnum : Bool)) {
                var _off = (_shoff + ((_i : stdgo.GoInt64) * (_shentsize : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
_sr.seek(_off, (0 : stdgo.GoInt));
var _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Section.Section)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>);
{
                    final __value__ = _f.fileHeader.class_;
                    if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                        var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Section32.Section32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Section32.Section32>);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_sh)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _names = (_names.__append__(_sh.name));
                        _s.sectionHeader = ({ type : (_sh.type : stdgo._internal.debug.elf.Elf_SectionType.SectionType), flags : (_sh.flags : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag), addr : (_sh.addr : stdgo.GoUInt64), offset : (_sh.off : stdgo.GoUInt64), fileSize : (_sh.size : stdgo.GoUInt64), link : _sh.link, info : _sh.info, addralign : (_sh.addralign : stdgo.GoUInt64), entsize : (_sh.entsize : stdgo.GoUInt64) } : stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader);
                    } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                        var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Section64.Section64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Section64.Section64>);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_sh)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _names = (_names.__append__(_sh.name));
                        _s.sectionHeader = ({ type : (_sh.type : stdgo._internal.debug.elf.Elf_SectionType.SectionType), flags : (_sh.flags : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag), offset : _sh.off, fileSize : _sh.size, addr : _sh.addr, link : _sh.link, info : _sh.info, addralign : _sh.addralign, entsize : _sh.entsize } : stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader);
                    };
                };
if (((_s.sectionHeader.offset : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError(_off, ("invalid section offset" : stdgo.GoString), stdgo.Go.toInterface((_s.sectionHeader.offset : stdgo.GoInt64))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
                };
if (((_s.sectionHeader.fileSize : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError(_off, ("invalid section size" : stdgo.GoString), stdgo.Go.toInterface((_s.sectionHeader.fileSize : stdgo.GoInt64))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
                };
_s._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (_s.sectionHeader.offset : stdgo.GoInt64), (_s.sectionHeader.fileSize : stdgo.GoInt64));
if ((_s.sectionHeader.flags & (2048u32 : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag) : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag) == ((0u32 : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag))) {
                    _s.readerAt = stdgo.Go.asInterface(_s._sr);
                    _s.sectionHeader.size = _s.sectionHeader.fileSize;
                } else {
                    {
                        final __value__ = _f.fileHeader.class_;
                        if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                            var _ch = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Chdr32.Chdr32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Chdr32.Chdr32>);
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_s._sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_ch)) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _s._compressionType = (_ch.type : stdgo._internal.debug.elf.Elf_CompressionType.CompressionType);
                            _s.sectionHeader.size = (_ch.size : stdgo.GoUInt64);
                            _s.sectionHeader.addralign = (_ch.addralign : stdgo.GoUInt64);
                            _s._compressionOffset = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(_ch)) : stdgo.GoInt64);
                        } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                            var _ch = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_Chdr64.Chdr64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Chdr64.Chdr64>);
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_s._sr), _f.fileHeader.byteOrder, stdgo.Go.toInterface(_ch)) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _s._compressionType = (_ch.type : stdgo._internal.debug.elf.Elf_CompressionType.CompressionType);
                            _s.sectionHeader.size = _ch.size;
                            _s.sectionHeader.addralign = _ch.addralign;
                            _s._compressionOffset = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(_ch)) : stdgo.GoInt64);
                        };
                    };
                };
_f.sections = (_f.sections.__append__(_s));
                _i++;
            };
        };
        if ((_f.sections.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _f, _1 : (null : stdgo.Error) };
        };
        if (_shstrndx == ((0 : stdgo.GoInt))) {
            return { _0 : _f, _1 : (null : stdgo.Error) };
        };
        var _shstr = _f.sections[(_shstrndx : stdgo.GoInt)];
        if (_shstr.sectionHeader.type != ((3u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType))) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((_shoff + ((_shstrndx * _shentsize : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64), ("invalid ELF section name string table type" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_shstr.sectionHeader.type))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
        };
        var __tmp__ = _shstr.data(), _shstrtab:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        for (_i => _s in _f.sections) {
            var _ok:Bool = false;
            {
                var __tmp__ = stdgo._internal.debug.elf.Elf__getString._getString(_shstrtab, (_names[(_i : stdgo.GoInt)] : stdgo.GoInt));
                _s.sectionHeader.name = __tmp__._0?.__copy__();
                _ok = __tmp__._1;
            };
            if (!_ok) {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((_shoff + ((_i * _shentsize : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64), ("bad section name index" : stdgo.GoString), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)])) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>)) };
            };
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
