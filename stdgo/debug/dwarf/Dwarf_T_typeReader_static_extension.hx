package stdgo.debug.dwarf;
class T_typeReader_static_extension {
    static public function addressSize(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader):StdTypes.Int {
        return stdgo._internal.debug.dwarf.Dwarf_T_typeReader_static_extension.T_typeReader_static_extension.addressSize(t);
    }
    static public function _offset(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader):Offset {
        return stdgo._internal.debug.dwarf.Dwarf_T_typeReader_static_extension.T_typeReader_static_extension._offset(t);
    }
    static public function _clone(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader):T_typeReader {
        return stdgo._internal.debug.dwarf.Dwarf_T_typeReader_static_extension.T_typeReader_static_extension._clone(t);
    }
    static public function next(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader):stdgo.Tuple<Entry, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_T_typeReader_static_extension.T_typeReader_static_extension.next(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader, _0:Offset):Void {
        stdgo._internal.debug.dwarf.Dwarf_T_typeReader_static_extension.T_typeReader_static_extension.seek(t, _0);
    }
}
