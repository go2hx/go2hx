package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Data_asInterface) class Data_static_extension {
    @:keep
    @:tdfield
    static public function _offsetToUnit( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _next = (stdgo._internal.sort.Sort_search.search(((@:checkr _d ?? throw "null pointer dereference")._unit.length), function(_i:stdgo.GoInt):Bool {
            return ((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]._off > _off : Bool);
        }) : stdgo.GoInt);
        if (_next == ((0 : stdgo.GoInt))) {
            return (-1 : stdgo.GoInt);
        };
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_next - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        if ((((@:checkr _u ?? throw "null pointer dereference")._off <= _off : Bool) && (_off < ((@:checkr _u ?? throw "null pointer dereference")._off + ((@:checkr _u ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool) : Bool)) {
            return (_next - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _parseUnits( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>):{ var _0 : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _nunit = (0 : stdgo.GoInt);
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._info)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = @:check2 _b._unitLength(), _len:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __tmp__._0, __3:Bool = __tmp__._1;
            if (_len != (((_len : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                @:check2 _b._error(("unit length overflow" : stdgo.GoString));
                break;
            };
            @:check2 _b._skip((_len : stdgo.GoInt));
            if ((_len > (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool)) {
                _nunit++;
            };
        };
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
        };
        _b = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._info)?.__copy__();
        var _units = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>((_nunit : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_nunit : stdgo.GoInt).toBasic() > 0 ? (_nunit : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        for (_i => _ in _units) {
            var _u = (stdgo.Go.setRef(_units[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            (@:checkr _u ?? throw "null pointer dereference")._base = _b._off;
            var _n:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            if (_b._err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
            };
            while (_n == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                {
                    var __tmp__ = @:check2 _b._unitLength();
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _u ?? throw "null pointer dereference")._is64 = @:tmpset0 __tmp__._1;
                };
            };
            var _dataOff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
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
            var __tmp__ = @:check2r _d._parseAbbrev(_abbrevOff, (@:checkr _u ?? throw "null pointer dereference")._vers), _atable:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            (@:checkr _u ?? throw "null pointer dereference")._data = @:check2 _b._bytes(((_n - ((_b._off - _dataOff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo.GoInt));
        };
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
        };
        return { _0 : _units, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _sigToType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _sig:stdgo.GoUInt64):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _tu = ((@:checkr _d ?? throw "null pointer dereference")._typeSigs[_sig] ?? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>));
        if ((_tu == null || (_tu : Dynamic).__nil__)) {
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no type unit with signature %v" : stdgo.GoString), stdgo.Go.toInterface(_sig)) };
        };
        if ((@:checkr _tu ?? throw "null pointer dereference")._cache != null) {
            return { _0 : (@:checkr _tu ?? throw "null pointer dereference")._cache, _1 : (null : stdgo.Error) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_tu), (@:checkr _tu ?? throw "null pointer dereference")._name?.__copy__(), (@:checkr _tu ?? throw "null pointer dereference")._unit._off, (@:checkr _tu ?? throw "null pointer dereference")._unit._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _r = (stdgo.Go.setRef(({ _d : _d, _tu : _tu, _b : _b?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>);
        var __tmp__ = @:check2r _d._readType((@:checkr _tu ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.asInterface(_r), (@:checkr _tu ?? throw "null pointer dereference")._toff, (({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>) : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>), null), _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err };
        };
        (@:checkr _tu ?? throw "null pointer dereference")._cache = _t;
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _parseTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), _name?.__copy__(), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _types)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _base = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            var __tmp__ = @:check2 _b._unitLength(), _n:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
            if (_n != (((_n : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                @:check2 _b._error(("type unit length overflow" : stdgo.GoString));
                return _b._err;
            };
            var _hdroff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
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
            var __tmp__ = @:check2r _d._parseAbbrev(_ao, _vers), _atable:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            var _boff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            (@:checkr _d ?? throw "null pointer dereference")._typeSigs[_sig] = (stdgo.Go.setRef(({ _unit : ({ _base : _base, _off : _boff, _data : @:check2 _b._bytes(((_n - ((_b._off - _hdroff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo.GoInt)), _atable : _atable, _asize : (_asize : stdgo.GoInt), _vers : _vers, _is64 : _dwarf64 } : stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit), _toff : (_toff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _name : _name?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>);
            if (_b._err != null) {
                return _b._err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _r:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, _typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>, _fixups:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _kid_3699701:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _kid_3702237:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _t_3702103:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>);
            var _loc_3700313:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _f_3699793:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>);
            var _name_3697042:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3703897:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
            var _byteSize_3697695:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _nextDepth_3693778:stdgo.GoInt = (0 : stdgo.GoInt);
            var _tkid_3703497:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _b_3701238:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _loc_3699943:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _t_3699279:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>);
            var _ok_3692984:Bool = false;
            var _ok_3704530:Bool = false;
            var _haveDataBitOffset_3698233:Bool = false;
            var _e_3693044:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _dims_3695601:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
            var _t_3704115:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType>);
            var _kid_3703448:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _haveBitOffset_3700438:Bool = false;
            var _count_3695804:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _ok_3697085:Bool = false;
            var _t_3698089:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>);
            var _n_3702430:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3693047:stdgo.Error = (null : stdgo.Error);
            var _b_3704527:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _val_3702476:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
            var _enc_3697080:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _typ_3693767:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _addressSize_3693102:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3703295:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>);
            var _b_3700032:stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            var _lastFieldByteOffset_3699669:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _haveBitOffset_3698208:Bool = false;
            var _fixer_3693543:stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer = ({} : stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer);
            var _t_3704805:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
            var _t_3702792:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
            var _t_3701555:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>);
            var _ok_3701241:Bool = false;
            var _lastFieldBitSize_3699640:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _lastFieldType_3699614:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
            var _t_3704372:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>);
            var _t_3692981:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _f_3702316:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>);
            var _haveDataBitOffset_3700464:Bool = false;
            var _typeOf_3694644:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> -> stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = null;
            var _t_3695406:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
            var _t_3704633:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
            var _i_3696385:stdgo.GoInt = (0 : stdgo.GoInt);
            var _next_3693841:() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = null;
            var _ok_3695811:Bool = false;
            var _kid_3695620:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        var __blank__ = _loc_3699943;
                        _gotoNext = 3700347i32;
                        {
                            {
                                var __tmp__ = (_typeCache != null && _typeCache.exists(_off) ? { _0 : _typeCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : false });
                                _t_3692981 = @:tmpset0 __tmp__._0;
                                _ok_3692984 = @:tmpset0 __tmp__._1;
                            };
                            if (_ok_3692984) {
                                _gotoNext = 3693009i32;
                            } else {
                                _gotoNext = 3693031i32;
                            };
                        };
                    } else if (__value__ == (3693009i32)) {
                        return { _0 : _t_3692981, _1 : (null : stdgo.Error) };
                        _gotoNext = 3693031i32;
                    } else if (__value__ == (3693031i32)) {
                        _r.seek(_off);
                        {
                            var __tmp__ = _r.next();
                            _e_3693044 = @:tmpset0 __tmp__._0;
                            _err_3693047 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3693047 != null) {
                            _gotoNext = 3693078i32;
                        } else {
                            _gotoNext = 3693102i32;
                        };
                    } else if (__value__ == (3693078i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err_3693047 };
                        _gotoNext = 3693102i32;
                    } else if (__value__ == (3693102i32)) {
                        _addressSize_3693102 = _r.addressSize();
                        if (((_e_3693044 == null || (_e_3693044 : Dynamic).__nil__) || ((@:checkr _e_3693044 ?? throw "null pointer dereference").offset != _off) : Bool)) {
                            _gotoNext = 3693165i32;
                        } else {
                            _gotoNext = 3693518i32;
                        };
                    } else if (__value__ == (3693165i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _off, ("no type at offset" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                        _gotoNext = 3693518i32;
                    } else if (__value__ == (3693518i32)) {
                        if ((_fixups == null || (_fixups : Dynamic).__nil__)) {
                            _gotoNext = 3693535i32;
                        } else {
                            _gotoNext = 3693763i32;
                        };
                    } else if (__value__ == (3693535i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    @:check2 _fixer_3693543._apply();
                                };
                                a();
                            }) });
                        };
                        _fixups = (stdgo.Go.setRef(_fixer_3693543) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>);
                        _gotoNext = 3693763i32;
                    } else if (__value__ == (3693763i32)) {
                        _nextDepth_3693778 = (0 : stdgo.GoInt);
                        _next_3693841 = function():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> {
                            if (!(@:checkr _e_3693044 ?? throw "null pointer dereference").children) {
                                return null;
                            };
                        };
                        _typeOf_3694644 = function(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ {
                            var _tval = (@:check2r _e.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.AnyInterface);
                            var _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                            {
                                final __type__ = _tval;
                                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                                    var _toff:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__.__underlying__().value;
                                    {
                                        {
                                            var __tmp__ = @:check2r _d._readType(_name?.__copy__(), _r._clone(), _toff, _typeCache, _fixups);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_3693047 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_3693047 != null) {
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                                    var _toff:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                    {
                                        {
                                            var __tmp__ = @:check2r _d._sigToType(_toff);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_3693047 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_3693047 != null) {
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
                        _gotoNext = 3695044i32;
                    } else if (__value__ == (3695044i32)) {
                        {
                            final __value__ = (@:checkr _e_3693044 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3695060i32;
                            } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3696478i32;
                            } else if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3698526i32;
                            } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3701424i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3701819i32;
                            } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3702610i32;
                            } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3702931i32;
                            } else if (__value__ == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3703758i32;
                            } else if (__value__ == ((59u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3704012i32;
                            } else {
                                _gotoNext = 3704213i32;
                            };
                        };
                    } else if (__value__ == (3695060i32)) {
                        _t_3695406 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3695406);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3695406);
                        {
                            (@:checkr _t_3695406 ?? throw "null pointer dereference").type = _typeOf_3694644(_e_3693044);
                            if (_err_3693047 != null) {
                                _gotoNext = 3695493i32;
                            } else {
                                _gotoNext = 3695515i32;
                            };
                        };
                    } else if (__value__ == (3695493i32)) {
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3695515i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((46u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3695406 ?? throw "null pointer dereference").strideBitSize = @:tmpset0 __tmp__._0;
                        };
                        _kid_3695620 = _next_3693841();
                        _gotoNext = 3695616i32;
                    } else if (__value__ == (3695616i32)) {
                        if ((_kid_3695620 != null && ((_kid_3695620 : Dynamic).__nil__ == null || !(_kid_3695620 : Dynamic).__nil__))) {
                            _gotoNext = 3695660i32;
                        } else {
                            _gotoNext = 3696277i32;
                        };
                    } else if (__value__ == (3695647i32)) {
                        _kid_3695620 = _next_3693841();
                        _gotoNext = 3695616i32;
                    } else if (__value__ == (3695660i32)) {
                        _gotoNext = 3695758i32;
                    } else if (__value__ == (3695758i32)) {
                        {
                            final __value__ = (@:checkr _kid_3695620 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3695778i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3696137i32;
                            } else {
                                _gotoNext = 3695647i32;
                            };
                        };
                    } else if (__value__ == (3695778i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3695620.val((55u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3695804 = @:tmpset0 __tmp__._0;
                            _ok_3695811 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3695811) {
                            _gotoNext = 3695855i32;
                        } else {
                            _gotoNext = 3696107i32;
                        };
                    } else if (__value__ == (3695855i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3695620.val((47u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3695804 = @:tmpset0 __tmp__._0;
                            _ok_3695811 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3695811) {
                            _gotoNext = 3695971i32;
                        } else if ((_dims_3695601.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3696057i32;
                        } else {
                            _gotoNext = 3696107i32;
                        };
                    } else if (__value__ == (3695971i32)) {
                        _count_3695804++;
                        _gotoNext = 3696107i32;
                    } else if (__value__ == (3696057i32)) {
                        _count_3695804 = (-1i64 : stdgo.GoInt64);
                        _gotoNext = 3696107i32;
                    } else if (__value__ == (3696107i32)) {
                        _dims_3695601 = (_dims_3695601.__append__(_count_3695804));
                        _gotoNext = 3695647i32;
                    } else if (__value__ == (3696137i32)) {
                        _err_3693047 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), (@:checkr _kid_3695620 ?? throw "null pointer dereference").offset, ("cannot handle enumeration type as array bound" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3696277i32)) {
                        if ((_dims_3695601.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3696295i32;
                        } else {
                            _gotoNext = 3696361i32;
                        };
                    } else if (__value__ == (3696295i32)) {
                        _dims_3695601 = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
                        _gotoNext = 3696361i32;
                    } else if (__value__ == (3696361i32)) {
                        (@:checkr _t_3695406 ?? throw "null pointer dereference").count = _dims_3695601[(0 : stdgo.GoInt)];
                        _i_3696385 = ((_dims_3695601.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _gotoNext = 3696381i32;
                    } else if (__value__ == (3696381i32)) {
                        if ((_i_3696385 >= (1 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3696417i32;
                        } else {
                            _gotoNext = 3704489i32;
                        };
                    } else if (__value__ == (3696417i32)) {
                        (@:checkr _t_3695406 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : (@:checkr _t_3695406 ?? throw "null pointer dereference").type, count : _dims_3695601[(_i_3696385 : stdgo.GoInt)] } : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>));
                        _i_3696385--;
                        _gotoNext = 3696381i32;
                    } else if (__value__ == (3696478i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _name_3697042 = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((62u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _enc_3697080 = @:tmpset0 __tmp__._0;
                            _ok_3697085 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3697085) {
                            _gotoNext = 3697128i32;
                        } else {
                            _gotoNext = 3697229i32;
                        };
                    } else if (__value__ == (3697128i32)) {
                        _err_3693047 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3697042?.__copy__(), (@:checkr _e_3693044 ?? throw "null pointer dereference").offset, (("missing encoding attribute for " : stdgo.GoString) + _name_3697042?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3697229i32)) {
                        _gotoNext = 3697229i32;
                        {
                            final __value__ = _enc_3697080;
                            if (__value__ == ((1i64 : stdgo.GoInt64))) {
                                _gotoNext = 3697348i32;
                            } else if (__value__ == ((2i64 : stdgo.GoInt64))) {
                                _gotoNext = 3697390i32;
                            } else if (__value__ == ((3i64 : stdgo.GoInt64))) {
                                _gotoNext = 3697432i32;
                            } else if (__value__ == ((4i64 : stdgo.GoInt64))) {
                                _gotoNext = 3697845i32;
                            } else if (__value__ == ((5i64 : stdgo.GoInt64))) {
                                _gotoNext = 3697886i32;
                            } else if (__value__ == ((7i64 : stdgo.GoInt64))) {
                                _gotoNext = 3697926i32;
                            } else if (__value__ == ((6i64 : stdgo.GoInt64))) {
                                _gotoNext = 3697969i32;
                            } else if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                _gotoNext = 3698014i32;
                            } else {
                                _gotoNext = 3697244i32;
                            };
                        };
                    } else if (__value__ == (3697244i32)) {
                        _err_3693047 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3697042?.__copy__(), (@:checkr _e_3693044 ?? throw "null pointer dereference").offset, ("unrecognized encoding attribute value" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3697348i32)) {
                        _typ_3693767 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType>));
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3697390i32)) {
                        _typ_3693767 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType>));
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3697432i32)) {
                        _typ_3693767 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ComplexType.ComplexType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ComplexType.ComplexType>));
                        if (_name_3697042 == (("complex" : stdgo.GoString))) {
                            _gotoNext = 3697504i32;
                        } else {
                            _gotoNext = 3698066i32;
                        };
                    } else if (__value__ == (3697504i32)) {
                        _gotoNext = 3697688i32;
                    } else if (__value__ == (3697688i32)) {
                        {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                } catch(_) {
                                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                                };
                                _byteSize_3697695 = @:tmpset0 __tmp__._0;
                            };
                            {
                                final __value__ = _byteSize_3697695;
                                if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3697754i32;
                                } else if (__value__ == ((16i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3697794i32;
                                } else {
                                    _gotoNext = 3698066i32;
                                };
                            };
                        };
                    } else if (__value__ == (3697754i32)) {
                        _name_3697042 = ("complex float" : stdgo.GoString);
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3697794i32)) {
                        _name_3697042 = ("complex double" : stdgo.GoString);
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3697845i32)) {
                        _typ_3693767 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_FloatType.FloatType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FloatType.FloatType>));
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3697886i32)) {
                        _typ_3693767 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_IntType.IntType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_IntType.IntType>));
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3697926i32)) {
                        _typ_3693767 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UintType.UintType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UintType.UintType>));
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3697969i32)) {
                        _typ_3693767 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_CharType.CharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CharType.CharType>));
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3698014i32)) {
                        _typ_3693767 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UcharType.UcharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UcharType.UcharType>));
                        _gotoNext = 3698066i32;
                    } else if (__value__ == (3698066i32)) {
                        _typeCache[_off] = _typ_3693767;
                        _t_3698089 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ_3693767) : stdgo._internal.debug.dwarf.Dwarf_T__interface_0.T__interface_0)) : stdgo._internal.debug.dwarf.Dwarf_T__interface_0.T__interface_0).basic();
                        (@:checkr _t_3698089 ?? throw "null pointer dereference").commonType.name = _name_3697042?.__copy__();
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3698089 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_3698208 = false;
                        _haveDataBitOffset_3698233 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3698089 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_3698208 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3698089 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_3698233 = @:tmpset0 __tmp__._1;
                        };
                        if ((_haveBitOffset_3698208 && _haveDataBitOffset_3698233 : Bool)) {
                            _gotoNext = 3698432i32;
                        } else {
                            _gotoNext = 3704489i32;
                        };
                    } else if (__value__ == (3698432i32)) {
                        _err_3693047 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3697042?.__copy__(), (@:checkr _e_3693044 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3698526i32)) {
                        _t_3699279 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_StructType.StructType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3699279);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3699279);
                        _gotoNext = 3699333i32;
                    } else if (__value__ == (3699333i32)) {
                        {
                            final __value__ = (@:checkr _e_3693044 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3699350i32;
                            } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3699391i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3699434i32;
                            } else {
                                _gotoNext = 3699479i32;
                            };
                        };
                    } else if (__value__ == (3699350i32)) {
                        (@:checkr _t_3699279 ?? throw "null pointer dereference").kind = ("class" : stdgo.GoString);
                        _gotoNext = 3699479i32;
                    } else if (__value__ == (3699391i32)) {
                        (@:checkr _t_3699279 ?? throw "null pointer dereference").kind = ("struct" : stdgo.GoString);
                        _gotoNext = 3699479i32;
                    } else if (__value__ == (3699434i32)) {
                        (@:checkr _t_3699279 ?? throw "null pointer dereference").kind = ("union" : stdgo.GoString);
                        _gotoNext = 3699479i32;
                    } else if (__value__ == (3699479i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3699279 ?? throw "null pointer dereference").structName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3699279 ?? throw "null pointer dereference").incomplete = @:check2r _e_3693044.val((60u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) != null;
                        (@:checkr _t_3699279 ?? throw "null pointer dereference").field = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>);
                        _kid_3699701 = _next_3693841();
                        _gotoNext = 3699697i32;
                    } else if (__value__ == (3699697i32)) {
                        if ((_kid_3699701 != null && ((_kid_3699701 : Dynamic).__nil__ == null || !(_kid_3699701 : Dynamic).__nil__))) {
                            _gotoNext = 3699741i32;
                        } else {
                            _gotoNext = 3701212i32;
                        };
                    } else if (__value__ == (3699741i32)) {
                        if ((@:checkr _kid_3699701 ?? throw "null pointer dereference").tag != ((13u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                            _gotoNext = 3699770i32;
                        } else {
                            _gotoNext = 3699793i32;
                        };
                    } else if (__value__ == (3699770i32)) {
                        _kid_3699701 = _next_3693841();
                        _gotoNext = 3699697i32;
                    } else if (__value__ == (3699793i32)) {
                        _f_3699793 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_StructField.StructField)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>);
                        {
                            (@:checkr _f_3699793 ?? throw "null pointer dereference").type = _typeOf_3694644(_kid_3699701);
                            if (_err_3693047 != null) {
                                _gotoNext = 3699854i32;
                            } else {
                                _gotoNext = 3699879i32;
                            };
                        };
                    } else if (__value__ == (3699854i32)) {
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3699879i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3699879i32;
                        {
                            final __type__ = @:check2r _kid_3699701.val((56u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                                var _loc:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                                _loc_3699943 = _loc;
                                _gotoNext = 3699932i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                                var _loc:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                _loc_3700313 = _loc;
                                _gotoNext = 3700303i32;
                            } else {
                                var _loc:stdgo.AnyInterface = __type__?.__underlying__();
                                _gotoNext = 3700347i32;
                            };
                        };
                    } else if (__value__ == (3699932i32)) {
                        _b_3700032 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("location" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _loc_3699943)?.__copy__();
                        if (@:check2 _b_3700032._uint8() != ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 3700118i32;
                        } else {
                            _gotoNext = 3700208i32;
                        };
                    } else if (__value__ == (3700118i32)) {
                        _err_3693047 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), (@:checkr _kid_3699701 ?? throw "null pointer dereference").offset, ("unexpected opcode" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3700208i32)) {
                        (@:checkr _f_3699793 ?? throw "null pointer dereference").byteOffset = (@:check2 _b_3700032._uint() : stdgo.GoInt64);
                        if (_b_3700032._err != null) {
                            _gotoNext = 3700259i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    } else if (__value__ == (3700259i32)) {
                        _err_3693047 = _b_3700032._err;
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3700303i32)) {
                        (@:checkr _f_3699793 ?? throw "null pointer dereference").byteOffset = _loc_3700313;
                        var __blank__ = _loc_3700313;
                        _gotoNext = 3700347i32;
                    } else if (__value__ == (3700347i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3699701.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_3699793 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3699701.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3699793 ?? throw "null pointer dereference").byteSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_3700438 = false;
                        _haveDataBitOffset_3700464 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3699701.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3699793 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_3700438 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3699701.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3699793 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_3700464 = @:tmpset0 __tmp__._1;
                        };
                        if ((_haveBitOffset_3700438 && _haveDataBitOffset_3700464 : Bool)) {
                            _gotoNext = 3700670i32;
                        } else {
                            _gotoNext = 3700768i32;
                        };
                    } else if (__value__ == (3700670i32)) {
                        _err_3693047 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), (@:checkr _e_3693044 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3700768i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3699701.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3699793 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        (@:checkr _t_3699279 ?? throw "null pointer dereference").field = ((@:checkr _t_3699279 ?? throw "null pointer dereference").field.__append__(_f_3699793));
                        if (((_lastFieldBitSize_3699640 == ((0i64 : stdgo.GoInt64)) && _lastFieldByteOffset_3699669 == ((@:checkr _f_3699793 ?? throw "null pointer dereference").byteOffset) : Bool) && ((@:checkr _t_3699279 ?? throw "null pointer dereference").kind != ("union" : stdgo.GoString)) : Bool)) {
                            _gotoNext = 3700933i32;
                        } else {
                            _gotoNext = 3701112i32;
                        };
                    } else if (__value__ == (3700933i32)) {
                        @:check2r _fixups._recordArrayType(_lastFieldType_3699614);
                        _gotoNext = 3701112i32;
                    } else if (__value__ == (3701112i32)) {
                        _lastFieldType_3699614 = (stdgo.Go.setRef((@:checkr _f_3699793 ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
                        _lastFieldByteOffset_3699669 = (@:checkr _f_3699793 ?? throw "null pointer dereference").byteOffset;
                        _lastFieldBitSize_3699640 = (@:checkr _f_3699793 ?? throw "null pointer dereference").bitSize;
                        _kid_3699701 = _next_3693841();
                        _gotoNext = 3699697i32;
                    } else if (__value__ == (3701212i32)) {
                        if ((@:checkr _t_3699279 ?? throw "null pointer dereference").kind != (("union" : stdgo.GoString))) {
                            _gotoNext = 3701233i32;
                        } else {
                            _gotoNext = 3704489i32;
                        };
                    } else if (__value__ == (3701233i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3701238 = @:tmpset0 __tmp__._0;
                            _ok_3701241 = @:tmpset0 __tmp__._1;
                        };
                        if ((_ok_3701241 && (_b_3701238 == _lastFieldByteOffset_3699669) : Bool)) {
                            _gotoNext = 3701312i32;
                        } else {
                            _gotoNext = 3704489i32;
                        };
                    } else if (__value__ == (3701312i32)) {
                        @:check2r _fixups._recordArrayType(_lastFieldType_3699614);
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3701424i32)) {
                        _t_3701555 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_QualType.QualType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3701555);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3701555);
                        {
                            (@:checkr _t_3701555 ?? throw "null pointer dereference").type = _typeOf_3694644(_e_3693044);
                            if (_err_3693047 != null) {
                                _gotoNext = 3701641i32;
                            } else {
                                _gotoNext = 3701663i32;
                            };
                        };
                    } else if (__value__ == (3701641i32)) {
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3701663i32)) {
                        _gotoNext = 3701663i32;
                        {
                            final __value__ = (@:checkr _e_3693044 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3701680i32;
                            } else if (__value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3701721i32;
                            } else if (__value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3701768i32;
                            } else {
                                _gotoNext = 3704489i32;
                            };
                        };
                    } else if (__value__ == (3701680i32)) {
                        (@:checkr _t_3701555 ?? throw "null pointer dereference").qual = ("const" : stdgo.GoString);
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3701721i32)) {
                        (@:checkr _t_3701555 ?? throw "null pointer dereference").qual = ("restrict" : stdgo.GoString);
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3701768i32)) {
                        (@:checkr _t_3701555 ?? throw "null pointer dereference").qual = ("volatile" : stdgo.GoString);
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3701819i32)) {
                        _t_3702103 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3702103);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3702103);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3702103 ?? throw "null pointer dereference").enumName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3702103 ?? throw "null pointer dereference").val = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        _kid_3702237 = _next_3693841();
                        _gotoNext = 3702233i32;
                    } else if (__value__ == (3702233i32)) {
                        if ((_kid_3702237 != null && ((_kid_3702237 : Dynamic).__nil__ == null || !(_kid_3702237 : Dynamic).__nil__))) {
                            _gotoNext = 3702277i32;
                        } else {
                            _gotoNext = 3704489i32;
                        };
                    } else if (__value__ == (3702264i32)) {
                        _kid_3702237 = _next_3693841();
                        _gotoNext = 3702233i32;
                    } else if (__value__ == (3702277i32)) {
                        if ((@:checkr _kid_3702237 ?? throw "null pointer dereference").tag == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                            _gotoNext = 3702310i32;
                        } else {
                            _gotoNext = 3702264i32;
                        };
                    } else if (__value__ == (3702310i32)) {
                        _f_3702316 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3702237.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_3702316 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3702237.val((28u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3702316 ?? throw "null pointer dereference").val = @:tmpset0 __tmp__._0;
                        };
                        _n_3702430 = ((@:checkr _t_3702103 ?? throw "null pointer dereference").val.length);
                        if ((_n_3702430 >= (@:checkr _t_3702103 ?? throw "null pointer dereference").val.capacity : Bool)) {
                            _gotoNext = 3702469i32;
                        } else {
                            _gotoNext = 3702559i32;
                        };
                    } else if (__value__ == (3702469i32)) {
                        _val_3702476 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>((_n_3702430 : stdgo.GoInt).toBasic(), (_n_3702430 * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        _val_3702476.__copyTo__((@:checkr _t_3702103 ?? throw "null pointer dereference").val);
                        (@:checkr _t_3702103 ?? throw "null pointer dereference").val = _val_3702476;
                        _gotoNext = 3702559i32;
                    } else if (__value__ == (3702559i32)) {
                        (@:checkr _t_3702103 ?? throw "null pointer dereference").val = ((@:checkr _t_3702103 ?? throw "null pointer dereference").val.__slice__((0 : stdgo.GoInt), (_n_3702430 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        (@:checkr _t_3702103 ?? throw "null pointer dereference").val[(_n_3702430 : stdgo.GoInt)] = _f_3702316;
                        _gotoNext = 3702264i32;
                    } else if (__value__ == (3702610i32)) {
                        _t_3702792 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3702792);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3702792);
                        if (@:check2r _e_3693044.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) == null) {
                            _gotoNext = 3702869i32;
                        } else {
                            _gotoNext = 3702910i32;
                        };
                    } else if (__value__ == (3702869i32)) {
                        (@:checkr _t_3702792 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType() : stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType>));
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3702910i32)) {
                        (@:checkr _t_3702792 ?? throw "null pointer dereference").type = _typeOf_3694644(_e_3693044);
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3702931i32)) {
                        _t_3703295 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3703295);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3703295);
                        {
                            (@:checkr _t_3703295 ?? throw "null pointer dereference").returnType = _typeOf_3694644(_e_3693044);
                            if (_err_3693047 != null) {
                                _gotoNext = 3703387i32;
                            } else {
                                _gotoNext = 3703409i32;
                            };
                        };
                    } else if (__value__ == (3703387i32)) {
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3703409i32)) {
                        (@:checkr _t_3703295 ?? throw "null pointer dereference").paramType = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
                        _kid_3703448 = _next_3693841();
                        _gotoNext = 3703444i32;
                    } else if (__value__ == (3703444i32)) {
                        if ((_kid_3703448 != null && ((_kid_3703448 : Dynamic).__nil__ == null || !(_kid_3703448 : Dynamic).__nil__))) {
                            _gotoNext = 3703488i32;
                        } else {
                            _gotoNext = 3704489i32;
                        };
                    } else if (__value__ == (3703488i32)) {
                        _gotoNext = 3703510i32;
                    } else if (__value__ == (3703510i32)) {
                        {
                            final __value__ = (@:checkr _kid_3703448 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3703555i32;
                            } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3703645i32;
                            } else {
                                _gotoNext = 3703530i32;
                            };
                        };
                    } else if (__value__ == (3703530i32)) {
                        _kid_3703448 = _next_3693841();
                        _gotoNext = 3703444i32;
                    } else if (__value__ == (3703555i32)) {
                        {
                            _tkid_3703497 = _typeOf_3694644(_kid_3703448);
                            if (_err_3693047 != null) {
                                _gotoNext = 3703618i32;
                            } else {
                                _gotoNext = 3703712i32;
                            };
                        };
                    } else if (__value__ == (3703618i32)) {
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3703645i32)) {
                        _tkid_3703497 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType() : stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType>));
                        _gotoNext = 3703712i32;
                    } else if (__value__ == (3703712i32)) {
                        (@:checkr _t_3703295 ?? throw "null pointer dereference").paramType = ((@:checkr _t_3703295 ?? throw "null pointer dereference").paramType.__append__(_tkid_3703497));
                        _kid_3703448 = _next_3693841();
                        _gotoNext = 3703444i32;
                    } else if (__value__ == (3703758i32)) {
                        _t_3703897 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3703897);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3703897);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3703897 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3703897 ?? throw "null pointer dereference").type = _typeOf_3694644(_e_3693044);
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3704012i32)) {
                        _t_3704115 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3704115);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3704115);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3704115 ?? throw "null pointer dereference").basicType.commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3704213i32)) {
                        _t_3704372 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>);
                        _typ_3693767 = stdgo.Go.asInterface(_t_3704372);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3704372);
                        (@:checkr _t_3704372 ?? throw "null pointer dereference").tag = (@:checkr _e_3693044 ?? throw "null pointer dereference").tag;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3704372 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3704489i32;
                    } else if (__value__ == (3704489i32)) {
                        if (_err_3693047 != null) {
                            _gotoNext = 3704503i32;
                        } else {
                            _gotoNext = 3704523i32;
                        };
                    } else if (__value__ == (3704503i32)) {
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3704523i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3693044.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3704527 = @:tmpset0 __tmp__._0;
                            _ok_3704530 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3704530) {
                            _gotoNext = 3704573i32;
                        } else {
                            _gotoNext = 3704845i32;
                        };
                        {
                            _gotoNext = 3704523i32;
                        };
                    } else if (__value__ == (3704573i32)) {
                        _b_3704527 = (-1i64 : stdgo.GoInt64);
                        var __blank__ = 0i32;
                        _gotoNext = 3704588i32;
                    } else if (__value__ == (3704588i32)) {
                        {
                            final __type__ = _typ_3693767;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__.__underlying__().value;
                                _t_3704633 = _t;
                                _gotoNext = 3704616i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__.__underlying__().value;
                                _t_3704805 = _t;
                                _gotoNext = 3704792i32;
                            } else {
                                var _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = __type__ == null ? (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_) : cast __type__;
                                _gotoNext = 3704845i32;
                            };
                        };
                        _gotoNext = 3704845i32;
                    } else if (__value__ == (3704616i32)) {
                        (@:checkr _fixups ?? throw "null pointer dereference")._typedefs = ((@:checkr _fixups ?? throw "null pointer dereference")._typedefs.__append__(_t_3704633));
                        var __blank__ = _t_3704633;
                        _gotoNext = 3704845i32;
                    } else if (__value__ == (3704792i32)) {
                        _b_3704527 = (_addressSize_3693102 : stdgo.GoInt64);
                        var __blank__ = _t_3704805;
                        _gotoNext = 3704845i32;
                    } else if (__value__ == (3704845i32)) {
                        _typ_3693767.common().byteSize = _b_3704527;
                        _gotoNext = 3704875i32;
                    } else if (__value__ == (3704875i32)) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : _typ_3693767, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3704892i32;
                    } else if (__value__ == (3704892i32)) {
                        if (_typeCache != null) _typeCache.remove(_off);
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err_3693047 };
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
                return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function type( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        return @:check2r _d._readType(("info" : stdgo.GoString), stdgo.Go.asInterface(@:check2r _d.reader()), _off, (@:checkr _d ?? throw "null pointer dereference")._typeCache, null);
    }
    @:keep
    @:tdfield
    static public function addSection( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
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
    static public function addTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        return @:check2r _d._parseTypes(_name?.__copy__(), _types);
    }
    @:keep
    @:tdfield
    static public function lineReader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if ((@:checkr _d ?? throw "null pointer dereference")._line == null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((16u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
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
            { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((27u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _compDir = __tmp__._0, __3 = __tmp__._1;
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(@:check2r _d._offsetToUnit((@:checkr _cu ?? throw "null pointer dereference").offset) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("line" : stdgo.GoString), (_off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), ((@:checkr _d ?? throw "null pointer dereference")._line.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _r = ({ _buf : _buf, _section : (@:checkr _d ?? throw "null pointer dereference")._line, _str : (@:checkr _d ?? throw "null pointer dereference")._str, _lineStr : (@:checkr _d ?? throw "null pointer dereference")._lineStr } : stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader);
        {
            var _err = (@:check2 _r._readHeader(_compDir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        @:check2 _r.reset();
        return { _0 : (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _debugAddr( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _format:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat, _addrBase:stdgo.GoUInt64, _idx:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _off = ((_idx * (_format._addrsize() : stdgo.GoUInt64) : stdgo.GoUInt64) + _addrBase : stdgo.GoUInt64);
        if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("offset out of range" : stdgo.GoString)) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, _format, ("addr" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._addr)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        @:check2 _b._skip((_off : stdgo.GoInt));
        var _val = (@:check2 _b._addr() : stdgo.GoUInt64);
        if (_b._err != null) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _b._err };
        };
        return { _0 : _val, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _dwarf5Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > ((@:checkr _d ?? throw "null pointer dereference")._rngLists.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid rnglist offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface(((@:checkr _d ?? throw "null pointer dereference")._ranges.length))) };
        };
        var _addrBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                };
                _addrBase = @:tmpset0 __tmp__._0;
            };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("rnglists" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._rngLists)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
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
    static public function _dwarf2Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > ((@:checkr _d ?? throw "null pointer dereference")._ranges.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid range offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface(((@:checkr _d ?? throw "null pointer dereference")._ranges.length))) };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("ranges" : stdgo.GoString), (_ranges : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), ((@:checkr _d ?? throw "null pointer dereference")._ranges.__slice__(_ranges) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
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
    static public function _baseAddressForEntry( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.GoUInt64; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        if ((@:checkr _e ?? throw "null pointer dereference").tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
            _cu = _e;
        } else {
            var _i = (@:check2r _d._offsetToUnit((@:checkr _e ?? throw "null pointer dereference").offset) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : stdgo._internal.errors.Errors_new_.new_(("no unit for entry" : stdgo.GoString)) };
            };
            var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            _cu = @:check2 _b._entry(null, (@:checkr _u ?? throw "null pointer dereference")._atable, (@:checkr _u ?? throw "null pointer dereference")._base, (@:checkr _u ?? throw "null pointer dereference")._vers);
            if (_b._err != null) {
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : _b._err };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((82u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoUInt64), _1 : false };
            }, _cuEntry = __tmp__._0, _cuEntryOK = __tmp__._1;
            if (_cuEntryOK) {
                return { _0 : _cu, _1 : _cuEntry, _2 : (null : stdgo.Error) };
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
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
    static public function ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>> = (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoUInt64), _1 : false };
        }, _low = __tmp__._0, _lowOK = __tmp__._1;
        var _high:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _highOK:Bool = false;
        var _highField = @:check2r _e.attrField((18u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
        if ((_highField != null && ((_highField : Dynamic).__nil__ == null || !(_highField : Dynamic).__nil__))) {
            {
                final __value__ = (@:checkr _highField ?? throw "null pointer dereference").class_;
                if (__value__ == ((1 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert(((@:checkr _highField ?? throw "null pointer dereference").val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                        } catch(_) {
                            { _0 : (0 : stdgo.GoUInt64), _1 : false };
                        };
                        _high = @:tmpset0 __tmp__._0;
                        _highOK = @:tmpset0 __tmp__._1;
                    };
                } else if (__value__ == ((3 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
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
        var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        {
            var _uidx = (@:check2r _d._offsetToUnit((@:checkr _e ?? throw "null pointer dereference").offset) : stdgo.GoInt);
            if (((_uidx >= (0 : stdgo.GoInt) : Bool) && (_uidx < ((@:checkr _d ?? throw "null pointer dereference")._unit.length) : Bool) : Bool)) {
                _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_uidx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            };
        };
        if ((((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && ((@:checkr _u ?? throw "null pointer dereference")._vers >= (5 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _d ?? throw "null pointer dereference")._rngLists != null) : Bool)) {
            var _field = @:check2r _e.attrField((85u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
            if ((_field == null || (_field : Dynamic).__nil__)) {
                return { _0 : _ret, _1 : (null : stdgo.Error) };
            };
            {
                final __value__ = (@:checkr _field ?? throw "null pointer dereference").class_;
                if (__value__ == ((9 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _field ?? throw "null pointer dereference").val : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
                    if (!_rangesOK) {
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = @:check2r _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    return @:check2r _d._dwarf5Ranges(_u, _cu, _base, _ranges, _ret);
                } else if (__value__ == ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _field ?? throw "null pointer dereference").val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoUInt64), _1 : false };
                    }, _rnglist = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = @:check2r _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
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
            { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((85u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
        if ((_rangesOK && ((@:checkr _d ?? throw "null pointer dereference")._ranges != null) : Bool)) {
            var __tmp__ = @:check2r _d._baseAddressForEntry(_e), __3:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
            };
            return @:check2r _d._dwarf2Ranges(_u, _base, _ranges, _ret);
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _r = (stdgo.Go.setRef(({ _d : _d } : stdgo._internal.debug.dwarf.Dwarf_Reader.Reader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        @:check2r _r.seek((0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
        return _r;
    }
    @:keep
    @:tdfield
    static public function _parseAbbrev( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo.GoUInt64, _vers:stdgo.GoInt):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        {
            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._abbrevCache != null && (@:checkr _d ?? throw "null pointer dereference")._abbrevCache.exists(_off) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._abbrevCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable), _1 : false }), _m:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _ok:Bool = __tmp__._1;
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
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("abbrev" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _m = ((({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev>) : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable) : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable);
        while (true) {
            var _id = (@:check2 _b._uint() : stdgo.GoUInt32);
            if (_id == ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            var _n = (0 : stdgo.GoInt);
            var _b1 = (_b?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            @:check2 _b1._uint();
            @:check2 _b1._uint8();
            while (true) {
                var _tag = (@:check2 _b1._uint() : stdgo.GoUInt64);
                var _fmt = (@:check2 _b1._uint() : stdgo.GoUInt64);
                if (((_tag == (0i64 : stdgo.GoUInt64)) && (_fmt == (0i64 : stdgo.GoUInt64)) : Bool)) {
                    break;
                };
                if ((_fmt : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format) == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 _b1._int();
                };
                _n++;
            };
            if (_b1._err != null) {
                return { _0 : null, _1 : _b1._err };
            };
            var _a:stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev = ({} : stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev);
            _a._tag = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag);
            _a._children = @:check2 _b._uint8() != ((0 : stdgo.GoUInt8));
            _a._field = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>);
            for (_i => _ in _a._field) {
                _a._field[(_i : stdgo.GoInt)]._attr = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr);
                _a._field[(_i : stdgo.GoInt)]._fmt = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format);
                _a._field[(_i : stdgo.GoInt)]._class = stdgo._internal.debug.dwarf.Dwarf__formToClass._formToClass(_a._field[(_i : stdgo.GoInt)]._fmt, _a._field[(_i : stdgo.GoInt)]._attr, _vers, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>));
                if (_a._field[(_i : stdgo.GoInt)]._fmt == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
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
