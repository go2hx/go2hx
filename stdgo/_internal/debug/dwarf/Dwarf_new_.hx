package stdgo._internal.debug.dwarf;
function new_(_abbrev:stdgo.Slice<stdgo.GoUInt8>, _aranges:stdgo.Slice<stdgo.GoUInt8>, _frame:stdgo.Slice<stdgo.GoUInt8>, _info:stdgo.Slice<stdgo.GoUInt8>, _line:stdgo.Slice<stdgo.GoUInt8>, _pubnames:stdgo.Slice<stdgo.GoUInt8>, _ranges:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } {
        var _d = (stdgo.Go.setRef(({ _abbrev : _abbrev, _aranges : _aranges, _frame : _frame, _info : _info, _line : _line, _pubnames : _pubnames, _ranges : _ranges, _str : _str, _abbrevCache : (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable>) : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable>), _typeCache : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>) : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>), _typeSigs : (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>>) } : stdgo._internal.debug.dwarf.Dwarf_data.Data)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>);
        if ((((@:checkr _d ?? throw "null pointer dereference")._info.length) < (6 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("info" : stdgo.GoString), ((@:checkr _d ?? throw "null pointer dereference")._info.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), ("too short" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
        };
        var _offset = (4 : stdgo.GoInt);
        if (((((@:checkr _d ?? throw "null pointer dereference")._info[(0 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) && (@:checkr _d ?? throw "null pointer dereference")._info[(1 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && (@:checkr _d ?? throw "null pointer dereference")._info[(2 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && ((@:checkr _d ?? throw "null pointer dereference")._info[(3 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) : Bool)) {
            if ((((@:checkr _d ?? throw "null pointer dereference")._info.length) < (14 : stdgo.GoInt) : Bool)) {
                return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("info" : stdgo.GoString), ((@:checkr _d ?? throw "null pointer dereference")._info.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), ("too short" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
            };
            _offset = (12 : stdgo.GoInt);
        };
        var __0 = ((@:checkr _d ?? throw "null pointer dereference")._info[(_offset : stdgo.GoInt)] : stdgo.GoUInt8), __1 = ((@:checkr _d ?? throw "null pointer dereference")._info[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
var _y = __1, _x = __0;
        if (((_x == (0 : stdgo.GoUInt8)) && (_y == (0 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("info" : stdgo.GoString), (4u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), ("unsupported version 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
        } else if (_x == ((0 : stdgo.GoUInt8))) {
            (@:checkr _d ?? throw "null pointer dereference")._bigEndian = true;
            (@:checkr _d ?? throw "null pointer dereference")._order = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
        } else if (_y == ((0 : stdgo.GoUInt8))) {
            (@:checkr _d ?? throw "null pointer dereference")._bigEndian = false;
            (@:checkr _d ?? throw "null pointer dereference")._order = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
        } else {
            return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("info" : stdgo.GoString), (4u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), ("cannot determine byte order" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
        };
        var __tmp__ = @:check2r _d._parseUnits(), _u:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        (@:checkr _d ?? throw "null pointer dereference")._unit = _u;
        return { _0 : _d, _1 : (null : stdgo.Error) };
    }
