package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Data_asInterface) class Data_static_extension {
    @:keep
    static public function _offsetToUnit( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _next = (stdgo._internal.sort.Sort_search.search((_d._unit.length), function(_i:stdgo.GoInt):Bool {
            return (_d._unit[(_i : stdgo.GoInt)]._off > _off : Bool);
        }) : stdgo.GoInt);
        if (_next == ((0 : stdgo.GoInt))) {
            return (-1 : stdgo.GoInt);
        };
        var _u = (stdgo.Go.setRef(_d._unit[(_next - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        if (((_u._off <= _off : Bool) && (_off < (_u._off + (_u._data.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool) : Bool)) {
            return (_next - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    static public function _parseUnits( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>):{ var _0 : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _nunit = (0 : stdgo.GoInt);
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _d._info)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _b._unitLength(), _len:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __tmp__._0, __3:Bool = __tmp__._1;
            if (_len != (((_len : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                _b._error(("unit length overflow" : stdgo.GoString));
                break;
            };
            _b._skip((_len : stdgo.GoInt));
            if ((_len > (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool)) {
                _nunit++;
            };
        };
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
        };
        _b = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _d._info)?.__copy__();
        var _units = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>((_nunit : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_nunit : stdgo.GoInt).toBasic() > 0 ? (_nunit : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        for (_i => _ in _units) {
            var _u = (stdgo.Go.setRef(_units[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            _u._base = _b._off;
            var _n:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            if (_b._err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
            };
            while (_n == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                {
                    var __tmp__ = _b._unitLength();
                    _n = __tmp__._0;
                    _u._is64 = __tmp__._1;
                };
            };
            var _dataOff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            var _vers = (_b._uint16() : stdgo.GoUInt16);
            if (((_vers < (2 : stdgo.GoUInt16) : Bool) || (_vers > (5 : stdgo.GoUInt16) : Bool) : Bool)) {
                _b._error((("unsupported DWARF version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_vers : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                break;
            };
            _u._vers = (_vers : stdgo.GoInt);
            if ((_vers >= (5 : stdgo.GoUInt16) : Bool)) {
                _u._utype = _b._uint8();
                _u._asize = (_b._uint8() : stdgo.GoInt);
            };
            var _abbrevOff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if (_u._is64) {
                _abbrevOff = _b._uint64();
            } else {
                _abbrevOff = (_b._uint32() : stdgo.GoUInt64);
            };
            var __tmp__ = _d._parseAbbrev(_abbrevOff, _u._vers), _atable:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_b._err == null) {
                    _b._err = _err;
                };
                break;
            };
            _u._atable = _atable;
            if ((_vers < (5 : stdgo.GoUInt16) : Bool)) {
                _u._asize = (_b._uint8() : stdgo.GoInt);
            };
            {
                final __value__ = _u._utype;
                if (__value__ == ((4 : stdgo.GoUInt8)) || __value__ == ((5 : stdgo.GoUInt8))) {
                    _b._uint64();
                } else if (__value__ == ((2 : stdgo.GoUInt8)) || __value__ == ((6 : stdgo.GoUInt8))) {
                    _b._uint64();
                    if (_u._is64) {
                        _b._uint64();
                    } else {
                        _b._uint32();
                    };
                };
            };
            _u._off = _b._off;
            _u._data = _b._bytes(((_n - ((_b._off - _dataOff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo.GoInt));
        };
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
        };
        return { _0 : _units, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _sigToType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _sig:stdgo.GoUInt64):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _tu = (_d._typeSigs[_sig] ?? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>));
        if ((_tu == null || (_tu : Dynamic).__nil__)) {
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no type unit with signature %v" : stdgo.GoString), stdgo.Go.toInterface(_sig)) };
        };
        if (_tu._cache != null) {
            return { _0 : _tu._cache, _1 : (null : stdgo.Error) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_tu), _tu._name?.__copy__(), _tu._unit._off, _tu._unit._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _r = (stdgo.Go.setRef(({ _d : _d, _tu : _tu, _b : _b?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>);
        var __tmp__ = _d._readType(_tu._name?.__copy__(), stdgo.Go.asInterface(_r), _tu._toff, ({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>), null), _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err };
        };
        _tu._cache = _t;
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parseTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), _name?.__copy__(), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _types)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _base = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            var __tmp__ = _b._unitLength(), _n:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
            if (_n != (((_n : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                _b._error(("type unit length overflow" : stdgo.GoString));
                return _b._err;
            };
            var _hdroff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            var _vers = (_b._uint16() : stdgo.GoInt);
            if (_vers != ((4 : stdgo.GoInt))) {
                _b._error((("unsupported DWARF version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_vers)?.__copy__() : stdgo.GoString)?.__copy__());
                return _b._err;
            };
            var _ao:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if (!_dwarf64) {
                _ao = (_b._uint32() : stdgo.GoUInt64);
            } else {
                _ao = _b._uint64();
            };
            var __tmp__ = _d._parseAbbrev(_ao, _vers), _atable:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _asize = (_b._uint8() : stdgo.GoUInt8);
            var _sig = (_b._uint64() : stdgo.GoUInt64);
            var _toff:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            if (!_dwarf64) {
                _toff = _b._uint32();
            } else {
                var _to64 = (_b._uint64() : stdgo.GoUInt64);
                if (_to64 != (((_to64 : stdgo.GoUInt32) : stdgo.GoUInt64))) {
                    _b._error(("type unit type offset overflow" : stdgo.GoString));
                    return _b._err;
                };
                _toff = (_to64 : stdgo.GoUInt32);
            };
            var _boff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            _d._typeSigs[_sig] = (stdgo.Go.setRef(({ _unit : ({ _base : _base, _off : _boff, _data : _b._bytes(((_n - ((_b._off - _hdroff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo.GoInt)), _atable : _atable, _asize : (_asize : stdgo.GoInt), _vers : _vers, _is64 : _dwarf64 } : stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit), _toff : (_toff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _name : _name?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>);
            if (_b._err != null) {
                return _b._err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _r:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, _typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>, _fixups:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _t_3745649:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>);
            var _n_3744784:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3741633:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>);
            var _name_3739396:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3735401:stdgo.Error = (null : stdgo.Error);
            var _t_3746987:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
            var _tkid_3745851:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _i_3738739:stdgo.GoInt = (0 : stdgo.GoInt);
            var _typeOf_3736998:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> -> stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = null;
            var _enc_3739434:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _next_3736195:() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = null;
            var _t_3746469:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType>);
            var _t_3747159:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
            var _b_3742386:stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            var _f_3744670:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>);
            var _b_3743592:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _lastFieldType_3741968:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
            var _ok_3739439:Bool = false;
            var _kid_3744591:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _t_3743909:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>);
            var _haveBitOffset_3742792:Bool = false;
            var _lastFieldByteOffset_3742023:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _ok_3738165:Bool = false;
            var _t_3746251:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
            var _t_3745146:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
            var _byteSize_3740049:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _dims_3737955:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
            var _t_3737760:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
            var _e_3735398:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _ok_3746884:Bool = false;
            var _b_3746881:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _kid_3745802:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _haveBitOffset_3740562:Bool = false;
            var _ok_3735338:Bool = false;
            var _lastFieldBitSize_3741994:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _count_3738158:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _kid_3737974:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _nextDepth_3736132:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3744457:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>);
            var _t_3740443:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>);
            var _addressSize_3735456:stdgo.GoInt = (0 : stdgo.GoInt);
            var _ok_3743595:Bool = false;
            var _val_3744830:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
            var _haveDataBitOffset_3742818:Bool = false;
            var _loc_3742667:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_3735335:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _t_3746726:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>);
            var _loc_3742297:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _f_3742147:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>);
            var _kid_3742055:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _fixer_3735897:stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer = ({} : stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer);
            var _haveDataBitOffset_3740587:Bool = false;
            var _typ_3736121:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            {
                                var __tmp__ = (_typeCache != null && _typeCache.exists(_off) ? { _0 : _typeCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : false });
                                _t_3735335 = __tmp__._0;
                                _ok_3735338 = __tmp__._1;
                            };
                            if (_ok_3735338) {
                                _gotoNext = 3735363i32;
                            } else {
                                _gotoNext = 3735385i32;
                            };
                        };
                    } else if (__value__ == (3735363i32)) {
                        return { _0 : _t_3735335, _1 : (null : stdgo.Error) };
                        _gotoNext = 3735385i32;
                    } else if (__value__ == (3735385i32)) {
                        _r.seek(_off);
                        {
                            var __tmp__ = _r.next();
                            _e_3735398 = __tmp__._0;
                            _err_3735401 = __tmp__._1;
                        };
                        if (_err_3735401 != null) {
                            _gotoNext = 3735432i32;
                        } else {
                            _gotoNext = 3735456i32;
                        };
                    } else if (__value__ == (3735432i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err_3735401 };
                        _gotoNext = 3735456i32;
                    } else if (__value__ == (3735456i32)) {
                        _addressSize_3735456 = _r.addressSize();
                        if (((_e_3735398 == null || (_e_3735398 : Dynamic).__nil__) || (_e_3735398.offset != _off) : Bool)) {
                            _gotoNext = 3735519i32;
                        } else {
                            _gotoNext = 3735872i32;
                        };
                    } else if (__value__ == (3735519i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _off, ("no type at offset" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                        _gotoNext = 3735872i32;
                    } else if (__value__ == (3735872i32)) {
                        if ((_fixups == null || (_fixups : Dynamic).__nil__)) {
                            _gotoNext = 3735889i32;
                        } else {
                            _gotoNext = 3736117i32;
                        };
                    } else if (__value__ == (3735889i32)) {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    _fixer_3735897._apply();
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                        _fixups = (stdgo.Go.setRef(_fixer_3735897) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>);
                        _gotoNext = 3736117i32;
                    } else if (__value__ == (3736117i32)) {
                        _nextDepth_3736132 = (0 : stdgo.GoInt);
                        _next_3736195 = function():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                if (!_e_3735398.children) {
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return null;
                                    };
                                };
                                {
                                    final __ret__:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return __ret__;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                final __ret__:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return __ret__;
                            };
                        };
                        _typeOf_3736998 = function(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                var _tval = (_e.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.AnyInterface);
                                var _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                {
                                    final __type__ = _tval;
                                    if (stdgo.Go.typeEquals((__type__ : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                                        var _toff:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__.__underlying__().value;
                                        {
                                            {
                                                var __tmp__ = _d._readType(_name?.__copy__(), _r._clone(), _toff, _typeCache, _fixups);
                                                _t = __tmp__._0;
                                                _err_3735401 = __tmp__._1;
                                            };
                                            if (_err_3735401 != null) {
                                                {
                                                    final __ret__:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    return __ret__;
                                                };
                                            };
                                        };
                                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                                        var _toff:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                        {
                                            {
                                                var __tmp__ = _d._sigToType(_toff);
                                                _t = __tmp__._0;
                                                _err_3735401 = __tmp__._1;
                                            };
                                            if (_err_3735401 != null) {
                                                {
                                                    final __ret__:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    return __ret__;
                                                };
                                            };
                                        };
                                    } else {
                                        var _toff:stdgo.AnyInterface = __type__?.__underlying__();
                                        {
                                            final __ret__:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType>));
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return _t;
                                };
                                {
                                    final __ret__:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return __ret__;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                final __ret__:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return __ret__;
                            };
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3737398i32;
                    } else if (__value__ == (3737398i32)) {
                        {
                            final __value__ = _e_3735398.tag;
                            if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3737414i32;
                            } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3738832i32;
                            } else if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3740880i32;
                            } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3743778i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3744173i32;
                            } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3744964i32;
                            } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3745285i32;
                            } else if (__value__ == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3746112i32;
                            } else if (__value__ == ((59u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3746366i32;
                            } else {
                                _gotoNext = 3746567i32;
                            };
                        };
                    } else if (__value__ == (3737414i32)) {
                        _t_3737760 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3737760);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3737760);
                        {
                            _t_3737760.type = _typeOf_3736998(_e_3735398);
                            if (_err_3735401 != null) {
                                _gotoNext = 3737847i32;
                            } else {
                                _gotoNext = 3737869i32;
                            };
                        };
                    } else if (__value__ == (3737847i32)) {
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3737869i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((46u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _t_3737760.strideBitSize = __tmp__._0;
                        };
                        _kid_3737974 = _next_3736195();
                        _gotoNext = 3737970i32;
                    } else if (__value__ == (3737970i32)) {
                        if ((_kid_3737974 != null && ((_kid_3737974 : Dynamic).__nil__ == null || !(_kid_3737974 : Dynamic).__nil__))) {
                            _gotoNext = 3738014i32;
                        } else {
                            _gotoNext = 3738631i32;
                        };
                    } else if (__value__ == (3738001i32)) {
                        _kid_3737974 = _next_3736195();
                        _gotoNext = 3737970i32;
                    } else if (__value__ == (3738014i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3738112i32;
                    } else if (__value__ == (3738112i32)) {
                        {
                            final __value__ = _kid_3737974.tag;
                            if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3738132i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3738491i32;
                            } else {
                                _gotoNext = 3738001i32;
                            };
                        };
                    } else if (__value__ == (3738132i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3737974.val((55u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3738158 = __tmp__._0;
                            _ok_3738165 = __tmp__._1;
                        };
                        if (!_ok_3738165) {
                            _gotoNext = 3738209i32;
                        } else {
                            _gotoNext = 3738461i32;
                        };
                    } else if (__value__ == (3738209i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3737974.val((47u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3738158 = __tmp__._0;
                            _ok_3738165 = __tmp__._1;
                        };
                        if (_ok_3738165) {
                            _gotoNext = 3738325i32;
                        } else if ((_dims_3737955.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3738411i32;
                        } else {
                            _gotoNext = 3738461i32;
                        };
                    } else if (__value__ == (3738325i32)) {
                        _count_3738158++;
                        _gotoNext = 3738461i32;
                    } else if (__value__ == (3738411i32)) {
                        _count_3738158 = (-1i64 : stdgo.GoInt64);
                        _gotoNext = 3738461i32;
                    } else if (__value__ == (3738461i32)) {
                        _dims_3737955 = (_dims_3737955.__append__(_count_3738158));
                        _gotoNext = 3738001i32;
                    } else if (__value__ == (3738491i32)) {
                        _err_3735401 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _kid_3737974.offset, ("cannot handle enumeration type as array bound" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3738631i32)) {
                        if ((_dims_3737955.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3738649i32;
                        } else {
                            _gotoNext = 3738715i32;
                        };
                    } else if (__value__ == (3738649i32)) {
                        _dims_3737955 = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
                        _gotoNext = 3738715i32;
                    } else if (__value__ == (3738715i32)) {
                        _t_3737760.count = _dims_3737955[(0 : stdgo.GoInt)];
                        _i_3738739 = ((_dims_3737955.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _gotoNext = 3738735i32;
                    } else if (__value__ == (3738735i32)) {
                        if ((_i_3738739 >= (1 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3738771i32;
                        } else {
                            _gotoNext = 3746843i32;
                        };
                    } else if (__value__ == (3738771i32)) {
                        _t_3737760.type = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : _t_3737760.type, count : _dims_3737955[(_i_3738739 : stdgo.GoInt)] } : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>));
                        _i_3738739--;
                        _gotoNext = 3738735i32;
                    } else if (__value__ == (3738832i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _name_3739396 = __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((62u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _enc_3739434 = __tmp__._0;
                            _ok_3739439 = __tmp__._1;
                        };
                        if (!_ok_3739439) {
                            _gotoNext = 3739482i32;
                        } else {
                            _gotoNext = 3739583i32;
                        };
                    } else if (__value__ == (3739482i32)) {
                        _err_3735401 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3739396?.__copy__(), _e_3735398.offset, (("missing encoding attribute for " : stdgo.GoString) + _name_3739396?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3739583i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3739583i32;
                        {
                            final __value__ = _enc_3739434;
                            if (__value__ == ((1i64 : stdgo.GoInt64))) {
                                _gotoNext = 3739702i32;
                            } else if (__value__ == ((2i64 : stdgo.GoInt64))) {
                                _gotoNext = 3739744i32;
                            } else if (__value__ == ((3i64 : stdgo.GoInt64))) {
                                _gotoNext = 3739786i32;
                            } else if (__value__ == ((4i64 : stdgo.GoInt64))) {
                                _gotoNext = 3740199i32;
                            } else if (__value__ == ((5i64 : stdgo.GoInt64))) {
                                _gotoNext = 3740240i32;
                            } else if (__value__ == ((7i64 : stdgo.GoInt64))) {
                                _gotoNext = 3740280i32;
                            } else if (__value__ == ((6i64 : stdgo.GoInt64))) {
                                _gotoNext = 3740323i32;
                            } else if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                _gotoNext = 3740368i32;
                            } else {
                                _gotoNext = 3739598i32;
                            };
                        };
                    } else if (__value__ == (3739598i32)) {
                        _err_3735401 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3739396?.__copy__(), _e_3735398.offset, ("unrecognized encoding attribute value" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3739702i32)) {
                        _typ_3736121 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType>));
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3739744i32)) {
                        _typ_3736121 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType>));
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3739786i32)) {
                        _typ_3736121 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ComplexType.ComplexType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ComplexType.ComplexType>));
                        if (_name_3739396 == (("complex" : stdgo.GoString))) {
                            _gotoNext = 3739858i32;
                        } else {
                            _gotoNext = 3740420i32;
                        };
                    } else if (__value__ == (3739858i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _byteSize_3740049 = __tmp__._0;
                        };
                        _gotoNext = 3740042i32;
                    } else if (__value__ == (3740042i32)) {
                        {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_e_3735398.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                } catch(_) {
                                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                                };
                                _byteSize_3740049 = __tmp__._0;
                            };
                            {
                                final __value__ = _byteSize_3740049;
                                if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3740108i32;
                                } else if (__value__ == ((16i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3740148i32;
                                } else {
                                    _gotoNext = 3740420i32;
                                };
                            };
                        };
                    } else if (__value__ == (3740108i32)) {
                        _name_3739396 = ("complex float" : stdgo.GoString);
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3740148i32)) {
                        _name_3739396 = ("complex double" : stdgo.GoString);
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3740199i32)) {
                        _typ_3736121 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_FloatType.FloatType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FloatType.FloatType>));
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3740240i32)) {
                        _typ_3736121 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_IntType.IntType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_IntType.IntType>));
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3740280i32)) {
                        _typ_3736121 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UintType.UintType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UintType.UintType>));
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3740323i32)) {
                        _typ_3736121 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_CharType.CharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CharType.CharType>));
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3740368i32)) {
                        _typ_3736121 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UcharType.UcharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UcharType.UcharType>));
                        _gotoNext = 3740420i32;
                    } else if (__value__ == (3740420i32)) {
                        _typeCache[_off] = _typ_3736121;
                        _t_3740443 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ_3736121) : stdgo._internal.debug.dwarf.Dwarf_T__interface_0.T__interface_0)) : stdgo._internal.debug.dwarf.Dwarf_T__interface_0.T__interface_0).basic();
                        _t_3740443.commonType.name = _name_3739396?.__copy__();
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _t_3740443.bitSize = __tmp__._0;
                        };
                        _haveBitOffset_3740562 = false;
                        _haveDataBitOffset_3740587 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _t_3740443.bitOffset = __tmp__._0;
                            _haveBitOffset_3740562 = __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _t_3740443.dataBitOffset = __tmp__._0;
                            _haveDataBitOffset_3740587 = __tmp__._1;
                        };
                        if ((_haveBitOffset_3740562 && _haveDataBitOffset_3740587 : Bool)) {
                            _gotoNext = 3740786i32;
                        } else {
                            _gotoNext = 3746843i32;
                        };
                    } else if (__value__ == (3740786i32)) {
                        _err_3735401 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3739396?.__copy__(), _e_3735398.offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3740880i32)) {
                        _t_3741633 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_StructType.StructType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3741633);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3741633);
                        var __blank__ = 0i32;
                        _gotoNext = 3741687i32;
                    } else if (__value__ == (3741687i32)) {
                        {
                            final __value__ = _e_3735398.tag;
                            if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3741704i32;
                            } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3741745i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3741788i32;
                            } else {
                                _gotoNext = 3741833i32;
                            };
                        };
                    } else if (__value__ == (3741704i32)) {
                        _t_3741633.kind = ("class" : stdgo.GoString);
                        _gotoNext = 3741833i32;
                    } else if (__value__ == (3741745i32)) {
                        _t_3741633.kind = ("struct" : stdgo.GoString);
                        _gotoNext = 3741833i32;
                    } else if (__value__ == (3741788i32)) {
                        _t_3741633.kind = ("union" : stdgo.GoString);
                        _gotoNext = 3741833i32;
                    } else if (__value__ == (3741833i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3741633.structName = __tmp__._0?.__copy__();
                        };
                        _t_3741633.incomplete = _e_3735398.val((60u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) != null;
                        _t_3741633.field = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>);
                        _kid_3742055 = _next_3736195();
                        _gotoNext = 3742051i32;
                    } else if (__value__ == (3742051i32)) {
                        if ((_kid_3742055 != null && ((_kid_3742055 : Dynamic).__nil__ == null || !(_kid_3742055 : Dynamic).__nil__))) {
                            _gotoNext = 3742095i32;
                        } else {
                            _gotoNext = 3743566i32;
                        };
                    } else if (__value__ == (3742095i32)) {
                        if (_kid_3742055.tag != ((13u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                            _gotoNext = 3742124i32;
                        } else {
                            _gotoNext = 3742147i32;
                        };
                    } else if (__value__ == (3742124i32)) {
                        _kid_3742055 = _next_3736195();
                        _gotoNext = 3742051i32;
                    } else if (__value__ == (3742147i32)) {
                        _f_3742147 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_StructField.StructField)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>);
                        {
                            _f_3742147.type = _typeOf_3736998(_kid_3742055);
                            if (_err_3735401 != null) {
                                _gotoNext = 3742208i32;
                            } else {
                                _gotoNext = 3742233i32;
                            };
                        };
                    } else if (__value__ == (3742208i32)) {
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3742233i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3742233i32;
                        {
                            final __type__ = _kid_3742055.val((56u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                                var _loc:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                                _loc_3742297 = _loc;
                                _gotoNext = 3742286i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                                var _loc:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                _loc_3742667 = _loc;
                                _gotoNext = 3742657i32;
                            } else {
                                var _loc:stdgo.AnyInterface = __type__?.__underlying__();
                                _gotoNext = 3742701i32;
                            };
                        };
                    } else if (__value__ == (3742286i32)) {
                        _b_3742386 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("location" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _loc_3742297)?.__copy__();
                        if (_b_3742386._uint8() != ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 3742472i32;
                        } else {
                            _gotoNext = 3742562i32;
                        };
                    } else if (__value__ == (3742472i32)) {
                        _err_3735401 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _kid_3742055.offset, ("unexpected opcode" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3742562i32)) {
                        _f_3742147.byteOffset = (_b_3742386._uint() : stdgo.GoInt64);
                        if (_b_3742386._err != null) {
                            _gotoNext = 3742613i32;
                        } else {
                            _gotoNext = 3742701i32;
                        };
                    } else if (__value__ == (3742613i32)) {
                        _err_3735401 = _b_3742386._err;
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3742657i32)) {
                        _f_3742147.byteOffset = _loc_3742667;
                        _gotoNext = 3742701i32;
                    } else if (__value__ == (3742701i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3742055.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _f_3742147.name = __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3742055.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3742147.byteSize = __tmp__._0;
                        };
                        _haveBitOffset_3742792 = false;
                        _haveDataBitOffset_3742818 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3742055.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3742147.bitOffset = __tmp__._0;
                            _haveBitOffset_3742792 = __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3742055.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3742147.dataBitOffset = __tmp__._0;
                            _haveDataBitOffset_3742818 = __tmp__._1;
                        };
                        if ((_haveBitOffset_3742792 && _haveDataBitOffset_3742818 : Bool)) {
                            _gotoNext = 3743024i32;
                        } else {
                            _gotoNext = 3743122i32;
                        };
                    } else if (__value__ == (3743024i32)) {
                        _err_3735401 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _e_3735398.offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3743122i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3742055.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3742147.bitSize = __tmp__._0;
                        };
                        _t_3741633.field = (_t_3741633.field.__append__(_f_3742147));
                        if (((_lastFieldBitSize_3741994 == ((0i64 : stdgo.GoInt64)) && _lastFieldByteOffset_3742023 == (_f_3742147.byteOffset) : Bool) && (_t_3741633.kind != ("union" : stdgo.GoString)) : Bool)) {
                            _gotoNext = 3743287i32;
                        } else {
                            _gotoNext = 3743466i32;
                        };
                    } else if (__value__ == (3743287i32)) {
                        _fixups._recordArrayType(_lastFieldType_3741968);
                        _gotoNext = 3743466i32;
                    } else if (__value__ == (3743466i32)) {
                        _lastFieldType_3741968 = (stdgo.Go.setRef(_f_3742147.type) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
                        _lastFieldByteOffset_3742023 = _f_3742147.byteOffset;
                        _lastFieldBitSize_3741994 = _f_3742147.bitSize;
                        _kid_3742055 = _next_3736195();
                        _gotoNext = 3742051i32;
                    } else if (__value__ == (3743566i32)) {
                        if (_t_3741633.kind != (("union" : stdgo.GoString))) {
                            _gotoNext = 3743587i32;
                        } else {
                            _gotoNext = 3746843i32;
                        };
                    } else if (__value__ == (3743587i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3743592 = __tmp__._0;
                            _ok_3743595 = __tmp__._1;
                        };
                        if ((_ok_3743595 && (_b_3743592 == _lastFieldByteOffset_3742023) : Bool)) {
                            _gotoNext = 3743666i32;
                        } else {
                            _gotoNext = 3746843i32;
                        };
                    } else if (__value__ == (3743666i32)) {
                        _fixups._recordArrayType(_lastFieldType_3741968);
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3743778i32)) {
                        _t_3743909 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_QualType.QualType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3743909);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3743909);
                        {
                            _t_3743909.type = _typeOf_3736998(_e_3735398);
                            if (_err_3735401 != null) {
                                _gotoNext = 3743995i32;
                            } else {
                                _gotoNext = 3744017i32;
                            };
                        };
                    } else if (__value__ == (3743995i32)) {
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3744017i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3744017i32;
                        {
                            final __value__ = _e_3735398.tag;
                            if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3744034i32;
                            } else if (__value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3744075i32;
                            } else if (__value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3744122i32;
                            } else {
                                _gotoNext = 3746843i32;
                            };
                        };
                    } else if (__value__ == (3744034i32)) {
                        _t_3743909.qual = ("const" : stdgo.GoString);
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3744075i32)) {
                        _t_3743909.qual = ("restrict" : stdgo.GoString);
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3744122i32)) {
                        _t_3743909.qual = ("volatile" : stdgo.GoString);
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3744173i32)) {
                        _t_3744457 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3744457);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3744457);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3744457.enumName = __tmp__._0?.__copy__();
                        };
                        _t_3744457.val = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        _kid_3744591 = _next_3736195();
                        _gotoNext = 3744587i32;
                    } else if (__value__ == (3744587i32)) {
                        if ((_kid_3744591 != null && ((_kid_3744591 : Dynamic).__nil__ == null || !(_kid_3744591 : Dynamic).__nil__))) {
                            _gotoNext = 3744631i32;
                        } else {
                            _gotoNext = 3746843i32;
                        };
                    } else if (__value__ == (3744618i32)) {
                        _kid_3744591 = _next_3736195();
                        _gotoNext = 3744587i32;
                    } else if (__value__ == (3744631i32)) {
                        if (_kid_3744591.tag == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                            _gotoNext = 3744664i32;
                        } else {
                            _gotoNext = 3744618i32;
                        };
                    } else if (__value__ == (3744664i32)) {
                        _f_3744670 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3744591.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _f_3744670.name = __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3744591.val((28u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3744670.val = __tmp__._0;
                        };
                        _n_3744784 = (_t_3744457.val.length);
                        if ((_n_3744784 >= _t_3744457.val.capacity : Bool)) {
                            _gotoNext = 3744823i32;
                        } else {
                            _gotoNext = 3744913i32;
                        };
                    } else if (__value__ == (3744823i32)) {
                        _val_3744830 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>((_n_3744784 : stdgo.GoInt).toBasic(), (_n_3744784 * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        stdgo.Go.copySlice(_val_3744830, _t_3744457.val);
                        _t_3744457.val = _val_3744830;
                        _gotoNext = 3744913i32;
                    } else if (__value__ == (3744913i32)) {
                        _t_3744457.val = (_t_3744457.val.__slice__((0 : stdgo.GoInt), (_n_3744784 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        _t_3744457.val[(_n_3744784 : stdgo.GoInt)] = _f_3744670;
                        _gotoNext = 3744618i32;
                    } else if (__value__ == (3744964i32)) {
                        _t_3745146 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3745146);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3745146);
                        if (_e_3735398.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) == null) {
                            _gotoNext = 3745223i32;
                        } else {
                            _gotoNext = 3745264i32;
                        };
                    } else if (__value__ == (3745223i32)) {
                        _t_3745146.type = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType() : stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType>));
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3745264i32)) {
                        _t_3745146.type = _typeOf_3736998(_e_3735398);
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3745285i32)) {
                        _t_3745649 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3745649);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3745649);
                        {
                            _t_3745649.returnType = _typeOf_3736998(_e_3735398);
                            if (_err_3735401 != null) {
                                _gotoNext = 3745741i32;
                            } else {
                                _gotoNext = 3745763i32;
                            };
                        };
                    } else if (__value__ == (3745741i32)) {
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3745763i32)) {
                        _t_3745649.paramType = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
                        _kid_3745802 = _next_3736195();
                        _gotoNext = 3745798i32;
                    } else if (__value__ == (3745798i32)) {
                        if ((_kid_3745802 != null && ((_kid_3745802 : Dynamic).__nil__ == null || !(_kid_3745802 : Dynamic).__nil__))) {
                            _gotoNext = 3745842i32;
                        } else {
                            _gotoNext = 3746843i32;
                        };
                    } else if (__value__ == (3745842i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3745864i32;
                    } else if (__value__ == (3745864i32)) {
                        {
                            final __value__ = _kid_3745802.tag;
                            if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3745909i32;
                            } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3745999i32;
                            } else {
                                _gotoNext = 3745884i32;
                            };
                        };
                    } else if (__value__ == (3745884i32)) {
                        _kid_3745802 = _next_3736195();
                        _gotoNext = 3745798i32;
                    } else if (__value__ == (3745909i32)) {
                        {
                            _tkid_3745851 = _typeOf_3736998(_kid_3745802);
                            if (_err_3735401 != null) {
                                _gotoNext = 3745972i32;
                            } else {
                                _gotoNext = 3746066i32;
                            };
                        };
                    } else if (__value__ == (3745972i32)) {
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3745999i32)) {
                        _tkid_3745851 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType() : stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType>));
                        _gotoNext = 3746066i32;
                    } else if (__value__ == (3746066i32)) {
                        _t_3745649.paramType = (_t_3745649.paramType.__append__(_tkid_3745851));
                        _kid_3745802 = _next_3736195();
                        _gotoNext = 3745798i32;
                    } else if (__value__ == (3746112i32)) {
                        _t_3746251 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3746251);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3746251);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3746251.commonType.name = __tmp__._0?.__copy__();
                        };
                        _t_3746251.type = _typeOf_3736998(_e_3735398);
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3746366i32)) {
                        _t_3746469 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3746469);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3746469);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3746469.basicType.commonType.name = __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3746567i32)) {
                        _t_3746726 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>);
                        _typ_3736121 = stdgo.Go.asInterface(_t_3746726);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3746726);
                        _t_3746726.tag = _e_3735398.tag;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3746726.commonType.name = __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3746843i32;
                    } else if (__value__ == (3746843i32)) {
                        if (_err_3735401 != null) {
                            _gotoNext = 3746857i32;
                        } else {
                            _gotoNext = 3746877i32;
                        };
                    } else if (__value__ == (3746857i32)) {
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3746877i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3735398.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3746881 = __tmp__._0;
                            _ok_3746884 = __tmp__._1;
                        };
                        if (!_ok_3746884) {
                            _gotoNext = 3746927i32;
                        } else {
                            _gotoNext = 3747199i32;
                        };
                        {
                            _gotoNext = 3746877i32;
                        };
                    } else if (__value__ == (3746927i32)) {
                        _b_3746881 = (-1i64 : stdgo.GoInt64);
                        var __blank__ = 0i32;
                        _gotoNext = 3746942i32;
                    } else if (__value__ == (3746942i32)) {
                        {
                            final __type__ = _typ_3736121;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__.__underlying__().value;
                                _t_3746987 = _t;
                                _gotoNext = 3746970i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__.__underlying__().value;
                                _t_3747159 = _t;
                                _gotoNext = 3747146i32;
                            } else {
                                var _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = __type__ == null ? (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_) : cast __type__;
                                _gotoNext = 3747199i32;
                            };
                        };
                        _gotoNext = 3747199i32;
                    } else if (__value__ == (3746970i32)) {
                        _fixups._typedefs = (_fixups._typedefs.__append__(_t_3746987));
                        _gotoNext = 3747199i32;
                    } else if (__value__ == (3747146i32)) {
                        _b_3746881 = (_addressSize_3735456 : stdgo.GoInt64);
                        _gotoNext = 3747199i32;
                    } else if (__value__ == (3747199i32)) {
                        _typ_3736121.common().byteSize = _b_3746881;
                        _gotoNext = 3747229i32;
                    } else if (__value__ == (3747229i32)) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : _typ_3736121, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3747246i32;
                    } else if (__value__ == (3747246i32)) {
                        if (_typeCache != null) _typeCache.remove(_off);
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err_3735401 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function type( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        return _d._readType(("info" : stdgo.GoString), stdgo.Go.asInterface(_d.reader()), _off, _d._typeCache, null);
    }
    @:keep
    static public function addSection( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = _name;
            if (__value__ == ((".debug_addr" : stdgo.GoString))) {
                _d._addr = _contents;
            } else if (__value__ == ((".debug_line_str" : stdgo.GoString))) {
                _d._lineStr = _contents;
            } else if (__value__ == ((".debug_str_offsets" : stdgo.GoString))) {
                _d._strOffsets = _contents;
            } else if (__value__ == ((".debug_rnglists" : stdgo.GoString))) {
                _d._rngLists = _contents;
            };
        };
        return _err;
    }
    @:keep
    static public function addTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        return _d._parseTypes(_name?.__copy__(), _types);
    }
    @:keep
    static public function lineReader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if (_d._line == null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_cu.val((16u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _off = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if (((_off < (0i64 : stdgo.GoInt64) : Bool) || (_off > (_d._line.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("AttrStmtList value out of range" : stdgo.GoString)) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_cu.val((27u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _compDir = __tmp__._0, __3 = __tmp__._1;
        var _u = (stdgo.Go.setRef(_d._unit[(_d._offsetToUnit(_cu.offset) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("line" : stdgo.GoString), (_off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (_d._line.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _r = ({ _buf : _buf, _section : _d._line, _str : _d._str, _lineStr : _d._lineStr } : stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader);
        {
            var _err = (_r._readHeader(_compDir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        _r.reset();
        return { _0 : (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _debugAddr( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _format:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat, _addrBase:stdgo.GoUInt64, _idx:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _off = ((_idx * (_format._addrsize() : stdgo.GoUInt64) : stdgo.GoUInt64) + _addrBase : stdgo.GoUInt64);
        if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("offset out of range" : stdgo.GoString)) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, _format, ("addr" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _d._addr)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        _b._skip((_off : stdgo.GoInt));
        var _val = (_b._addr() : stdgo.GoUInt64);
        if (_b._err != null) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _b._err };
        };
        return { _0 : _val, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _dwarf5Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > (_d._rngLists.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid rnglist offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface((_d._ranges.length))) };
        };
        var _addrBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cu.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                };
                _addrBase = __tmp__._0;
            };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("rnglists" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _d._rngLists)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        _buf._skip((_ranges : stdgo.GoInt));
        while (true) {
            var _opcode = (_buf._uint8() : stdgo.GoUInt8);
            {
                final __value__ = _opcode;
                if (__value__ == ((0 : stdgo.GoUInt8))) {
                    if (_buf._err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _buf._err };
                    };
                    return { _0 : _ret, _1 : (null : stdgo.Error) };
                } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                    var _baseIdx = (_buf._uint() : stdgo.GoUInt64);
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _baseIdx);
                        _base = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                    var _startIdx = (_buf._uint() : stdgo.GoUInt64);
                    var _endIdx = (_buf._uint() : stdgo.GoUInt64);
                    var __tmp__ = _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _startIdx), _start:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    var __tmp__ = _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _endIdx), _end:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, _end]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                    var _startIdx = (_buf._uint() : stdgo.GoUInt64);
                    var _len = (_buf._uint() : stdgo.GoUInt64);
                    var __tmp__ = _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _startIdx), _start:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, (_start + _len : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                    var _off1 = (_buf._uint() : stdgo.GoUInt64);
                    var _off2 = (_buf._uint() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(_base + _off1 : stdgo.GoUInt64), (_base + _off2 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((5 : stdgo.GoUInt8))) {
                    _base = _buf._addr();
                } else if (__value__ == ((6 : stdgo.GoUInt8))) {
                    var _start = (_buf._addr() : stdgo.GoUInt64);
                    var _end = (_buf._addr() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, _end]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((7 : stdgo.GoUInt8))) {
                    var _start = (_buf._addr() : stdgo.GoUInt64);
                    var _len = (_buf._uint() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, (_start + _len : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                };
            };
        };
    }
    @:keep
    static public function _dwarf2Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > (_d._ranges.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid range offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface((_d._ranges.length))) };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("ranges" : stdgo.GoString), (_ranges : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (_d._ranges.__slice__(_ranges) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        while (((_buf._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _low = (_buf._addr() : stdgo.GoUInt64);
            var _high = (_buf._addr() : stdgo.GoUInt64);
            if (((_low == (0i64 : stdgo.GoUInt64)) && (_high == (0i64 : stdgo.GoUInt64)) : Bool)) {
                break;
            };
            if (_low == (((-1i64 : stdgo.GoUInt64) >> (((((8 : stdgo.GoInt) - _u._addrsize() : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64))) {
                _base = _high;
            } else {
                _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(_base + _low : stdgo.GoUInt64), (_base + _high : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
            };
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _baseAddressForEntry( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.GoUInt64; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        if (_e.tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
            _cu = _e;
        } else {
            var _i = (_d._offsetToUnit(_e.offset) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : stdgo._internal.errors.Errors_new_.new_(("no unit for entry" : stdgo.GoString)) };
            };
            var _u = (stdgo.Go.setRef(_d._unit[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), _u._off, _u._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            _cu = _b._entry(null, _u._atable, _u._base, _u._vers);
            if (_b._err != null) {
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : _b._err };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_cu.val((82u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoUInt64), _1 : false };
            }, _cuEntry = __tmp__._0, _cuEntryOK = __tmp__._1;
            if (_cuEntryOK) {
                return { _0 : _cu, _1 : _cuEntry, _2 : (null : stdgo.Error) };
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cu.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
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
    static public function ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>> = (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_e.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoUInt64), _1 : false };
        }, _low = __tmp__._0, _lowOK = __tmp__._1;
        var _high:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _highOK:Bool = false;
        var _highField = _e.attrField((18u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
        if ((_highField != null && ((_highField : Dynamic).__nil__ == null || !(_highField : Dynamic).__nil__))) {
            {
                final __value__ = _highField.class_;
                if (__value__ == ((1 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_highField.val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                        } catch(_) {
                            { _0 : (0 : stdgo.GoUInt64), _1 : false };
                        };
                        _high = __tmp__._0;
                        _highOK = __tmp__._1;
                    };
                } else if (__value__ == ((3 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_highField.val : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
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
        var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        {
            var _uidx = (_d._offsetToUnit(_e.offset) : stdgo.GoInt);
            if (((_uidx >= (0 : stdgo.GoInt) : Bool) && (_uidx < (_d._unit.length) : Bool) : Bool)) {
                _u = (stdgo.Go.setRef(_d._unit[(_uidx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            };
        };
        if ((((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && (_u._vers >= (5 : stdgo.GoInt) : Bool) : Bool) && (_d._rngLists != null) : Bool)) {
            var _field = _e.attrField((85u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
            if ((_field == null || (_field : Dynamic).__nil__)) {
                return { _0 : _ret, _1 : (null : stdgo.Error) };
            };
            {
                final __value__ = _field.class_;
                if (__value__ == ((9 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_field.val : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
                    if (!_rangesOK) {
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    return _d._dwarf5Ranges(_u, _cu, _base, _ranges, _ret);
                } else if (__value__ == ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_field.val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoUInt64), _1 : false };
                    }, _rnglist = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    return _d._dwarf5Ranges(_u, _cu, _base, (_rnglist : stdgo.GoInt64), _ret);
                } else {
                    return { _0 : _ret, _1 : (null : stdgo.Error) };
                };
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_e.val((85u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
        if ((_rangesOK && (_d._ranges != null) : Bool)) {
            var __tmp__ = _d._baseAddressForEntry(_e), __3:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
            };
            return _d._dwarf2Ranges(_u, _base, _ranges, _ret);
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function reader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _r = (stdgo.Go.setRef(({ _d : _d } : stdgo._internal.debug.dwarf.Dwarf_Reader.Reader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        _r.seek((0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
        return _r;
    }
    @:keep
    static public function _parseAbbrev( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo.GoUInt64, _vers:stdgo.GoInt):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        {
            var __tmp__ = (_d._abbrevCache != null && _d._abbrevCache.exists(_off) ? { _0 : _d._abbrevCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable), _1 : false }), _m:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _m, _1 : (null : stdgo.Error) };
            };
        };
        var _data = _d._abbrev;
        if ((_off > (_data.length : stdgo.GoUInt64) : Bool)) {
            _data = (null : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _data = (_data.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("abbrev" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _m = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev>) : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable);
        while (true) {
            var _id = (_b._uint() : stdgo.GoUInt32);
            if (_id == ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            var _n = (0 : stdgo.GoInt);
            var _b1 = (_b?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            _b1._uint();
            _b1._uint8();
            while (true) {
                var _tag = (_b1._uint() : stdgo.GoUInt64);
                var _fmt = (_b1._uint() : stdgo.GoUInt64);
                if (((_tag == (0i64 : stdgo.GoUInt64)) && (_fmt == (0i64 : stdgo.GoUInt64)) : Bool)) {
                    break;
                };
                if ((_fmt : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format) == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _b1._int();
                };
                _n++;
            };
            if (_b1._err != null) {
                return { _0 : null, _1 : _b1._err };
            };
            var _a:stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev = ({} : stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev);
            _a._tag = (_b._uint() : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag);
            _a._children = _b._uint8() != ((0 : stdgo.GoUInt8));
            _a._field = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>);
            for (_i => _ in _a._field) {
                _a._field[(_i : stdgo.GoInt)]._attr = (_b._uint() : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr);
                _a._field[(_i : stdgo.GoInt)]._fmt = (_b._uint() : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format);
                _a._field[(_i : stdgo.GoInt)]._class = stdgo._internal.debug.dwarf.Dwarf__formToClass._formToClass(_a._field[(_i : stdgo.GoInt)]._fmt, _a._field[(_i : stdgo.GoInt)]._attr, _vers, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>));
                if (_a._field[(_i : stdgo.GoInt)]._fmt == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _a._field[(_i : stdgo.GoInt)]._val = _b._int();
                };
            };
            _b._uint();
            _b._uint();
            _m[_id] = _a?.__copy__();
        };
        if (_b._err != null) {
            return { _0 : null, _1 : _b._err };
        };
        _d._abbrevCache[_off] = _m;
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
}
