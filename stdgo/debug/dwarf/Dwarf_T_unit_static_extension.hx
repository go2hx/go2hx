package stdgo.debug.dwarf;
class T_unit_static_extension {
    static public function _addrsize(_u:T_unit):StdTypes.Int {
        final _u = (_u : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        return stdgo._internal.debug.dwarf.Dwarf_T_unit_static_extension.T_unit_static_extension._addrsize(_u);
    }
    static public function _dwarf64(_u:T_unit):stdgo.Tuple<Bool, Bool> {
        final _u = (_u : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_T_unit_static_extension.T_unit_static_extension._dwarf64(_u);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _version(_u:T_unit):StdTypes.Int {
        final _u = (_u : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        return stdgo._internal.debug.dwarf.Dwarf_T_unit_static_extension.T_unit_static_extension._version(_u);
    }
}
