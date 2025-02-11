package stdgo._internal.debug.pe;
@:keep @:allow(stdgo._internal.debug.pe.Pe.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function cOFFSymbolReadSectionDefAux( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>, _idx:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        var _rv:stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5> = (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5>);
        if (((_idx < (0 : stdgo.GoInt) : Bool) || (_idx >= ((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols.length) : Bool) : Bool)) {
            return { _0 : _rv, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid symbol index" : stdgo.GoString)) };
        };
        var _pesym = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols[(_idx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>);
        {};
        if ((@:checkr _pesym ?? throw "null pointer dereference").storageClass != ((3 : stdgo.GoUInt8))) {
            return { _0 : _rv, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("incorrect symbol storage class" : stdgo.GoString)) };
        };
        if ((((@:checkr _pesym ?? throw "null pointer dereference").numberOfAuxSymbols == (0 : stdgo.GoUInt8)) || ((_idx + (1 : stdgo.GoInt) : stdgo.GoInt) >= ((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols.length) : Bool) : Bool)) {
            return { _0 : _rv, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("aux symbol unavailable" : stdgo.GoString)) };
        };
        var _pesymn = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols[(_idx + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>);
        _rv = ((stdgo.Go.toInterface(_pesymn) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "numRelocs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "numLineNumbers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "checksum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "secNum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "selection", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "__9", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 3) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5>);
        return { _0 : _rv, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function importedLibraries( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function importedSymbols( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference").optionalHeader == null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>), _1 : false };
        }, __2 = __tmp__._0, _pe64 = __tmp__._1;
        var _dd_length:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        if (_pe64) {
            _dd_length = (@:checkr (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>) ?? throw "null pointer dereference").numberOfRvaAndSizes;
        } else {
            _dd_length = (@:checkr (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>) ?? throw "null pointer dereference").numberOfRvaAndSizes;
        };
        if ((_dd_length < (2u32 : stdgo.GoUInt32) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var _idd:stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory = ({} : stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory);
        if (_pe64) {
            _idd = (@:checkr (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>) ?? throw "null pointer dereference").dataDirectory[(1 : stdgo.GoInt)];
        } else {
            _idd = (@:checkr (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>) ?? throw "null pointer dereference").dataDirectory[(1 : stdgo.GoInt)];
        };
        var _ds:stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section> = (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>);
        _ds = null;
        for (__3 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.offset == ((0u32 : stdgo.GoUInt32))) {
                continue;
            };
            if ((((@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualAddress <= _idd.virtualAddress : Bool) && ((_idd.virtualAddress - (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualSize : Bool) : Bool)) {
                _ds = _s;
                break;
            };
        };
        if ((_ds == null || (_ds : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = @:check2r _ds.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        _d = (_d.__slice__((_idd.virtualAddress - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
        var _ida:stdgo.Slice<stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory> = (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory>);
        while (((_d.length) >= (20 : stdgo.GoInt) : Bool)) {
            var _dt:stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory = ({} : stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory);
            _dt.originalFirstThunk = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _dt.timeDateStamp = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _dt.forwarderChain = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _dt.name = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _dt.firstThunk = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _d = (_d.__slice__((20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (_dt.originalFirstThunk == ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            _ida = (_ida.__append__(_dt?.__copy__()));
        };
        var __tmp__ = @:check2r _ds.data(), _names:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __4:stdgo.Error = __tmp__._1;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__5 => _dt in _ida) {
            {
                var __tmp__ = stdgo._internal.debug.pe.Pe__getstring._getString(_names, ((_dt.name - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32) : stdgo.GoInt));
                _dt._dll = @:tmpset0 __tmp__._0?.__copy__();
            };
            {
                var __tmp__ = @:check2r _ds.data();
                _d = @:tmpset0 __tmp__._0;
            };
            _d = (_d.__slice__((_dt.originalFirstThunk - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
            while (((_d.length) > (0 : stdgo.GoInt) : Bool)) {
                if (_pe64) {
                    var _va = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_d.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    _d = (_d.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_va == ((0i64 : stdgo.GoUInt64))) {
                        break;
                    };
                    if (((_va & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) > (0i64 : stdgo.GoUInt64) : Bool)) {} else {
                        var __tmp__ = stdgo._internal.debug.pe.Pe__getstring._getString(_names, ((((_va : stdgo.GoUInt32) - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32) + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)), _fn:stdgo.GoString = __tmp__._0, __6:Bool = __tmp__._1;
                        _all = (_all.__append__(((_fn + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dt._dll?.__copy__() : stdgo.GoString)?.__copy__()));
                    };
                } else {
                    var _va = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _d = (_d.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_va == ((0u32 : stdgo.GoUInt32))) {
                        break;
                    };
                    if (((_va & (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) > (0u32 : stdgo.GoUInt32) : Bool)) {} else {
                        var __tmp__ = stdgo._internal.debug.pe.Pe__getstring._getString(_names, (((_va - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32) + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)), _fn:stdgo.GoString = __tmp__._0, __6:Bool = __tmp__._1;
                        _all = (_all.__append__(((_fn + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dt._dll?.__copy__() : stdgo.GoString)?.__copy__()));
                    };
                };
            };
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dWARF( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        var _dwarfSuffix = function(_s:stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>):stdgo.GoString {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), (".debug_" : stdgo.GoString))) {
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), (".zdebug_" : stdgo.GoString))) {
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        var _sectionData = function(_s:stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var __tmp__ = @:check2r _s.data(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && ((_b.length : stdgo.GoUInt32) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            if ((((0u32 : stdgo.GoUInt32) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualSize : Bool) && ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualSize < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool) : Bool)) {
                _b = (_b.__slice__(0, (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualSize) : stdgo.Slice<stdgo.GoUInt8>);
            };
            if ((((_b.length) >= (12 : stdgo.GoInt) : Bool) && (((_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ("ZLIB" : stdgo.GoString)) : Bool)) {
                var _dlen = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_b.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_dlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = stdgo._internal.compress.zlib.Zlib_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newbuffer.newBuffer((_b.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))), _r:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _dbuf), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        for (__2 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
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
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
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
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        for (__2 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == (_name)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _f ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _f ?? throw "null pointer dereference")._closer.close();
            (@:checkr _f ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        return _err;
    }
}
