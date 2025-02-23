package stdgo._internal.debug.macho;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>; var _1 : stdgo.Error; } {
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_file.File)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        var _sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _ident:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        {
            var __tmp__ = _r.readAt((_ident.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _be = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_ident.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _le = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_ident.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        {
            final __value__ = (-17958194u32 : stdgo.GoUInt32);
            if (__value__ == ((_be & (((1u32 : stdgo.GoUInt32) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32))) {
                (@:checkr _f ?? throw "null pointer dereference").byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.magic = _be;
            } else if (__value__ == ((_le & (((1u32 : stdgo.GoUInt32) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32))) {
                (@:checkr _f ?? throw "null pointer dereference").byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.magic = _le;
            } else {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError((0i64 : stdgo.GoInt64), ("invalid magic number" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
            };
        };
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").fileHeader) : stdgo.Ref<stdgo._internal.debug.macho.Macho_fileheader.FileHeader>)))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _offset = ((28i64 : stdgo.GoInt64) : stdgo.GoInt64);
        if ((@:checkr _f ?? throw "null pointer dereference").fileHeader.magic == ((-17958193u32 : stdgo.GoUInt32))) {
            _offset = (32i64 : stdgo.GoInt64);
        };
        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(_r, ((@:checkr _f ?? throw "null pointer dereference").fileHeader.cmdsz : stdgo.GoUInt64), _offset), _dat:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Ref<stdgo._internal.debug.macho.Macho_load.Load>)), ((@:checkr _f ?? throw "null pointer dereference").fileHeader.ncmd : stdgo.GoUInt64)) : stdgo.GoInt);
        if ((_c < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("too many load commands" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
        };
        (@:checkr _f ?? throw "null pointer dereference").loads = (new stdgo.Slice<stdgo._internal.debug.macho.Macho_load.Load>((0 : stdgo.GoInt).toBasic(), _c) : stdgo.Slice<stdgo._internal.debug.macho.Macho_load.Load>);
        var _bo = ((@:checkr _f ?? throw "null pointer dereference").byteOrder : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
        {
            var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_i < (@:checkr _f ?? throw "null pointer dereference").fileHeader.ncmd : Bool)) {
                if (((_dat.length) < (8 : stdgo.GoInt) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("command block too small" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                };
var __0 = (_bo.uint32((_dat.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd), __1 = (_bo.uint32((_dat.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _siz = __1, _cmd = __0;
if (((_siz < (8u32 : stdgo.GoUInt32) : Bool) || (_siz > (_dat.length : stdgo.GoUInt32) : Bool) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("invalid command block size" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                };
var _cmddat:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
{
                    final __tmp__0 = (_dat.__slice__((0 : stdgo.GoInt), _siz) : stdgo.Slice<stdgo.GoUInt8>);
                    final __tmp__1 = (_dat.__slice__(_siz) : stdgo.Slice<stdgo.GoUInt8>);
                    _cmddat = __tmp__0;
                    _dat = __tmp__1;
                };
_offset = (_offset + ((_siz : stdgo.GoInt64)) : stdgo.GoInt64);
var _s:stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>);
{
                    final __value__ = _cmd;
                    if (__value__ == ((-2147483620u32 : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd))) {
                        var _hdr:stdgo._internal.debug.macho.Macho_rpathcmd.RpathCmd = ({} : stdgo._internal.debug.macho.Macho_rpathcmd.RpathCmd);
                        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_rpathcmd.RpathCmd>)))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        var _l = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_rpath.Rpath)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_rpath.Rpath>);
                        if ((_hdr.path >= (_cmddat.length : stdgo.GoUInt32) : Bool)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("invalid path in rpath command" : stdgo.GoString), stdgo.Go.toInterface(_hdr.path)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                        };
                        (@:checkr _l ?? throw "null pointer dereference").path = stdgo._internal.debug.macho.Macho__cstring._cstring((_cmddat.__slice__(_hdr.path) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
                        (@:checkr _l ?? throw "null pointer dereference").loadBytes = (_cmddat : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes);
                        (@:checkr _f ?? throw "null pointer dereference").loads = ((@:checkr _f ?? throw "null pointer dereference").loads.__append__(stdgo.Go.asInterface(_l)));
                    } else if (__value__ == ((12u32 : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd))) {
                        var _hdr:stdgo._internal.debug.macho.Macho_dylibcmd.DylibCmd = ({} : stdgo._internal.debug.macho.Macho_dylibcmd.DylibCmd);
                        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_dylibcmd.DylibCmd>)))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        var _l = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_dylib.Dylib)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_dylib.Dylib>);
                        if ((_hdr.name >= (_cmddat.length : stdgo.GoUInt32) : Bool)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("invalid name in dynamic library command" : stdgo.GoString), stdgo.Go.toInterface(_hdr.name)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                        };
                        (@:checkr _l ?? throw "null pointer dereference").name = stdgo._internal.debug.macho.Macho__cstring._cstring((_cmddat.__slice__(_hdr.name) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
                        (@:checkr _l ?? throw "null pointer dereference").time = _hdr.time;
                        (@:checkr _l ?? throw "null pointer dereference").currentVersion = _hdr.currentVersion;
                        (@:checkr _l ?? throw "null pointer dereference").compatVersion = _hdr.compatVersion;
                        (@:checkr _l ?? throw "null pointer dereference").loadBytes = (_cmddat : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes);
                        (@:checkr _f ?? throw "null pointer dereference").loads = ((@:checkr _f ?? throw "null pointer dereference").loads.__append__(stdgo.Go.asInterface(_l)));
                    } else if (__value__ == ((2u32 : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd))) {
                        var _hdr:stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd = ({} : stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd);
                        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>)))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(_r, (_hdr.strsize : stdgo.GoUInt64), (_hdr.stroff : stdgo.GoInt64)), _strtab:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        var _symsz:stdgo.GoInt = (0 : stdgo.GoInt);
                        if ((@:checkr _f ?? throw "null pointer dereference").fileHeader.magic == ((-17958193u32 : stdgo.GoUInt32))) {
                            _symsz = (16 : stdgo.GoInt);
                        } else {
                            _symsz = (12 : stdgo.GoInt);
                        };
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(_r, ((_hdr.nsyms : stdgo.GoUInt64) * (_symsz : stdgo.GoUInt64) : stdgo.GoUInt64), (_hdr.symoff : stdgo.GoInt64)), _symdat:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        var __tmp__ = @:check2r _f._parseSymtab(_symdat, _strtab, _cmddat, (stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>), _offset), _st:stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        (@:checkr _f ?? throw "null pointer dereference").loads = ((@:checkr _f ?? throw "null pointer dereference").loads.__append__(stdgo.Go.asInterface(_st)));
                        (@:checkr _f ?? throw "null pointer dereference").symtab = _st;
                    } else if (__value__ == ((11u32 : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd))) {
                        var _hdr:stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd = ({} : stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd);
                        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_hdr) : stdgo.Ref<stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd>)))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        if (((@:checkr _f ?? throw "null pointer dereference").symtab == null || ((@:checkr _f ?? throw "null pointer dereference").symtab : Dynamic).__nil__)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("dynamic symbol table seen before any ordinary symbol table" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                        } else if ((_hdr.iundefsym > ((@:checkr (@:checkr _f ?? throw "null pointer dereference").symtab ?? throw "null pointer dereference").syms.length : stdgo.GoUInt32) : Bool)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("undefined symbols index in dynamic symbol table command is greater than symbol table length (%d > %d)" : stdgo.GoString), stdgo.Go.toInterface(_hdr.iundefsym), stdgo.Go.toInterface(((@:checkr (@:checkr _f ?? throw "null pointer dereference").symtab ?? throw "null pointer dereference").syms.length))).__copy__(), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                        } else if (((_hdr.iundefsym + _hdr.nundefsym : stdgo.GoUInt32) > ((@:checkr (@:checkr _f ?? throw "null pointer dereference").symtab ?? throw "null pointer dereference").syms.length : stdgo.GoUInt32) : Bool)) {
                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("number of undefined symbols after index in dynamic symbol table command is greater than symbol table length (%d > %d)" : stdgo.GoString), stdgo.Go.toInterface((_hdr.iundefsym + _hdr.nundefsym : stdgo.GoUInt32)), stdgo.Go.toInterface(((@:checkr (@:checkr _f ?? throw "null pointer dereference").symtab ?? throw "null pointer dereference").syms.length))).__copy__(), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                        };
                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(_r, ((_hdr.nindirectsyms : stdgo.GoUInt64) * (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (_hdr.indirectsymoff : stdgo.GoInt64)), _dat:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        var _x = (new stdgo.Slice<stdgo.GoUInt32>((_hdr.nindirectsyms : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_dat)), _bo, stdgo.Go.toInterface(_x)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        var _st = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab>);
                        (@:checkr _st ?? throw "null pointer dereference").loadBytes = (_cmddat : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes);
                        (@:checkr _st ?? throw "null pointer dereference").dysymtabCmd = _hdr.__copy__();
                        (@:checkr _st ?? throw "null pointer dereference").indirectSyms = _x;
                        (@:checkr _f ?? throw "null pointer dereference").loads = ((@:checkr _f ?? throw "null pointer dereference").loads.__append__(stdgo.Go.asInterface(_st)));
                        (@:checkr _f ?? throw "null pointer dereference").dysymtab = _st;
                    } else if (__value__ == ((1u32 : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd))) {
                        var _seg32:stdgo._internal.debug.macho.Macho_segment32.Segment32 = ({} : stdgo._internal.debug.macho.Macho_segment32.Segment32);
                        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_seg32) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment32.Segment32>)))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_segment.Segment)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>);
                        (@:checkr _s ?? throw "null pointer dereference").loadBytes = _cmddat;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.cmd = _cmd;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.len = _siz;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_seg32.name.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.addr = (_seg32.addr : stdgo.GoUInt64);
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.memsz = (_seg32.memsz : stdgo.GoUInt64);
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.offset = (_seg32.offset : stdgo.GoUInt64);
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.filesz = (_seg32.filesz : stdgo.GoUInt64);
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.maxprot = _seg32.maxprot;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.prot = _seg32.prot;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.nsect = _seg32.nsect;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.flag = _seg32.flag;
                        (@:checkr _f ?? throw "null pointer dereference").loads = ((@:checkr _f ?? throw "null pointer dereference").loads.__append__(stdgo.Go.asInterface(_s)));
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < ((@:checkr _s ?? throw "null pointer dereference").segmentHeader.nsect : stdgo.GoInt) : Bool)) {
                                var _sh32:stdgo._internal.debug.macho.Macho_section32.Section32 = ({} : stdgo._internal.debug.macho.Macho_section32.Section32);
{
                                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sh32) : stdgo.Ref<stdgo._internal.debug.macho.Macho_section32.Section32>)))) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_section.Section)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>);
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_sh32.name.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.seg = stdgo._internal.debug.macho.Macho__cstring._cstring((_sh32.seg.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.addr = (_sh32.addr : stdgo.GoUInt64);
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.size = (_sh32.size : stdgo.GoUInt64);
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.offset = _sh32.offset;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.align = _sh32.align;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.reloff = _sh32.reloff;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.nreloc = _sh32.nreloc;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.flags = _sh32.flags;
{
                                    var _err = (@:check2r _f._pushSection(_sh, _r) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _i++;
                            };
                        };
                    } else if (__value__ == ((25u32 : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd))) {
                        var _seg64:stdgo._internal.debug.macho.Macho_segment64.Segment64 = ({} : stdgo._internal.debug.macho.Macho_segment64.Segment64);
                        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_cmddat);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_seg64) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment64.Segment64>)))) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_segment.Segment)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>);
                        (@:checkr _s ?? throw "null pointer dereference").loadBytes = _cmddat;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.cmd = _cmd;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.len = _siz;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_seg64.name.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.addr = _seg64.addr;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.memsz = _seg64.memsz;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.offset = _seg64.offset;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.filesz = _seg64.filesz;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.maxprot = _seg64.maxprot;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.prot = _seg64.prot;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.nsect = _seg64.nsect;
                        (@:checkr _s ?? throw "null pointer dereference").segmentHeader.flag = _seg64.flag;
                        (@:checkr _f ?? throw "null pointer dereference").loads = ((@:checkr _f ?? throw "null pointer dereference").loads.__append__(stdgo.Go.asInterface(_s)));
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < ((@:checkr _s ?? throw "null pointer dereference").segmentHeader.nsect : stdgo.GoInt) : Bool)) {
                                var _sh64:stdgo._internal.debug.macho.Macho_section64.Section64 = ({} : stdgo._internal.debug.macho.Macho_section64.Section64);
{
                                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sh64) : stdgo.Ref<stdgo._internal.debug.macho.Macho_section64.Section64>)))) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_section.Section)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>);
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.name = stdgo._internal.debug.macho.Macho__cstring._cstring((_sh64.name.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.seg = stdgo._internal.debug.macho.Macho__cstring._cstring((_sh64.seg.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.addr = _sh64.addr;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.size = _sh64.size;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.offset = _sh64.offset;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.align = _sh64.align;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.reloff = _sh64.reloff;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.nreloc = _sh64.nreloc;
(@:checkr _sh ?? throw "null pointer dereference").sectionHeader.flags = _sh64.flags;
{
                                    var _err = (@:check2r _f._pushSection(_sh, _r) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                                _i++;
                            };
                        };
                    } else {
                        (@:checkr _f ?? throw "null pointer dereference").loads = ((@:checkr _f ?? throw "null pointer dereference").loads.__append__(stdgo.Go.asInterface((_cmddat : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes))));
                    };
                };
if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
                    if ((((@:checkr _s ?? throw "null pointer dereference").segmentHeader.offset : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("invalid section offset" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").segmentHeader.offset)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                    };
                    if ((((@:checkr _s ?? throw "null pointer dereference").segmentHeader.filesz : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("invalid section file size" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").segmentHeader.filesz)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                    };
                    (@:checkr _s ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, ((@:checkr _s ?? throw "null pointer dereference").segmentHeader.offset : stdgo.GoInt64), ((@:checkr _s ?? throw "null pointer dereference").segmentHeader.filesz : stdgo.GoInt64));
                    (@:checkr _s ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr);
                };
                _i++;
            };
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
