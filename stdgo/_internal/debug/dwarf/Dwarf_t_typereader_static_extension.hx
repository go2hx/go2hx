package stdgo._internal.debug.dwarf;
@:keep class T_typeReader_static_extension {
    @:interfacetypeffun
    static public function addressSize(t:stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader):stdgo.GoInt return t.addressSize();
    @:interfacetypeffun
    static public function _offset(t:stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader):stdgo._internal.debug.dwarf.Dwarf_offset.Offset return t._offset();
    @:interfacetypeffun
    static public function _clone(t:stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader):stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader return t._clone();
    @:interfacetypeffun
    static public function next(t:stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; } return t.next();
    @:interfacetypeffun
    static public function seek(t:stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader, _0:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):Void t.seek(_0);
}
