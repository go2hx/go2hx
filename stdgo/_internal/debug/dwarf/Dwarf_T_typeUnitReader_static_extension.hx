package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_typeUnitReader_asInterface) class T_typeUnitReader_static_extension {
    @:keep
    static public function _offset( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>):stdgo._internal.debug.dwarf.Dwarf_Offset.Offset {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader> = _tur;
        return _tur._b._off;
    }
    @:keep
    static public function _clone( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>):stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader> = _tur;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _d : _tur._d, _tu : _tur._tu, _b : stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_tur._d, stdgo.Go.asInterface(_tur._tu), _tur._tu._name?.__copy__(), _tur._tu._unit._off, _tur._tu._unit._data)?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>));
    }
    @:keep
    static public function next( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; } {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader> = _tur;
        if (_tur._err != null) {
            return { _0 : null, _1 : _tur._err };
        };
        if ((_tur._tu._unit._data.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _e = _tur._b._entry(null, _tur._tu._unit._atable, _tur._tu._unit._base, _tur._tu._unit._vers);
        if (_tur._b._err != null) {
            _tur._err = _tur._b._err;
            return { _0 : null, _1 : _tur._err };
        };
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function addressSize( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>):stdgo.GoInt {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader> = _tur;
        return _tur._tu._unit._asize;
    }
    @:keep
    static public function seek( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):Void {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader> = _tur;
        _tur._err = (null : stdgo.Error);
        var _doff = (_off - _tur._tu._unit._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        if (((_doff < (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool) || (_doff >= (_tur._tu._unit._data.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool) : Bool)) {
            _tur._err = stdgo._internal.fmt.Fmt_errorf.errorf(("%s: offset %d out of range; max %d" : stdgo.GoString), stdgo.Go.toInterface(_tur._tu._name), stdgo.Go.toInterface(_doff), stdgo.Go.toInterface((_tur._tu._unit._data.length)));
            return;
        };
        _tur._b = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_tur._d, stdgo.Go.asInterface(_tur._tu), _tur._tu._name?.__copy__(), _off, (_tur._tu._unit._data.__slice__(_doff) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
    }
}
