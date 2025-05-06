package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Data_asInterface) class Data_static_extension {
    @:keep
    @:tdfield
    static public function _offsetToUnit( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _next = (stdgo._internal.sort.Sort_search.search(((@:checkr _d ?? throw "null pointer dereference")._unit.length), function(_i:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L127"
            return ((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]._off > _off : Bool);
        }) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L129"
        if (_next == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L130"
            return (-1 : stdgo.GoInt);
        };
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_next - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L133"
        if ((((@:checkr _u ?? throw "null pointer dereference")._off <= _off : Bool) && (_off < ((@:checkr _u ?? throw "null pointer dereference")._off + ((@:checkr _u ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L134"
            return (_next - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L136"
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _parseUnits( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>):{ var _0 : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _nunit = (0 : stdgo.GoInt);
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._info)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L44"
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _b._unitLength(), _len:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = __tmp__._0, __3:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L46"
            if (_len != (((_len : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L47"
                _b._error(("unit length overflow" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L48"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L50"
            _b._skip((_len : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L51"
            if ((_len > (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L52"
                _nunit++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L55"
        if (_b._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L56"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>), _1 : _b._err };
        };
        _b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._info)?.__copy__();
        var _units = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>((_nunit : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_nunit : stdgo.GoInt).toBasic() > 0 ? (_nunit : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L62"
        for (_i => _ in _units) {
            var _u = (stdgo.Go.setRef(_units[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
            (@:checkr _u ?? throw "null pointer dereference")._base = _b._off;
            var _n:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L66"
            if (_b._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L67"
                return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>), _1 : _b._err };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L69"
            while (_n == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
                {
                    var __tmp__ = _b._unitLength();
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _u ?? throw "null pointer dereference")._is64 = @:tmpset0 __tmp__._1;
                };
            };
            var _dataOff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            var _vers = (_b._uint16() : stdgo.GoUInt16);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L74"
            if (((_vers < (2 : stdgo.GoUInt16) : Bool) || (_vers > (5 : stdgo.GoUInt16) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L75"
                _b._error((("unsupported DWARF version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_vers : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L76"
                break;
            };
            (@:checkr _u ?? throw "null pointer dereference")._vers = (_vers : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L79"
            if ((_vers >= (5 : stdgo.GoUInt16) : Bool)) {
                (@:checkr _u ?? throw "null pointer dereference")._utype = _b._uint8();
                (@:checkr _u ?? throw "null pointer dereference")._asize = (_b._uint8() : stdgo.GoInt);
            };
            var _abbrevOff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L84"
            if ((@:checkr _u ?? throw "null pointer dereference")._is64) {
                _abbrevOff = _b._uint64();
            } else {
                _abbrevOff = (_b._uint32() : stdgo.GoUInt64);
            };
            var __tmp__ = _d._parseAbbrev(_abbrevOff, (@:checkr _u ?? throw "null pointer dereference")._vers), _atable:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L90"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L91"
                if (_b._err == null) {
                    _b._err = _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L94"
                break;
            };
            (@:checkr _u ?? throw "null pointer dereference")._atable = _atable;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L97"
            if ((_vers < (5 : stdgo.GoUInt16) : Bool)) {
                (@:checkr _u ?? throw "null pointer dereference")._asize = (_b._uint8() : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L101"
            {
                final __value__ = (@:checkr _u ?? throw "null pointer dereference")._utype;
                if (__value__ == ((4 : stdgo.GoUInt8)) || __value__ == ((5 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L103"
                    _b._uint64();
                } else if (__value__ == ((2 : stdgo.GoUInt8)) || __value__ == ((6 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L105"
                    _b._uint64();
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L106"
                    if ((@:checkr _u ?? throw "null pointer dereference")._is64) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L107"
                        _b._uint64();
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L109"
                        _b._uint32();
                    };
                };
            };
            (@:checkr _u ?? throw "null pointer dereference")._off = _b._off;
            (@:checkr _u ?? throw "null pointer dereference")._data = _b._bytes(((_n - ((_b._off - _dataOff : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L116"
        if (_b._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L117"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>), _1 : _b._err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/unit.go#L119"
        return { _0 : _units, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _sigToType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _sig:stdgo.GoUInt64):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _tu = ((@:checkr _d ?? throw "null pointer dereference")._typeSigs[_sig] ?? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L90"
        if (({
            final value = _tu;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L91"
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no type unit with signature %v" : stdgo.GoString), stdgo.Go.toInterface(_sig)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L93"
        if ((@:checkr _tu ?? throw "null pointer dereference")._cache != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L94"
            return { _0 : (@:checkr _tu ?? throw "null pointer dereference")._cache, _1 : (null : stdgo.Error) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_tu), (@:checkr _tu ?? throw "null pointer dereference")._name?.__copy__(), (@:checkr _tu ?? throw "null pointer dereference")._unit._off, (@:checkr _tu ?? throw "null pointer dereference")._unit._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        var _r = (stdgo.Go.setRef(({ _d : _d, _tu : _tu, _b : _b?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader>);
        var __tmp__ = _d._readType((@:checkr _tu ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.asInterface(_r), (@:checkr _tu ?? throw "null pointer dereference")._toff, (({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>) : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>), null), _t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L100"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L101"
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : _err };
        };
        (@:checkr _tu ?? throw "null pointer dereference")._cache = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L105"
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _parseTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), _name?.__copy__(), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _types)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L28"
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _base = (_b._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            var __tmp__ = _b._unitLength(), _n:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L31"
            if (_n != (((_n : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L32"
                _b._error(("type unit length overflow" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L33"
                return _b._err;
            };
            var _hdroff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            var _vers = (_b._uint16() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L37"
            if (_vers != ((4 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L38"
                _b._error((("unsupported DWARF version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_vers)?.__copy__() : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L39"
                return _b._err;
            };
            var _ao:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L42"
            if (!_dwarf64) {
                _ao = (_b._uint32() : stdgo.GoUInt64);
            } else {
                _ao = _b._uint64();
            };
            var __tmp__ = _d._parseAbbrev(_ao, _vers), _atable:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L48"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L49"
                return _err;
            };
            var _asize = (_b._uint8() : stdgo.GoUInt8);
            var _sig = (_b._uint64() : stdgo.GoUInt64);
            var _toff:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L55"
            if (!_dwarf64) {
                _toff = _b._uint32();
            } else {
                var _to64 = (_b._uint64() : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L59"
                if (_to64 != (((_to64 : stdgo.GoUInt32) : stdgo.GoUInt64))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L60"
                    _b._error(("type unit type offset overflow" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L61"
                    return _b._err;
                };
                _toff = (_to64 : stdgo.GoUInt32);
            };
            var _boff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            (@:checkr _d ?? throw "null pointer dereference")._typeSigs[_sig] = (stdgo.Go.setRef(({ _unit : ({ _base : _base, _off : _boff, _data : _b._bytes(((_n - ((_b._off - _hdroff : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo.GoInt)), _atable : _atable, _asize : (_asize : stdgo.GoInt), _vers : _vers, _is64 : _dwarf64 } : stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit), _toff : (_toff : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _name : _name?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L80"
            if (_b._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L81"
                return _b._err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L84"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _name:stdgo.GoString, _r:stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, _typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>, _fixups:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer>):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _haveDataBitOffset_31:Bool = false;
            var _t_9:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _b_58:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_32:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType>);
            var _name_25:stdgo.GoString = ("" : stdgo.GoString);
            var _enc_26:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _loc_39:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_61:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
            var _t_46:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType>);
            var _kid_36:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _err_12:stdgo.Error = (null : stdgo.Error);
            var _nextDepth_16:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_55:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
            var _t_52:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType>);
            var _f_48:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>);
            var _haveDataBitOffset_42:Bool = false;
            var _kid_21:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _t_56:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType>);
            var _n_49:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_60:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
            var _typ_15:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _lastFieldByteOffset_35:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _lastFieldBitSize_34:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _lastFieldType_33:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
            var _i_24:stdgo.GoInt = (0 : stdgo.GoInt);
            var _addressSize_13:stdgo.GoInt = (0 : stdgo.GoInt);
            var _val_50:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
            var _b_43:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _haveBitOffset_41:Bool = false;
            var _loc_38:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _next_17:() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = null;
            var _e_11:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _ok_10:Bool = false;
            var _kid_47:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _byteSize_28:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _ok_27:Bool = false;
            var _typeOf_18:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> -> stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = null;
            var _fixer_14:stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer = ({} : stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer);
            var _t_45:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType>);
            var _tkid_54:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _t_51:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
            var _dims_20:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
            var _ok_44:Bool = false;
            var _t_19:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>);
            var _count_22:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _b_40:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            var _f_37:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>);
            var _t_57:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType>);
            var _kid_53:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _haveBitOffset_30:Bool = false;
            var _t_29:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType>);
            var _ok_23:Bool = false;
            var _ok_59:Bool = false;
            var _gotoNext = 0i64;
            _gotoNext == ((0i64 : stdgo.GoInt));
            //"file://#L0"
            while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
                //"file://#L0"
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i64)) {
                        _loc_38;
                        _gotoNext = 3687047i64;
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L408"
                        {
                            {
                                var __tmp__ = (_typeCache != null && _typeCache.__exists__(_off) ? { _0 : _typeCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : false });
                                _t_9 = @:tmpset0 __tmp__._0;
                                _ok_10 = @:tmpset0 __tmp__._1;
                            };
                            if (_ok_10) {
                                _gotoNext = 3679709i64;
                            } else {
                                _gotoNext = 3679731i64;
                            };
                        };
                    } else if (__value__ == (3679709i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L409"
                        return { _0 : _t_9, _1 : (null : stdgo.Error) };
                        _gotoNext = 3679731i64;
                    } else if (__value__ == (3679731i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L411"
                        _r.seek(_off);
                        {
                            var __tmp__ = _r.next();
                            _e_11 = @:tmpset0 __tmp__._0;
                            _err_12 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L413"
                        if (_err_12 != null) {
                            _gotoNext = 3679778i64;
                        } else {
                            _gotoNext = 3679802i64;
                        };
                    } else if (__value__ == (3679778i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L414"
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : _err_12 };
                        _gotoNext = 3679802i64;
                    } else if (__value__ == (3679802i64)) {
                        _addressSize_13 = _r.addressSize();
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L417"
                        if ((({
                            final value = _e_11;
                            (value == null || (value : Dynamic).__nil__);
                        }) || ((@:checkr _e_11 ?? throw "null pointer dereference").offset != _off) : Bool)) {
                            _gotoNext = 3679865i64;
                        } else {
                            _gotoNext = 3680218i64;
                        };
                    } else if (__value__ == (3679865i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L418"
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), _off, ("no type at offset" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
                        _gotoNext = 3680218i64;
                    } else if (__value__ == (3680218i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L426"
                        if (({
                            final value = _fixups;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            _gotoNext = 3680235i64;
                        } else {
                            _gotoNext = 3680463i64;
                        };
                    } else if (__value__ == (3680235i64)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L429"
                                    _fixer_14._apply();
                                };
                                a();
                            }) });
                        };
                        _fixups = (stdgo.Go.setRef(_fixer_14) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer>);
                        _gotoNext = 3680463i64;
                    } else if (__value__ == (3680463i64)) {
                        _nextDepth_16 = (0 : stdgo.GoInt);
                        _next_17 = function():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> {
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L443"
                            if (!(@:checkr _e_11 ?? throw "null pointer dereference").children) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L444"
                                return null;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L451"
                            while (true) {
                                var __tmp__ = _r.next(), _kid:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L453"
                                if (_err1 != null) {
                                    _err_12 = _err1;
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L455"
                                    return null;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L457"
                                if (({
                                    final value = _kid;
                                    (value == null || (value : Dynamic).__nil__);
                                })) {
                                    _err_12 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), _r._offset(), ("unexpected end of DWARF entries" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L459"
                                    return null;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L461"
                                if ((@:checkr _kid ?? throw "null pointer dereference").tag == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L462"
                                    if ((_nextDepth_16 > (0 : stdgo.GoInt) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L463"
                                        _nextDepth_16--;
                                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L464"
                                        continue;
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L466"
                                    return null;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L468"
                                if ((@:checkr _kid ?? throw "null pointer dereference").children) {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L469"
                                    _nextDepth_16++;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L471"
                                if ((_nextDepth_16 > (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L472"
                                    continue;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L474"
                                return _kid;
                            };
                        };
                        _typeOf_18 = function(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):stdgo._internal.debug.dwarf.Dwarf_type_.Type_ {
                            var _tval = (_e.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.AnyInterface);
                            var _t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L483"
                            {
                                final __type__ = _tval;
                                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
                                    var _toff:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : __type__.__underlying__().value);
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L485"
                                    {
                                        {
                                            var __tmp__ = _d._readType(_name?.__copy__(), _r._clone(), _toff, _typeCache, _fixups);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_12 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_12 != null) {
                                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L486"
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                                    var _toff:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L489"
                                    {
                                        {
                                            var __tmp__ = _d._sigToType(_toff);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_12 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_12 != null) {
                                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L490"
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
                                        };
                                    };
                                } else {
                                    var _toff:stdgo.AnyInterface = __type__?.__underlying__();
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L494"
                                    return stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType>));
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L496"
                            return _t;
                        };
                        _gotoNext = 3681744i64;
                    } else if (__value__ == (3681744i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L499"
                        {
                            final __value__ = (@:checkr _e_11 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3681760i64;
                            } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3683178i64;
                            } else if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3685226i64;
                            } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3688124i64;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3688519i64;
                            } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3689310i64;
                            } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3689631i64;
                            } else if (__value__ == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3690458i64;
                            } else if (__value__ == ((59u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3690712i64;
                            } else {
                                _gotoNext = 3690913i64;
                            };
                        };
                    } else if (__value__ == (3681760i64)) {
                        _t_19 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>);
                        _typ_15 = stdgo.Go.asInterface(_t_19);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_19);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L512"
                        {
                            (@:checkr _t_19 ?? throw "null pointer dereference").type = _typeOf_18(_e_11);
                            if (_err_12 != null) {
                                _gotoNext = 3682193i64;
                            } else {
                                _gotoNext = 3682215i64;
                            };
                        };
                    } else if (__value__ == (3682193i64)) {
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3682215i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((46u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_19 ?? throw "null pointer dereference").strideBitSize = @:tmpset0 __tmp__._0;
                        };
                        _kid_21 = _next_17();
                        _gotoNext = 3682316i64;
                    } else if (__value__ == (3682316i64)) {
                        //"file://#L0"
                        if (({
                            final value = _kid_21;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _gotoNext = 3682360i64;
                        } else {
                            _gotoNext = 3682977i64;
                        };
                    } else if (__value__ == (3682347i64)) {
                        _kid_21 = _next_17();
                        _gotoNext = 3682316i64;
                    } else if (__value__ == (3682360i64)) {
                        _gotoNext = 3682458i64;
                    } else if (__value__ == (3682458i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L522"
                        {
                            final __value__ = (@:checkr _kid_21 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3682478i64;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3682837i64;
                            } else {
                                _gotoNext = 3682347i64;
                            };
                        };
                    } else if (__value__ == (3682478i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_21.val((55u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_22 = @:tmpset0 __tmp__._0;
                            _ok_23 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L525"
                        if (!_ok_23) {
                            _gotoNext = 3682555i64;
                        } else {
                            _gotoNext = 3682807i64;
                        };
                    } else if (__value__ == (3682555i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_21.val((47u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_22 = @:tmpset0 __tmp__._0;
                            _ok_23 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L528"
                        if (_ok_23) {
                            _gotoNext = 3682671i64;
                        } else if ((_dims_20.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3682757i64;
                        } else {
                            _gotoNext = 3682807i64;
                        };
                    } else if (__value__ == (3682671i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L529"
                        _count_22++;
                        _gotoNext = 3682807i64;
                    } else if (__value__ == (3682757i64)) {
                        _count_22 = (-1i64 : stdgo.GoInt64);
                        _gotoNext = 3682807i64;
                    } else if (__value__ == (3682807i64)) {
                        _dims_20 = (_dims_20.__append__(_count_22) : stdgo.Slice<stdgo.GoInt64>);
                        _gotoNext = 3682347i64;
                    } else if (__value__ == (3682837i64)) {
                        _err_12 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _kid_21 ?? throw "null pointer dereference").offset, ("cannot handle enumeration type as array bound" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3682977i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L540"
                        if ((_dims_20.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3682995i64;
                        } else {
                            _gotoNext = 3683061i64;
                        };
                    } else if (__value__ == (3682995i64)) {
                        _dims_20 = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
                        _gotoNext = 3683061i64;
                    } else if (__value__ == (3683061i64)) {
                        (@:checkr _t_19 ?? throw "null pointer dereference").count = _dims_20[(0 : stdgo.GoInt)];
                        _i_24 = ((_dims_20.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _gotoNext = 3683081i64;
                    } else if (__value__ == (3683081i64)) {
                        //"file://#L0"
                        if ((_i_24 >= (1 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3683117i64;
                        } else {
                            _gotoNext = 3691189i64;
                        };
                    } else if (__value__ == (3683117i64)) {
                        (@:checkr _t_19 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : (@:checkr _t_19 ?? throw "null pointer dereference").type, count : _dims_20[(_i_24 : stdgo.GoInt)] } : stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>));
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L546"
                        _i_24--;
                        _gotoNext = 3683081i64;
                    } else if (__value__ == (3683178i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _name_25 = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((62u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _enc_26 = @:tmpset0 __tmp__._0;
                            _ok_27 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L564"
                        if (!_ok_27) {
                            _gotoNext = 3683828i64;
                        } else {
                            _gotoNext = 3683929i64;
                        };
                    } else if (__value__ == (3683828i64)) {
                        _err_12 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_25?.__copy__(), (@:checkr _e_11 ?? throw "null pointer dereference").offset, (("missing encoding attribute for " : stdgo.GoString) + _name_25?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3683929i64)) {
                        _gotoNext = 3683929i64;
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L568"
                        {
                            final __value__ = _enc_26;
                            if (__value__ == ((1i64 : stdgo.GoInt64))) {
                                _gotoNext = 3684048i64;
                            } else if (__value__ == ((2i64 : stdgo.GoInt64))) {
                                _gotoNext = 3684090i64;
                            } else if (__value__ == ((3i64 : stdgo.GoInt64))) {
                                _gotoNext = 3684132i64;
                            } else if (__value__ == ((4i64 : stdgo.GoInt64))) {
                                _gotoNext = 3684545i64;
                            } else if (__value__ == ((5i64 : stdgo.GoInt64))) {
                                _gotoNext = 3684586i64;
                            } else if (__value__ == ((7i64 : stdgo.GoInt64))) {
                                _gotoNext = 3684626i64;
                            } else if (__value__ == ((6i64 : stdgo.GoInt64))) {
                                _gotoNext = 3684669i64;
                            } else if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                _gotoNext = 3684714i64;
                            } else {
                                _gotoNext = 3683944i64;
                            };
                        };
                    } else if (__value__ == (3683944i64)) {
                        _err_12 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_25?.__copy__(), (@:checkr _e_11 ?? throw "null pointer dereference").offset, ("unrecognized encoding attribute value" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3684048i64)) {
                        _typ_15 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_addrtype.AddrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_addrtype.AddrType>));
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684090i64)) {
                        _typ_15 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_booltype.BoolType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_booltype.BoolType>));
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684132i64)) {
                        _typ_15 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_complextype.ComplexType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_complextype.ComplexType>));
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L579"
                        if (_name_25 == (("complex" : stdgo.GoString))) {
                            _gotoNext = 3684204i64;
                        } else {
                            _gotoNext = 3684766i64;
                        };
                    } else if (__value__ == (3684204i64)) {
                        _gotoNext = 3684388i64;
                    } else if (__value__ == (3684388i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L583"
                        {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_e_11.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                } catch(_) {
                                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                                };
                                _byteSize_28 = @:tmpset0 __tmp__._0;
                            };
                            {
                                final __value__ = _byteSize_28;
                                if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3684454i64;
                                } else if (__value__ == ((16i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3684494i64;
                                } else {
                                    _gotoNext = 3684766i64;
                                };
                            };
                        };
                    } else if (__value__ == (3684454i64)) {
                        _name_25 = ("complex float" : stdgo.GoString);
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684494i64)) {
                        _name_25 = ("complex double" : stdgo.GoString);
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684545i64)) {
                        _typ_15 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_floattype.FloatType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_floattype.FloatType>));
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684586i64)) {
                        _typ_15 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_inttype.IntType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_inttype.IntType>));
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684626i64)) {
                        _typ_15 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_uinttype.UintType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_uinttype.UintType>));
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684669i64)) {
                        _typ_15 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_chartype.CharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_chartype.CharType>));
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684714i64)) {
                        _typ_15 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_uchartype.UcharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_uchartype.UcharType>));
                        _gotoNext = 3684766i64;
                    } else if (__value__ == (3684766i64)) {
                        _typeCache[_off] = _typ_15;
                        _t_29 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ_15) : stdgo._internal.debug.dwarf.Dwarf_t__interface_0.T__interface_0)) : stdgo._internal.debug.dwarf.Dwarf_t__interface_0.T__interface_0).basic();
                        (@:checkr _t_29 ?? throw "null pointer dereference").commonType.name = _name_25?.__copy__();
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_29 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_30 = false;
                        _haveDataBitOffset_31 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_29 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_30 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_29 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_31 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L611"
                        if ((_haveBitOffset_30 && _haveDataBitOffset_31 : Bool)) {
                            _gotoNext = 3685132i64;
                        } else {
                            _gotoNext = 3691189i64;
                        };
                    } else if (__value__ == (3685132i64)) {
                        _err_12 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_25?.__copy__(), (@:checkr _e_11 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3685226i64)) {
                        _t_32 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_structtype.StructType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType>);
                        _typ_15 = stdgo.Go.asInterface(_t_32);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_32);
                        _gotoNext = 3686033i64;
                    } else if (__value__ == (3686033i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L635"
                        {
                            final __value__ = (@:checkr _e_11 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3686050i64;
                            } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3686091i64;
                            } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3686134i64;
                            } else {
                                _gotoNext = 3686179i64;
                            };
                        };
                    } else if (__value__ == (3686050i64)) {
                        (@:checkr _t_32 ?? throw "null pointer dereference").kind = ("class" : stdgo.GoString);
                        _gotoNext = 3686179i64;
                    } else if (__value__ == (3686091i64)) {
                        (@:checkr _t_32 ?? throw "null pointer dereference").kind = ("struct" : stdgo.GoString);
                        _gotoNext = 3686179i64;
                    } else if (__value__ == (3686134i64)) {
                        (@:checkr _t_32 ?? throw "null pointer dereference").kind = ("union" : stdgo.GoString);
                        _gotoNext = 3686179i64;
                    } else if (__value__ == (3686179i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_32 ?? throw "null pointer dereference").structName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_32 ?? throw "null pointer dereference").incomplete = _e_11.val((60u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) != null;
                        (@:checkr _t_32 ?? throw "null pointer dereference").field = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>);
                        _kid_36 = _next_17();
                        _gotoNext = 3686397i64;
                    } else if (__value__ == (3686397i64)) {
                        //"file://#L0"
                        if (({
                            final value = _kid_36;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _gotoNext = 3686441i64;
                        } else {
                            _gotoNext = 3687912i64;
                        };
                    } else if (__value__ == (3686441i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L650"
                        if ((@:checkr _kid_36 ?? throw "null pointer dereference").tag != ((13u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                            _gotoNext = 3686470i64;
                        } else {
                            _gotoNext = 3686493i64;
                        };
                    } else if (__value__ == (3686470i64)) {
                        _kid_36 = _next_17();
                        _gotoNext = 3686397i64;
                    } else if (__value__ == (3686493i64)) {
                        _f_37 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_structfield.StructField)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L654"
                        {
                            (@:checkr _f_37 ?? throw "null pointer dereference").type = _typeOf_18(_kid_36);
                            if (_err_12 != null) {
                                _gotoNext = 3686554i64;
                            } else {
                                _gotoNext = 3686579i64;
                            };
                        };
                    } else if (__value__ == (3686554i64)) {
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3686579i64)) {
                        0i64;
                        _gotoNext = 3686579i64;
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L657"
                        {
                            final __type__ = _kid_36.val((56u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr));
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                                var _loc:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                                _loc_38 = _loc;
                                _gotoNext = 3686632i64;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                                var _loc:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                                _loc_39 = _loc;
                                _gotoNext = 3687003i64;
                            } else {
                                var _loc:stdgo.AnyInterface = __type__?.__underlying__();
                                _gotoNext = 3687047i64;
                            };
                        };
                    } else if (__value__ == (3686632i64)) {
                        _b_40 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), ("location" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _loc_38)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L662"
                        if (_b_40._uint8() != ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 3686818i64;
                        } else {
                            _gotoNext = 3686908i64;
                        };
                    } else if (__value__ == (3686818i64)) {
                        _err_12 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _kid_36 ?? throw "null pointer dereference").offset, ("unexpected opcode" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3686908i64)) {
                        (@:checkr _f_37 ?? throw "null pointer dereference").byteOffset = (_b_40._uint() : stdgo.GoInt64);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L667"
                        if (_b_40._err != null) {
                            _gotoNext = 3686959i64;
                        } else {
                            _gotoNext = 0i64;
                        };
                    } else if (__value__ == (3686959i64)) {
                        _err_12 = _b_40._err;
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3687003i64)) {
                        (@:checkr _f_37 ?? throw "null pointer dereference").byteOffset = _loc_39;
                        _loc_39;
                        _gotoNext = 3687047i64;
                    } else if (__value__ == (3687047i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_36.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_37 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_36.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_37 ?? throw "null pointer dereference").byteSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_41 = false;
                        _haveDataBitOffset_42 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_36.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_37 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_41 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_36.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_37 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_42 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L681"
                        if ((_haveBitOffset_41 && _haveDataBitOffset_42 : Bool)) {
                            _gotoNext = 3687370i64;
                        } else {
                            _gotoNext = 3687468i64;
                        };
                    } else if (__value__ == (3687370i64)) {
                        _err_12 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _e_11 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3687468i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_36.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_37 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        (@:checkr _t_32 ?? throw "null pointer dereference").field = ((@:checkr _t_32 ?? throw "null pointer dereference").field.__append__(_f_37) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L688"
                        if (((_lastFieldBitSize_34 == ((0i64 : stdgo.GoInt64)) && _lastFieldByteOffset_35 == ((@:checkr _f_37 ?? throw "null pointer dereference").byteOffset) : Bool) && ((@:checkr _t_32 ?? throw "null pointer dereference").kind != ("union" : stdgo.GoString)) : Bool)) {
                            _gotoNext = 3687633i64;
                        } else {
                            _gotoNext = 3687812i64;
                        };
                    } else if (__value__ == (3687633i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L691"
                        _fixups._recordArrayType(_lastFieldType_33);
                        _gotoNext = 3687812i64;
                    } else if (__value__ == (3687812i64)) {
                        _lastFieldType_33 = (stdgo.Go.setRef((@:checkr _f_37 ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
                        _lastFieldByteOffset_35 = (@:checkr _f_37 ?? throw "null pointer dereference").byteOffset;
                        _lastFieldBitSize_34 = (@:checkr _f_37 ?? throw "null pointer dereference").bitSize;
                        _kid_36 = _next_17();
                        _gotoNext = 3686397i64;
                    } else if (__value__ == (3687912i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L697"
                        if ((@:checkr _t_32 ?? throw "null pointer dereference").kind != (("union" : stdgo.GoString))) {
                            _gotoNext = 3687933i64;
                        } else {
                            _gotoNext = 3691189i64;
                        };
                    } else if (__value__ == (3687933i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_43 = @:tmpset0 __tmp__._0;
                            _ok_44 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L699"
                        if ((_ok_44 && (_b_43 == _lastFieldByteOffset_35) : Bool)) {
                            _gotoNext = 3688012i64;
                        } else {
                            _gotoNext = 3691189i64;
                        };
                    } else if (__value__ == (3688012i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L701"
                        _fixups._recordArrayType(_lastFieldType_33);
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3688124i64)) {
                        _t_45 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType>);
                        _typ_15 = stdgo.Go.asInterface(_t_45);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_45);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L712"
                        {
                            (@:checkr _t_45 ?? throw "null pointer dereference").type = _typeOf_18(_e_11);
                            if (_err_12 != null) {
                                _gotoNext = 3688341i64;
                            } else {
                                _gotoNext = 3688363i64;
                            };
                        };
                    } else if (__value__ == (3688341i64)) {
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3688363i64)) {
                        _gotoNext = 3688363i64;
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L715"
                        {
                            final __value__ = (@:checkr _e_11 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3688380i64;
                            } else if (__value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3688421i64;
                            } else if (__value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3688468i64;
                            } else {
                                _gotoNext = 3691189i64;
                            };
                        };
                    } else if (__value__ == (3688380i64)) {
                        (@:checkr _t_45 ?? throw "null pointer dereference").qual = ("const" : stdgo.GoString);
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3688421i64)) {
                        (@:checkr _t_45 ?? throw "null pointer dereference").qual = ("restrict" : stdgo.GoString);
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3688468i64)) {
                        (@:checkr _t_45 ?? throw "null pointer dereference").qual = ("volatile" : stdgo.GoString);
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3688519i64)) {
                        _t_46 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType>);
                        _typ_15 = stdgo.Go.asInterface(_t_46);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_46);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_46 ?? throw "null pointer dereference").enumName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_46 ?? throw "null pointer dereference").val = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        _kid_47 = _next_17();
                        _gotoNext = 3688933i64;
                    } else if (__value__ == (3688933i64)) {
                        //"file://#L0"
                        if (({
                            final value = _kid_47;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _gotoNext = 3688977i64;
                        } else {
                            _gotoNext = 3691189i64;
                        };
                    } else if (__value__ == (3688964i64)) {
                        _kid_47 = _next_17();
                        _gotoNext = 3688933i64;
                    } else if (__value__ == (3688977i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L739"
                        if ((@:checkr _kid_47 ?? throw "null pointer dereference").tag == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                            _gotoNext = 3689010i64;
                        } else {
                            _gotoNext = 3688964i64;
                        };
                    } else if (__value__ == (3689010i64)) {
                        _f_48 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_47.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_48 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_47.val((28u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_48 ?? throw "null pointer dereference").val = @:tmpset0 __tmp__._0;
                        };
                        _n_49 = ((@:checkr _t_46 ?? throw "null pointer dereference").val.length);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L744"
                        if ((_n_49 >= (@:checkr _t_46 ?? throw "null pointer dereference").val.capacity : Bool)) {
                            _gotoNext = 3689169i64;
                        } else {
                            _gotoNext = 3689259i64;
                        };
                    } else if (__value__ == (3689169i64)) {
                        _val_50 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>((_n_49 : stdgo.GoInt).toBasic(), (_n_49 * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L746"
                        _val_50.__copyTo__((@:checkr _t_46 ?? throw "null pointer dereference").val);
                        (@:checkr _t_46 ?? throw "null pointer dereference").val = _val_50;
                        _gotoNext = 3689259i64;
                    } else if (__value__ == (3689259i64)) {
                        (@:checkr _t_46 ?? throw "null pointer dereference").val = ((@:checkr _t_46 ?? throw "null pointer dereference").val.__slice__((0 : stdgo.GoInt), (_n_49 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        (@:checkr _t_46 ?? throw "null pointer dereference").val[(_n_49 : stdgo.GoInt)] = _f_48;
                        _gotoNext = 3688964i64;
                    } else if (__value__ == (3689310i64)) {
                        _t_51 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
                        _typ_15 = stdgo.Go.asInterface(_t_51);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_51);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L762"
                        if (_e_11.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) == null) {
                            _gotoNext = 3689569i64;
                        } else {
                            _gotoNext = 3689610i64;
                        };
                    } else if (__value__ == (3689569i64)) {
                        (@:checkr _t_51 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType() : stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType>));
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3689610i64)) {
                        (@:checkr _t_51 ?? throw "null pointer dereference").type = _typeOf_18(_e_11);
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3689631i64)) {
                        _t_52 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_functype.FuncType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType>);
                        _typ_15 = stdgo.Go.asInterface(_t_52);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_52);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L781"
                        {
                            (@:checkr _t_52 ?? throw "null pointer dereference").returnType = _typeOf_18(_e_11);
                            if (_err_12 != null) {
                                _gotoNext = 3690087i64;
                            } else {
                                _gotoNext = 3690109i64;
                            };
                        };
                    } else if (__value__ == (3690087i64)) {
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3690109i64)) {
                        (@:checkr _t_52 ?? throw "null pointer dereference").paramType = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
                        _kid_53 = _next_17();
                        _gotoNext = 3690144i64;
                    } else if (__value__ == (3690144i64)) {
                        //"file://#L0"
                        if (({
                            final value = _kid_53;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _gotoNext = 3690188i64;
                        } else {
                            _gotoNext = 3691189i64;
                        };
                    } else if (__value__ == (3690188i64)) {
                        _gotoNext = 3690210i64;
                    } else if (__value__ == (3690210i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L787"
                        {
                            final __value__ = (@:checkr _kid_53 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3690255i64;
                            } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3690345i64;
                            } else {
                                _gotoNext = 3690230i64;
                            };
                        };
                    } else if (__value__ == (3690230i64)) {
                        _kid_53 = _next_17();
                        _gotoNext = 3690144i64;
                    } else if (__value__ == (3690255i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L791"
                        {
                            _tkid_54 = _typeOf_18(_kid_53);
                            if (_err_12 != null) {
                                _gotoNext = 3690318i64;
                            } else {
                                _gotoNext = 3690412i64;
                            };
                        };
                    } else if (__value__ == (3690318i64)) {
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3690345i64)) {
                        _tkid_54 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType() : stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType>));
                        _gotoNext = 3690412i64;
                    } else if (__value__ == (3690412i64)) {
                        (@:checkr _t_52 ?? throw "null pointer dereference").paramType = ((@:checkr _t_52 ?? throw "null pointer dereference").paramType.__append__(_tkid_54) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
                        _kid_53 = _next_17();
                        _gotoNext = 3690144i64;
                    } else if (__value__ == (3690458i64)) {
                        _t_55 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
                        _typ_15 = stdgo.Go.asInterface(_t_55);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_55);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_55 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_55 ?? throw "null pointer dereference").type = _typeOf_18(_e_11);
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3690712i64)) {
                        _t_56 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType>);
                        _typ_15 = stdgo.Go.asInterface(_t_56);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_56);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_56 ?? throw "null pointer dereference").basicType.commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3690913i64)) {
                        _t_57 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType>);
                        _typ_15 = stdgo.Go.asInterface(_t_57);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_57);
                        (@:checkr _t_57 ?? throw "null pointer dereference").tag = (@:checkr _e_11 ?? throw "null pointer dereference").tag;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_57 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3691189i64;
                    } else if (__value__ == (3691189i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L831"
                        if (_err_12 != null) {
                            _gotoNext = 3691203i64;
                        } else {
                            _gotoNext = 3691223i64;
                        };
                    } else if (__value__ == (3691203i64)) {
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3691223i64)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_11.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_58 = @:tmpset0 __tmp__._0;
                            _ok_59 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L837"
                        if (!_ok_59) {
                            _gotoNext = 3691273i64;
                        } else {
                            _gotoNext = 3691545i64;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L835"
                        {
                            _gotoNext = 3691223i64;
                        };
                    } else if (__value__ == (3691273i64)) {
                        _b_58 = (-1i64 : stdgo.GoInt64);
                        0i64;
                        _gotoNext = 3691288i64;
                    } else if (__value__ == (3691288i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L839"
                        {
                            final __type__ = _typ_15;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : __type__.__underlying__().value);
                                _t_60 = _t;
                                _gotoNext = 3691316i64;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : __type__.__underlying__().value);
                                _t_61 = _t;
                                _gotoNext = 3691492i64;
                            } else {
                                var _t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = __type__ == null ? (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_) : cast __type__;
                                _gotoNext = 3691545i64;
                            };
                        };
                        _gotoNext = 3691545i64;
                    } else if (__value__ == (3691316i64)) {
                        (@:checkr _fixups ?? throw "null pointer dereference")._typedefs = ((@:checkr _fixups ?? throw "null pointer dereference")._typedefs.__append__(_t_60) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>>);
                        _t_60;
                        _gotoNext = 3691545i64;
                    } else if (__value__ == (3691492i64)) {
                        _b_58 = (_addressSize_13 : stdgo.GoInt64);
                        _t_61;
                        _gotoNext = 3691545i64;
                    } else if (__value__ == (3691545i64)) {
                        _typ_15.common().byteSize = _b_58;
                        _gotoNext = 3691575i64;
                    } else if (__value__ == (3691575i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L851"
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } = { _0 : _typ_15, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3691592i64;
                    } else if (__value__ == (3691592i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L857"
                        if (_typeCache != null) _typeCache.__remove__(_off);
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L858"
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : _err_12 };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i64;
                    };
                };
            };
            //"file://#L0"
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function type( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L376"
        return _d._readType(("info" : stdgo.GoString), stdgo.Go.asInterface(_d.reader()), _off, (@:checkr _d ?? throw "null pointer dereference")._typeCache, null);
    }
    @:keep
    @:tdfield
    static public function addSection( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _name:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/open.go#L128"
        {
            final __value__ = _name;
            if (__value__ == ((".debug_addr" : stdgo.GoString))) {
                (@:checkr _d ?? throw "null pointer dereference")._addr = _contents;
            } else if (__value__ == ((".debug_line_str" : stdgo.GoString))) {
                (@:checkr _d ?? throw "null pointer dereference")._lineStr = _contents;
            } else if (__value__ == ((".debug_str_offsets" : stdgo.GoString))) {
                (@:checkr _d ?? throw "null pointer dereference")._strOffsets = _contents;
            } else if (__value__ == ((".debug_rnglists" : stdgo.GoString))) {
                (@:checkr _d ?? throw "null pointer dereference")._rngLists = _contents;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/open.go#L139"
        return _err;
    }
    @:keep
    @:tdfield
    static public function addTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/open.go#L119"
        return _d._parseTypes(_name?.__copy__(), _types);
    }
    @:keep
    @:tdfield
    static public function lineReader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L144"
        if ((@:checkr _d ?? throw "null pointer dereference")._line == null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L146"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_cu.val((16u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _off = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L151"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L153"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L155"
        if (((_off < (0i64 : stdgo.GoInt64) : Bool) || (_off > ((@:checkr _d ?? throw "null pointer dereference")._line.length : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L156"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("AttrStmtList value out of range" : stdgo.GoString)) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_cu.val((27u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _compDir = __tmp__._0, __3 = __tmp__._1;
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_d._offsetToUnit((@:checkr _cu ?? throw "null pointer dereference").offset) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("line" : stdgo.GoString), (_off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), ((@:checkr _d ?? throw "null pointer dereference")._line.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        var _r = ({ _buf : _buf, _section : (@:checkr _d ?? throw "null pointer dereference")._line, _str : (@:checkr _d ?? throw "null pointer dereference")._str, _lineStr : (@:checkr _d ?? throw "null pointer dereference")._lineStr } : stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L174"
        {
            var _err = (_r._readHeader(_compDir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L175"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L179"
        _r.reset();
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L181"
        return { _0 : (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _debugAddr( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _format:stdgo._internal.debug.dwarf.Dwarf_t_dataformat.T_dataFormat, _addrBase:stdgo.GoUInt64, _idx:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _off = ((_idx * (_format._addrsize() : stdgo.GoUInt64) : stdgo.GoUInt64) + _addrBase : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1210"
        if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1211"
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("offset out of range" : stdgo.GoString)) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, _format, ("addr" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._addr)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1215"
        _b._skip((_off : stdgo.GoInt));
        var _val = (_b._addr() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1217"
        if (_b._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1218"
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _b._err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1220"
        return { _0 : _val, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _dwarf5Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1135"
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > ((@:checkr _d ?? throw "null pointer dereference")._rngLists.length : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1136"
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid rnglist offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface(((@:checkr _d ?? throw "null pointer dereference")._ranges.length))) };
        };
        var _addrBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1139"
        if (({
            final value = _cu;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cu.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                };
                _addrBase = @:tmpset0 __tmp__._0;
            };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("rnglists" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._rngLists)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1144"
        _buf._skip((_ranges : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1145"
        while (true) {
            var _opcode = (_buf._uint8() : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1147"
            {
                final __value__ = _opcode;
                if (__value__ == ((0 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1149"
                    if (_buf._err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1150"
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _buf._err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1152"
                    return { _0 : _ret, _1 : (null : stdgo.Error) };
                } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                    var _baseIdx = (_buf._uint() : stdgo.GoUInt64);
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _baseIdx);
                        _base = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1158"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1159"
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                    var _startIdx = (_buf._uint() : stdgo.GoUInt64);
                    var _endIdx = (_buf._uint() : stdgo.GoUInt64);
                    var __tmp__ = _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _startIdx), _start:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1167"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1168"
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    var __tmp__ = _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _endIdx), _end:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1171"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1172"
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, _end]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
                } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                    var _startIdx = (_buf._uint() : stdgo.GoUInt64);
                    var _len = (_buf._uint() : stdgo.GoUInt64);
                    var __tmp__ = _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _startIdx), _start:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1180"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1181"
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, (_start + _len : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
                } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                    var _off1 = (_buf._uint() : stdgo.GoUInt64);
                    var _off2 = (_buf._uint() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(_base + _off1 : stdgo.GoUInt64), (_base + _off2 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
                } else if (__value__ == ((5 : stdgo.GoUInt8))) {
                    _base = _buf._addr();
                } else if (__value__ == ((6 : stdgo.GoUInt8))) {
                    var _start = (_buf._addr() : stdgo.GoUInt64);
                    var _end = (_buf._addr() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, _end]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
                } else if (__value__ == ((7 : stdgo.GoUInt8))) {
                    var _start = (_buf._addr() : stdgo.GoUInt64);
                    var _len = (_buf._uint() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, (_start + _len : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _dwarf2Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1110"
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > ((@:checkr _d ?? throw "null pointer dereference")._ranges.length : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1111"
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid range offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface(((@:checkr _d ?? throw "null pointer dereference")._ranges.length))) };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("ranges" : stdgo.GoString), (_ranges : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), ((@:checkr _d ?? throw "null pointer dereference")._ranges.__slice__(_ranges) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1114"
        while (((_buf._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _low = (_buf._addr() : stdgo.GoUInt64);
            var _high = (_buf._addr() : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1118"
            if (((_low == (0i64 : stdgo.GoUInt64)) && (_high == (0i64 : stdgo.GoUInt64)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1119"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1122"
            if (_low == (((-1i64 : stdgo.GoUInt64) >> (((((8 : stdgo.GoInt) - _u._addrsize() : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64))) {
                _base = _high;
            } else {
                _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(_base + _low : stdgo.GoUInt64), (_base + _high : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1129"
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _baseAddressForEntry( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.GoUInt64; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1085"
        if ((@:checkr _e ?? throw "null pointer dereference").tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
            _cu = _e;
        } else {
            var _i = (_d._offsetToUnit((@:checkr _e ?? throw "null pointer dereference").offset) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1089"
            if (_i == ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1090"
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : stdgo._internal.errors.Errors_new_.new_(("no unit for entry" : stdgo.GoString)) };
            };
            var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
            var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            _cu = _b._entry(null, (@:checkr _u ?? throw "null pointer dereference")._atable, (@:checkr _u ?? throw "null pointer dereference")._base, (@:checkr _u ?? throw "null pointer dereference")._vers);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1095"
            if (_b._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1096"
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : _b._err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1100"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_cu.val((82u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoUInt64), _1 : false };
            }, _cuEntry = __tmp__._0, _cuEntryOK = __tmp__._1;
            if (_cuEntryOK) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1101"
                return { _0 : _cu, _1 : _cuEntry, _2 : (null : stdgo.Error) };
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cu.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoUInt64), _1 : false };
                }, _cuLow = __tmp__._0, _cuLowOK = __tmp__._1;
                if (_cuLowOK) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1103"
                    return { _0 : _cu, _1 : _cuLow, _2 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1106"
        return { _0 : _cu, _1 : (0i64 : stdgo.GoUInt64), _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>> = (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_e.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoUInt64), _1 : false };
        }, _low = __tmp__._0, _lowOK = __tmp__._1;
        var _high:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _highOK:Bool = false;
        var _highField = _e.attrField((18u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1009"
        if (({
            final value = _highField;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1010"
            {
                final __value__ = (@:checkr _highField ?? throw "null pointer dereference").class_;
                if (__value__ == ((1 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_))) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert(((@:checkr _highField ?? throw "null pointer dereference").val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                        } catch(_) {
                            { _0 : (0 : stdgo.GoUInt64), _1 : false };
                        };
                        _high = @:tmpset0 __tmp__._0;
                        _highOK = @:tmpset0 __tmp__._1;
                    };
                } else if (__value__ == ((3 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _highField ?? throw "null pointer dereference").val : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _off = __tmp__._0, _ok = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1015"
                    if (_ok) {
                        _high = (_low + (_off : stdgo.GoUInt64) : stdgo.GoUInt64);
                        _highOK = true;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1022"
        if ((_lowOK && _highOK : Bool)) {
            _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_low, _high]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
        };
        var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1027"
        {
            var _uidx = (_d._offsetToUnit((@:checkr _e ?? throw "null pointer dereference").offset) : stdgo.GoInt);
            if (((_uidx >= (0 : stdgo.GoInt) : Bool) && (_uidx < ((@:checkr _d ?? throw "null pointer dereference")._unit.length) : Bool) : Bool)) {
                _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_uidx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1031"
        if (((({
            final value = _u;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _u ?? throw "null pointer dereference")._vers >= (5 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _d ?? throw "null pointer dereference")._rngLists != null) : Bool)) {
            var _field = _e.attrField((85u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1034"
            if (({
                final value = _field;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1035"
                return { _0 : _ret, _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1037"
            {
                final __value__ = (@:checkr _field ?? throw "null pointer dereference").class_;
                if (__value__ == ((9 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _field ?? throw "null pointer dereference").val : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1040"
                    if (!_rangesOK) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1041"
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1044"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1045"
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1047"
                    return _d._dwarf5Ranges(_u, _cu, _base, _ranges, _ret);
                } else if (__value__ == ((17 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _field ?? throw "null pointer dereference").val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoUInt64), _1 : false };
                    }, _rnglist = __tmp__._0, _ok = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1051"
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1052"
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1055"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1056"
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1058"
                    return _d._dwarf5Ranges(_u, _cu, _base, (_rnglist : stdgo.GoInt64), _ret);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1061"
                    return { _0 : _ret, _1 : (null : stdgo.Error) };
                };
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_e.val((85u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1067"
        if ((_rangesOK && ((@:checkr _d ?? throw "null pointer dereference")._ranges != null) : Bool)) {
            var __tmp__ = _d._baseAddressForEntry(_e), __3:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1069"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1070"
                return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1072"
            return _d._dwarf2Ranges(_u, _base, _ranges, _ret);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L1075"
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _r = (stdgo.Go.setRef(({ _d : _d } : stdgo._internal.debug.dwarf.Dwarf_reader.Reader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L814"
        _r.seek((0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L815"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _parseAbbrev( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _off:stdgo.GoUInt64, _vers:stdgo.GoInt):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L40"
        {
            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._abbrevCache != null && (@:checkr _d ?? throw "null pointer dereference")._abbrevCache.__exists__(_off) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._abbrevCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable), _1 : false }), _m:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L41"
                return { _0 : _m, _1 : (null : stdgo.Error) };
            };
        };
        var _data = (@:checkr _d ?? throw "null pointer dereference")._abbrev;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L45"
        if ((_off > (_data.length : stdgo.GoUInt64) : Bool)) {
            _data = (null : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _data = (_data.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), ("abbrev" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        var _m = ((({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev>) : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable) : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L55"
        while (true) {
            var _id = (_b._uint() : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L58"
            if (_id == ((0u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L59"
                break;
            };
            var _n = (0 : stdgo.GoInt);
            var _b1 = (_b?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L65"
            _b1._uint();
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L66"
            _b1._uint8();
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L67"
            while (true) {
                var _tag = (_b1._uint() : stdgo.GoUInt64);
                var _fmt = (_b1._uint() : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L70"
                if (((_tag == (0i64 : stdgo.GoUInt64)) && (_fmt == (0i64 : stdgo.GoUInt64)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L71"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L73"
                if ((_fmt : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format) == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L74"
                    _b1._int();
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L76"
                _n++;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L78"
            if (_b1._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L79"
                return { _0 : null, _1 : _b1._err };
            };
            var _a:stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev = ({} : stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev);
            _a._tag = (_b._uint() : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            _a._children = _b._uint8() != ((0 : stdgo.GoUInt8));
            _a._field = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield>);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L87"
            for (_i => _ in _a._field) {
                _a._field[(_i : stdgo.GoInt)]._attr = (_b._uint() : stdgo._internal.debug.dwarf.Dwarf_attr.Attr);
                _a._field[(_i : stdgo.GoInt)]._fmt = (_b._uint() : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
                _a._field[(_i : stdgo.GoInt)]._class = stdgo._internal.debug.dwarf.Dwarf__formtoclass._formToClass(_a._field[(_i : stdgo.GoInt)]._fmt, _a._field[(_i : stdgo.GoInt)]._attr, _vers, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>));
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L91"
                if (_a._field[(_i : stdgo.GoInt)]._fmt == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _a._field[(_i : stdgo.GoInt)]._val = _b._int();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L95"
            _b._uint();
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L96"
            _b._uint();
            _m[_id] = _a?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L100"
        if (_b._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L101"
            return { _0 : null, _1 : _b._err };
        };
        (@:checkr _d ?? throw "null pointer dereference")._abbrevCache[_off] = _m;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L104"
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
}
