package stdgo._internal.debug.dwarf;
@:interface typedef Type_ = stdgo.StructType & {
    @:interfacetypeffun
    function common():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType>;
    @:interfacetypeffun
    function string():stdgo.GoString;
    @:interfacetypeffun
    function size():stdgo.GoInt64;
};
