package stdgo._internal.debug.dwarf;
@:keep class Type__static_extension {
    @:interfacetypeffun
    static public function size(t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_):stdgo.GoInt64 return t.size();
    @:interfacetypeffun
    static public function string(t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function common(t:stdgo._internal.debug.dwarf.Dwarf_type_.Type_):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return t.common();
}
