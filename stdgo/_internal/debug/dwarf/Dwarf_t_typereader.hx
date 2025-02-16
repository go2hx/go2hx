package stdgo._internal.debug.dwarf;
@:interface typedef T_typeReader = stdgo.StructType & {
    @:interfacetypeffun
    function seek(_0:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):Void;
    @:interfacetypeffun
    function next():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function _clone():stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader;
    @:interfacetypeffun
    function _offset():stdgo._internal.debug.dwarf.Dwarf_offset.Offset;
    @:interfacetypeffun
    function addressSize():stdgo.GoInt;
};
