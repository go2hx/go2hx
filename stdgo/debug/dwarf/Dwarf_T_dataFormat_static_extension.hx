package stdgo.debug.dwarf;
class T_dataFormat_static_extension {
    static public function _addrsize(t:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat):StdTypes.Int {
        return stdgo._internal.debug.dwarf.Dwarf_T_dataFormat_static_extension.T_dataFormat_static_extension._addrsize(t);
    }
    static public function _dwarf64(t:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat):stdgo.Tuple<Bool, Bool> {
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_T_dataFormat_static_extension.T_dataFormat_static_extension._dwarf64(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _version(t:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat):StdTypes.Int {
        return stdgo._internal.debug.dwarf.Dwarf_T_dataFormat_static_extension.T_dataFormat_static_extension._version(t);
    }
}
