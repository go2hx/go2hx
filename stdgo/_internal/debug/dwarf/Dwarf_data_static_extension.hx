package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Data_asInterface) class Data_static_extension {
    @:keep
    @:tdfield
    static public function _offsetToUnit( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _next = (stdgo._internal.sort.Sort_search.search(((@:checkr _d ?? throw "null pointer dereference")._unit.length), function(_i:stdgo.GoInt):Bool {
            return ((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]._off > _off : Bool);
        }) : stdgo.GoInt);
        if (_next == ((0 : stdgo.GoInt))) {
            return (-1 : stdgo.GoInt);
        };
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_next - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        if ((((@:checkr _u ?? throw "null pointer dereference")._off <= _off : Bool) && (_off < ((@:checkr _u ?? throw "null pointer dereference")._off + ((@:checkr _u ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool) : Bool)) {
            return (_next - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _parseUnits( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>):{ var _0 : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _nunit = (0 : stdgo.GoInt);
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._info)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = @:check2 _b._unitLength(), _len:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = __tmp__._0, __3:Bool = __tmp__._1;
            if (_len != (((_len : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
                @:check2 _b._error(("unit length overflow" : stdgo.GoString));
                break;
            };
            @:check2 _b._skip((_len : stdgo.GoInt));
            if ((_len > (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool)) {
                _nunit++;
            };
        };
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>), _1 : _b._err };
        };
        _b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._info)?.__copy__();
        var _units = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>((_nunit : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_nunit : stdgo.GoInt).toBasic() > 0 ? (_nunit : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        for (_i => _ in _units) {
            var _u = (stdgo.Go.setRef(_units[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
            (@:checkr _u ?? throw "null pointer dereference")._base = _b._off;
            var _n:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            if (_b._err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>), _1 : _b._err };
            };
            while (_n == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
                {
                    var __tmp__ = @:check2 _b._unitLength();
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _u ?? throw "null pointer dereference")._is64 = @:tmpset0 __tmp__._1;
                };
            };
            var _dataOff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            var _vers = (@:check2 _b._uint16() : stdgo.GoUInt16);
            if (((_vers < (2 : stdgo.GoUInt16) : Bool) || (_vers > (5 : stdgo.GoUInt16) : Bool) : Bool)) {
                @:check2 _b._error((("unsupported DWARF version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_vers : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                break;
            };
            (@:checkr _u ?? throw "null pointer dereference")._vers = (_vers : stdgo.GoInt);
            if ((_vers >= (5 : stdgo.GoUInt16) : Bool)) {
                (@:checkr _u ?? throw "null pointer dereference")._utype = @:check2 _b._uint8();
                (@:checkr _u ?? throw "null pointer dereference")._asize = (@:check2 _b._uint8() : stdgo.GoInt);
            };
            var _abbrevOff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if ((@:checkr _u ?? throw "null pointer dereference")._is64) {
                _abbrevOff = @:check2 _b._uint64();
            } else {
                _abbrevOff = (@:check2 _b._uint32() : stdgo.GoUInt64);
            };
            var __tmp__ = @:check2r _d._parseAbbrev(_abbrevOff, (@:checkr _u ?? throw "null pointer dereference")._vers), _atable:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_b._err == null) {
                    _b._err = _err;
                };
                break;
            };
            (@:checkr _u ?? throw "null pointer dereference")._atable = _atable;
            if ((_vers < (5 : stdgo.GoUInt16) : Bool)) {
                (@:checkr _u ?? throw "null pointer dereference")._asize = (@:check2 _b._uint8() : stdgo.GoInt);
            };
            {
                final __value__ = (@:checkr _u ?? throw "null pointer dereference")._utype;
                if (__value__ == ((4 : stdgo.GoUInt8)) || __value__ == ((5 : stdgo.GoUInt8))) {
                    @:check2 _b._uint64();
                } else if (__value__ == ((2 : stdgo.GoUInt8)) || __value__ == ((6 : stdgo.GoUInt8))) {
                    @:check2 _b._uint64();
                    if ((@:checkr _u ?? throw "null pointer dereference")._is64) {
                        @:check2 _b._uint64();
                    } else {
                        @:check2 _b._uint32();
                    };
                };
            };
            (@:checkr _u ?? throw "null pointer dereference")._off = _b._off;
            (@:checkr _u ?? throw "null pointer dereference")._data = @:check2 _b._bytes(((_n - ((_b._off - _dataOff : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo.GoInt));
        };
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>), _1 : _b._err };
        };
        return { _0 : _units, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _sigToType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _sig:stdgo.GoUInt64):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _tu = ((@:checkr _d ?? throw "null pointer dereference")._typeSigs[_sig] ?? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>));
        if ((_tu == null || (_tu : Dynamic).__nil__)) {
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no type unit with signature %v" : stdgo.GoString), stdgo.Go.toInterface(_sig)) };
        };
        if ((@:checkr _tu ?? throw "null pointer dereference")._cache != null) {
            return { _0 : (@:checkr _tu ?? throw "null pointer dereference")._cache, _1 : (null : stdgo.Error) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_tu), (@:checkr _tu ?? throw "null pointer dereference")._name?.__copy__(), (@:checkr _tu ?? throw "null pointer dereference")._unit._off, (@:checkr _tu ?? throw "null pointer dereference")._unit._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        var _r = (stdgo.Go.setRef(({ _d : _d, _tu : _tu, _b : _b?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader>);
        var __tmp__ = @:check2r _d._readType((@:checkr _tu ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.asInterface(_r), (@:checkr _tu ?? throw "null pointer dereference")._toff, (({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>) : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>), null), _t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : _err };
        };
        (@:checkr _tu ?? throw "null pointer dereference")._cache = _t;
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _parseTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), _name?.__copy__(), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _types)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _base = (_b._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            var __tmp__ = @:check2 _b._unitLength(), _n:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
            if (_n != (((_n : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
                @:check2 _b._error(("type unit length overflow" : stdgo.GoString));
                return _b._err;
            };
            var _hdroff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            var _vers = (@:check2 _b._uint16() : stdgo.GoInt);
            if (_vers != ((4 : stdgo.GoInt))) {
                @:check2 _b._error((("unsupported DWARF version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_vers)?.__copy__() : stdgo.GoString)?.__copy__());
                return _b._err;
            };
            var _ao:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if (!_dwarf64) {
                _ao = (@:check2 _b._uint32() : stdgo.GoUInt64);
            } else {
                _ao = @:check2 _b._uint64();
            };
            var __tmp__ = @:check2r _d._parseAbbrev(_ao, _vers), _atable:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _asize = (@:check2 _b._uint8() : stdgo.GoUInt8);
            var _sig = (@:check2 _b._uint64() : stdgo.GoUInt64);
            var _toff:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            if (!_dwarf64) {
                _toff = @:check2 _b._uint32();
            } else {
                var _to64 = (@:check2 _b._uint64() : stdgo.GoUInt64);
                if (_to64 != (((_to64 : stdgo.GoUInt32) : stdgo.GoUInt64))) {
                    @:check2 _b._error(("type unit type offset overflow" : stdgo.GoString));
                    return _b._err;
                };
                _toff = (_to64 : stdgo.GoUInt32);
            };
            var _boff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
            (@:checkr _d ?? throw "null pointer dereference")._typeSigs[_sig] = (stdgo.Go.setRef(({ _unit : ({ _base : _base, _off : _boff, _data : @:check2 _b._bytes(((_n - ((_b._off - _hdroff : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo.GoInt)), _atable : _atable, _asize : (_asize : stdgo.GoInt), _vers : _vers, _is64 : _dwarf64 } : stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit), _toff : (_toff : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _name : _name?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>);
            if (_b._err != null) {
                return _b._err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _name:stdgo.GoString, _r:stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, _typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>, _fixups:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer>):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _ok_3722866:Bool = false;
            var _t_3722233:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
            var _val_3720812:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
            var _i_3714721:stdgo.GoInt = (0 : stdgo.GoInt);
            var _next_3712177:() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = null;
            var _addressSize_3711438:stdgo.GoInt = (0 : stdgo.GoInt);
            var _e_3711380:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _t_3722451:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType>);
            var _haveBitOffset_3718774:Bool = false;
            var _count_3714140:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_3719891:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType>);
            var _kid_3718037:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _t_3717615:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType>);
            var _dims_3713937:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
            var _typ_3712103:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _haveDataBitOffset_3718800:Bool = false;
            var _typeOf_3712980:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> -> stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = null;
            var _t_3711317:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _kid_3721784:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _loc_3718279:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _lastFieldBitSize_3717976:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _haveDataBitOffset_3716569:Bool = false;
            var _t_3713742:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>);
            var _err_3711383:stdgo.Error = (null : stdgo.Error);
            var _kid_3720573:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _lastFieldType_3717950:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
            var _t_3716425:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType>);
            var _t_3722969:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
            var _t_3720439:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType>);
            var _ok_3719577:Bool = false;
            var _ok_3715421:Bool = false;
            var _t_3722708:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType>);
            var _t_3721631:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType>);
            var _b_3718368:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            var _b_3722863:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _b_3719574:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _name_3715378:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3721128:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
            var _n_3720766:stdgo.GoInt = (0 : stdgo.GoInt);
            var _haveBitOffset_3716544:Bool = false;
            var _ok_3714147:Bool = false;
            var _lastFieldByteOffset_3718005:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _fixer_3711879:stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer = ({} : stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer);
            var _t_3723141:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
            var _loc_3718649:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _f_3718129:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>);
            var _enc_3715416:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _tkid_3721833:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _f_3720652:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>);
            var _byteSize_3716031:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _kid_3713956:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _nextDepth_3712114:stdgo.GoInt = (0 : stdgo.GoInt);
            var _ok_3711320:Bool = false;
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        var __blank__ = _loc_3718279;
                        _gotoNext = 3718683i32;
                        {
                            {
                                var __tmp__ = (_typeCache != null && _typeCache.exists(_off) ? { _0 : _typeCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : false });
                                _t_3711317 = @:tmpset0 __tmp__._0;
                                _ok_3711320 = @:tmpset0 __tmp__._1;
                            };
                            if (_ok_3711320) {
                                _gotoNext = 3711345i32;
                            } else {
                                _gotoNext = 3711367i32;
                            };
                        };
                    } else if (__value__ == (3711345i32)) {
                        return { _0 : _t_3711317, _1 : (null : stdgo.Error) };
                        _gotoNext = 3711367i32;
                    } else if (__value__ == (3711367i32)) {
                        _r.seek(_off);
                        {
                            var __tmp__ = _r.next();
                            _e_3711380 = @:tmpset0 __tmp__._0;
                            _err_3711383 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3711383 != null) {
                            _gotoNext = 3711414i32;
                        } else {
                            _gotoNext = 3711438i32;
                        };
                    } else if (__value__ == (3711414i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : _err_3711383 };
                        _gotoNext = 3711438i32;
                    } else if (__value__ == (3711438i32)) {
                        _addressSize_3711438 = _r.addressSize();
                        if (((_e_3711380 == null || (_e_3711380 : Dynamic).__nil__) || ((@:checkr _e_3711380 ?? throw "null pointer dereference").offset != _off) : Bool)) {
                            _gotoNext = 3711501i32;
                        } else {
                            _gotoNext = 3711854i32;
                        };
                    } else if (__value__ == (3711501i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), _off, ("no type at offset" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
                        _gotoNext = 3711854i32;
                    } else if (__value__ == (3711854i32)) {
                        if ((_fixups == null || (_fixups : Dynamic).__nil__)) {
                            _gotoNext = 3711871i32;
                        } else {
                            _gotoNext = 3712099i32;
                        };
                    } else if (__value__ == (3711871i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    @:check2 _fixer_3711879._apply();
                                };
                                a();
                            }) });
                        };
                        _fixups = (stdgo.Go.setRef(_fixer_3711879) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer>);
                        _gotoNext = 3712099i32;
                    } else if (__value__ == (3712099i32)) {
                        _nextDepth_3712114 = (0 : stdgo.GoInt);
                        _next_3712177 = function():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> {
                            if (!(@:checkr _e_3711380 ?? throw "null pointer dereference").children) {
                                return null;
                            };
                        };
                        _typeOf_3712980 = function(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):stdgo._internal.debug.dwarf.Dwarf_type_.Type_ {
                            var _tval = (@:check2r _e.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.AnyInterface);
                            var _t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
                            {
                                final __type__ = _tval;
                                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
                                    var _toff:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : __type__.__underlying__().value;
                                    {
                                        {
                                            var __tmp__ = @:check2r _d._readType(_name?.__copy__(), _r._clone(), _toff, _typeCache, _fixups);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_3711383 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_3711383 != null) {
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                                    var _toff:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                    {
                                        {
                                            var __tmp__ = @:check2r _d._sigToType(_toff);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_3711383 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_3711383 != null) {
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
                                        };
                                    };
                                } else {
                                    var _toff:stdgo.AnyInterface = __type__?.__underlying__();
                                    return stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType>));
                                };
                            };
                            return _t;
                        };
                        _gotoNext = 3713380i32;
                    } else if (__value__ == (3713380i32)) {
                        {
                            final __value__ = (@:checkr _e_3711380 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3713396i32;
                            } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3714814i32;
                            } else if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3716862i32;
                            } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3719760i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3720155i32;
                            } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3720946i32;
                            } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3721267i32;
                            } else if (__value__ == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3722094i32;
                            } else if (__value__ == ((59u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3722348i32;
                            } else {
                                _gotoNext = 3722549i32;
                            };
                        };
                    } else if (__value__ == (3713396i32)) {
                        _t_3713742 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3713742);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3713742);
                        {
                            (@:checkr _t_3713742 ?? throw "null pointer dereference").type = _typeOf_3712980(_e_3711380);
                            if (_err_3711383 != null) {
                                _gotoNext = 3713829i32;
                            } else {
                                _gotoNext = 3713851i32;
                            };
                        };
                    } else if (__value__ == (3713829i32)) {
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3713851i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((46u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3713742 ?? throw "null pointer dereference").strideBitSize = @:tmpset0 __tmp__._0;
                        };
                        _kid_3713956 = _next_3712177();
                        _gotoNext = 3713952i32;
                    } else if (__value__ == (3713952i32)) {
                        if ((_kid_3713956 != null && ((_kid_3713956 : Dynamic).__nil__ == null || !(_kid_3713956 : Dynamic).__nil__))) {
                            _gotoNext = 3713996i32;
                        } else {
                            _gotoNext = 3714613i32;
                        };
                    } else if (__value__ == (3713983i32)) {
                        _kid_3713956 = _next_3712177();
                        _gotoNext = 3713952i32;
                    } else if (__value__ == (3713996i32)) {
                        _gotoNext = 3714094i32;
                    } else if (__value__ == (3714094i32)) {
                        {
                            final __value__ = (@:checkr _kid_3713956 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3714114i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3714473i32;
                            } else {
                                _gotoNext = 3713983i32;
                            };
                        };
                    } else if (__value__ == (3714114i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3713956.val((55u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3714140 = @:tmpset0 __tmp__._0;
                            _ok_3714147 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3714147) {
                            _gotoNext = 3714191i32;
                        } else {
                            _gotoNext = 3714443i32;
                        };
                    } else if (__value__ == (3714191i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3713956.val((47u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3714140 = @:tmpset0 __tmp__._0;
                            _ok_3714147 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3714147) {
                            _gotoNext = 3714307i32;
                        } else if ((_dims_3713937.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3714393i32;
                        } else {
                            _gotoNext = 3714443i32;
                        };
                    } else if (__value__ == (3714307i32)) {
                        _count_3714140++;
                        _gotoNext = 3714443i32;
                    } else if (__value__ == (3714393i32)) {
                        _count_3714140 = (-1i64 : stdgo.GoInt64);
                        _gotoNext = 3714443i32;
                    } else if (__value__ == (3714443i32)) {
                        _dims_3713937 = (_dims_3713937.__append__(_count_3714140));
                        _gotoNext = 3713983i32;
                    } else if (__value__ == (3714473i32)) {
                        _err_3711383 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _kid_3713956 ?? throw "null pointer dereference").offset, ("cannot handle enumeration type as array bound" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3714613i32)) {
                        if ((_dims_3713937.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3714631i32;
                        } else {
                            _gotoNext = 3714697i32;
                        };
                    } else if (__value__ == (3714631i32)) {
                        _dims_3713937 = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
                        _gotoNext = 3714697i32;
                    } else if (__value__ == (3714697i32)) {
                        (@:checkr _t_3713742 ?? throw "null pointer dereference").count = _dims_3713937[(0 : stdgo.GoInt)];
                        _i_3714721 = ((_dims_3713937.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _gotoNext = 3714717i32;
                    } else if (__value__ == (3714717i32)) {
                        if ((_i_3714721 >= (1 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3714753i32;
                        } else {
                            _gotoNext = 3722825i32;
                        };
                    } else if (__value__ == (3714753i32)) {
                        (@:checkr _t_3713742 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : (@:checkr _t_3713742 ?? throw "null pointer dereference").type, count : _dims_3713937[(_i_3714721 : stdgo.GoInt)] } : stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>));
                        _i_3714721--;
                        _gotoNext = 3714717i32;
                    } else if (__value__ == (3714814i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _name_3715378 = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((62u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _enc_3715416 = @:tmpset0 __tmp__._0;
                            _ok_3715421 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3715421) {
                            _gotoNext = 3715464i32;
                        } else {
                            _gotoNext = 3715565i32;
                        };
                    } else if (__value__ == (3715464i32)) {
                        _err_3711383 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_3715378?.__copy__(), (@:checkr _e_3711380 ?? throw "null pointer dereference").offset, (("missing encoding attribute for " : stdgo.GoString) + _name_3715378?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3715565i32)) {
                        _gotoNext = 3715565i32;
                        {
                            final __value__ = _enc_3715416;
                            if (__value__ == ((1i64 : stdgo.GoInt64))) {
                                _gotoNext = 3715684i32;
                            } else if (__value__ == ((2i64 : stdgo.GoInt64))) {
                                _gotoNext = 3715726i32;
                            } else if (__value__ == ((3i64 : stdgo.GoInt64))) {
                                _gotoNext = 3715768i32;
                            } else if (__value__ == ((4i64 : stdgo.GoInt64))) {
                                _gotoNext = 3716181i32;
                            } else if (__value__ == ((5i64 : stdgo.GoInt64))) {
                                _gotoNext = 3716222i32;
                            } else if (__value__ == ((7i64 : stdgo.GoInt64))) {
                                _gotoNext = 3716262i32;
                            } else if (__value__ == ((6i64 : stdgo.GoInt64))) {
                                _gotoNext = 3716305i32;
                            } else if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                _gotoNext = 3716350i32;
                            } else {
                                _gotoNext = 3715580i32;
                            };
                        };
                    } else if (__value__ == (3715580i32)) {
                        _err_3711383 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_3715378?.__copy__(), (@:checkr _e_3711380 ?? throw "null pointer dereference").offset, ("unrecognized encoding attribute value" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3715684i32)) {
                        _typ_3712103 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_addrtype.AddrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_addrtype.AddrType>));
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3715726i32)) {
                        _typ_3712103 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_booltype.BoolType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_booltype.BoolType>));
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3715768i32)) {
                        _typ_3712103 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_complextype.ComplexType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_complextype.ComplexType>));
                        if (_name_3715378 == (("complex" : stdgo.GoString))) {
                            _gotoNext = 3715840i32;
                        } else {
                            _gotoNext = 3716402i32;
                        };
                    } else if (__value__ == (3715840i32)) {
                        _gotoNext = 3716024i32;
                    } else if (__value__ == (3716024i32)) {
                        {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                } catch(_) {
                                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                                };
                                _byteSize_3716031 = @:tmpset0 __tmp__._0;
                            };
                            {
                                final __value__ = _byteSize_3716031;
                                if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3716090i32;
                                } else if (__value__ == ((16i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3716130i32;
                                } else {
                                    _gotoNext = 3716402i32;
                                };
                            };
                        };
                    } else if (__value__ == (3716090i32)) {
                        _name_3715378 = ("complex float" : stdgo.GoString);
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3716130i32)) {
                        _name_3715378 = ("complex double" : stdgo.GoString);
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3716181i32)) {
                        _typ_3712103 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_floattype.FloatType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_floattype.FloatType>));
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3716222i32)) {
                        _typ_3712103 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_inttype.IntType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_inttype.IntType>));
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3716262i32)) {
                        _typ_3712103 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_uinttype.UintType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_uinttype.UintType>));
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3716305i32)) {
                        _typ_3712103 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_chartype.CharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_chartype.CharType>));
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3716350i32)) {
                        _typ_3712103 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_uchartype.UcharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_uchartype.UcharType>));
                        _gotoNext = 3716402i32;
                    } else if (__value__ == (3716402i32)) {
                        _typeCache[_off] = _typ_3712103;
                        _t_3716425 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ_3712103) : stdgo._internal.debug.dwarf.Dwarf_t__interface_0.T__interface_0)) : stdgo._internal.debug.dwarf.Dwarf_t__interface_0.T__interface_0).basic();
                        (@:checkr _t_3716425 ?? throw "null pointer dereference").commonType.name = _name_3715378?.__copy__();
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3716425 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_3716544 = false;
                        _haveDataBitOffset_3716569 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3716425 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_3716544 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3716425 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_3716569 = @:tmpset0 __tmp__._1;
                        };
                        if ((_haveBitOffset_3716544 && _haveDataBitOffset_3716569 : Bool)) {
                            _gotoNext = 3716768i32;
                        } else {
                            _gotoNext = 3722825i32;
                        };
                    } else if (__value__ == (3716768i32)) {
                        _err_3711383 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_3715378?.__copy__(), (@:checkr _e_3711380 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3716862i32)) {
                        _t_3717615 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_structtype.StructType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3717615);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3717615);
                        _gotoNext = 3717669i32;
                    } else if (__value__ == (3717669i32)) {
                        {
                            final __value__ = (@:checkr _e_3711380 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3717686i32;
                            } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3717727i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3717770i32;
                            } else {
                                _gotoNext = 3717815i32;
                            };
                        };
                    } else if (__value__ == (3717686i32)) {
                        (@:checkr _t_3717615 ?? throw "null pointer dereference").kind = ("class" : stdgo.GoString);
                        _gotoNext = 3717815i32;
                    } else if (__value__ == (3717727i32)) {
                        (@:checkr _t_3717615 ?? throw "null pointer dereference").kind = ("struct" : stdgo.GoString);
                        _gotoNext = 3717815i32;
                    } else if (__value__ == (3717770i32)) {
                        (@:checkr _t_3717615 ?? throw "null pointer dereference").kind = ("union" : stdgo.GoString);
                        _gotoNext = 3717815i32;
                    } else if (__value__ == (3717815i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3717615 ?? throw "null pointer dereference").structName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3717615 ?? throw "null pointer dereference").incomplete = @:check2r _e_3711380.val((60u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) != null;
                        (@:checkr _t_3717615 ?? throw "null pointer dereference").field = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>);
                        _kid_3718037 = _next_3712177();
                        _gotoNext = 3718033i32;
                    } else if (__value__ == (3718033i32)) {
                        if ((_kid_3718037 != null && ((_kid_3718037 : Dynamic).__nil__ == null || !(_kid_3718037 : Dynamic).__nil__))) {
                            _gotoNext = 3718077i32;
                        } else {
                            _gotoNext = 3719548i32;
                        };
                    } else if (__value__ == (3718077i32)) {
                        if ((@:checkr _kid_3718037 ?? throw "null pointer dereference").tag != ((13u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                            _gotoNext = 3718106i32;
                        } else {
                            _gotoNext = 3718129i32;
                        };
                    } else if (__value__ == (3718106i32)) {
                        _kid_3718037 = _next_3712177();
                        _gotoNext = 3718033i32;
                    } else if (__value__ == (3718129i32)) {
                        _f_3718129 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_structfield.StructField)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>);
                        {
                            (@:checkr _f_3718129 ?? throw "null pointer dereference").type = _typeOf_3712980(_kid_3718037);
                            if (_err_3711383 != null) {
                                _gotoNext = 3718190i32;
                            } else {
                                _gotoNext = 3718215i32;
                            };
                        };
                    } else if (__value__ == (3718190i32)) {
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3718215i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3718215i32;
                        {
                            final __type__ = @:check2r _kid_3718037.val((56u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr));
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                                var _loc:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                                _loc_3718279 = _loc;
                                _gotoNext = 3718268i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                                var _loc:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                _loc_3718649 = _loc;
                                _gotoNext = 3718639i32;
                            } else {
                                var _loc:stdgo.AnyInterface = __type__?.__underlying__();
                                _gotoNext = 3718683i32;
                            };
                        };
                    } else if (__value__ == (3718268i32)) {
                        _b_3718368 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), ("location" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _loc_3718279)?.__copy__();
                        if (@:check2 _b_3718368._uint8() != ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 3718454i32;
                        } else {
                            _gotoNext = 3718544i32;
                        };
                    } else if (__value__ == (3718454i32)) {
                        _err_3711383 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _kid_3718037 ?? throw "null pointer dereference").offset, ("unexpected opcode" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3718544i32)) {
                        (@:checkr _f_3718129 ?? throw "null pointer dereference").byteOffset = (@:check2 _b_3718368._uint() : stdgo.GoInt64);
                        if (_b_3718368._err != null) {
                            _gotoNext = 3718595i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    } else if (__value__ == (3718595i32)) {
                        _err_3711383 = _b_3718368._err;
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3718639i32)) {
                        (@:checkr _f_3718129 ?? throw "null pointer dereference").byteOffset = _loc_3718649;
                        var __blank__ = _loc_3718649;
                        _gotoNext = 3718683i32;
                    } else if (__value__ == (3718683i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3718037.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_3718129 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3718037.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3718129 ?? throw "null pointer dereference").byteSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_3718774 = false;
                        _haveDataBitOffset_3718800 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3718037.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3718129 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_3718774 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3718037.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3718129 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_3718800 = @:tmpset0 __tmp__._1;
                        };
                        if ((_haveBitOffset_3718774 && _haveDataBitOffset_3718800 : Bool)) {
                            _gotoNext = 3719006i32;
                        } else {
                            _gotoNext = 3719104i32;
                        };
                    } else if (__value__ == (3719006i32)) {
                        _err_3711383 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _e_3711380 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3719104i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3718037.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3718129 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        (@:checkr _t_3717615 ?? throw "null pointer dereference").field = ((@:checkr _t_3717615 ?? throw "null pointer dereference").field.__append__(_f_3718129));
                        if (((_lastFieldBitSize_3717976 == ((0i64 : stdgo.GoInt64)) && _lastFieldByteOffset_3718005 == ((@:checkr _f_3718129 ?? throw "null pointer dereference").byteOffset) : Bool) && ((@:checkr _t_3717615 ?? throw "null pointer dereference").kind != ("union" : stdgo.GoString)) : Bool)) {
                            _gotoNext = 3719269i32;
                        } else {
                            _gotoNext = 3719448i32;
                        };
                    } else if (__value__ == (3719269i32)) {
                        @:check2r _fixups._recordArrayType(_lastFieldType_3717950);
                        _gotoNext = 3719448i32;
                    } else if (__value__ == (3719448i32)) {
                        _lastFieldType_3717950 = (stdgo.Go.setRef((@:checkr _f_3718129 ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
                        _lastFieldByteOffset_3718005 = (@:checkr _f_3718129 ?? throw "null pointer dereference").byteOffset;
                        _lastFieldBitSize_3717976 = (@:checkr _f_3718129 ?? throw "null pointer dereference").bitSize;
                        _kid_3718037 = _next_3712177();
                        _gotoNext = 3718033i32;
                    } else if (__value__ == (3719548i32)) {
                        if ((@:checkr _t_3717615 ?? throw "null pointer dereference").kind != (("union" : stdgo.GoString))) {
                            _gotoNext = 3719569i32;
                        } else {
                            _gotoNext = 3722825i32;
                        };
                    } else if (__value__ == (3719569i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3719574 = @:tmpset0 __tmp__._0;
                            _ok_3719577 = @:tmpset0 __tmp__._1;
                        };
                        if ((_ok_3719577 && (_b_3719574 == _lastFieldByteOffset_3718005) : Bool)) {
                            _gotoNext = 3719648i32;
                        } else {
                            _gotoNext = 3722825i32;
                        };
                    } else if (__value__ == (3719648i32)) {
                        @:check2r _fixups._recordArrayType(_lastFieldType_3717950);
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3719760i32)) {
                        _t_3719891 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3719891);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3719891);
                        {
                            (@:checkr _t_3719891 ?? throw "null pointer dereference").type = _typeOf_3712980(_e_3711380);
                            if (_err_3711383 != null) {
                                _gotoNext = 3719977i32;
                            } else {
                                _gotoNext = 3719999i32;
                            };
                        };
                    } else if (__value__ == (3719977i32)) {
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3719999i32)) {
                        _gotoNext = 3719999i32;
                        {
                            final __value__ = (@:checkr _e_3711380 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3720016i32;
                            } else if (__value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3720057i32;
                            } else if (__value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3720104i32;
                            } else {
                                _gotoNext = 3722825i32;
                            };
                        };
                    } else if (__value__ == (3720016i32)) {
                        (@:checkr _t_3719891 ?? throw "null pointer dereference").qual = ("const" : stdgo.GoString);
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3720057i32)) {
                        (@:checkr _t_3719891 ?? throw "null pointer dereference").qual = ("restrict" : stdgo.GoString);
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3720104i32)) {
                        (@:checkr _t_3719891 ?? throw "null pointer dereference").qual = ("volatile" : stdgo.GoString);
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3720155i32)) {
                        _t_3720439 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3720439);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3720439);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3720439 ?? throw "null pointer dereference").enumName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3720439 ?? throw "null pointer dereference").val = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        _kid_3720573 = _next_3712177();
                        _gotoNext = 3720569i32;
                    } else if (__value__ == (3720569i32)) {
                        if ((_kid_3720573 != null && ((_kid_3720573 : Dynamic).__nil__ == null || !(_kid_3720573 : Dynamic).__nil__))) {
                            _gotoNext = 3720613i32;
                        } else {
                            _gotoNext = 3722825i32;
                        };
                    } else if (__value__ == (3720600i32)) {
                        _kid_3720573 = _next_3712177();
                        _gotoNext = 3720569i32;
                    } else if (__value__ == (3720613i32)) {
                        if ((@:checkr _kid_3720573 ?? throw "null pointer dereference").tag == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                            _gotoNext = 3720646i32;
                        } else {
                            _gotoNext = 3720600i32;
                        };
                    } else if (__value__ == (3720646i32)) {
                        _f_3720652 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3720573.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_3720652 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3720573.val((28u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3720652 ?? throw "null pointer dereference").val = @:tmpset0 __tmp__._0;
                        };
                        _n_3720766 = ((@:checkr _t_3720439 ?? throw "null pointer dereference").val.length);
                        if ((_n_3720766 >= (@:checkr _t_3720439 ?? throw "null pointer dereference").val.capacity : Bool)) {
                            _gotoNext = 3720805i32;
                        } else {
                            _gotoNext = 3720895i32;
                        };
                    } else if (__value__ == (3720805i32)) {
                        _val_3720812 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>((_n_3720766 : stdgo.GoInt).toBasic(), (_n_3720766 * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        _val_3720812.__copyTo__((@:checkr _t_3720439 ?? throw "null pointer dereference").val);
                        (@:checkr _t_3720439 ?? throw "null pointer dereference").val = _val_3720812;
                        _gotoNext = 3720895i32;
                    } else if (__value__ == (3720895i32)) {
                        (@:checkr _t_3720439 ?? throw "null pointer dereference").val = ((@:checkr _t_3720439 ?? throw "null pointer dereference").val.__slice__((0 : stdgo.GoInt), (_n_3720766 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        (@:checkr _t_3720439 ?? throw "null pointer dereference").val[(_n_3720766 : stdgo.GoInt)] = _f_3720652;
                        _gotoNext = 3720600i32;
                    } else if (__value__ == (3720946i32)) {
                        _t_3721128 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3721128);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3721128);
                        if (@:check2r _e_3711380.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) == null) {
                            _gotoNext = 3721205i32;
                        } else {
                            _gotoNext = 3721246i32;
                        };
                    } else if (__value__ == (3721205i32)) {
                        (@:checkr _t_3721128 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType() : stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType>));
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3721246i32)) {
                        (@:checkr _t_3721128 ?? throw "null pointer dereference").type = _typeOf_3712980(_e_3711380);
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3721267i32)) {
                        _t_3721631 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_functype.FuncType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3721631);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3721631);
                        {
                            (@:checkr _t_3721631 ?? throw "null pointer dereference").returnType = _typeOf_3712980(_e_3711380);
                            if (_err_3711383 != null) {
                                _gotoNext = 3721723i32;
                            } else {
                                _gotoNext = 3721745i32;
                            };
                        };
                    } else if (__value__ == (3721723i32)) {
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3721745i32)) {
                        (@:checkr _t_3721631 ?? throw "null pointer dereference").paramType = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
                        _kid_3721784 = _next_3712177();
                        _gotoNext = 3721780i32;
                    } else if (__value__ == (3721780i32)) {
                        if ((_kid_3721784 != null && ((_kid_3721784 : Dynamic).__nil__ == null || !(_kid_3721784 : Dynamic).__nil__))) {
                            _gotoNext = 3721824i32;
                        } else {
                            _gotoNext = 3722825i32;
                        };
                    } else if (__value__ == (3721824i32)) {
                        _gotoNext = 3721846i32;
                    } else if (__value__ == (3721846i32)) {
                        {
                            final __value__ = (@:checkr _kid_3721784 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3721891i32;
                            } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3721981i32;
                            } else {
                                _gotoNext = 3721866i32;
                            };
                        };
                    } else if (__value__ == (3721866i32)) {
                        _kid_3721784 = _next_3712177();
                        _gotoNext = 3721780i32;
                    } else if (__value__ == (3721891i32)) {
                        {
                            _tkid_3721833 = _typeOf_3712980(_kid_3721784);
                            if (_err_3711383 != null) {
                                _gotoNext = 3721954i32;
                            } else {
                                _gotoNext = 3722048i32;
                            };
                        };
                    } else if (__value__ == (3721954i32)) {
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3721981i32)) {
                        _tkid_3721833 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType() : stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType>));
                        _gotoNext = 3722048i32;
                    } else if (__value__ == (3722048i32)) {
                        (@:checkr _t_3721631 ?? throw "null pointer dereference").paramType = ((@:checkr _t_3721631 ?? throw "null pointer dereference").paramType.__append__(_tkid_3721833));
                        _kid_3721784 = _next_3712177();
                        _gotoNext = 3721780i32;
                    } else if (__value__ == (3722094i32)) {
                        _t_3722233 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3722233);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3722233);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3722233 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3722233 ?? throw "null pointer dereference").type = _typeOf_3712980(_e_3711380);
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3722348i32)) {
                        _t_3722451 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3722451);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3722451);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3722451 ?? throw "null pointer dereference").basicType.commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3722549i32)) {
                        _t_3722708 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType>);
                        _typ_3712103 = stdgo.Go.asInterface(_t_3722708);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3722708);
                        (@:checkr _t_3722708 ?? throw "null pointer dereference").tag = (@:checkr _e_3711380 ?? throw "null pointer dereference").tag;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3722708 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3722825i32;
                    } else if (__value__ == (3722825i32)) {
                        if (_err_3711383 != null) {
                            _gotoNext = 3722839i32;
                        } else {
                            _gotoNext = 3722859i32;
                        };
                    } else if (__value__ == (3722839i32)) {
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3722859i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3711380.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3722863 = @:tmpset0 __tmp__._0;
                            _ok_3722866 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3722866) {
                            _gotoNext = 3722909i32;
                        } else {
                            _gotoNext = 3723181i32;
                        };
                        {
                            _gotoNext = 3722859i32;
                        };
                    } else if (__value__ == (3722909i32)) {
                        _b_3722863 = (-1i64 : stdgo.GoInt64);
                        var __blank__ = 0i32;
                        _gotoNext = 3722924i32;
                    } else if (__value__ == (3722924i32)) {
                        {
                            final __type__ = _typ_3712103;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : __type__.__underlying__().value;
                                _t_3722969 = _t;
                                _gotoNext = 3722952i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : __type__.__underlying__().value;
                                _t_3723141 = _t;
                                _gotoNext = 3723128i32;
                            } else {
                                var _t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = __type__ == null ? (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_) : cast __type__;
                                _gotoNext = 3723181i32;
                            };
                        };
                        _gotoNext = 3723181i32;
                    } else if (__value__ == (3722952i32)) {
                        (@:checkr _fixups ?? throw "null pointer dereference")._typedefs = ((@:checkr _fixups ?? throw "null pointer dereference")._typedefs.__append__(_t_3722969));
                        var __blank__ = _t_3722969;
                        _gotoNext = 3723181i32;
                    } else if (__value__ == (3723128i32)) {
                        _b_3722863 = (_addressSize_3711438 : stdgo.GoInt64);
                        var __blank__ = _t_3723141;
                        _gotoNext = 3723181i32;
                    } else if (__value__ == (3723181i32)) {
                        _typ_3712103.common().byteSize = _b_3722863;
                        _gotoNext = 3723211i32;
                    } else if (__value__ == (3723211i32)) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } = { _0 : _typ_3712103, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3723228i32;
                    } else if (__value__ == (3723228i32)) {
                        if (_typeCache != null) _typeCache.remove(_off);
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : _err_3711383 };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
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
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
        return @:check2r _d._readType(("info" : stdgo.GoString), stdgo.Go.asInterface(@:check2r _d.reader()), _off, (@:checkr _d ?? throw "null pointer dereference")._typeCache, null);
    }
    @:keep
    @:tdfield
    static public function addSection( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _name:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _err:stdgo.Error = (null : stdgo.Error);
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
        return _err;
    }
    @:keep
    @:tdfield
    static public function addTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        return @:check2r _d._parseTypes(_name?.__copy__(), _types);
    }
    @:keep
    @:tdfield
    static public function lineReader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        if ((@:checkr _d ?? throw "null pointer dereference")._line == null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((16u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _off = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if (((_off < (0i64 : stdgo.GoInt64) : Bool) || (_off > ((@:checkr _d ?? throw "null pointer dereference")._line.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("AttrStmtList value out of range" : stdgo.GoString)) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((27u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _compDir = __tmp__._0, __3 = __tmp__._1;
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(@:check2r _d._offsetToUnit((@:checkr _cu ?? throw "null pointer dereference").offset) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("line" : stdgo.GoString), (_off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), ((@:checkr _d ?? throw "null pointer dereference")._line.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        var _r = ({ _buf : _buf, _section : (@:checkr _d ?? throw "null pointer dereference")._line, _str : (@:checkr _d ?? throw "null pointer dereference")._str, _lineStr : (@:checkr _d ?? throw "null pointer dereference")._lineStr } : stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader);
        {
            var _err = (@:check2 _r._readHeader(_compDir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        @:check2 _r.reset();
        return { _0 : (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _debugAddr( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _format:stdgo._internal.debug.dwarf.Dwarf_t_dataformat.T_dataFormat, _addrBase:stdgo.GoUInt64, _idx:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _off = ((_idx * (_format._addrsize() : stdgo.GoUInt64) : stdgo.GoUInt64) + _addrBase : stdgo.GoUInt64);
        if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("offset out of range" : stdgo.GoString)) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, _format, ("addr" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._addr)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        @:check2 _b._skip((_off : stdgo.GoInt));
        var _val = (@:check2 _b._addr() : stdgo.GoUInt64);
        if (_b._err != null) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _b._err };
        };
        return { _0 : _val, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _dwarf5Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > ((@:checkr _d ?? throw "null pointer dereference")._rngLists.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid rnglist offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface(((@:checkr _d ?? throw "null pointer dereference")._ranges.length))) };
        };
        var _addrBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                };
                _addrBase = @:tmpset0 __tmp__._0;
            };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("rnglists" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._rngLists)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        @:check2 _buf._skip((_ranges : stdgo.GoInt));
        while (true) {
            var _opcode = (@:check2 _buf._uint8() : stdgo.GoUInt8);
            {
                final __value__ = _opcode;
                if (__value__ == ((0 : stdgo.GoUInt8))) {
                    if (_buf._err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _buf._err };
                    };
                    return { _0 : _ret, _1 : (null : stdgo.Error) };
                } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                    var _baseIdx = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = @:check2r _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _baseIdx);
                        _base = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                    var _startIdx = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var _endIdx = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var __tmp__ = @:check2r _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _startIdx), _start:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    var __tmp__ = @:check2r _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _endIdx), _end:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, _end]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                    var _startIdx = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var _len = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var __tmp__ = @:check2r _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _startIdx), _start:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, (_start + _len : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                    var _off1 = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var _off2 = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(_base + _off1 : stdgo.GoUInt64), (_base + _off2 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((5 : stdgo.GoUInt8))) {
                    _base = @:check2 _buf._addr();
                } else if (__value__ == ((6 : stdgo.GoUInt8))) {
                    var _start = (@:check2 _buf._addr() : stdgo.GoUInt64);
                    var _end = (@:check2 _buf._addr() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, _end]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((7 : stdgo.GoUInt8))) {
                    var _start = (@:check2 _buf._addr() : stdgo.GoUInt64);
                    var _len = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, (_start + _len : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _dwarf2Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > ((@:checkr _d ?? throw "null pointer dereference")._ranges.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid range offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface(((@:checkr _d ?? throw "null pointer dereference")._ranges.length))) };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("ranges" : stdgo.GoString), (_ranges : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), ((@:checkr _d ?? throw "null pointer dereference")._ranges.__slice__(_ranges) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
        while (((_buf._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _low = (@:check2 _buf._addr() : stdgo.GoUInt64);
            var _high = (@:check2 _buf._addr() : stdgo.GoUInt64);
            if (((_low == (0i64 : stdgo.GoUInt64)) && (_high == (0i64 : stdgo.GoUInt64)) : Bool)) {
                break;
            };
            if (_low == (((-1i64 : stdgo.GoUInt64) >> (((((8 : stdgo.GoInt) - @:check2r _u._addrsize() : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64))) {
                _base = _high;
            } else {
                _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(_base + _low : stdgo.GoUInt64), (_base + _high : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
            };
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _baseAddressForEntry( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.GoUInt64; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
        if ((@:checkr _e ?? throw "null pointer dereference").tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
            _cu = _e;
        } else {
            var _i = (@:check2r _d._offsetToUnit((@:checkr _e ?? throw "null pointer dereference").offset) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : stdgo._internal.errors.Errors_new_.new_(("no unit for entry" : stdgo.GoString)) };
            };
            var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
            var _b = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            _cu = @:check2 _b._entry(null, (@:checkr _u ?? throw "null pointer dereference")._atable, (@:checkr _u ?? throw "null pointer dereference")._base, (@:checkr _u ?? throw "null pointer dereference")._vers);
            if (_b._err != null) {
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : _b._err };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((82u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoUInt64), _1 : false };
            }, _cuEntry = __tmp__._0, _cuEntryOK = __tmp__._1;
            if (_cuEntryOK) {
                return { _0 : _cu, _1 : _cuEntry, _2 : (null : stdgo.Error) };
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoUInt64), _1 : false };
                }, _cuLow = __tmp__._0, _cuLowOK = __tmp__._1;
                if (_cuLowOK) {
                    return { _0 : _cu, _1 : _cuLow, _2 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : _cu, _1 : (0i64 : stdgo.GoUInt64), _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>> = (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoUInt64), _1 : false };
        }, _low = __tmp__._0, _lowOK = __tmp__._1;
        var _high:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _highOK:Bool = false;
        var _highField = @:check2r _e.attrField((18u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr));
        if ((_highField != null && ((_highField : Dynamic).__nil__ == null || !(_highField : Dynamic).__nil__))) {
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
                    if (_ok) {
                        _high = (_low + (_off : stdgo.GoUInt64) : stdgo.GoUInt64);
                        _highOK = true;
                    };
                };
            };
        };
        if ((_lowOK && _highOK : Bool)) {
            _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_low, _high]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
        };
        var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        {
            var _uidx = (@:check2r _d._offsetToUnit((@:checkr _e ?? throw "null pointer dereference").offset) : stdgo.GoInt);
            if (((_uidx >= (0 : stdgo.GoInt) : Bool) && (_uidx < ((@:checkr _d ?? throw "null pointer dereference")._unit.length) : Bool) : Bool)) {
                _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_uidx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
            };
        };
        if ((((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && ((@:checkr _u ?? throw "null pointer dereference")._vers >= (5 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _d ?? throw "null pointer dereference")._rngLists != null) : Bool)) {
            var _field = @:check2r _e.attrField((85u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr));
            if ((_field == null || (_field : Dynamic).__nil__)) {
                return { _0 : _ret, _1 : (null : stdgo.Error) };
            };
            {
                final __value__ = (@:checkr _field ?? throw "null pointer dereference").class_;
                if (__value__ == ((9 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _field ?? throw "null pointer dereference").val : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
                    if (!_rangesOK) {
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = @:check2r _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    return @:check2r _d._dwarf5Ranges(_u, _cu, _base, _ranges, _ret);
                } else if (__value__ == ((17 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _field ?? throw "null pointer dereference").val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoUInt64), _1 : false };
                    }, _rnglist = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = @:check2r _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    return @:check2r _d._dwarf5Ranges(_u, _cu, _base, (_rnglist : stdgo.GoInt64), _ret);
                } else {
                    return { _0 : _ret, _1 : (null : stdgo.Error) };
                };
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((85u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
        if ((_rangesOK && ((@:checkr _d ?? throw "null pointer dereference")._ranges != null) : Bool)) {
            var __tmp__ = @:check2r _d._baseAddressForEntry(_e), __3:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
            };
            return @:check2r _d._dwarf2Ranges(_u, _base, _ranges, _ret);
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        var _r = (stdgo.Go.setRef(({ _d : _d } : stdgo._internal.debug.dwarf.Dwarf_reader.Reader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>);
        @:check2r _r.seek((0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
        return _r;
    }
    @:keep
    @:tdfield
    static public function _parseAbbrev( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _off:stdgo.GoUInt64, _vers:stdgo.GoInt):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = _d;
        {
            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._abbrevCache != null && (@:checkr _d ?? throw "null pointer dereference")._abbrevCache.exists(_off) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._abbrevCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable), _1 : false }), _m:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _m, _1 : (null : stdgo.Error) };
            };
        };
        var _data = (@:checkr _d ?? throw "null pointer dereference")._abbrev;
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
        while (true) {
            var _id = (@:check2 _b._uint() : stdgo.GoUInt32);
            if (_id == ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            var _n = (0 : stdgo.GoInt);
            var _b1 = (_b?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            @:check2 _b1._uint();
            @:check2 _b1._uint8();
            while (true) {
                var _tag = (@:check2 _b1._uint() : stdgo.GoUInt64);
                var _fmt = (@:check2 _b1._uint() : stdgo.GoUInt64);
                if (((_tag == (0i64 : stdgo.GoUInt64)) && (_fmt == (0i64 : stdgo.GoUInt64)) : Bool)) {
                    break;
                };
                if ((_fmt : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format) == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    @:check2 _b1._int();
                };
                _n++;
            };
            if (_b1._err != null) {
                return { _0 : null, _1 : _b1._err };
            };
            var _a:stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev = ({} : stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev);
            _a._tag = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            _a._children = @:check2 _b._uint8() != ((0 : stdgo.GoUInt8));
            _a._field = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield>);
            for (_i => _ in _a._field) {
                _a._field[(_i : stdgo.GoInt)]._attr = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_attr.Attr);
                _a._field[(_i : stdgo.GoInt)]._fmt = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
                _a._field[(_i : stdgo.GoInt)]._class = stdgo._internal.debug.dwarf.Dwarf__formtoclass._formToClass(_a._field[(_i : stdgo.GoInt)]._fmt, _a._field[(_i : stdgo.GoInt)]._attr, _vers, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>));
                if (_a._field[(_i : stdgo.GoInt)]._fmt == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _a._field[(_i : stdgo.GoInt)]._val = @:check2 _b._int();
                };
            };
            @:check2 _b._uint();
            @:check2 _b._uint();
            _m[_id] = _a?.__copy__();
        };
        if (_b._err != null) {
            return { _0 : null, _1 : _b._err };
        };
        (@:checkr _d ?? throw "null pointer dereference")._abbrevCache[_off] = _m;
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
}
