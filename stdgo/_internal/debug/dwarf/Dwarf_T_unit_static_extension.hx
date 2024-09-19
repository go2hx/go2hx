package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_unit_asInterface) class T_unit_static_extension {
    @:keep
    static public function _addrsize( _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>):stdgo.GoInt {
        @:recv var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = _u;
        return _u._asize;
    }
    @:keep
    static public function _dwarf64( _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = _u;
        return { _0 : _u._is64, _1 : true };
    }
    @:keep
    static public function _version( _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>):stdgo.GoInt {
        @:recv var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = _u;
        return _u._vers;
    }
}
