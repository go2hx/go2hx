package stdgo._internal.debug.pe;
@:keep @:allow(stdgo._internal.debug.pe.Pe.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function cOFFSymbolReadSectionDefAux( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>, _idx:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        var _rv:stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5> = (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5>);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L194"
        if (((_idx < (0 : stdgo.GoInt) : Bool) || (_idx >= ((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L195"
            return { _0 : _rv, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid symbol index" : stdgo.GoString)) };
        };
        var _pesym = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols[(_idx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>);
        {};
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L199"
        if ((@:checkr _pesym ?? throw "null pointer dereference").storageClass != ((3 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L200"
            return { _0 : _rv, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("incorrect symbol storage class" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L202"
        if ((((@:checkr _pesym ?? throw "null pointer dereference").numberOfAuxSymbols == (0 : stdgo.GoUInt8)) || ((_idx + (1 : stdgo.GoInt) : stdgo.GoInt) >= ((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L203"
            return { _0 : _rv, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("aux symbol unavailable" : stdgo.GoString)) };
        };
        var _pesymn = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols[(_idx + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>);
        _rv = ((stdgo.Go.toInterface(_pesymn) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "numRelocs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "numLineNumbers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "checksum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "secNum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "selection", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "__9", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 3) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5>);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L208"
        return { _0 : _rv, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function importedLibraries( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L454"
        return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function importedSymbols( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L330"
        if ((@:checkr _f ?? throw "null pointer dereference").optionalHeader == null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L331"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>), _1 : false };
        }, __2 = __tmp__._0, _pe64 = __tmp__._1;
        var _dd_length:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L338"
        if (_pe64) {
            _dd_length = (@:checkr (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>) ?? throw "null pointer dereference").numberOfRvaAndSizes;
        } else {
            _dd_length = (@:checkr (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>) ?? throw "null pointer dereference").numberOfRvaAndSizes;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L346"
        if ((_dd_length < (2u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L347"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var _idd:stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory = ({} : stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L352"
        if (_pe64) {
            _idd = (@:checkr (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>) ?? throw "null pointer dereference").dataDirectory[(1 : stdgo.GoInt)];
        } else {
            _idd = (@:checkr (stdgo.Go.typeAssert(((@:checkr _f ?? throw "null pointer dereference").optionalHeader : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>) ?? throw "null pointer dereference").dataDirectory[(1 : stdgo.GoInt)];
        };
        var _ds:stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section> = (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>);
        _ds = null;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L361"
        for (__3 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L362"
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.offset == ((0u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L363"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L368"
            if ((((@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualAddress <= _idd.virtualAddress : Bool) && ((_idd.virtualAddress - (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualSize : Bool) : Bool)) {
                _ds = _s;
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L370"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L375"
        if (({
            final value = _ds;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L376"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _ds.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L380"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L381"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        _d = (_d.__slice__((_idd.virtualAddress - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
        var _ida:stdgo.Slice<stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory> = (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory>);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L389"
        while (((_d.length) >= (20 : stdgo.GoInt) : Bool)) {
            var _dt:stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory = ({} : stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory);
            _dt.originalFirstThunk = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _dt.timeDateStamp = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _dt.forwarderChain = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _dt.name = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _dt.firstThunk = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _d = (_d.__slice__((20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L397"
            if (_dt.originalFirstThunk == ((0u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L398"
                break;
            };
            _ida = (_ida.__append__(_dt?.__copy__()) : stdgo.Slice<stdgo._internal.debug.pe.Pe_importdirectory.ImportDirectory>);
        };
        var __tmp__ = _ds.data(), _names:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __4:stdgo.Error = __tmp__._1;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L410"
        for (__5 => _dt in _ida) {
            {
                var __tmp__ = stdgo._internal.debug.pe.Pe__getstring._getString(_names, ((_dt.name - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32) : stdgo.GoInt));
                _dt._dll = @:tmpset0 __tmp__._0?.__copy__();
            };
            {
                var __tmp__ = _ds.data();
                _d = @:tmpset0 __tmp__._0;
            };
            _d = (_d.__slice__((_dt.originalFirstThunk - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L415"
            while (((_d.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L416"
                if (_pe64) {
                    var _va = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_d.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    _d = (_d.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L419"
                    if (_va == ((0i64 : stdgo.GoUInt64))) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L420"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L422"
                    if (((_va & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) > (0i64 : stdgo.GoUInt64) : Bool)) {} else {
                        var __tmp__ = stdgo._internal.debug.pe.Pe__getstring._getString(_names, ((((_va : stdgo.GoUInt32) - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32) + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)), _fn:stdgo.GoString = __tmp__._0, __6:Bool = __tmp__._1;
                        _all = (_all.__append__(((_fn + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dt._dll?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    };
                } else {
                    var _va = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_d.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _d = (_d.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L431"
                    if (_va == ((0u32 : stdgo.GoUInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L432"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L434"
                    if (((_va & (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) > (0u32 : stdgo.GoUInt32) : Bool)) {} else {
                        var __tmp__ = stdgo._internal.debug.pe.Pe__getstring._getString(_names, (((_va - (@:checkr _ds ?? throw "null pointer dereference").sectionHeader.virtualAddress : stdgo.GoUInt32) + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)), _fn:stdgo.GoString = __tmp__._0, __6:Bool = __tmp__._1;
                        _all = (_all.__append__(((_fn + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dt._dll?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L445"
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dWARF( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        var _dwarfSuffix = function(_s:stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>):stdgo.GoString {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L219"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), (".debug_" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L221"
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), (".zdebug_" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L223"
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L225"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        var _sectionData = function(_s:stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var __tmp__ = _s.data(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L233"
            if (((_err != null) && ((_b.length : stdgo.GoUInt32) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L234"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L237"
            if ((((0u32 : stdgo.GoUInt32) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualSize : Bool) && ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualSize < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool) : Bool)) {
                _b = (_b.__slice__(0, (@:checkr _s ?? throw "null pointer dereference").sectionHeader.virtualSize) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L241"
            if ((((_b.length) >= (12 : stdgo.GoInt) : Bool) && (((_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ("ZLIB" : stdgo.GoString)) : Bool)) {
                var _dlen = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_b.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_dlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = stdgo._internal.compress.zlib.Zlib_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newbuffer.newBuffer((_b.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))), _r:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L245"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L246"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L248"
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _dbuf), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L249"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L251"
                {
                    var _err = (_r.close() : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L252"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                };
                _b = _dbuf;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L256"
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
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L263"
        for (__2 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L265"
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L266"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L268"
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L269"
                    continue;
                };
            };
            var __tmp__ = _sectionData(_s), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L273"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L274"
                return { _0 : null, _1 : _err };
            };
            _dat[_suffix] = _b;
        };
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf_new_.new_((_dat[("abbrev" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("info" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("line" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("ranges" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("str" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>))), _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L280"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L281"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L285"
        for (_i => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L287"
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L288"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L290"
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L292"
                    continue;
                };
            };
            var __tmp__ = _sectionData(_s), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L296"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L297"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L300"
            if (_suffix == (("types" : stdgo.GoString))) {
                _err = _d.addTypes(stdgo._internal.fmt.Fmt_sprintf.sprintf(("types-%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), _b);
            } else {
                _err = _d.addSection(((".debug_" : stdgo.GoString) + _suffix?.__copy__() : stdgo.GoString)?.__copy__(), _b);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L305"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L306"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L310"
        return { _0 : _d, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L209"
        for (__2 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L210"
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == (_name)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L211"
                return _s;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L214"
        return null;
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L65"
        if ((@:checkr _f ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _f ?? throw "null pointer dereference")._closer.close();
            (@:checkr _f ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L69"
        return _err;
    }
}
