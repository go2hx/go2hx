package stdgo.debug.dwarf;
class T_typeUnitReader_static_extension {
    static public function _offset(_tur:T_typeUnitReader):Offset {
        final _tur = (_tur : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>);
        return stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader_static_extension.T_typeUnitReader_static_extension._offset(_tur);
    }
    static public function _clone(_tur:T_typeUnitReader):T_typeReader {
        final _tur = (_tur : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>);
        return stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader_static_extension.T_typeUnitReader_static_extension._clone(_tur);
    }
    static public function next(_tur:T_typeUnitReader):stdgo.Tuple<Entry, stdgo.Error> {
        final _tur = (_tur : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader_static_extension.T_typeUnitReader_static_extension.next(_tur);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function addressSize(_tur:T_typeUnitReader):StdTypes.Int {
        final _tur = (_tur : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>);
        return stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader_static_extension.T_typeUnitReader_static_extension.addressSize(_tur);
    }
    static public function seek(_tur:T_typeUnitReader, _off:Offset):Void {
        final _tur = (_tur : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>);
        stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader_static_extension.T_typeUnitReader_static_extension.seek(_tur, _off);
    }
}
