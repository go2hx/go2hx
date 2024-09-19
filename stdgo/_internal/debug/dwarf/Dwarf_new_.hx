package stdgo._internal.debug.dwarf;
function new_(_abbrev:stdgo.Slice<stdgo.GoUInt8>, _aranges:stdgo.Slice<stdgo.GoUInt8>, _frame:stdgo.Slice<stdgo.GoUInt8>, _info:stdgo.Slice<stdgo.GoUInt8>, _line:stdgo.Slice<stdgo.GoUInt8>, _pubnames:stdgo.Slice<stdgo.GoUInt8>, _ranges:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } {
        var _d = (stdgo.Go.setRef(({ _abbrev : _abbrev, _aranges : _aranges, _frame : _frame, _info : _info, _line : _line, _pubnames : _pubnames, _ranges : _ranges, _str : _str, _abbrevCache : ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable>), _typeCache : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>), _typeSigs : ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>>) } : stdgo._internal.debug.dwarf.Dwarf_Data.Data)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        if (((_d._info.length) < (6 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("info" : stdgo.GoString), (_d._info.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), ("too short" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
        };
        var _offset = (4 : stdgo.GoInt);
        if ((((_d._info[(0 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) && _d._info[(1 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && _d._info[(2 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && (_d._info[(3 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) : Bool)) {
            if (((_d._info.length) < (14 : stdgo.GoInt) : Bool)) {
                return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("info" : stdgo.GoString), (_d._info.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), ("too short" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
            };
            _offset = (12 : stdgo.GoInt);
        };
        var __0 = (_d._info[(_offset : stdgo.GoInt)] : stdgo.GoUInt8), __1 = (_d._info[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
var _y = __1, _x = __0;
        if (((_x == (0 : stdgo.GoUInt8)) && (_y == (0 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("info" : stdgo.GoString), (4u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), ("unsupported version 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
        } else if (_x == ((0 : stdgo.GoUInt8))) {
            _d._bigEndian = true;
            _d._order = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian);
        } else if (_y == ((0 : stdgo.GoUInt8))) {
            _d._bigEndian = false;
            _d._order = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian);
        } else {
            return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("info" : stdgo.GoString), (4u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), ("cannot determine byte order" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
        };
        var __tmp__ = _d._parseUnits(), _u:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _d._unit = _u;
        return { _0 : _d, _1 : (null : stdgo.Error) };
    }