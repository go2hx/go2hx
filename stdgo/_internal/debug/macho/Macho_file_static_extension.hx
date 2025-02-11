package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function importedLibraries( _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = _f;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__4 => _l in (@:checkr _f ?? throw "null pointer dereference").loads) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_l) : stdgo.Ref<stdgo._internal.debug.macho.Macho_dylib.Dylib>)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_dylib.Dylib>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_dylib.Dylib>), _1 : false };
                }, _lib = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _all = (_all.__append__((@:checkr _lib ?? throw "null pointer dereference").name?.__copy__()));
                };
            };
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function importedSymbols( _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = _f;
        if ((((@:checkr _f ?? throw "null pointer dereference").dysymtab == null || ((@:checkr _f ?? throw "null pointer dereference").dysymtab : Dynamic).__nil__) || ((@:checkr _f ?? throw "null pointer dereference").symtab == null || ((@:checkr _f ?? throw "null pointer dereference").symtab : Dynamic).__nil__) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError((0i64 : stdgo.GoInt64), ("missing symbol table" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
        };
        var _st = (@:checkr _f ?? throw "null pointer dereference").symtab;
        var _dt = (@:checkr _f ?? throw "null pointer dereference").dysymtab;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__4 => _s in ((@:checkr _st ?? throw "null pointer dereference").syms.__slice__((@:checkr _dt ?? throw "null pointer dereference").dysymtabCmd.iundefsym, ((@:checkr _dt ?? throw "null pointer dereference").dysymtabCmd.iundefsym + (@:checkr _dt ?? throw "null pointer dereference").dysymtabCmd.nundefsym : stdgo.GoUInt32)) : stdgo.Slice<stdgo._internal.debug.macho.Macho_symbol.Symbol>)) {
            _all = (_all.__append__(_s.name?.__copy__()));
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dWARF( _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = _f;
        var _dwarfSuffix = function(_s:stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>):stdgo.GoString {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), ("__debug_" : stdgo.GoString))) {
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), ("__zdebug_" : stdgo.GoString))) {
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        var _sectionData = function(_s:stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var __tmp__ = @:check2r _s.data(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && ((_b.length : stdgo.GoUInt64) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            if ((((_b.length) >= (12 : stdgo.GoInt) : Bool) && (((_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ("ZLIB" : stdgo.GoString)) : Bool)) {
                var _dlen = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_b.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_dlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = stdgo._internal.compress.zlib.Zlib_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newbuffer.newBuffer((_b.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))), _r:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _dbuf), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                };
                {
                    var _err = (_r.close() : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                };
                _b = _dbuf;
            };
            return { _0 : _b, _1 : (null : stdgo.Error) };
        };
        var _dat = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoUInt8>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoUInt8>);
            x.set(("abbrev" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
x.set(("info" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
x.set(("str" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
x.set(("line" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
x.set(("ranges" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>>);
        for (__4 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __5:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    continue;
                };
            };
            var __tmp__ = _sectionData(_s), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _dat[_suffix] = _b;
        };
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf_new_.new_((_dat[("abbrev" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("info" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("line" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("ranges" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("str" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>))), _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        for (_i => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __5:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    continue;
                };
            };
            var __tmp__ = _sectionData(_s), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (_suffix == (("types" : stdgo.GoString))) {
                _err = @:check2r _d.addTypes(stdgo._internal.fmt.Fmt_sprintf.sprintf(("types-%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), _b);
            } else {
                _err = @:check2r _d.addSection(((".debug_" : stdgo.GoString) + _suffix?.__copy__() : stdgo.GoString)?.__copy__(), _b);
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _d, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = _f;
        for (__4 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == (_name)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function segment( _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = _f;
        for (__4 => _l in (@:checkr _f ?? throw "null pointer dereference").loads) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_l) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>), _1 : false };
                }, _s = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((@:checkr _s ?? throw "null pointer dereference").segmentHeader.name == _name) : Bool)) {
                    return _s;
                };
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function _pushSection( _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>, _sh:stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>, _r:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = _f;
        (@:checkr _f ?? throw "null pointer dereference").sections = ((@:checkr _f ?? throw "null pointer dereference").sections.__append__(_sh));
        (@:checkr _sh ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, ((@:checkr _sh ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoInt64), ((@:checkr _sh ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
        (@:checkr _sh ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _sh ?? throw "null pointer dereference")._sr);
        if (((@:checkr _sh ?? throw "null pointer dereference").sectionHeader.nreloc > (0u32 : stdgo.GoUInt32) : Bool)) {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(_r, (((@:checkr _sh ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoUInt64) * (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64), ((@:checkr _sh ?? throw "null pointer dereference").sectionHeader.reloff : stdgo.GoInt64)), _reldat:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_reldat);
            var _bo = ((@:checkr _f ?? throw "null pointer dereference").byteOrder : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
            (@:checkr _sh ?? throw "null pointer dereference").relocs = (new stdgo.Slice<stdgo._internal.debug.macho.Macho_reloc.Reloc>(((@:checkr _sh ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _sh ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _sh ?? throw "null pointer dereference").sectionHeader.nreloc : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.macho.Macho_reloc.Reloc)]) : stdgo.Slice<stdgo._internal.debug.macho.Macho_reloc.Reloc>);
            for (_i => _ in (@:checkr _sh ?? throw "null pointer dereference").relocs) {
                var _rel = (stdgo.Go.setRef((@:checkr _sh ?? throw "null pointer dereference").relocs[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.macho.Macho_reloc.Reloc>);
                var _ri:stdgo._internal.debug.macho.Macho_t_relocinfo.T_relocInfo = ({} : stdgo._internal.debug.macho.Macho_t_relocinfo.T_relocInfo);
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ri) : stdgo.Ref<stdgo._internal.debug.macho.Macho_t_relocinfo.T_relocInfo>)))) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                if ((_ri.addr & (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                    (@:checkr _rel ?? throw "null pointer dereference").addr = (_ri.addr & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _rel ?? throw "null pointer dereference").type = ((((_ri.addr >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
                    (@:checkr _rel ?? throw "null pointer dereference").len = ((((_ri.addr >> (28i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
                    (@:checkr _rel ?? throw "null pointer dereference").pcrel = (_ri.addr & (1073741824u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
                    (@:checkr _rel ?? throw "null pointer dereference").value = _ri.symnum;
                    (@:checkr _rel ?? throw "null pointer dereference").scattered = true;
                } else {
                    {
                        final __value__ = _bo;
                        if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian)))) {
                            (@:checkr _rel ?? throw "null pointer dereference").addr = _ri.addr;
                            (@:checkr _rel ?? throw "null pointer dereference").value = (_ri.symnum & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                            (@:checkr _rel ?? throw "null pointer dereference").pcrel = (_ri.symnum & (16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
                            (@:checkr _rel ?? throw "null pointer dereference").len = ((((_ri.symnum >> (25i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
                            (@:checkr _rel ?? throw "null pointer dereference").extern_ = (_ri.symnum & (134217728u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
                            (@:checkr _rel ?? throw "null pointer dereference").type = ((((_ri.symnum >> (28i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian)))) {
                            (@:checkr _rel ?? throw "null pointer dereference").addr = _ri.addr;
                            (@:checkr _rel ?? throw "null pointer dereference").value = (_ri.symnum >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                            (@:checkr _rel ?? throw "null pointer dereference").pcrel = (_ri.symnum & (128u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
                            (@:checkr _rel ?? throw "null pointer dereference").len = ((((_ri.symnum >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
                            (@:checkr _rel ?? throw "null pointer dereference").extern_ = (_ri.symnum & (16u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
                            (@:checkr _rel ?? throw "null pointer dereference").type = ((_ri.symnum & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        } else {
                            throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                        };
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _parseSymtab( _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>, _symdat:stdgo.Slice<stdgo.GoUInt8>, _strtab:stdgo.Slice<stdgo.GoUInt8>, _cmddat:stdgo.Slice<stdgo.GoUInt8>, _hdr:stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>, _offset:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = _f;
        var _bo = ((@:checkr _f ?? throw "null pointer dereference").byteOrder : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
        var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.debug.macho.Macho_symbol.Symbol>))), ((@:checkr _hdr ?? throw "null pointer dereference").nsyms : stdgo.GoUInt64)) : stdgo.GoInt);
        if ((_c < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("too many symbols" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
        };
        var _symtab = (new stdgo.Slice<stdgo._internal.debug.macho.Macho_symbol.Symbol>((0 : stdgo.GoInt).toBasic(), _c, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c ? (0 : stdgo.GoInt).toBasic() : _c : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.macho.Macho_symbol.Symbol)]) : stdgo.Slice<stdgo._internal.debug.macho.Macho_symbol.Symbol>);
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_symdat);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _hdr ?? throw "null pointer dereference").nsyms : stdgo.GoInt) : Bool)) {
                var _n:stdgo._internal.debug.macho.Macho_nlist64.Nlist64 = ({} : stdgo._internal.debug.macho.Macho_nlist64.Nlist64);
if ((@:checkr _f ?? throw "null pointer dereference").fileHeader.magic == ((-17958193u32 : stdgo.GoUInt32))) {
                    {
                        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_n) : stdgo.Ref<stdgo._internal.debug.macho.Macho_nlist64.Nlist64>)))) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                } else {
                    var _n32:stdgo._internal.debug.macho.Macho_nlist32.Nlist32 = ({} : stdgo._internal.debug.macho.Macho_nlist32.Nlist32);
                    {
                        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _bo, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_n32) : stdgo.Ref<stdgo._internal.debug.macho.Macho_nlist32.Nlist32>)))) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _n.name = _n32.name;
                    _n.type = _n32.type;
                    _n.sect = _n32.sect;
                    _n.desc = _n32.desc;
                    _n.value = (_n32.value : stdgo.GoUInt64);
                };
if ((_n.name >= (_strtab.length : stdgo.GoUInt32) : Bool)) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("invalid name in symbol table" : stdgo.GoString), stdgo.Go.toInterface(_n.name)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                };
var _name = (stdgo._internal.debug.macho.Macho__cstring._cstring((_strtab.__slice__(_n.name) : stdgo.Slice<stdgo.GoUInt8>)).__copy__() : stdgo.GoString);
if ((stdgo._internal.strings.Strings_contains.contains(_name.__copy__(), ("." : stdgo.GoString)) && (_name[(0 : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) {
                    _name = (_name.__slice__((1 : stdgo.GoInt)) : stdgo.GoString).__copy__();
                };
_symtab = (_symtab.__append__(({ name : _name.__copy__(), type : _n.type, sect : _n.sect, desc : _n.desc, value : _n.value } : stdgo._internal.debug.macho.Macho_symbol.Symbol)));
                _i++;
            };
        };
        var _st = (stdgo.Go.setRef(({} : stdgo._internal.debug.macho.Macho_symtab.Symtab)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>);
        (@:checkr _st ?? throw "null pointer dereference").loadBytes = (_cmddat : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes);
        (@:checkr _st ?? throw "null pointer dereference").syms = _symtab;
        return { _0 : _st, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _f ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _f ?? throw "null pointer dereference")._closer.close();
            (@:checkr _f ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        return _err;
    }
}
