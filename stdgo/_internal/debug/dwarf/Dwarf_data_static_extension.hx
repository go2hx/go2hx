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
            var _next_3704794:() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = null;
            var _t_3703934:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _t_3715325:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType>);
            var _b_3710985:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            var _lastFieldBitSize_3710593:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _dims_3706554:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
            var _f_3713269:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>);
            var _fixer_3704496:stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer = ({} : stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer);
            var _e_3703997:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _t_3715758:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
            var _t_3713745:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
            var _lastFieldByteOffset_3710622:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _lastFieldType_3710567:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
            var _enc_3708033:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _haveBitOffset_3709161:Bool = false;
            var _nextDepth_3704731:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3704000:stdgo.Error = (null : stdgo.Error);
            var _t_3714248:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType>);
            var _n_3713383:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3713056:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType>);
            var _t_3712508:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType>);
            var _byteSize_3708648:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _ok_3706764:Bool = false;
            var _val_3713429:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
            var _haveBitOffset_3711391:Bool = false;
            var _ok_3708038:Bool = false;
            var _ok_3715483:Bool = false;
            var _t_3706359:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>);
            var _ok_3703937:Bool = false;
            var _t_3715068:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType>);
            var _i_3707338:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3715586:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
            var _name_3707995:stdgo.GoString = ("" : stdgo.GoString);
            var _tkid_3714450:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _b_3712191:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_3709042:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType>);
            var _typ_3704720:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            var _b_3715480:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _loc_3711266:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_3710232:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType>);
            var _haveDataBitOffset_3709186:Bool = false;
            var _kid_3713190:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _kid_3714401:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _loc_3710896:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _count_3706757:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _ok_3712194:Bool = false;
            var _haveDataBitOffset_3711417:Bool = false;
            var _typeOf_3705597:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> -> stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = null;
            var _t_3714850:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
            var _f_3710746:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>);
            var _kid_3706573:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _addressSize_3704055:stdgo.GoInt = (0 : stdgo.GoInt);
            var _kid_3710654:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        var __blank__ = _loc_3710896;
                        _gotoNext = 3711300i32;
                        {
                            {
                                var __tmp__ = (_typeCache != null && _typeCache.__exists__(_off) ? { _0 : _typeCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : false });
                                _t_3703934 = @:tmpset0 __tmp__._0;
                                _ok_3703937 = @:tmpset0 __tmp__._1;
                            };
                            if (_ok_3703937) {
                                _gotoNext = 3703962i32;
                            } else {
                                _gotoNext = 3703984i32;
                            };
                        };
                    } else if (__value__ == (3703962i32)) {
                        return { _0 : _t_3703934, _1 : (null : stdgo.Error) };
                        _gotoNext = 3703984i32;
                    } else if (__value__ == (3703984i32)) {
                        _r.seek(_off);
                        {
                            var __tmp__ = _r.next();
                            _e_3703997 = @:tmpset0 __tmp__._0;
                            _err_3704000 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3704000 != null) {
                            _gotoNext = 3704031i32;
                        } else {
                            _gotoNext = 3704055i32;
                        };
                    } else if (__value__ == (3704031i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : _err_3704000 };
                        _gotoNext = 3704055i32;
                    } else if (__value__ == (3704055i32)) {
                        _addressSize_3704055 = _r.addressSize();
                        if (((_e_3703997 == null || (_e_3703997 : Dynamic).__nil__) || ((@:checkr _e_3703997 ?? throw "null pointer dereference").offset != _off) : Bool)) {
                            _gotoNext = 3704118i32;
                        } else {
                            _gotoNext = 3704471i32;
                        };
                    } else if (__value__ == (3704118i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), _off, ("no type at offset" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
                        _gotoNext = 3704471i32;
                    } else if (__value__ == (3704471i32)) {
                        if ((_fixups == null || (_fixups : Dynamic).__nil__)) {
                            _gotoNext = 3704488i32;
                        } else {
                            _gotoNext = 3704716i32;
                        };
                    } else if (__value__ == (3704488i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    @:check2 _fixer_3704496._apply();
                                };
                                a();
                            }) });
                        };
                        _fixups = (stdgo.Go.setRef(_fixer_3704496) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer>);
                        _gotoNext = 3704716i32;
                    } else if (__value__ == (3704716i32)) {
                        _nextDepth_3704731 = (0 : stdgo.GoInt);
                        _next_3704794 = function():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> {
                            if (!(@:checkr _e_3703997 ?? throw "null pointer dereference").children) {
                                return null;
                            };
                            while (true) {
                                var __tmp__ = _r.next(), _kid:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                                if (_err1 != null) {
                                    _err_3704000 = _err1;
                                    return null;
                                };
                                if ((_kid == null || (_kid : Dynamic).__nil__)) {
                                    _err_3704000 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), _r._offset(), ("unexpected end of DWARF entries" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                                    return null;
                                };
                                if ((@:checkr _kid ?? throw "null pointer dereference").tag == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                    if ((_nextDepth_3704731 > (0 : stdgo.GoInt) : Bool)) {
                                        _nextDepth_3704731--;
                                        continue;
                                    };
                                    return null;
                                };
                                if ((@:checkr _kid ?? throw "null pointer dereference").children) {
                                    _nextDepth_3704731++;
                                };
                                if ((_nextDepth_3704731 > (0 : stdgo.GoInt) : Bool)) {
                                    continue;
                                };
                                return _kid;
                            };
                        };
                        _typeOf_3705597 = function(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>):stdgo._internal.debug.dwarf.Dwarf_type_.Type_ {
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
                                            _err_3704000 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_3704000 != null) {
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                                    var _toff:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                    {
                                        {
                                            var __tmp__ = @:check2r _d._sigToType(_toff);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_3704000 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_3704000 != null) {
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
                        _gotoNext = 3705997i32;
                    } else if (__value__ == (3705997i32)) {
                        {
                            final __value__ = (@:checkr _e_3703997 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3706013i32;
                            } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3707431i32;
                            } else if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3709479i32;
                            } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || __value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3712377i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3712772i32;
                            } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3713563i32;
                            } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3713884i32;
                            } else if (__value__ == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3714711i32;
                            } else if (__value__ == ((59u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3714965i32;
                            } else {
                                _gotoNext = 3715166i32;
                            };
                        };
                    } else if (__value__ == (3706013i32)) {
                        _t_3706359 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3706359);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3706359);
                        {
                            (@:checkr _t_3706359 ?? throw "null pointer dereference").type = _typeOf_3705597(_e_3703997);
                            if (_err_3704000 != null) {
                                _gotoNext = 3706446i32;
                            } else {
                                _gotoNext = 3706468i32;
                            };
                        };
                    } else if (__value__ == (3706446i32)) {
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3706468i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((46u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3706359 ?? throw "null pointer dereference").strideBitSize = @:tmpset0 __tmp__._0;
                        };
                        _kid_3706573 = _next_3704794();
                        _gotoNext = 3706569i32;
                    } else if (__value__ == (3706569i32)) {
                        if ((_kid_3706573 != null && ((_kid_3706573 : Dynamic).__nil__ == null || !(_kid_3706573 : Dynamic).__nil__))) {
                            _gotoNext = 3706613i32;
                        } else {
                            _gotoNext = 3707230i32;
                        };
                    } else if (__value__ == (3706600i32)) {
                        _kid_3706573 = _next_3704794();
                        _gotoNext = 3706569i32;
                    } else if (__value__ == (3706613i32)) {
                        _gotoNext = 3706711i32;
                    } else if (__value__ == (3706711i32)) {
                        {
                            final __value__ = (@:checkr _kid_3706573 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3706731i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3707090i32;
                            } else {
                                _gotoNext = 3706600i32;
                            };
                        };
                    } else if (__value__ == (3706731i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3706573.val((55u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3706757 = @:tmpset0 __tmp__._0;
                            _ok_3706764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3706764) {
                            _gotoNext = 3706808i32;
                        } else {
                            _gotoNext = 3707060i32;
                        };
                    } else if (__value__ == (3706808i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3706573.val((47u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3706757 = @:tmpset0 __tmp__._0;
                            _ok_3706764 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3706764) {
                            _gotoNext = 3706924i32;
                        } else if ((_dims_3706554.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3707010i32;
                        } else {
                            _gotoNext = 3707060i32;
                        };
                    } else if (__value__ == (3706924i32)) {
                        _count_3706757++;
                        _gotoNext = 3707060i32;
                    } else if (__value__ == (3707010i32)) {
                        _count_3706757 = (-1i64 : stdgo.GoInt64);
                        _gotoNext = 3707060i32;
                    } else if (__value__ == (3707060i32)) {
                        _dims_3706554 = (_dims_3706554.__append__(_count_3706757));
                        _gotoNext = 3706600i32;
                    } else if (__value__ == (3707090i32)) {
                        _err_3704000 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _kid_3706573 ?? throw "null pointer dereference").offset, ("cannot handle enumeration type as array bound" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3707230i32)) {
                        if ((_dims_3706554.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3707248i32;
                        } else {
                            _gotoNext = 3707314i32;
                        };
                    } else if (__value__ == (3707248i32)) {
                        _dims_3706554 = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
                        _gotoNext = 3707314i32;
                    } else if (__value__ == (3707314i32)) {
                        (@:checkr _t_3706359 ?? throw "null pointer dereference").count = _dims_3706554[(0 : stdgo.GoInt)];
                        _i_3707338 = ((_dims_3706554.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _gotoNext = 3707334i32;
                    } else if (__value__ == (3707334i32)) {
                        if ((_i_3707338 >= (1 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3707370i32;
                        } else {
                            _gotoNext = 3715442i32;
                        };
                    } else if (__value__ == (3707370i32)) {
                        (@:checkr _t_3706359 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : (@:checkr _t_3706359 ?? throw "null pointer dereference").type, count : _dims_3706554[(_i_3707338 : stdgo.GoInt)] } : stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>));
                        _i_3707338--;
                        _gotoNext = 3707334i32;
                    } else if (__value__ == (3707431i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _name_3707995 = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((62u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _enc_3708033 = @:tmpset0 __tmp__._0;
                            _ok_3708038 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3708038) {
                            _gotoNext = 3708081i32;
                        } else {
                            _gotoNext = 3708182i32;
                        };
                    } else if (__value__ == (3708081i32)) {
                        _err_3704000 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_3707995?.__copy__(), (@:checkr _e_3703997 ?? throw "null pointer dereference").offset, (("missing encoding attribute for " : stdgo.GoString) + _name_3707995?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3708182i32)) {
                        _gotoNext = 3708182i32;
                        {
                            final __value__ = _enc_3708033;
                            if (__value__ == ((1i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708301i32;
                            } else if (__value__ == ((2i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708343i32;
                            } else if (__value__ == ((3i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708385i32;
                            } else if (__value__ == ((4i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708798i32;
                            } else if (__value__ == ((5i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708839i32;
                            } else if (__value__ == ((7i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708879i32;
                            } else if (__value__ == ((6i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708922i32;
                            } else if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708967i32;
                            } else {
                                _gotoNext = 3708197i32;
                            };
                        };
                    } else if (__value__ == (3708197i32)) {
                        _err_3704000 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_3707995?.__copy__(), (@:checkr _e_3703997 ?? throw "null pointer dereference").offset, ("unrecognized encoding attribute value" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3708301i32)) {
                        _typ_3704720 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_addrtype.AddrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_addrtype.AddrType>));
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3708343i32)) {
                        _typ_3704720 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_booltype.BoolType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_booltype.BoolType>));
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3708385i32)) {
                        _typ_3704720 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_complextype.ComplexType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_complextype.ComplexType>));
                        if (_name_3707995 == (("complex" : stdgo.GoString))) {
                            _gotoNext = 3708457i32;
                        } else {
                            _gotoNext = 3709019i32;
                        };
                    } else if (__value__ == (3708457i32)) {
                        _gotoNext = 3708641i32;
                    } else if (__value__ == (3708641i32)) {
                        {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                } catch(_) {
                                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                                };
                                _byteSize_3708648 = @:tmpset0 __tmp__._0;
                            };
                            {
                                final __value__ = _byteSize_3708648;
                                if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3708707i32;
                                } else if (__value__ == ((16i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3708747i32;
                                } else {
                                    _gotoNext = 3709019i32;
                                };
                            };
                        };
                    } else if (__value__ == (3708707i32)) {
                        _name_3707995 = ("complex float" : stdgo.GoString);
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3708747i32)) {
                        _name_3707995 = ("complex double" : stdgo.GoString);
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3708798i32)) {
                        _typ_3704720 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_floattype.FloatType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_floattype.FloatType>));
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3708839i32)) {
                        _typ_3704720 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_inttype.IntType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_inttype.IntType>));
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3708879i32)) {
                        _typ_3704720 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_uinttype.UintType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_uinttype.UintType>));
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3708922i32)) {
                        _typ_3704720 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_chartype.CharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_chartype.CharType>));
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3708967i32)) {
                        _typ_3704720 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_uchartype.UcharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_uchartype.UcharType>));
                        _gotoNext = 3709019i32;
                    } else if (__value__ == (3709019i32)) {
                        _typeCache[_off] = _typ_3704720;
                        _t_3709042 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ_3704720) : stdgo._internal.debug.dwarf.Dwarf_t__interface_0.T__interface_0)) : stdgo._internal.debug.dwarf.Dwarf_t__interface_0.T__interface_0).basic();
                        (@:checkr _t_3709042 ?? throw "null pointer dereference").commonType.name = _name_3707995?.__copy__();
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3709042 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_3709161 = false;
                        _haveDataBitOffset_3709186 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3709042 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_3709161 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3709042 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_3709186 = @:tmpset0 __tmp__._1;
                        };
                        if ((_haveBitOffset_3709161 && _haveDataBitOffset_3709186 : Bool)) {
                            _gotoNext = 3709385i32;
                        } else {
                            _gotoNext = 3715442i32;
                        };
                    } else if (__value__ == (3709385i32)) {
                        _err_3704000 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name_3707995?.__copy__(), (@:checkr _e_3703997 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3709479i32)) {
                        _t_3710232 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_structtype.StructType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3710232);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3710232);
                        _gotoNext = 3710286i32;
                    } else if (__value__ == (3710286i32)) {
                        {
                            final __value__ = (@:checkr _e_3703997 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3710303i32;
                            } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3710344i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3710387i32;
                            } else {
                                _gotoNext = 3710432i32;
                            };
                        };
                    } else if (__value__ == (3710303i32)) {
                        (@:checkr _t_3710232 ?? throw "null pointer dereference").kind = ("class" : stdgo.GoString);
                        _gotoNext = 3710432i32;
                    } else if (__value__ == (3710344i32)) {
                        (@:checkr _t_3710232 ?? throw "null pointer dereference").kind = ("struct" : stdgo.GoString);
                        _gotoNext = 3710432i32;
                    } else if (__value__ == (3710387i32)) {
                        (@:checkr _t_3710232 ?? throw "null pointer dereference").kind = ("union" : stdgo.GoString);
                        _gotoNext = 3710432i32;
                    } else if (__value__ == (3710432i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3710232 ?? throw "null pointer dereference").structName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3710232 ?? throw "null pointer dereference").incomplete = @:check2r _e_3703997.val((60u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) != null;
                        (@:checkr _t_3710232 ?? throw "null pointer dereference").field = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>>);
                        _kid_3710654 = _next_3704794();
                        _gotoNext = 3710650i32;
                    } else if (__value__ == (3710650i32)) {
                        if ((_kid_3710654 != null && ((_kid_3710654 : Dynamic).__nil__ == null || !(_kid_3710654 : Dynamic).__nil__))) {
                            _gotoNext = 3710694i32;
                        } else {
                            _gotoNext = 3712165i32;
                        };
                    } else if (__value__ == (3710694i32)) {
                        if ((@:checkr _kid_3710654 ?? throw "null pointer dereference").tag != ((13u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                            _gotoNext = 3710723i32;
                        } else {
                            _gotoNext = 3710746i32;
                        };
                    } else if (__value__ == (3710723i32)) {
                        _kid_3710654 = _next_3704794();
                        _gotoNext = 3710650i32;
                    } else if (__value__ == (3710746i32)) {
                        _f_3710746 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_structfield.StructField)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>);
                        {
                            (@:checkr _f_3710746 ?? throw "null pointer dereference").type = _typeOf_3705597(_kid_3710654);
                            if (_err_3704000 != null) {
                                _gotoNext = 3710807i32;
                            } else {
                                _gotoNext = 3710832i32;
                            };
                        };
                    } else if (__value__ == (3710807i32)) {
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3710832i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3710832i32;
                        {
                            final __type__ = @:check2r _kid_3710654.val((56u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr));
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                                var _loc:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                                _loc_3710896 = _loc;
                                _gotoNext = 3710885i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                                var _loc:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                _loc_3711266 = _loc;
                                _gotoNext = 3711256i32;
                            } else {
                                var _loc:stdgo.AnyInterface = __type__?.__underlying__();
                                _gotoNext = 3711300i32;
                            };
                        };
                    } else if (__value__ == (3710885i32)) {
                        _b_3710985 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_t_unknownformat.T_unknownFormat)), ("location" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _loc_3710896)?.__copy__();
                        if (@:check2 _b_3710985._uint8() != ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 3711071i32;
                        } else {
                            _gotoNext = 3711161i32;
                        };
                    } else if (__value__ == (3711071i32)) {
                        _err_3704000 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _kid_3710654 ?? throw "null pointer dereference").offset, ("unexpected opcode" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3711161i32)) {
                        (@:checkr _f_3710746 ?? throw "null pointer dereference").byteOffset = (@:check2 _b_3710985._uint() : stdgo.GoInt64);
                        if (_b_3710985._err != null) {
                            _gotoNext = 3711212i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    } else if (__value__ == (3711212i32)) {
                        _err_3704000 = _b_3710985._err;
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3711256i32)) {
                        (@:checkr _f_3710746 ?? throw "null pointer dereference").byteOffset = _loc_3711266;
                        var __blank__ = _loc_3711266;
                        _gotoNext = 3711300i32;
                    } else if (__value__ == (3711300i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710654.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_3710746 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710654.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3710746 ?? throw "null pointer dereference").byteSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_3711391 = false;
                        _haveDataBitOffset_3711417 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710654.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3710746 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_3711391 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710654.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3710746 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_3711417 = @:tmpset0 __tmp__._1;
                        };
                        if ((_haveBitOffset_3711391 && _haveDataBitOffset_3711417 : Bool)) {
                            _gotoNext = 3711623i32;
                        } else {
                            _gotoNext = 3711721i32;
                        };
                    } else if (__value__ == (3711623i32)) {
                        _err_3704000 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(_name?.__copy__(), (@:checkr _e_3703997 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3711721i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710654.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3710746 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        (@:checkr _t_3710232 ?? throw "null pointer dereference").field = ((@:checkr _t_3710232 ?? throw "null pointer dereference").field.__append__(_f_3710746));
                        if (((_lastFieldBitSize_3710593 == ((0i64 : stdgo.GoInt64)) && _lastFieldByteOffset_3710622 == ((@:checkr _f_3710746 ?? throw "null pointer dereference").byteOffset) : Bool) && ((@:checkr _t_3710232 ?? throw "null pointer dereference").kind != ("union" : stdgo.GoString)) : Bool)) {
                            _gotoNext = 3711886i32;
                        } else {
                            _gotoNext = 3712065i32;
                        };
                    } else if (__value__ == (3711886i32)) {
                        @:check2r _fixups._recordArrayType(_lastFieldType_3710567);
                        _gotoNext = 3712065i32;
                    } else if (__value__ == (3712065i32)) {
                        _lastFieldType_3710567 = (stdgo.Go.setRef((@:checkr _f_3710746 ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
                        _lastFieldByteOffset_3710622 = (@:checkr _f_3710746 ?? throw "null pointer dereference").byteOffset;
                        _lastFieldBitSize_3710593 = (@:checkr _f_3710746 ?? throw "null pointer dereference").bitSize;
                        _kid_3710654 = _next_3704794();
                        _gotoNext = 3710650i32;
                    } else if (__value__ == (3712165i32)) {
                        if ((@:checkr _t_3710232 ?? throw "null pointer dereference").kind != (("union" : stdgo.GoString))) {
                            _gotoNext = 3712186i32;
                        } else {
                            _gotoNext = 3715442i32;
                        };
                    } else if (__value__ == (3712186i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3712191 = @:tmpset0 __tmp__._0;
                            _ok_3712194 = @:tmpset0 __tmp__._1;
                        };
                        if ((_ok_3712194 && (_b_3712191 == _lastFieldByteOffset_3710622) : Bool)) {
                            _gotoNext = 3712265i32;
                        } else {
                            _gotoNext = 3715442i32;
                        };
                    } else if (__value__ == (3712265i32)) {
                        @:check2r _fixups._recordArrayType(_lastFieldType_3710567);
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3712377i32)) {
                        _t_3712508 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_qualtype.QualType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3712508);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3712508);
                        {
                            (@:checkr _t_3712508 ?? throw "null pointer dereference").type = _typeOf_3705597(_e_3703997);
                            if (_err_3704000 != null) {
                                _gotoNext = 3712594i32;
                            } else {
                                _gotoNext = 3712616i32;
                            };
                        };
                    } else if (__value__ == (3712594i32)) {
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3712616i32)) {
                        _gotoNext = 3712616i32;
                        {
                            final __value__ = (@:checkr _e_3703997 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3712633i32;
                            } else if (__value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3712674i32;
                            } else if (__value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3712721i32;
                            } else {
                                _gotoNext = 3715442i32;
                            };
                        };
                    } else if (__value__ == (3712633i32)) {
                        (@:checkr _t_3712508 ?? throw "null pointer dereference").qual = ("const" : stdgo.GoString);
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3712674i32)) {
                        (@:checkr _t_3712508 ?? throw "null pointer dereference").qual = ("restrict" : stdgo.GoString);
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3712721i32)) {
                        (@:checkr _t_3712508 ?? throw "null pointer dereference").qual = ("volatile" : stdgo.GoString);
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3712772i32)) {
                        _t_3713056 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumtype.EnumType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3713056);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3713056);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3713056 ?? throw "null pointer dereference").enumName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3713056 ?? throw "null pointer dereference").val = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        _kid_3713190 = _next_3704794();
                        _gotoNext = 3713186i32;
                    } else if (__value__ == (3713186i32)) {
                        if ((_kid_3713190 != null && ((_kid_3713190 : Dynamic).__nil__ == null || !(_kid_3713190 : Dynamic).__nil__))) {
                            _gotoNext = 3713230i32;
                        } else {
                            _gotoNext = 3715442i32;
                        };
                    } else if (__value__ == (3713217i32)) {
                        _kid_3713190 = _next_3704794();
                        _gotoNext = 3713186i32;
                    } else if (__value__ == (3713230i32)) {
                        if ((@:checkr _kid_3713190 ?? throw "null pointer dereference").tag == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                            _gotoNext = 3713263i32;
                        } else {
                            _gotoNext = 3713217i32;
                        };
                    } else if (__value__ == (3713263i32)) {
                        _f_3713269 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3713190.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_3713269 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3713190.val((28u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3713269 ?? throw "null pointer dereference").val = @:tmpset0 __tmp__._0;
                        };
                        _n_3713383 = ((@:checkr _t_3713056 ?? throw "null pointer dereference").val.length);
                        if ((_n_3713383 >= (@:checkr _t_3713056 ?? throw "null pointer dereference").val.capacity : Bool)) {
                            _gotoNext = 3713422i32;
                        } else {
                            _gotoNext = 3713512i32;
                        };
                    } else if (__value__ == (3713422i32)) {
                        _val_3713429 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>((_n_3713383 : stdgo.GoInt).toBasic(), (_n_3713383 * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        _val_3713429.__copyTo__((@:checkr _t_3713056 ?? throw "null pointer dereference").val);
                        (@:checkr _t_3713056 ?? throw "null pointer dereference").val = _val_3713429;
                        _gotoNext = 3713512i32;
                    } else if (__value__ == (3713512i32)) {
                        (@:checkr _t_3713056 ?? throw "null pointer dereference").val = ((@:checkr _t_3713056 ?? throw "null pointer dereference").val.__slice__((0 : stdgo.GoInt), (_n_3713383 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_enumvalue_.EnumValue_>>);
                        (@:checkr _t_3713056 ?? throw "null pointer dereference").val[(_n_3713383 : stdgo.GoInt)] = _f_3713269;
                        _gotoNext = 3713217i32;
                    } else if (__value__ == (3713563i32)) {
                        _t_3713745 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3713745);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3713745);
                        if (@:check2r _e_3703997.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) == null) {
                            _gotoNext = 3713822i32;
                        } else {
                            _gotoNext = 3713863i32;
                        };
                    } else if (__value__ == (3713822i32)) {
                        (@:checkr _t_3713745 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType() : stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType>));
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3713863i32)) {
                        (@:checkr _t_3713745 ?? throw "null pointer dereference").type = _typeOf_3705597(_e_3703997);
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3713884i32)) {
                        _t_3714248 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_functype.FuncType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3714248);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3714248);
                        {
                            (@:checkr _t_3714248 ?? throw "null pointer dereference").returnType = _typeOf_3705597(_e_3703997);
                            if (_err_3704000 != null) {
                                _gotoNext = 3714340i32;
                            } else {
                                _gotoNext = 3714362i32;
                            };
                        };
                    } else if (__value__ == (3714340i32)) {
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3714362i32)) {
                        (@:checkr _t_3714248 ?? throw "null pointer dereference").paramType = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
                        _kid_3714401 = _next_3704794();
                        _gotoNext = 3714397i32;
                    } else if (__value__ == (3714397i32)) {
                        if ((_kid_3714401 != null && ((_kid_3714401 : Dynamic).__nil__ == null || !(_kid_3714401 : Dynamic).__nil__))) {
                            _gotoNext = 3714441i32;
                        } else {
                            _gotoNext = 3715442i32;
                        };
                    } else if (__value__ == (3714441i32)) {
                        _gotoNext = 3714463i32;
                    } else if (__value__ == (3714463i32)) {
                        {
                            final __value__ = (@:checkr _kid_3714401 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3714508i32;
                            } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _gotoNext = 3714598i32;
                            } else {
                                _gotoNext = 3714483i32;
                            };
                        };
                    } else if (__value__ == (3714483i32)) {
                        _kid_3714401 = _next_3704794();
                        _gotoNext = 3714397i32;
                    } else if (__value__ == (3714508i32)) {
                        {
                            _tkid_3714450 = _typeOf_3705597(_kid_3714401);
                            if (_err_3704000 != null) {
                                _gotoNext = 3714571i32;
                            } else {
                                _gotoNext = 3714665i32;
                            };
                        };
                    } else if (__value__ == (3714571i32)) {
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3714598i32)) {
                        _tkid_3714450 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType() : stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_dotdotdottype.DotDotDotType>));
                        _gotoNext = 3714665i32;
                    } else if (__value__ == (3714665i32)) {
                        (@:checkr _t_3714248 ?? throw "null pointer dereference").paramType = ((@:checkr _t_3714248 ?? throw "null pointer dereference").paramType.__append__(_tkid_3714450));
                        _kid_3714401 = _next_3704794();
                        _gotoNext = 3714397i32;
                    } else if (__value__ == (3714711i32)) {
                        _t_3714850 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3714850);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3714850);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3714850 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3714850 ?? throw "null pointer dereference").type = _typeOf_3705597(_e_3703997);
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3714965i32)) {
                        _t_3715068 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unspecifiedtype.UnspecifiedType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3715068);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3715068);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3715068 ?? throw "null pointer dereference").basicType.commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3715166i32)) {
                        _t_3715325 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType>);
                        _typ_3704720 = stdgo.Go.asInterface(_t_3715325);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3715325);
                        (@:checkr _t_3715325 ?? throw "null pointer dereference").tag = (@:checkr _e_3703997 ?? throw "null pointer dereference").tag;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3715325 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3715442i32;
                    } else if (__value__ == (3715442i32)) {
                        if (_err_3704000 != null) {
                            _gotoNext = 3715456i32;
                        } else {
                            _gotoNext = 3715476i32;
                        };
                    } else if (__value__ == (3715456i32)) {
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3715476i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703997.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3715480 = @:tmpset0 __tmp__._0;
                            _ok_3715483 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3715483) {
                            _gotoNext = 3715526i32;
                        } else {
                            _gotoNext = 3715798i32;
                        };
                        {
                            _gotoNext = 3715476i32;
                        };
                    } else if (__value__ == (3715526i32)) {
                        _b_3715480 = (-1i64 : stdgo.GoInt64);
                        var __blank__ = 0i32;
                        _gotoNext = 3715541i32;
                    } else if (__value__ == (3715541i32)) {
                        {
                            final __type__ = _typ_3704720;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>) : __type__.__underlying__().value;
                                _t_3715586 = _t;
                                _gotoNext = 3715569i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ptrtype.PtrType>) : __type__.__underlying__().value;
                                _t_3715758 = _t;
                                _gotoNext = 3715745i32;
                            } else {
                                var _t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_ = __type__ == null ? (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_) : cast __type__;
                                _gotoNext = 3715798i32;
                            };
                        };
                        _gotoNext = 3715798i32;
                    } else if (__value__ == (3715569i32)) {
                        (@:checkr _fixups ?? throw "null pointer dereference")._typedefs = ((@:checkr _fixups ?? throw "null pointer dereference")._typedefs.__append__(_t_3715586));
                        var __blank__ = _t_3715586;
                        _gotoNext = 3715798i32;
                    } else if (__value__ == (3715745i32)) {
                        _b_3715480 = (_addressSize_3704055 : stdgo.GoInt64);
                        var __blank__ = _t_3715758;
                        _gotoNext = 3715798i32;
                    } else if (__value__ == (3715798i32)) {
                        _typ_3704720.common().byteSize = _b_3715480;
                        _gotoNext = 3715828i32;
                    } else if (__value__ == (3715828i32)) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } = { _0 : _typ_3704720, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3715845i32;
                    } else if (__value__ == (3715845i32)) {
                        if (_typeCache != null) _typeCache.__remove__(_off);
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_), _1 : _err_3704000 };
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
            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._abbrevCache != null && (@:checkr _d ?? throw "null pointer dereference")._abbrevCache.__exists__(_off) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._abbrevCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable), _1 : false }), _m:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable = __tmp__._0, _ok:Bool = __tmp__._1;
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
