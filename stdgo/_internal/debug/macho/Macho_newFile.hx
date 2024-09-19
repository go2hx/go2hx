package stdgo._internal.debug.macho;
function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>; var _1 : stdgo.Error; } {
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_File.File)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _ident:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _r.readAt((_ident.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _be = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_ident.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _le = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_ident.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        {
            final __value__ = (-17958194u32 : stdgo.GoUInt32);
            if (__value__ == ((_be & (((1u32 : stdgo.GoUInt32) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt32)) : stdgo.GoUInt32))) {
                _f.byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian);
                _f.fileHeader.magic = _be;
            } else if (__value__ == ((_le & (((1u32 : stdgo.GoUInt32) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt32)) : stdgo.GoUInt32))) {
                _f.byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian);
                _f.fileHeader.magic = _le;
            } else {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError((0i64 : stdgo.GoInt64), ("invalid magic number" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
            };
        };
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), _f.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_f.fileHeader) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FileHeader.FileHeader>))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _offset = ((28i64 : stdgo.GoInt64) : stdgo.GoInt64);
        if (_f.fileHeader.magic == ((-17958193u32 : stdgo.GoUInt32))) {
            _offset = (32i64 : stdgo.GoInt64);
        };
        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(_r, (_f.fileHeader.cmdsz : stdgo.GoUInt64), _offset), _dat:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo._internal.debug.macho.Macho_Load.Load>)), (_f.fileHeader.ncmd : stdgo.GoUInt64)) : stdgo.GoInt);
        if ((_c < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("too many load commands" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
        };
        _f.loads = (new stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load>((0 : stdgo.GoInt).toBasic(), _c) : stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load>);
        var _bo = (_f.byteOrder : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder);
        {
            var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            stdgo.Go.cfor((_i < _f.fileHeader.ncmd : Bool), _i++, {
                if (((_dat.length) < (8 : stdgo.GoInt) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("command block too small" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                };
                var __0 = (_bo.uint32((_dat.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd), __1 = (_bo.uint32((_dat.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _siz = __1, _cmd = __0;
                if (((_siz < (8u32 : stdgo.GoUInt32) : Bool) || (_siz > (_dat.length : stdgo.GoUInt32) : Bool) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("invalid command block size" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                };
                var _cmddat:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    final __tmp__0 = (_dat.__slice__((0 : stdgo.GoInt), _siz) : stdgo.Slice<stdgo.GoUInt8>);
                    final __tmp__1 = (_dat.__slice__(_siz) : stdgo.Slice<stdgo.GoUInt8>);
                    _cmddat = __tmp__0;
                    _dat = __tmp__1;
                };
                _offset = (_offset + ((_siz : stdgo.GoInt64)) : stdgo.GoInt64);
                var _s:stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment>);
                {
                    final __value__ = _cmd;
                    if (__value__ == ((-2147483620u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))) {
                        var _hdr:stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd = ({} : stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd);
                        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface((stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd>))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        var _l = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_Rpath.Rpath)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Rpath.Rpath>);
                        if ((_hdr.path >= (_cmddat.length : stdgo.GoUInt32) : Bool)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("invalid path in rpath command" : stdgo.GoString), stdgo.Go.toInterface(_hdr.path)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                        };
                        _l.path = stdgo._internal.debug.macho.Macho__cstring._cstring((_cmddat.__slice__(_hdr.path) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                        _l.loadBytes = (_cmddat : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes);
                        _f.loads = (_f.loads.__append__(stdgo.Go.asInterface(_l)));
                    } else if (__value__ == ((12u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))) {
                        var _hdr:stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd = ({} : stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd);
                        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface((stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd>))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        var _l = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_Dylib.Dylib)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Dylib.Dylib>);
                        if ((_hdr.name >= (_cmddat.length : stdgo.GoUInt32) : Bool)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("invalid name in dynamic library command" : stdgo.GoString), stdgo.Go.toInterface(_hdr.name)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                        };
                        _l.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_cmddat.__slice__(_hdr.name) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                        _l.time = _hdr.time;
                        _l.currentVersion = _hdr.currentVersion;
                        _l.compatVersion = _hdr.compatVersion;
                        _l.loadBytes = (_cmddat : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes);
                        _f.loads = (_f.loads.__append__(stdgo.Go.asInterface(_l)));
                    } else if (__value__ == ((2u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))) {
                        var _hdr:stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd = ({} : stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd);
                        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface((stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(_r, (_hdr.strsize : stdgo.GoUInt64), (_hdr.stroff : stdgo.GoInt64)), _strtab:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        var _symsz:stdgo.GoInt = (0 : stdgo.GoInt);
                        if (_f.fileHeader.magic == ((-17958193u32 : stdgo.GoUInt32))) {
                            _symsz = (16 : stdgo.GoInt);
                        } else {
                            _symsz = (12 : stdgo.GoInt);
                        };
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(_r, ((_hdr.nsyms : stdgo.GoUInt64) * (_symsz : stdgo.GoUInt64) : stdgo.GoUInt64), (_hdr.symoff : stdgo.GoInt64)), _symdat:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        var __tmp__ = _f._parseSymtab(_symdat, _strtab, _cmddat, (stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>), _offset), _st:stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        _f.loads = (_f.loads.__append__(stdgo.Go.asInterface(_st)));
                        _f.symtab = _st;
                    } else if (__value__ == ((11u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))) {
                        var _hdr:stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd = ({} : stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd);
                        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface((stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd>))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        if (_f.symtab == null || (_f.symtab : Dynamic).__nil__) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("dynamic symbol table seen before any ordinary symbol table" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                        } else if ((_hdr.iundefsym > (_f.symtab.syms.length : stdgo.GoUInt32) : Bool)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("undefined symbols index in dynamic symbol table command is greater than symbol table length (%d > %d)" : stdgo.GoString), stdgo.Go.toInterface(_hdr.iundefsym), stdgo.Go.toInterface((_f.symtab.syms.length)))?.__copy__(), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                        } else if (((_hdr.iundefsym + _hdr.nundefsym : stdgo.GoUInt32) > (_f.symtab.syms.length : stdgo.GoUInt32) : Bool)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("number of undefined symbols after index in dynamic symbol table command is greater than symbol table length (%d > %d)" : stdgo.GoString), stdgo.Go.toInterface((_hdr.iundefsym + _hdr.nundefsym : stdgo.GoUInt32)), stdgo.Go.toInterface((_f.symtab.syms.length)))?.__copy__(), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                        };
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(_r, ((_hdr.nindirectsyms : stdgo.GoUInt64) * (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (_hdr.indirectsymoff : stdgo.GoInt64)), _dat:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        var _x = (new stdgo.Slice<stdgo.GoUInt32>((_hdr.nindirectsyms : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_dat)), _bo, stdgo.Go.toInterface(_x)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        var _st = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab>);
                        _st.loadBytes = (_cmddat : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes);
                        _st.dysymtabCmd = _hdr?.__copy__();
                        _st.indirectSyms = _x;
                        _f.loads = (_f.loads.__append__(stdgo.Go.asInterface(_st)));
                        _f.dysymtab = _st;
                    } else if (__value__ == ((1u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))) {
                        var _seg32:stdgo._internal.debug.macho.Macho_Segment32.Segment32 = ({} : stdgo._internal.debug.macho.Macho_Segment32.Segment32);
                        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface((stdgo.Go.setRef(_seg32) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment32.Segment32>))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_Segment.Segment)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment>);
                        _s.loadBytes = _cmddat;
                        _s.segmentHeader.cmd = _cmd;
                        _s.segmentHeader.len = _siz;
                        _s.segmentHeader.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_seg32.name.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                        _s.segmentHeader.addr = (_seg32.addr : stdgo.GoUInt64);
                        _s.segmentHeader.memsz = (_seg32.memsz : stdgo.GoUInt64);
                        _s.segmentHeader.offset = (_seg32.offset : stdgo.GoUInt64);
                        _s.segmentHeader.filesz = (_seg32.filesz : stdgo.GoUInt64);
                        _s.segmentHeader.maxprot = _seg32.maxprot;
                        _s.segmentHeader.prot = _seg32.prot;
                        _s.segmentHeader.nsect = _seg32.nsect;
                        _s.segmentHeader.flag = _seg32.flag;
                        _f.loads = (_f.loads.__append__(stdgo.Go.asInterface(_s)));
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_s.segmentHeader.nsect : stdgo.GoInt) : Bool), _i++, {
                                var _sh32:stdgo._internal.debug.macho.Macho_Section32.Section32 = ({} : stdgo._internal.debug.macho.Macho_Section32.Section32);
                                {
                                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface((stdgo.Go.setRef(_sh32) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Section32.Section32>))) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_Section.Section)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>);
                                _sh.sectionHeader.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_sh32.name.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                                _sh.sectionHeader.seg = stdgo._internal.debug.macho.Macho__cstring._cstring((_sh32.seg.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                                _sh.sectionHeader.addr = (_sh32.addr : stdgo.GoUInt64);
                                _sh.sectionHeader.size = (_sh32.size : stdgo.GoUInt64);
                                _sh.sectionHeader.offset = _sh32.offset;
                                _sh.sectionHeader.align = _sh32.align;
                                _sh.sectionHeader.reloff = _sh32.reloff;
                                _sh.sectionHeader.nreloc = _sh32.nreloc;
                                _sh.sectionHeader.flags = _sh32.flags;
                                {
                                    var _err = (_f._pushSection(_sh, _r) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                            });
                        };
                    } else if (__value__ == ((25u32 : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd))) {
                        var _seg64:stdgo._internal.debug.macho.Macho_Segment64.Segment64 = ({} : stdgo._internal.debug.macho.Macho_Segment64.Segment64);
                        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface((stdgo.Go.setRef(_seg64) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment64.Segment64>))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_Segment.Segment)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment>);
                        _s.loadBytes = _cmddat;
                        _s.segmentHeader.cmd = _cmd;
                        _s.segmentHeader.len = _siz;
                        _s.segmentHeader.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_seg64.name.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                        _s.segmentHeader.addr = _seg64.addr;
                        _s.segmentHeader.memsz = _seg64.memsz;
                        _s.segmentHeader.offset = _seg64.offset;
                        _s.segmentHeader.filesz = _seg64.filesz;
                        _s.segmentHeader.maxprot = _seg64.maxprot;
                        _s.segmentHeader.prot = _seg64.prot;
                        _s.segmentHeader.nsect = _seg64.nsect;
                        _s.segmentHeader.flag = _seg64.flag;
                        _f.loads = (_f.loads.__append__(stdgo.Go.asInterface(_s)));
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_s.segmentHeader.nsect : stdgo.GoInt) : Bool), _i++, {
                                var _sh64:stdgo._internal.debug.macho.Macho_Section64.Section64 = ({} : stdgo._internal.debug.macho.Macho_Section64.Section64);
                                {
                                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface((stdgo.Go.setRef(_sh64) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Section64.Section64>))) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_Section.Section)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>);
                                _sh.sectionHeader.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_sh64.name.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                                _sh.sectionHeader.seg = stdgo._internal.debug.macho.Macho__cstring._cstring((_sh64.seg.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                                _sh.sectionHeader.addr = _sh64.addr;
                                _sh.sectionHeader.size = _sh64.size;
                                _sh.sectionHeader.offset = _sh64.offset;
                                _sh.sectionHeader.align = _sh64.align;
                                _sh.sectionHeader.reloff = _sh64.reloff;
                                _sh.sectionHeader.nreloc = _sh64.nreloc;
                                _sh.sectionHeader.flags = _sh64.flags;
                                {
                                    var _err = (_f._pushSection(_sh, _r) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                            });
                        };
                    } else {
                        _f.loads = (_f.loads.__append__(stdgo.Go.asInterface((_cmddat : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes))));
                    };
                };
                if (_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) {
                    if (((_s.segmentHeader.offset : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("invalid section offset" : stdgo.GoString), stdgo.Go.toInterface(_s.segmentHeader.offset)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                    };
                    if (((_s.segmentHeader.filesz : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("invalid section file size" : stdgo.GoString), stdgo.Go.toInterface(_s.segmentHeader.filesz)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                    };
                    _s._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (_s.segmentHeader.offset : stdgo.GoInt64), (_s.segmentHeader.filesz : stdgo.GoInt64));
                    _s.readerAt = stdgo.Go.asInterface(_s._sr);
                };
            });
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
