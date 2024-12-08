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
            var _byteSize_3737255:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_3744193:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
            var _lastFieldByteOffset_3739229:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _b_3744087:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _ok_3735371:Bool = false;
            var _nextDepth_3733338:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3732607:stdgo.Error = (null : stdgo.Error);
            var _t_3741663:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>);
            var _loc_3739503:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _lastFieldBitSize_3739200:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_3741115:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>);
            var _t_3743675:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType>);
            var _kid_3739261:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _ok_3736645:Bool = false;
            var _ok_3744090:Bool = false;
            var _ok_3740801:Bool = false;
            var _i_3735945:stdgo.GoInt = (0 : stdgo.GoInt);
            var _next_3733401:() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = null;
            var _typ_3733327:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _fixer_3733103:stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer = ({} : stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer);
            var _addressSize_3732662:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3744365:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
            var _t_3743457:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
            var _n_3741990:stdgo.GoInt = (0 : stdgo.GoInt);
            var _enc_3736640:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _count_3735364:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _tkid_3743057:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _t_3742352:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
            var _f_3741876:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>);
            var _kid_3741797:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _f_3739353:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>);
            var _t_3742855:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>);
            var _t_3738839:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>);
            var _t_3734966:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
            var _e_3732604:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _t_3743932:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>);
            var _lastFieldType_3739174:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
            var _haveDataBitOffset_3740024:Bool = false;
            var _haveBitOffset_3739998:Bool = false;
            var _haveBitOffset_3737768:Bool = false;
            var _val_3742036:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
            var _haveDataBitOffset_3737793:Bool = false;
            var _kid_3735180:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _t_3732541:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _b_3739592:stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            var _t_3737649:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>);
            var _kid_3743008:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _b_3740798:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _loc_3739873:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _name_3736602:stdgo.GoString = ("" : stdgo.GoString);
            var _dims_3735161:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
            var _typeOf_3734204:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> -> stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = null;
            var _ok_3732544:Bool = false;
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        var __blank__ = _loc_3739503;
                        _gotoNext = 3739907i32;
                        {
                            {
                                var __tmp__ = (_typeCache != null && _typeCache.exists(_off) ? { _0 : _typeCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : false });
                                _t_3732541 = __tmp__._0;
                                _ok_3732544 = __tmp__._1;
                            };
                            if (_ok_3732544) {
                                _gotoNext = 3732569i32;
                            } else {
                                _gotoNext = 3732591i32;
                            };
                        };
                    } else if (__value__ == (3732569i32)) {
                        return { _0 : _t_3732541, _1 : (null : stdgo.Error) };
                        _gotoNext = 3732591i32;
                    } else if (__value__ == (3732591i32)) {
                        _r.seek(_off);
                        {
                            var __tmp__ = _r.next();
                            _e_3732604 = __tmp__._0;
                            _err_3732607 = __tmp__._1;
                        };
                        if (_err_3732607 != null) {
                            _gotoNext = 3732638i32;
                        } else {
                            _gotoNext = 3732662i32;
                        };
                    } else if (__value__ == (3732638i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err_3732607 };
                        _gotoNext = 3732662i32;
                    } else if (__value__ == (3732662i32)) {
                        _addressSize_3732662 = _r.addressSize();
                        if (((_e_3732604 == null || (_e_3732604 : Dynamic).__nil__) || (_e_3732604.offset != _off) : Bool)) {
                            _gotoNext = 3732725i32;
                        } else {
                            _gotoNext = 3733078i32;
                        };
                    } else if (__value__ == (3732725i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _off, ("no type at offset" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                        _gotoNext = 3733078i32;
                    } else if (__value__ == (3733078i32)) {
                        if ((_fixups == null || (_fixups : Dynamic).__nil__)) {
                            _gotoNext = 3733095i32;
                        } else {
                            _gotoNext = 3733323i32;
                        };
                    } else if (__value__ == (3733095i32)) {
                        __deferstack__.unshift(() -> ({
                            var a = function():Void {
                                _fixer_3733103._apply();
                            };
                            a();
                        }));
                        _fixups = (stdgo.Go.setRef(_fixer_3733103) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>);
                        _gotoNext = 3733323i32;
                    } else if (__value__ == (3733323i32)) {
                        _nextDepth_3733338 = (0 : stdgo.GoInt);
                        _next_3733401 = function():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> {
                            if (!_e_3732604.children) {
                                return null;
                            };
                        };
                        _typeOf_3734204 = function(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ {
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
                                            _err_3732607 = __tmp__._1;
                                        };
                                        if (_err_3732607 != null) {
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                                    var _toff:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                    {
                                        {
                                            var __tmp__ = _d._sigToType(_toff);
                                            _t = __tmp__._0;
                                            _err_3732607 = __tmp__._1;
                                        };
                                        if (_err_3732607 != null) {
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                        };
                                    };
                                } else {
                                    var _toff:stdgo.AnyInterface = __type__?.__underlying__();
                                    return stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType>));
                                };
                            };
                            return _t;
                        };
                        _gotoNext = 3734604i32;
                    } else if (__value__ == (3734604i32)) {
                        {
                            final __value__ = _e_3732604.tag;
                            if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3734620i32;
                            } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3736038i32;
                            } else if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3738086i32;
                            } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3740984i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3741379i32;
                            } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3742170i32;
                            } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3742491i32;
                            } else if (__value__ == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3743318i32;
                            } else if (__value__ == ((59u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3743572i32;
                            } else {
                                _gotoNext = 3743773i32;
                            };
                        };
                    } else if (__value__ == (3734620i32)) {
                        _t_3734966 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3734966);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3734966);
                        {
                            _t_3734966.type = _typeOf_3734204(_e_3732604);
                            if (_err_3732607 != null) {
                                _gotoNext = 3735053i32;
                            } else {
                                _gotoNext = 3735075i32;
                            };
                        };
                    } else if (__value__ == (3735053i32)) {
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3735075i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((46u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _t_3734966.strideBitSize = __tmp__._0;
                        };
                        _kid_3735180 = _next_3733401();
                        _gotoNext = 3735176i32;
                    } else if (__value__ == (3735176i32)) {
                        if ((_kid_3735180 != null && ((_kid_3735180 : Dynamic).__nil__ == null || !(_kid_3735180 : Dynamic).__nil__))) {
                            _gotoNext = 3735220i32;
                        } else {
                            _gotoNext = 3735837i32;
                        };
                    } else if (__value__ == (3735207i32)) {
                        _kid_3735180 = _next_3733401();
                        _gotoNext = 3735176i32;
                    } else if (__value__ == (3735220i32)) {
                        _gotoNext = 3735318i32;
                    } else if (__value__ == (3735318i32)) {
                        {
                            final __value__ = _kid_3735180.tag;
                            if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3735338i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3735697i32;
                            } else {
                                _gotoNext = 3735207i32;
                            };
                        };
                    } else if (__value__ == (3735338i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3735180.val((55u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3735364 = __tmp__._0;
                            _ok_3735371 = __tmp__._1;
                        };
                        if (!_ok_3735371) {
                            _gotoNext = 3735415i32;
                        } else {
                            _gotoNext = 3735667i32;
                        };
                    } else if (__value__ == (3735415i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3735180.val((47u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3735364 = __tmp__._0;
                            _ok_3735371 = __tmp__._1;
                        };
                        if (_ok_3735371) {
                            _gotoNext = 3735531i32;
                        } else if ((_dims_3735161.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3735617i32;
                        } else {
                            _gotoNext = 3735667i32;
                        };
                    } else if (__value__ == (3735531i32)) {
                        _count_3735364++;
                        _gotoNext = 3735667i32;
                    } else if (__value__ == (3735617i32)) {
                        _count_3735364 = (-1i64 : stdgo.GoInt64);
                        _gotoNext = 3735667i32;
                    } else if (__value__ == (3735667i32)) {
                        _dims_3735161 = (_dims_3735161.__append__(_count_3735364));
                        _gotoNext = 3735207i32;
                    } else if (__value__ == (3735697i32)) {
                        _err_3732607 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _kid_3735180.offset, ("cannot handle enumeration type as array bound" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3735837i32)) {
                        if ((_dims_3735161.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3735855i32;
                        } else {
                            _gotoNext = 3735921i32;
                        };
                    } else if (__value__ == (3735855i32)) {
                        _dims_3735161 = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
                        _gotoNext = 3735921i32;
                    } else if (__value__ == (3735921i32)) {
                        _t_3734966.count = _dims_3735161[(0 : stdgo.GoInt)];
                        _i_3735945 = ((_dims_3735161.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _gotoNext = 3735941i32;
                    } else if (__value__ == (3735941i32)) {
                        if ((_i_3735945 >= (1 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3735977i32;
                        } else {
                            _gotoNext = 3744049i32;
                        };
                    } else if (__value__ == (3735977i32)) {
                        _t_3734966.type = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : _t_3734966.type, count : _dims_3735161[(_i_3735945 : stdgo.GoInt)] } : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>));
                        _i_3735945--;
                        _gotoNext = 3735941i32;
                    } else if (__value__ == (3736038i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _name_3736602 = __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((62u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _enc_3736640 = __tmp__._0;
                            _ok_3736645 = __tmp__._1;
                        };
                        if (!_ok_3736645) {
                            _gotoNext = 3736688i32;
                        } else {
                            _gotoNext = 3736789i32;
                        };
                    } else if (__value__ == (3736688i32)) {
                        _err_3732607 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3736602?.__copy__(), _e_3732604.offset, (("missing encoding attribute for " : stdgo.GoString) + _name_3736602?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3736789i32)) {
                        _gotoNext = 3736789i32;
                        {
                            final __value__ = _enc_3736640;
                            if (__value__ == ((1i64 : stdgo.GoInt64))) {
                                _gotoNext = 3736908i32;
                            } else if (__value__ == ((2i64 : stdgo.GoInt64))) {
                                _gotoNext = 3736950i32;
                            } else if (__value__ == ((3i64 : stdgo.GoInt64))) {
                                _gotoNext = 3736992i32;
                            } else if (__value__ == ((4i64 : stdgo.GoInt64))) {
                                _gotoNext = 3737405i32;
                            } else if (__value__ == ((5i64 : stdgo.GoInt64))) {
                                _gotoNext = 3737446i32;
                            } else if (__value__ == ((7i64 : stdgo.GoInt64))) {
                                _gotoNext = 3737486i32;
                            } else if (__value__ == ((6i64 : stdgo.GoInt64))) {
                                _gotoNext = 3737529i32;
                            } else if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                _gotoNext = 3737574i32;
                            } else {
                                _gotoNext = 3736804i32;
                            };
                        };
                    } else if (__value__ == (3736804i32)) {
                        _err_3732607 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3736602?.__copy__(), _e_3732604.offset, ("unrecognized encoding attribute value" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3736908i32)) {
                        _typ_3733327 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType>));
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3736950i32)) {
                        _typ_3733327 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType>));
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3736992i32)) {
                        _typ_3733327 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ComplexType.ComplexType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ComplexType.ComplexType>));
                        if (_name_3736602 == (("complex" : stdgo.GoString))) {
                            _gotoNext = 3737064i32;
                        } else {
                            _gotoNext = 3737626i32;
                        };
                    } else if (__value__ == (3737064i32)) {
                        _gotoNext = 3737248i32;
                    } else if (__value__ == (3737248i32)) {
                        {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_e_3732604.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                } catch(_) {
                                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                                };
                                _byteSize_3737255 = __tmp__._0;
                            };
                            {
                                final __value__ = _byteSize_3737255;
                                if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3737314i32;
                                } else if (__value__ == ((16i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3737354i32;
                                } else {
                                    _gotoNext = 3737626i32;
                                };
                            };
                        };
                    } else if (__value__ == (3737314i32)) {
                        _name_3736602 = ("complex float" : stdgo.GoString);
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3737354i32)) {
                        _name_3736602 = ("complex double" : stdgo.GoString);
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3737405i32)) {
                        _typ_3733327 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_FloatType.FloatType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FloatType.FloatType>));
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3737446i32)) {
                        _typ_3733327 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_IntType.IntType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_IntType.IntType>));
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3737486i32)) {
                        _typ_3733327 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UintType.UintType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UintType.UintType>));
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3737529i32)) {
                        _typ_3733327 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_CharType.CharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CharType.CharType>));
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3737574i32)) {
                        _typ_3733327 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UcharType.UcharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UcharType.UcharType>));
                        _gotoNext = 3737626i32;
                    } else if (__value__ == (3737626i32)) {
                        _typeCache[_off] = _typ_3733327;
                        _t_3737649 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ_3733327) : stdgo._internal.debug.dwarf.Dwarf_T__interface_0.T__interface_0)) : stdgo._internal.debug.dwarf.Dwarf_T__interface_0.T__interface_0).basic();
                        _t_3737649.commonType.name = _name_3736602?.__copy__();
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _t_3737649.bitSize = __tmp__._0;
                        };
                        _haveBitOffset_3737768 = false;
                        _haveDataBitOffset_3737793 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _t_3737649.bitOffset = __tmp__._0;
                            _haveBitOffset_3737768 = __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _t_3737649.dataBitOffset = __tmp__._0;
                            _haveDataBitOffset_3737793 = __tmp__._1;
                        };
                        if ((_haveBitOffset_3737768 && _haveDataBitOffset_3737793 : Bool)) {
                            _gotoNext = 3737992i32;
                        } else {
                            _gotoNext = 3744049i32;
                        };
                    } else if (__value__ == (3737992i32)) {
                        _err_3732607 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3736602?.__copy__(), _e_3732604.offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3738086i32)) {
                        _t_3738839 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_StructType.StructType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3738839);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3738839);
                        _gotoNext = 3738893i32;
                    } else if (__value__ == (3738893i32)) {
                        {
                            final __value__ = _e_3732604.tag;
                            if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3738910i32;
                            } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3738951i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3738994i32;
                            } else {
                                _gotoNext = 3739039i32;
                            };
                        };
                    } else if (__value__ == (3738910i32)) {
                        _t_3738839.kind = ("class" : stdgo.GoString);
                        _gotoNext = 3739039i32;
                    } else if (__value__ == (3738951i32)) {
                        _t_3738839.kind = ("struct" : stdgo.GoString);
                        _gotoNext = 3739039i32;
                    } else if (__value__ == (3738994i32)) {
                        _t_3738839.kind = ("union" : stdgo.GoString);
                        _gotoNext = 3739039i32;
                    } else if (__value__ == (3739039i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3738839.structName = __tmp__._0?.__copy__();
                        };
                        _t_3738839.incomplete = _e_3732604.val((60u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) != null;
                        _t_3738839.field = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>);
                        _kid_3739261 = _next_3733401();
                        _gotoNext = 3739257i32;
                    } else if (__value__ == (3739257i32)) {
                        if ((_kid_3739261 != null && ((_kid_3739261 : Dynamic).__nil__ == null || !(_kid_3739261 : Dynamic).__nil__))) {
                            _gotoNext = 3739301i32;
                        } else {
                            _gotoNext = 3740772i32;
                        };
                    } else if (__value__ == (3739301i32)) {
                        if (_kid_3739261.tag != ((13u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                            _gotoNext = 3739330i32;
                        } else {
                            _gotoNext = 3739353i32;
                        };
                    } else if (__value__ == (3739330i32)) {
                        _kid_3739261 = _next_3733401();
                        _gotoNext = 3739257i32;
                    } else if (__value__ == (3739353i32)) {
                        _f_3739353 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_StructField.StructField)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>);
                        {
                            _f_3739353.type = _typeOf_3734204(_kid_3739261);
                            if (_err_3732607 != null) {
                                _gotoNext = 3739414i32;
                            } else {
                                _gotoNext = 3739439i32;
                            };
                        };
                    } else if (__value__ == (3739414i32)) {
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3739439i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3739439i32;
                        {
                            final __type__ = _kid_3739261.val((56u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                                var _loc:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                                _loc_3739503 = _loc;
                                _gotoNext = 3739492i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                                var _loc:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                _loc_3739873 = _loc;
                                _gotoNext = 3739863i32;
                            } else {
                                var _loc:stdgo.AnyInterface = __type__?.__underlying__();
                                _gotoNext = 3739907i32;
                            };
                        };
                    } else if (__value__ == (3739492i32)) {
                        _b_3739592 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("location" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _loc_3739503)?.__copy__();
                        if (_b_3739592._uint8() != ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 3739678i32;
                        } else {
                            _gotoNext = 3739768i32;
                        };
                    } else if (__value__ == (3739678i32)) {
                        _err_3732607 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _kid_3739261.offset, ("unexpected opcode" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3739768i32)) {
                        _f_3739353.byteOffset = (_b_3739592._uint() : stdgo.GoInt64);
                        if (_b_3739592._err != null) {
                            _gotoNext = 3739819i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    } else if (__value__ == (3739819i32)) {
                        _err_3732607 = _b_3739592._err;
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3739863i32)) {
                        _f_3739353.byteOffset = _loc_3739873;
                        var __blank__ = _loc_3739873;
                        _gotoNext = 3739907i32;
                    } else if (__value__ == (3739907i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3739261.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _f_3739353.name = __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3739261.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3739353.byteSize = __tmp__._0;
                        };
                        _haveBitOffset_3739998 = false;
                        _haveDataBitOffset_3740024 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3739261.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3739353.bitOffset = __tmp__._0;
                            _haveBitOffset_3739998 = __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3739261.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3739353.dataBitOffset = __tmp__._0;
                            _haveDataBitOffset_3740024 = __tmp__._1;
                        };
                        if ((_haveBitOffset_3739998 && _haveDataBitOffset_3740024 : Bool)) {
                            _gotoNext = 3740230i32;
                        } else {
                            _gotoNext = 3740328i32;
                        };
                    } else if (__value__ == (3740230i32)) {
                        _err_3732607 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _e_3732604.offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3740328i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3739261.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3739353.bitSize = __tmp__._0;
                        };
                        _t_3738839.field = (_t_3738839.field.__append__(_f_3739353));
                        if (((_lastFieldBitSize_3739200 == ((0i64 : stdgo.GoInt64)) && _lastFieldByteOffset_3739229 == (_f_3739353.byteOffset) : Bool) && (_t_3738839.kind != ("union" : stdgo.GoString)) : Bool)) {
                            _gotoNext = 3740493i32;
                        } else {
                            _gotoNext = 3740672i32;
                        };
                    } else if (__value__ == (3740493i32)) {
                        _fixups._recordArrayType(_lastFieldType_3739174);
                        _gotoNext = 3740672i32;
                    } else if (__value__ == (3740672i32)) {
                        _lastFieldType_3739174 = (stdgo.Go.setRef(_f_3739353.type) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
                        _lastFieldByteOffset_3739229 = _f_3739353.byteOffset;
                        _lastFieldBitSize_3739200 = _f_3739353.bitSize;
                        _kid_3739261 = _next_3733401();
                        _gotoNext = 3739257i32;
                    } else if (__value__ == (3740772i32)) {
                        if (_t_3738839.kind != (("union" : stdgo.GoString))) {
                            _gotoNext = 3740793i32;
                        } else {
                            _gotoNext = 3744049i32;
                        };
                    } else if (__value__ == (3740793i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3740798 = __tmp__._0;
                            _ok_3740801 = __tmp__._1;
                        };
                        if ((_ok_3740801 && (_b_3740798 == _lastFieldByteOffset_3739229) : Bool)) {
                            _gotoNext = 3740872i32;
                        } else {
                            _gotoNext = 3744049i32;
                        };
                    } else if (__value__ == (3740872i32)) {
                        _fixups._recordArrayType(_lastFieldType_3739174);
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3740984i32)) {
                        _t_3741115 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_QualType.QualType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3741115);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3741115);
                        {
                            _t_3741115.type = _typeOf_3734204(_e_3732604);
                            if (_err_3732607 != null) {
                                _gotoNext = 3741201i32;
                            } else {
                                _gotoNext = 3741223i32;
                            };
                        };
                    } else if (__value__ == (3741201i32)) {
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3741223i32)) {
                        _gotoNext = 3741223i32;
                        {
                            final __value__ = _e_3732604.tag;
                            if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3741240i32;
                            } else if (__value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3741281i32;
                            } else if (__value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3741328i32;
                            } else {
                                _gotoNext = 3744049i32;
                            };
                        };
                    } else if (__value__ == (3741240i32)) {
                        _t_3741115.qual = ("const" : stdgo.GoString);
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3741281i32)) {
                        _t_3741115.qual = ("restrict" : stdgo.GoString);
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3741328i32)) {
                        _t_3741115.qual = ("volatile" : stdgo.GoString);
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3741379i32)) {
                        _t_3741663 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3741663);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3741663);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3741663.enumName = __tmp__._0?.__copy__();
                        };
                        _t_3741663.val = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        _kid_3741797 = _next_3733401();
                        _gotoNext = 3741793i32;
                    } else if (__value__ == (3741793i32)) {
                        if ((_kid_3741797 != null && ((_kid_3741797 : Dynamic).__nil__ == null || !(_kid_3741797 : Dynamic).__nil__))) {
                            _gotoNext = 3741837i32;
                        } else {
                            _gotoNext = 3744049i32;
                        };
                    } else if (__value__ == (3741824i32)) {
                        _kid_3741797 = _next_3733401();
                        _gotoNext = 3741793i32;
                    } else if (__value__ == (3741837i32)) {
                        if (_kid_3741797.tag == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                            _gotoNext = 3741870i32;
                        } else {
                            _gotoNext = 3741824i32;
                        };
                    } else if (__value__ == (3741870i32)) {
                        _f_3741876 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3741797.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _f_3741876.name = __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_kid_3741797.val((28u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _f_3741876.val = __tmp__._0;
                        };
                        _n_3741990 = (_t_3741663.val.length);
                        if ((_n_3741990 >= _t_3741663.val.capacity : Bool)) {
                            _gotoNext = 3742029i32;
                        } else {
                            _gotoNext = 3742119i32;
                        };
                    } else if (__value__ == (3742029i32)) {
                        _val_3742036 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>((_n_3741990 : stdgo.GoInt).toBasic(), (_n_3741990 * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        stdgo.Go.copySlice(_val_3742036, _t_3741663.val);
                        _t_3741663.val = _val_3742036;
                        _gotoNext = 3742119i32;
                    } else if (__value__ == (3742119i32)) {
                        _t_3741663.val = (_t_3741663.val.__slice__((0 : stdgo.GoInt), (_n_3741990 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        _t_3741663.val[(_n_3741990 : stdgo.GoInt)] = _f_3741876;
                        _gotoNext = 3741824i32;
                    } else if (__value__ == (3742170i32)) {
                        _t_3742352 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3742352);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3742352);
                        if (_e_3732604.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) == null) {
                            _gotoNext = 3742429i32;
                        } else {
                            _gotoNext = 3742470i32;
                        };
                    } else if (__value__ == (3742429i32)) {
                        _t_3742352.type = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType() : stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType>));
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3742470i32)) {
                        _t_3742352.type = _typeOf_3734204(_e_3732604);
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3742491i32)) {
                        _t_3742855 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3742855);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3742855);
                        {
                            _t_3742855.returnType = _typeOf_3734204(_e_3732604);
                            if (_err_3732607 != null) {
                                _gotoNext = 3742947i32;
                            } else {
                                _gotoNext = 3742969i32;
                            };
                        };
                    } else if (__value__ == (3742947i32)) {
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3742969i32)) {
                        _t_3742855.paramType = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
                        _kid_3743008 = _next_3733401();
                        _gotoNext = 3743004i32;
                    } else if (__value__ == (3743004i32)) {
                        if ((_kid_3743008 != null && ((_kid_3743008 : Dynamic).__nil__ == null || !(_kid_3743008 : Dynamic).__nil__))) {
                            _gotoNext = 3743048i32;
                        } else {
                            _gotoNext = 3744049i32;
                        };
                    } else if (__value__ == (3743048i32)) {
                        _gotoNext = 3743070i32;
                    } else if (__value__ == (3743070i32)) {
                        {
                            final __value__ = _kid_3743008.tag;
                            if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3743115i32;
                            } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3743205i32;
                            } else {
                                _gotoNext = 3743090i32;
                            };
                        };
                    } else if (__value__ == (3743090i32)) {
                        _kid_3743008 = _next_3733401();
                        _gotoNext = 3743004i32;
                    } else if (__value__ == (3743115i32)) {
                        {
                            _tkid_3743057 = _typeOf_3734204(_kid_3743008);
                            if (_err_3732607 != null) {
                                _gotoNext = 3743178i32;
                            } else {
                                _gotoNext = 3743272i32;
                            };
                        };
                    } else if (__value__ == (3743178i32)) {
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3743205i32)) {
                        _tkid_3743057 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType() : stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType>));
                        _gotoNext = 3743272i32;
                    } else if (__value__ == (3743272i32)) {
                        _t_3742855.paramType = (_t_3742855.paramType.__append__(_tkid_3743057));
                        _kid_3743008 = _next_3733401();
                        _gotoNext = 3743004i32;
                    } else if (__value__ == (3743318i32)) {
                        _t_3743457 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3743457);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3743457);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3743457.commonType.name = __tmp__._0?.__copy__();
                        };
                        _t_3743457.type = _typeOf_3734204(_e_3732604);
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3743572i32)) {
                        _t_3743675 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3743675);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3743675);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3743675.basicType.commonType.name = __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3743773i32)) {
                        _t_3743932 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>);
                        _typ_3733327 = stdgo.Go.asInterface(_t_3743932);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3743932);
                        _t_3743932.tag = _e_3732604.tag;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _t_3743932.commonType.name = __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3744049i32;
                    } else if (__value__ == (3744049i32)) {
                        if (_err_3732607 != null) {
                            _gotoNext = 3744063i32;
                        } else {
                            _gotoNext = 3744083i32;
                        };
                    } else if (__value__ == (3744063i32)) {
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3744083i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_e_3732604.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3744087 = __tmp__._0;
                            _ok_3744090 = __tmp__._1;
                        };
                        if (!_ok_3744090) {
                            _gotoNext = 3744133i32;
                        } else {
                            _gotoNext = 3744405i32;
                        };
                        {
                            _gotoNext = 3744083i32;
                        };
                    } else if (__value__ == (3744133i32)) {
                        _b_3744087 = (-1i64 : stdgo.GoInt64);
                        var __blank__ = 0i32;
                        _gotoNext = 3744148i32;
                    } else if (__value__ == (3744148i32)) {
                        {
                            final __type__ = _typ_3733327;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__.__underlying__().value;
                                _t_3744193 = _t;
                                _gotoNext = 3744176i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__.__underlying__().value;
                                _t_3744365 = _t;
                                _gotoNext = 3744352i32;
                            } else {
                                var _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = __type__ == null ? (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_) : cast __type__;
                                _gotoNext = 3744405i32;
                            };
                        };
                        _gotoNext = 3744405i32;
                    } else if (__value__ == (3744176i32)) {
                        _fixups._typedefs = (_fixups._typedefs.__append__(_t_3744193));
                        var __blank__ = _t_3744193;
                        _gotoNext = 3744405i32;
                    } else if (__value__ == (3744352i32)) {
                        _b_3744087 = (_addressSize_3732662 : stdgo.GoInt64);
                        var __blank__ = _t_3744365;
                        _gotoNext = 3744405i32;
                    } else if (__value__ == (3744405i32)) {
                        _typ_3733327.common().byteSize = _b_3744087;
                        _gotoNext = 3744435i32;
                    } else if (__value__ == (3744435i32)) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : _typ_3733327, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3744452i32;
                    } else if (__value__ == (3744452i32)) {
                        if (_typeCache != null) _typeCache.remove(_off);
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err_3732607 };
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
